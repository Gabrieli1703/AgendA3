program prjAgend;

uses
  Vcl.Forms,
  uAgend in 'uAgend.pas' {Form1},
  uCadastros in 'uCadastros.pas' {frmCadastro},
  Vcl.Themes,
  Vcl.Styles,
  uBuscar in 'uBuscar.pas' {frmbusca};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cyan Night');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(Tfrmbusca, frmbusca);
  Application.Run;
end.
