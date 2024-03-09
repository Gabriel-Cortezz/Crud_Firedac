unit Remover;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TExcluir = class(TForm)
    Label1: TLabel;
    btnConfimarExclui: TButton;
    btnCancelarExclui: TButton;
    CaixadeExcluir: TEdit;
    Label2: TLabel;
    procedure btnCancelarExcluiClick(Sender: TObject);
    procedure btnConfimarExcluiClick(Sender: TObject);
    //procedure btnConfimarExcluiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Excluir: TExcluir;

implementation

  uses
    bd;

{$R *.dfm}

procedure TExcluir.btnCancelarExcluiClick(Sender: TObject);
begin
  close;
end;


procedure TExcluir.btnConfimarExcluiClick(Sender: TObject);

  var Codigo: Integer;

begin

    // Extrair o c�digo do funcion�rio da caixa de texto
  Codigo := StrToIntDef(CaixadeExcluir.Text, 0);

  // Verificar se o c�digo do funcion�rio � v�lido
  if Codigo > 0 then
  begin
    // Executar uma instru��o SQL para excluir o funcion�rio com base no c�digo
    DataModule3.FDQuery1.SQL.Text := 'DELETE FROM Funcionario WHERE Codigo = :Codigo';
    DataModule3.FDQuery1.ParamByName('Codigo').AsInteger := Codigo;
    DataModule3.FDQuery1.ExecSQL;
    ShowMessage('Excluido com sucesso');

    // Atualizar o grid da tela principal
    DataModule3.FDQuery1.SQL.Text := 'SELECT * FROM Funcionario';
    DataModule3.FDQuery1.Open;
    Close;
  end
  else
  begin
    // Exibir uma mensagem de erro se o c�digo do funcion�rio n�o for v�lido
    ShowMessage('Por favor, insira um c�digo de funcion�rio v�lido.');
  end;
end;

end.
