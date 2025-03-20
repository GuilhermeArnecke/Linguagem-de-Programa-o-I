program exercicio11;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
  siglas: array[0..26] of string = ('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO', 'DF');
  info: array[0..26] of string = ('Acre, Rio Branco', 'Alagoas, Maceió', 'Amapá, Macapá', 'Amazonas, Manaus', 'Bahia, Salvador', 'Ceará, Fortaleza', 'Espirito Santo, Vitória', 'Goiás, Goiânia', 'Maranhão, São Luíz', 'Mato Grosso, Cuiabá', 'Mato Grosso do Sul, Campo Grande', 'Minas Gerais, Belo Horizonte', 'Pará, Belém', 'Paraíba, João Pessoa', 'Paraná, Cuiabá', 'Pernambuco, Recife', 'Piauí, Teresina', 'Rio de Janeioro, Rio de Janeiro', 'Rio Grande do Norte, Natal', 'Rio Grande do Sul, Porto Alegre', 'Rondônia, Porto Velho', 'Roraima, Boa Vista', 'Santa Catarina, Florianópolis', 'São Paulo, São Paulo', 'Sergipe, Aracaju', 'Tocantins, Palmas', 'Distrito Federal, Brasília');

var
  i: Integer;
  value: string;

begin
  try
    WriteLn('Por favor insira a sígla de algum Estado Brasileiro');
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
