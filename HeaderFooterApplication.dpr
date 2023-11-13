program HeaderFooterApplication;

uses
  System.StartUpCopy,
  FMX.Forms,
  HeaderFooterTemplate in 'HeaderFooterTemplate.pas' {Love};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLove, Love);
  Application.Run;
end.
