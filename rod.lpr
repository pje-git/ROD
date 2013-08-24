program rod;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, UGlowny, tachartlazaruspkg, lazcontrols, dbflaz,
  runtimetypeinfocontrols, memdslaz, sdflaz, udm, PJGlobal
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TDataModuleROD, DataModuleROD);
  Application.CreateForm(TFGlowny, FGlowny);

  Application.Run;
end.

