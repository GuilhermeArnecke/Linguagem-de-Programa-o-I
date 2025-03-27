program exercicio13;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
//  custo: array of Double;
//  venda: array of Double;
  produtos, i: Integer;
  custo, totalCusto, venda, totalVenda: Double;

begin
  try
    totalCusto := 0;
    Writeln('Por favor nos diga quantos produtos você produziu:');
    Readln(produtos);

    Writeln('Insira o custo de cada produto');
    for i := 0 to produtos - 1 do
      begin
        Writeln(Format('Valor do produto %d:', [i + 1]));
        Readln(custo);
        totalCusto := totalCusto + custo;
      end;

    Writeln('Insira o valor pelo qual vendeu cada produto');
    for i := 0 to produtos - 1 do
      begin
        Writeln(Format('Valor do produto %d:', [i + 1]));
        Readln(venda);
        totalVenda:= totalVenda + venda;
      end;

    Writeln(Format('Tivemos uma média de R$%.2f de custos', [totalCusto / produtos]));
    Writeln(Format('Tivemos uma média de R$%.2f de vendas', [totalVenda / produtos]));
    if (totalCusto < totalVenda) then
      begin
        Writeln('A empresa obteve lucro com as vendas');
      end
    else if (totalCusto > totalVenda) then
      begin
        Writeln('A empresa obteve prejuízo com as vendas');
      end
    else
      begin
        Writeln('Não foi obtido nem lucro e nem prejuízo');
      end;
    Readln;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
