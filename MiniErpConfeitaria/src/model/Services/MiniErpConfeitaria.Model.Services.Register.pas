unit MiniErpConfeitaria.Model.Services.Register;

interface

type
  TModelServicesRegister = class
    public
      constructor Create;
      destructor Destroy; override;
    private
      procedure RegisterAWS;

  end;

var

  aServicesRegister : TModelServicesRegister;

implementation

uses
  Bind4D, Bind4D.Utils;

{ ModelServicesRegister }

constructor TModelServicesRegister.Create;
begin

end;

destructor TModelServicesRegister.Destroy;
begin

  inherited;
end;

procedure TModelServicesRegister.RegisterAWS;
begin
  TBind4D
    .New
      .AWSService
        .Credential
          .AccountKey('')
          .AccountName('')
          .StorageEndPoint('')
          .Bucket('')
        .&End;
end;

initialization
  aServicesRegister := TModelServicesRegister.Create;

finalization
  aServicesRegister.Free;

end.
