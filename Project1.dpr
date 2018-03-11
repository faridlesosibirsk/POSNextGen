program Project1;

uses
  Vcl.Forms,
  Unit1 in 'ui\Unit1.pas' {Form1},
  USalesLineItem in 'domain\USalesLineItem.pas',
  UProductDescription in 'domain\UProductDescription.pas',
  UProductCatalog in 'domain\UProductCatalog.pas',
  UPayment in 'domain\UPayment.pas',
  USale in 'domain\USale.pas',
  URegister in 'domain\URegister.pas',
  UStore in 'domain\UStore.pas',
  UAddress in 'domain\UAddress.pas',
  UMoney in 'domain\UMoney.pas',
  UItemID in 'domain\UItemID.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
