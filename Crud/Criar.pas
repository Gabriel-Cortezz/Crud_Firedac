unit Criar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFormularioCriar = class(TForm)
    Label1: TLabel;
    btnConfimar: TButton;
    btnCancelar: TButton;
    Caixadenome: TEdit;
    caixadecpf: TEdit;
    txtnome: TLabel;
    txtCpf: TLabel;
    txtData: TLabel;
    Datadenascimento: TDateTimePicker;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfimarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormularioCriar: TFormularioCriar;

implementation

uses
  bd;

{$R *.dfm}

procedure TFormularioCriar.btnCancelarClick(Sender: TObject);
begin
  Close;
end;


procedure TFormularioCriar.btnConfimarClick(Sender: TObject);

begin
  DataModule3.FDQuery1.SQL.Text := 'INSERT INTO Funcionario (Nome, CPF, DataNascimento) VALUES (:Nome, :CPF, :DataNascimento)';
  DataModule3.FDQuery1.ParamByName('Nome').AsString := Caixadenome.Text;
  DataModule3.FDQuery1.ParamByName('CPF').AsString := caixadecpf.Text;
  DataModule3.FDQuery1.ParamByName('DataNascimento').AsDate := Datadenascimento.DateTime;
  ShowMessage('Adicionado com sucesso');

  DataModule3.FDQuery1.ExecSQL;

  DataModule3.FDQuery1.SQL.Text := 'select * from funcionario';
  DataModule3.FDQuery1.Open;

  Close;

end;

end.
