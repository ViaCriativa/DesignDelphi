program ProjectDesign;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.Skia,
  uDesign in 'uDesign.pas' {FormDesign};

{$R *.res}

begin
  GlobalUseSkia := True;
  Application.Initialize;
  Application.CreateForm(TFormDesign, FormDesign);
  Application.Run;
end.
