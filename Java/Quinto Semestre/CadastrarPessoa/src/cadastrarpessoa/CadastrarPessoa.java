package cadastrarpessoa;

import java.util.Date;

public class CadastrarPessoa {
    
    public static void main(String[] args) {
        PessoaFisica pf = new PessoaFisica();
        pf.setNome("Guilherme");
        pf.setCpf("111.111.111-11");
        pf.setNomePai("Jobercleison");
        pf.setNomeMae("Rozmaria");
        pf.setDataNascimento(new Date());
        
        Endereco endereco = new Endereco();
        endereco.setCidade("Pinhalzinho");
        endereco.setRua("Florianópolis");
        endereco.setNumero(1021);
        System.out.println(pf.getNome());
        System.out.println(pf.getCpf());
        System.out.println(pf.getEndereco().getCidade());
    }
}
