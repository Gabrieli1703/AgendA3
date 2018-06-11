unit uCadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmCadastro = class(TForm)
    edNome: TEdit;
    edBairro: TEdit;
    edIdade: TEdit;
    edEnder: TEdit;
    lbPreencha: TLabel;
    lbNome: TLabel;
    lbBairro: TLabel;
    lbEnder: TLabel;
    lbFone: TLabel;
    lbProfis: TLabel;
    lbCidade: TLabel;
    lbEnfebaixo: TLabel;
    lbEnfecima: TLabel;
    edCidade: TEdit;
    lbCEP: TLabel;
    edFone: TMaskEdit;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    edcep: TMaskEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      Nome: string[40];
      Idade: string[3];
			Endereco: string[50];
			Fone: string[15];
			Profissao: string[20];
			Cidade: string[20];
			Estado: string[2];
			Bairro: string[15];
			Cep: string[10];

  end;

var
  frmCadastro: TfrmCadastro;

implementation

uses uAgend;

{$R *.dfm}

procedure TfrmCadastro.Button1Click(Sender: TObject);
var i,n  : integer;
  z: Integer;
  flag : boolean;
  flag1 : boolean;
begin
flag := TRUE;
flag1 := FALSE;
   i := 0;
   while(i < 100) do
   begin
   // Verificar na agenda se existe espaço para cadastro
   if (Agenda[i].StatusReg = FALSE) then
   begin

          for z := 0 to 100 do
            begin
              if (agenda[z].StatusReg = True) and (Agenda[z].Nome = ednome.Text) then
              begin
                flag := FALSE;



              end;

            end;
            for z := 0 to 100 do
            begin
               if (agenda[z].StatusReg = False) then
               begin
                 flag1 := TRUE
               end;
            end;

             // SE NÃO EXISTIR NINGÚEM CADASTRADO COM O NOME E EXISTIR ESPAÇO CADASTRA CONTATO
             if (Flag = TRUE AND flag1 = TRUE) then
             begin
                    if ((strtoint(edIdade.Text) > 1) and (strtoint(edIdade.Text) < 150)) then
                    begin
                         Agenda[i].nome := edNome.Text;
                         Agenda[i].StatusReg := TRUE;
                         Agenda[i].Endereco := edender.Text;
                         Agenda[i].Fone := edfone.text;
                         Agenda[i].Cidade := edcidade.text;
                         Agenda[i].Bairro := edbairro.Text;
                         Agenda[i].Cep := edcep.text;
                         Agenda[i].Idade := edidade.Text;
                         if(RadioGroup2.ItemIndex = 0) then
                         begin
                           Agenda[i].Sexo := 'M';
                         end
                         else if (RadioGroup2.ItemIndex = 1) then
                         begin
                           Agenda[i].Sexo := 'F';
                         end
                         else
                         begin
                           Messagedlg('Sexo não informado!', mtError, [mbOk],0);
                           Exit;
                         end;

                         if(RadioGroup1.ItemIndex = 0) then
                         begin
                           Agenda[i].Estado := 'C';
                         end
                         else if (RadioGroup1.ItemIndex = 1) then
                         begin
                           Agenda[i].Estado := 'S';
                         end
                         else if (RadioGroup1.ItemIndex = 2) then
                         begin
                           Agenda[i].Estado := 'V';
                         end
                         else if (RadioGroup1.ItemIndex = 3) then
                         begin
                           Agenda[i].Estado := 'D';
                         end
                         else
                         begin
                           Messagedlg('Estado Civil não informado!', mtError, [mbOk],0);
                           Exit;
                         end;

                        Messagedlg('Usuário cadastrado com sucesso', mtConfirmation, [mbOk],0);
                        frmCadastro.Close;
                    end
                    else
                    begin
                          Messagedlg('Esta idade não está compatível', mtError, [mbOk],0);
                          Exit;
                    end;
             end
             else
             begin
               Messagedlg('Este nome já existe na agenda', mtError, [mbOk],0);
               Exit;
             end;

      break;

   end;
   i := i + 1;

  end;


end;
end.
