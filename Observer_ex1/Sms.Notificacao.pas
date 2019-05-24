unit Sms.Notificacao;

interface

uses
  Notificacao;

type

  TSMSNotificacao = class(TNotificacao)
    procedure Notificar; override;
  end;

implementation

{ TSMSNotificacao }



procedure TSMSNotificacao.Notificar;
begin
  inherited;
  { Processo de envio de SMS }
  Memo.Lines.Add('Notificação de SMS enviada com sucesso! Mensagem: < ' + Mensagem + ' >');
end;

end.
