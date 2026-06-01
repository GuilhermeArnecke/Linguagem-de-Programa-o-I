const service = require("../services/faturas");
const vendasService = require("../services/vendas");

async function getFaturas(req, res) {
  try {
    const usuarioLogado = req.user.user;
    let faturas;
    if (usuarioLogado.tipo_acesso === "admin") {
      faturas = await service.getFaturas();
    } else {
      faturas = await service.getFaturasPorUsuario(usuarioLogado.id);
    }
    return res.status(200).json({
      status: "ok",
      message: "Operação realizada com sucesso",
      data: faturas,
    });
  } catch (error) {
    return res.status(500).json({
      status: "error",
      message: error.message,
    });
  }
}

async function createFatura(req, res) {
  try {
    const { venda_id, status, data_vencimento, data_pagamento } = req.body;
    const camposObrigatorios = ["venda_id", "status", "data_vencimento"];
    const camposFaltando = camposObrigatorios.filter(
      (campo) =>
        req.body[campo] === undefined ||
        req.body[campo] === null ||
        req.body[campo] === "",
    );

    if (camposFaltando.length > 0) {
      return res.status(400).json({
        status: "error",
        message: `Campos obrigatórios faltando: ${camposFaltando.join(", ")}`,
      });
    }

    if (isNaN(Number(venda_id))) {
      return res.status(400).json({
        status: "error",
        message: "O campo 'venda_id' precisa ser um número válido.",
      });
    }

    const statusPermitidos = ["pendente", "pago", "cancelado"];
    if (!statusPermitidos.includes(status)) {
      return res.status(400).json({
        status: "error",
        message: `O status enviado é inválido. Valores permitidos: ${statusPermitidos.join(", ")}.`,
      });
    }

    if (isNaN(Date.parse(data_vencimento))) {
      return res.status(400).json({
        status: "error",
        message:
          "O campo 'data_vencimento' precisa ser uma data válida (ex: AAAA-MM-DD).",
      });
    }

    if (new Date(data_vencimento) < new Date().setHours(0, 0, 0, 0)) {
      return res.status(400).json({
        status: "error",
        message:
          "A data de vencimento da fatura não pode ser cadastrada no passado.",
      });
    }

    const vendaExistente = await vendasService.takeIDVenda(venda_id);

    if (!vendaExistente) {
      return res.status(404).json({
        status: "error",
        message: "A venda associada a esta fatura não foi localizada.",
      });
    }
    console.log(vendaExistente.usuario_id);
    const payload = {
      venda_id: venda_id,
      usuario_id: vendaExistente.usuario_id,
      valor_fatura: vendaExistente.total_venda,
      status: status,
      data_vencimento: data_vencimento,
      data_pagamento: status === "pago" ? data_pagamento || new Date() : null,
    };

    const faturasCriadas = await service.createFatura(payload);

    return res.status(201).json({
      status: "ok",
      message: "Fatura cadastrada com sucesso",
      data: faturasCriadas,
    });
  } catch (error) {
    return res.status(500).json({
      status: "error",
      message: error.message,
    });
  }
}

async function updateFatura(req, res) {
  try {
    const { id } = req.params;
    const { status, data_pagamento } = req.body;
    const usuarioLogado = req.user.user;

    if (!id || isNaN(Number(id))) {
      return res.status(400).json({
        status: "error",
        message: "O parâmetro ID é obrigatório e deve ser um número válido.",
      });}

    const statusPermitidos = ["pendente", "pago", "cancelado"];
    if (status !== undefined && status !== null) {
      if (!statusPermitidos.includes(status)) {
        return res.status(400).json({
          status: "error",
          message: `O status enviado é inválido. Valores permitidos: ${statusPermitidos.join(", ")}.`,
        });
      }
    }

    const faturaExistente = await service.getFaturaPorId(id);

    if (!faturaExistente) {
      return res.status(404).json({
        status: "error",
        message: "O registro de fatura informado não foi localizado.",
      });
    }

    if (faturaExistente.status === "pago") {
      return res.status(400).json({
        status: "error",
        message: "Esta fatura já está paga e não pode sofrer alterações.",
      });
    }

    if (
      usuarioLogado.tipo_acesso !== "admin" &&
      faturaExistente.usuario_id !== usuarioLogado.id
    ) {
      return res.status(403).json({
        status: "error",
        message: "Você não tem permissão para alterar este registro.",
      });
    }

    const params = {
      ...req.body,
      id: id,
    };

    if (Object.hasOwn(req.body, "status")) {
      if (status === "pago") {
        params.data_pagamento = data_pagamento || new Date();
      } else if (status === "pendente" || status === "cancelado") {
        params.data_pagamento = null;
      }
    }

    const faturaFinal = await service.updateFatura(params);

    return res.status(200).json({
      status: "ok",
      message: "Fatura atualizada com sucesso",
      data: faturaFinal,
    });
  } catch (error) {
    return res.status(500).json({
      status: "error",
      message: error.message,
    });
  }
}

async function deleteFatura(req, res) {
  try {
    const { id } = req.params;
    const usuarioLogado = req.user.user;

    if (!id || isNaN(Number(id))) {
      return res.status(400).json({
        status: "error",
        message: "O parâmetro ID é obrigatório e deve ser um número válido.",
      });
    }

    const faturaExistente = await service.getFaturaPorId(id);

    if (!faturaExistente) {
      return res.status(404).json({
        status: "error",
        message: "O registro de fatura informado não foi localizado.",
      });
    }

    if (
      usuarioLogado.tipo_acesso !== "admin" &&
      faturaExistente.usuario_id !== usuarioLogado.id
    ) {
      return res.status(403).json({
        status: "error",
        message:
          "Você não tem permissão para excluir uma fatura vinculada a outro usuário.",
      });
    }

    await service.deleteFatura(id);
    return res.status(204).send();
  } catch (error) {
    return res.status(500).json({
      status: "error",
      message: error.message,
    });
  }
}

module.exports = {
  getFaturas,
  createFatura,
  updateFatura,
  deleteFatura,
};
