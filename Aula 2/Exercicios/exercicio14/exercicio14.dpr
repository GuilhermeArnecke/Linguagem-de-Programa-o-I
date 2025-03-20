program exercicio14;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.Generics.Collections,
  System.SysUtils;

type
  TProduto = record
    Codigo: Integer;
    Descricao: string;
    Valor: Double;
  end;

var
  Estoque: TDictionary<Integer, TProduto>;
  Produto: TProduto;
  escolha: Integer;
  codigo: Integer;
  descricao: string;
  valor: Double;
  pesquisa: Integer;

begin
  Estoque := TDictionary<Integer,TProduto>.Create;

  try

    repeat
      Writeln('O que deseja fazer?');
      Writeln(' __________________________________ ');
      Writeln('|                                  |');
      Writeln('| 1- Cadastrar um Novo Produto     |');
      Writeln('| 2- Listar Produtos Cadastrados   |');
      Writeln('| 3- Pesquisar Produto Pelo C�digo |');
      Writeln('| 4- Excluir um Produto            |');
      Writeln('| 5- Sair do Sistema               |');
      Writeln('|__________________________________|');

      Readln(escolha);

      case escolha of
        1:
          begin
            Writeln('Por favor, insira as informa��es do Produto, OBRIGAT�RIO:');
            WriteLn('C�digo');
            Readln(codigo);
            WriteLn('Descri��o');
            Readln(descricao);
            WriteLn('Valor');
            Readln(valor);

            Produto.Codigo := codigo;
            Produto.Descricao := descricao;
            Produto.Valor := valor;

            if Estoque.ContainsKey(Produto.Codigo) then
              begin
                Writeln('ATEN��O: O Produto j� foi cadastrado.');
              end
            else
              begin
                Estoque.Add(codigo, Produto);
              end;
            Writeln('...');
            Writeln('Produto adicionado com sucesso, precione qualquer tecla para prosseguir...');
            Readln;
          end;
        2:
          begin
            for Produto in Estoque.Values do
            begin
              Writeln('C�digo: ', Produto.Codigo , ' Descri��o: ' , Produto.Descricao , ' Valor: ' , Produto.Valor:0:2);
            end;
            Writeln('');
            Writeln('Pressione qualquer tecla para prosseguir...');
            Readln;
          end;
        3:
          begin
            Writeln('Por favor insira o c�digo da pe�a que deseja pesquisar:');
            Readln(pesquisa);

            if Estoque.TryGetValue(pesquisa, Produto) then
              begin
                Writeln('C�digo: ', Produto.Codigo , ' Descri��o: ' , Produto.Descricao , ' Valor: ' , Produto.Valor:0:2)
              end
            else
              begin
                Writeln('Produto n�o encontrado...');
              end;
            Writeln('');
            Writeln('Pressione qualquer tecla para prosseguir');
            Readln;
          end;
        4:
          begin
            Writeln('Digite o C�digo do produto que deseja deletar:');
            Readln(pesquisa);

            if Estoque.ContainsKey(pesquisa) then
              begin
                Estoque.Remove(pesquisa);
                Writeln('O Produto foi removido do estoque');
              end
            else
              begin
                Writeln('Produto n�o encontrado...');
              end;
            Writeln('');
            Writeln('Pressione qualquer tecla para prosseguir');
            Readln;
          end;
        5:
          begin
            Writeln('At� mais...');
            Readln;
            Estoque.Free;
            Break
          end;
      end;

    until escolha = 5;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
