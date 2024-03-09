unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls
  ,Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ComCtrls
  ;

type
  TForm1 = class(TForm)
    btnCriar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    DBGrid1: TDBGrid;
    btnSairdaAplicacao: TButton;
    CaixaNome: TEdit;
    CaixaCpf: TEdit;
    datanascimento: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Caixadecodigo: TEdit;
    Codigo: TLabel;
    procedure btnCriarClick(Sender: TObject);
    procedure btnSairdaAplicacaoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  uses bd, Criar, Remover;

{$R *.dfm}

procedure TForm1.btnCriarClick(Sender: TObject);

begin

  TFormularioCriar.Create(nil).ShowModal; //Criar
  FormularioCriar.Free;

end;


procedure TForm1.btnEditarClick(Sender: TObject);
  var Codigo: Integer;
begin
  // Verifica se os campos estão preenchidos
  if (CaixaNome.Text = '') or (CaixaCpf.Text = '') or (datanascimento.Date = 0)
      or (Caixadecodigo.Text = '')
  then
  begin
    ShowMessage('Preencha todos os campos primeiro');
    Exit;
  end;

  // Verifica se o código é um número válido
  if not TryStrToInt(Caixadecodigo.Text, Codigo) then
  begin
    ShowMessage('O código deve ser um número válido');
    exit;
  end;

  try
    DataModule3.FDQuery1.SQL.Text := 'UPDATE funcionario SET Nome = :nome, DataNascimento = :datanascimento, CPF = :cpf WHERE Codigo = :codigo';
    DataModule3.FDQuery1.ParamByName('Nome').AsString := CaixaNome.Text;
    DataModule3.FDQuery1.ParamByName('CPF').AsString := CaixaCpf.Text;
    DataModule3.FDQuery1.ParamByName('DataNascimento').AsDate := datanascimento.DateTime;
    DataModule3.FDQuery1.ParamByName('Codigo').AsInteger := Codigo;
    DataModule3.FDQuery1.ExecSQL;
    DataModule3.FDQuery1.SQL.Text := 'SELECT * FROM funcionario';
    DataModule3.FDQuery1.Open;
    ShowMessage('Registro atualizado com sucesso');

  except
    ShowMessage('Ocorreu um erro ao atualizar o registro');
    DataModule3.FDQuery1.SQL.Text := 'SELECT * FROM funcionario';
    DataModule3.FDQuery1.Open;
  end;
end;

procedure TForm1.btnExcluirClick(Sender: TObject);

begin

  TExcluir.Create(nil).ShowModal; //Criar
  Excluir.Free;

end;


procedure TForm1.btnSairdaAplicacaoClick(Sender: TObject);
begin
  Close;
end;


procedure TForm1.FormShow(Sender: TObject);
begin
  DataModule3.FDQuery1.Open();
end;

end.
