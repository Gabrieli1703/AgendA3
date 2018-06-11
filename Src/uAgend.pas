unit uAgend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastros, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

 TYPE
			CONTATO = record
			Nome: string[40];

			Endereco: string[50];
			Fone: string[15];
      Idade: string[3];
			Profissao: string[20];
			Cidade: string[20];
			Estado: string[2];
      Sexo: string[2];
			Bairro: string[15];
			Cep: string[10];
			StatusReg: BOOLEAN;
		END;


var
  Form1: TForm1;
  Agenda: Array[0..100] of CONTATO;
  Arquivo: file of CONTATO;


implementation

{$R *.dfm}

uses uBuscar;

procedure TForm1.Button1Click(Sender: TObject);
begin

frmbusca.mostrastring();
frmbusca.showmodal;


end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
    REWRITE(ARQUIVO);
		i := 0;
		WHILE i < 100 DO
		BEGIN

			IF ( AGENDA[i].StatusReg = TRUE) THEN
			BEGIN
				WRITE(ARQUIVO, AGENDA[i]);
			END ;
      i := i + 1;
		END ;
    CLOSEFILE(ARQUIVO);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
    i := 0;
		WHILE i < 100 DO
		BEGIN
			Agenda[i].StatusReg := FALSE;
			i := i + 1;
		END;

		AssignFile(ARQUIVO, 'AGENDABD.TXT');

	 	IF FILEEXISTS('AGENDABD.TXT') THEN
		BEGIN
			RESET(ARQUIVO);
		END
		ELSE
    begin
			REWRITE(ARQUIVO);
		END;

    SEEK(ARQUIVO,0); // posiciona o ponteiro de registros no início do arquivo

		i := 0;
		WHILE (NOT EOF(ARQUIVO)) DO
		BEGIN

			READ(ARQUIVO,AGENDA[i]);
			i := i + 1;

		END ;
end;


procedure TForm1.Image1Click(Sender: TObject);
begin
    frmCadastro.Visible := True;
end;

end.


