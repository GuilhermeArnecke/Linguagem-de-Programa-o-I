package cadastrarpessoa;

import java.util.Date;

public class PessoaJuridica {
    private String cnpj;
    private String razaoSocial;
    private Date dataConstituicao;

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public Date getDataConstituicao() {
        return dataConstituicao;
    }

    public void setDataConstituicao(Date dataConstituicao) {
        this.dataConstituicao = dataConstituicao;
    }

    @Override
    public String toString() {
        return "PessoaJuridica{" + "cnpj=" + cnpj + ", razaoSocial=" + razaoSocial + ", dataConstituicao=" + dataConstituicao + '}';
    }
}
