unit Email.Notificacao;

interface

uses
  Notificacao;

type
  TEmailNotificacao = class(TNotificacao)
    procedure Notificar; override;
  end;

implementation




procedure TEmailNotificacao.Notificar;
begin
  inherited;
  { Processo de envio de e-mail }
  Memo.Lines.Add('Notifica��o de E-mail enviada com sucesso! < %s ' + Mensagem + ' >');
end;

end.
