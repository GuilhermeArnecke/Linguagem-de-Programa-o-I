const serviceVenda = require('../services/vendas')
const serviceAuth = require('../services/auth')
const serviceFatu = require('../services/faturas')
const auth = require('./auth')

async function getVendas (req, res) {
  try {
    const params = {
      ...req.body,
      tipo_acesso: req.user.user.tipo_acesso
    }

    if (params.tipo_acesso !== 'admin') {
      return res.status(400).json({
        status: 'error',
        message: 'O usuário não possui permissão para ver a lista de vendas.'
      })
    }
    
    const vendas = await serviceVenda.getVendas()
    return res.status(200).json({
      status: 'ok',
      data: vendas
    })
  } catch (error) {
    return res.status(500).json({
      status: 'error',
      message: `Erro interno no Servidor. Mensagem de erro: ${error.message}`
    })
  }
}

async function createVenda (req, res) {
  try {
    const params = {
      ...req.body,
      usuario_id: req.user.user.id
    }

    if (!params.total_venda) {
      return res.status(400).json({
        status: 'error',
        message: 'Campo total_venda está faltando...'
      })
    }

    if (params.total_venda <= 0 || isNaN(params.total_venda) || typeof params.total_venda !== "number") {
      return res.status(400).json({
        status: 'error',
        message: 'O valor total é inválido, informe um valor válido'
      })
    }

    const venda = await serviceVenda.createVenda(params)
    return res.status(201).json({
      status: 'ok',
      message: 'Venda cadastrada com sucesso',
      data: venda
    })
  } catch (error) {
    return res.status(500).json({
      status: 'Erro interno no Servidor',
      message: `Erro interno no Servidor. Mensagem de erro: ${error.message}`
    })
  }
}

async function updateVenda (req, res) {
  try {
    const params = {
      ...req.body,
      usuario_id_acessado: req.user.user.id,
      id: req.params.id
    }

    const vendaParams = await serviceVenda.takeIDVenda(params.id);

    if (!vendaParams) {
      return res.status(404).json({
        status: 'error',
        message: `Não existe uma venda com o id ${params.id}`
      })
    }

    if (!params.usuario_id || !params.total_venda) {
      return res.status(400).json({
        status: 'error',
        message: 'Não existem informações nos campos id_usuario ou total_venda.'
      })
    }

    const { tipo_acesso } = await serviceAuth.takeIdUser(params.usuario_id_acessado)

    if (vendaParams.usuario_id !== params.usuario_id_acessado && tipo_acesso !== 'admin') {
      return res.status(403).json({
        status: 'error',
        message: 'Não é possível alterar a venda de outro usuário.'
      })
    }

    if (params.usuario_id && tipo_acesso !== 'admin') {
      return res.status(400).json({
        status: 'error',
        message: 'Contate um administrador para alterar o usuário de uma venda.'
      })
    }

    if (params.total_venda <= 0 || isNaN(params.total_venda) || typeof params.total_venda !== "number") {
      return res.status(400).json({
        status: 'error',
        message: 'O valor inserido é invalido, verifique se você realmente enviou apenas números.'
      })
    }
    const faturaParams = await serviceFatu.takeIDFaturaVenda(params.id)
 
    if (faturaParams && faturaParams.status === 'pago') {
      return res.status(403).json({
        status: 'error',
        message: 'Você não pode alterar uma fatura paga.'
      })
    } 

    const atualizarVenda = await serviceVenda.updateVenda(params);
    
    if (faturaParams && faturaParams.status === 'pago' ) {
      const dadosFatura = {
        usuario_id: faturaParams.id,
        valor_fatura: params.total_venda
      }

      const atualizarFatura = await serviceFatu.updateFatura(dadosFatura)
    }

    return res.status(200).json({
      status: 'ok',
      message: 'A venda foi atualizada',
      data: vendaParams
    })
  } catch (error) {
    return res.status(500).json({
      status: 'error',
      message: `Erro interno no Servidor. Mensagem de erro: ${error.message}`
    })
  }
}

async function deleteVenda (req, res) {
  try {
    const params = {
      tipo_acesso: req.user.user.tipo_acesso,
      id: req.params.id
    }

    const idVenda = await serviceVenda.takeIDVenda(params.id)

    if (params.tipo_acesso !== 'admin') {
      return res.status(400).json({
        status: 'error',
        message: 'Para deletar uma venda contate um administrador'
      })
    }

    if (!idVenda) {
      return res.status(400).json({
        stauts: 'error',
        message: `Não existe uma venda com o id ${req.params.id} atribuído.`
      })
    }
    await serviceVenda.deleteVenda(req.params)
    return res.status(204).json({
      status: 'ok',
      message: `A venda ${req.params.id} foi deletada com sucesso.`
    })

  } catch (error) {
    return res.status(500).json({
      status: 'error',
      message: error.message
    })
  }
}

module.exports = {
  getVendas,
  createVenda,
  updateVenda,
  deleteVenda
}