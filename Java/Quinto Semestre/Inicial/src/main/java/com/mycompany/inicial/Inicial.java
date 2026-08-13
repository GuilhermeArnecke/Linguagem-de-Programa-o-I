package com.mycompany.inicial;

public class Inicial {

    public static void main(String[] args) {
        String titular = "Guilherme Arnecke";
        double saldo = 500.00;
        String tipoConta = "CORRENTE";

        System.out.println("titular " + titular + "| saldo inicial " + saldo);
        saldo = depositar(saldo, 200.00);
        saldo = sacar(saldo, 100.00);
        saldo = aplicarTaxa(saldo, tipoConta);

        System.out.println("titular " + titular + "| saldo Final " + saldo);
    }

    public static double depositar(double saldo, double valor) {
        return saldo + valor;
    }

    public static double sacar(double saldo, double valor) {
        if (saldo >= valor) {
            return saldo - valor;
        }
        System.out.println("Saldo Insuficiente");
        return saldo;
    }

    public static double aplicarTaxa(double saldo, String tipo) {
        if (tipo.equals("CORRENTE")) {
            return saldo - 15.00;
        }
        return saldo;
    }
}