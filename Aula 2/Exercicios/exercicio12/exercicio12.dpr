program exercicio12;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
  produtos: array[0..5] of Double = (4, 2.5, 2, 5, 3.5, 4.5);

var
  compras, escolha, i: Integer;
  carrinho: Double;

begin
  carrinho := 0;
  try
    Writeln('Veja a Seguir nosso card�pio:');
    Writeln(' ____________________________ ');
    Writeln('|                            |');
    Writeln('|                            |');
    Writeln('| 1 - Refrigerante: R$ 4,00  |');
    Writeln('| 2 - �gua: R$ 2,50          |');
    Writeln('| 3 - Caf�: R$ 2,00          |');
    Writeln('| 4 - Sandu�che: 5,00        |');
    Writeln('| 4- P�o de queijo: R$ 3,50  |');
    Writeln('| 6 - Pastel: R$ 4,50        |');
    Writeln('|                            |');
    Writeln('|____________________________|');

    Writeln('Quantos itens voc� quer comprar?');
    Readln(compras);

    for i := 0 to compras - 1 do
      begin
        Writeln(Format('Escolha seu item de n�mero %d', [i + 1]));
        Readln(escolha);
        carrinho := carrinho + produtos[escolha - 1];
      end;

    Writeln(Format('Voc� precisa pagar R$%.2f...', [carrinho]));

    Readln;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
