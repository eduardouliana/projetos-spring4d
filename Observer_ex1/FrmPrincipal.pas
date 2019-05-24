unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  Notificacao, Vcl.CheckLst;

type
  TFormPrincipal = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    CheckListBox1: TCheckListBox;
    procedure Button1Click(Sender: TObject);
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  Email.Notificacao,
  Sms.Notificacao,
  Notificador;

{$R *.dfm}




procedure TFormPrincipal.Button1Click(Sender: TObject);
var
  oNotificador: TNotificador;
begin
  oNotificador := TNotificador.Create;

  if CheckListBox1.Checked[0] then
    oNotificador.Attach(TEmailNotificacao.Create(Memo1, Edit1.Text));

  if CheckListBox1.Checked[1] then
    oNotificador.Attach(TSMSNotificacao.Create(Memo1, Edit1.Text));

  oNotificador.Notify;

  oNotificador.Free;
end;

end.
