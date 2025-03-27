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
    Writeln('Veja a Seguir nosso cardápio:');
    Writeln(' ____________________________ ');
    Writeln('|                            |');
    Writeln('|                            |');
    Writeln('| 1 - Refrigerante: R$ 4,00  |');
    Writeln('| 2 - Água: R$ 2,50          |');
    Writeln('| 3 - Café: R$ 2,00          |');
    Writeln('| 4 - Sanduíche: 5,00        |');
    Writeln('| 4- Pão de queijo: R$ 3,50  |');
    Writeln('| 6 - Pastel: R$ 4,50        |');
    Writeln('|                            |');
    Writeln('|____________________________|');

    Writeln('Quantos itens você quer comprar?');
    Readln(compras);

    for i := 0 to compras - 1 do
      begin
        Writeln(Format('Escolha seu item de número %d', [i + 1]));
        Readln(escolha);
        carrinho := carrinho + produtos[escolha - 1];
      end;

    Writeln(Format('Você precisa pagar R$%.2f...', [carrinho]));

    Readln;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
