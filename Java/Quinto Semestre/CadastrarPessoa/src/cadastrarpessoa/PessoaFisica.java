package cadastrarpessoa;

import java.util.Date;

public class PessoaFisica extends Pessoa {
    private String cpf;
    private Date dataNascimento;
    private String nomePai;
    private String nomeMae;

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getNomePai() {
        return nomePai;
    }

    public void setNomePai(String nomePai) {
        this.nomePai = nomePai;
    }

    public String getNomeMae() {
        return nomeMae;
    }

    public void setNomeMae(String nomeMae) {
        this.nomeMae = nomeMae;
    }

    @Override
    public String toString() {
        return "PessoaFisica{" + "cpf=" + cpf + ", dataNascimento=" + dataNascimento + ", nomePai=" + nomePai + ", nomeMae=" + nomeMae + '}';
    }
}
