unit untPredio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPredio = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtInquilino: TEdit;
    edtAndar: TEdit;
    edtAndarSair: TEdit;
    memPredio: TMemo;
    btnAlugar: TButton;
    btnDesalugar: TButton;
    btnListar: TButton;
    procedure btnAlugarClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnDesalugarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPredio: TfrmPredio;
  predio : array[0..9] of string;

implementation

{$R *.dfm}

procedure TfrmPredio.btnAlugarClick(Sender: TObject);
var
    andar : integer;
begin
    andar := StrToInt(edtAndar.Text);

    if((andar < 0) or (andar > 9)) then
      begin
        ShowMessage('Andar não existe no prédio');
        exit;
      end;

    if(predio[andar]<>'') then
      begin
        ShowMessage('Andar já ocupado');
        exit;
      end;

    predio[andar] := edtInquilino.Text;
    edtAndar.Text := '';
    edtInquilino.Text := '';
    ShowMessage('Parabéns, o andar '+IntToStr(andar)+' foi alugado!');

end;

procedure TfrmPredio.btnDesalugarClick(Sender: TObject);
var
    andar : integer;
begin
    andar := StrToInt(edtAndarSair.Text);

    if(predio[andar]='') then
        begin
            ShowMessage('Esta andar já está desocupado');
            exit;
        end;

    ShowMessage(predio[andar]+' deixou o prédio hoje');
    predio[andar] := '';

end;

procedure TfrmPredio.btnListarClick(Sender: TObject);
var
    i: Integer;
    andarString : string;
begin
    memPredio.Lines.clear();

    for i := 0 to 9 do
      begin
          andarString := 'Andar '+IntToStr(i)+': ';

          if(predio[i]='') then
              begin
                memPredio.Lines.Add(andarString + '-');
              end
          else
              begin
                memPredio.Lines.Add(andarString + predio[i]);
              end;
      end;
end;

end.
