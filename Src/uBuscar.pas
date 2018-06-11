unit uBuscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tfrmbusca = class(TForm)
    sgBusca: TStringGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit6: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit4: TEdit;
    Edit7: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RadioGroup2: TRadioGroup;
    RadioGroup1: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure mostrastring();
    procedure sgBuscaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    function verificaTudo():Integer;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbusca: Tfrmbusca;

implementation

uses uAgend;

{$R *.dfm}

procedure Tfrmbusca.BitBtn1Click(Sender: TObject);
begin
frmbusca.close;
Form1.Show;
end;

procedure Tfrmbusca.BitBtn2Click(Sender: TObject);
begin

  if (sgBusca.Row >= 0) then
  begin

    agenda[sgBusca.Row].StatusReg := FALSE;

   end;

   mostrastring();

end;

procedure Tfrmbusca.Button1Click(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
      1:
      ShowMessage('1 ');
      2:
      ShowMessage('2 ');
  end;
end;

procedure Tfrmbusca.Button2Click(Sender: TObject);
begin
   // CONSULTAR OS CAMPOS
   // VERIFICAR SE TUDO É VÁLIDO
   IF true  THEN
   BEGIN
       sgbusca.Cells[0,sgbusca.row] := Edit1.Text;
       sgbusca.Cells[1,sgbusca.row] := Edit2.Text;
       sgbusca.Cells[2,sgbusca.row] := Edit3.Text;
       sgbusca.Cells[3,sgbusca.row] := Edit4.Text;
       sgbusca.Cells[4,sgbusca.row] := Edit5.Text;
       sgbusca.Cells[5,sgbusca.row] := Edit6.Text;
       sgbusca.Cells[6,sgbusca.row] := Edit7.Text;


       if RadioGroup2.ItemIndex = 0 then
       begin
         sgbusca.Cells[7,sgbusca.row] := 'Masculino';
       end
       else
       begin
          sgbusca.Cells[7,sgbusca.row] := 'Feminino';
       end;


       if RadioGroup1.ItemIndex = 0 then
       begin
         sgbusca.Cells[8,sgbusca.row] := 'Casado(a)';
       end
       else if RadioGroup1.ItemIndex = 1 then
       begin
          sgbusca.Cells[8,sgbusca.row] := 'Solteiro(a)';
       end
       else if RadioGroup1.ItemIndex = 2 then
       begin
          sgbusca.Cells[8,sgbusca.row] := 'Viúvo(a)';
       end
       else if RadioGroup1.ItemIndex = 3 then
       begin
          sgbusca.Cells[8,sgbusca.row] := 'Divorciado(a)';
       end;

   END;
   mostrastring();
end;

procedure Tfrmbusca.mostrastring();
var i,j : integer;
begin
      sgbusca.Cells[0,0] := 'Nome';
      sgbusca.Cells[1,0] := 'Idade';
      sgbusca.Cells[2,0] := 'Fone';
      sgbusca.Cells[3,0] := 'Endereço';
      sgbusca.Cells[4,0] := 'Cidade';
      sgbusca.Cells[5,0] := 'Bairro';
      sgbusca.Cells[6,0] := 'Cep';
      sgbusca.Cells[7,0] := 'Sexo';
      sgbusca.Cells[8,0] := 'Est. Civil';

      j := 1;
      for i := 0 to 100 do
      begin
        if agenda[i].StatusReg = true then
        begin

          j:= j + 1;

        end;
      end;

      sgBusca.RowCount := j;


      j := 1;
      for i := 0 to 100 do
      begin
        if agenda[i].StatusReg = true then
        begin
          sgbusca.Cells[0,j] := agenda[i].Nome;
          sgbusca.Cells[1,j] := agenda[i].Idade;
          sgbusca.Cells[2,j] := agenda[i].Fone;
          sgbusca.Cells[3,j] := agenda[i].Endereco;
          sgbusca.Cells[4,j] := agenda[i].Cidade;
          sgbusca.Cells[5,j] := agenda[i].Bairro;
          sgbusca.Cells[6,j] := agenda[i].cep;

          if (agenda[i].Sexo = 'M') then
          begin
            sgbusca.Cells[7,j] := 'Masculino';
          end
          else
          begin
            sgbusca.Cells[7,j] := 'Feminino';
          end;

          if (agenda[i].Estado = 'C') then
          begin
            sgbusca.Cells[8,j] := 'Casado';
          end
          else  if (agenda[i].Estado = 'S') then
          begin
            sgbusca.Cells[8,j] := 'Solteiro';
          end
          else  if (agenda[i].Estado = 'V') then
          begin
            sgbusca.Cells[8,j] := 'Viúvo';
          end
          else  if (agenda[i].Estado = 'D') then
          begin
            sgbusca.Cells[8,j] := 'Divorciado';
          end;


          j := j + 1;
        end;
      end;

end;

procedure Tfrmbusca.sgBuscaClick(Sender: TObject);
  var i : integer ;
begin

       Edit1.Text := sgbusca.Cells[0,sgbusca.row];
       Edit2.Text := sgbusca.Cells[1,sgbusca.row];
       Edit3.Text := sgbusca.Cells[2,sgbusca.row];
       Edit4.Text := sgbusca.Cells[3,sgbusca.row];
       Edit5.Text := sgbusca.Cells[4,sgbusca.row];
       Edit6.Text := sgbusca.Cells[5,sgbusca.row];
       Edit7.Text := sgbusca.Cells[6,sgbusca.row];

       if( sgbusca.Cells[7,sgbusca.row] = 'Masculino') then
       begin
          RadioGroup2.ItemIndex := 0;
       end
       else
       begin
          RadioGroup2.ItemIndex := 1;
       end;

       if( sgbusca.Cells[8,sgbusca.row] = 'Casado') then
       begin
          RadioGroup1.ItemIndex := 0;
       end
       else if( sgbusca.Cells[8,sgbusca.row] = 'Solteiro') then
       begin
          RadioGroup1.ItemIndex := 1;
       end
        else if( sgbusca.Cells[8,sgbusca.row] = 'Viúvo') then
       begin
          RadioGroup1.ItemIndex := 2;
       end
        else if( sgbusca.Cells[8,sgbusca.row] = 'Divorciado') then
       begin
          RadioGroup1.ItemIndex := 3;
       end;

end;

function Tfrmbusca.verificaTudo: Integer;
begin
    result := 1;
    // ZERO SE NÃO PARA EDITAR
    // UM SE DÁ PARA EDITAR
end;

end.
