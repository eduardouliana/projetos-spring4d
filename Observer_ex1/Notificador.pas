unit Notificador;

interface

uses
  Spring.DesignPatterns,
  Notificacao;

type
  TNotificador = class(TObservable<TNotificacao>)
    procedure DoNotify(const ATipoNotificacao: TNotificacao); override;
    destructor Destroy; override;
  end;

implementation

{ TNotificador }



destructor TNotificador.Destroy;
var
  oNotificacao: TNotificacao;
begin
  for oNotificacao in Observers do
    oNotificacao.Free;

  inherited;
end;



procedure TNotificador.DoNotify(const ATipoNotificacao: TNotificacao);
begin
  inherited;

  ATipoNotificacao.Notificar;
end;

end.
