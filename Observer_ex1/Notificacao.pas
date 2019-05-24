unit Notificacao;

interface

uses
  Spring.DesignPatterns,
  Vcl.StdCtrls;

type

  TNotificacao = class abstract
  private
    FMemo: TMemo;
    FMensagem: String;
  public
    constructor Create(AMemo: TMemo; AMensagem: String = '');
    procedure Notificar; virtual; abstract;
    property Memo: TMemo read FMemo;
    property Mensagem: String read FMensagem;
  end;

implementation

{ TNotificacao }



constructor TNotificacao.Create(AMemo: TMemo; AMensagem: String);
begin
  inherited Create;
  FMemo     := AMemo;
  FMensagem := AMensagem;
end;

end.
