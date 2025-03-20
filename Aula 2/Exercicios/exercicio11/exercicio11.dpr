program exercicio11;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
  siglas: array[0..26] of string = ('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO', 'DF');
  info: array[0..26] of string = ('Acre, Rio Branco', 'Alagoas, Macei�', 'Amap�, Macap�', 'Amazonas, Manaus', 'Bahia, Salvador', 'Cear�, Fortaleza', 'Espirito Santo, Vit�ria', 'Goi�s, Goi�nia', 'Maranh�o, S�o Lu�z', 'Mato Grosso, Cuiab�', 'Mato Grosso do Sul, Campo Grande', 'Minas Gerais, Belo Horizonte', 'Par�, Bel�m', 'Para�ba, Jo�o Pessoa', 'Paran�, Cuiab�', 'Pernambuco, Recife', 'Piau�, Teresina', 'Rio de Janeioro, Rio de Janeiro', 'Rio Grande do Norte, Natal', 'Rio Grande do Sul, Porto Alegre', 'Rond�nia, Porto Velho', 'Roraima, Boa Vista', 'Santa Catarina, Florian�polis', 'S�o Paulo, S�o Paulo', 'Sergipe, Aracaju', 'Tocantins, Palmas', 'Distrito Federal, Bras�lia');

var
  i: Integer;
  value: string;

begin
  try
    WriteLn('Por favor insira a s�gla de algum Estado Brasileiro');
    Readln(value);

    for i := 0 to 26 do
      begin
          if value = siglas[i] then
            begin
              Writeln(Format('%s', [info[i]]));
              Break
            end;
      end;
    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
