program Project1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Criar in 'Criar.pas' {FormularioCriar},
  Remover in 'Remover.pas' {Excluir},
  bd in 'bd.pas' {DataModule3: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormularioCriar, FormularioCriar);
  Application.CreateForm(TExcluir, Excluir);
  Application.CreateForm(TDataModule3, DataModule3);
  Application.Run;
end.
