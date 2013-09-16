program rod;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, UGlowny, tachartlazaruspkg, lazcontrols, dbflaz,
  runtimetypeinfocontrols, memdslaz, sdflaz, pl_visualplanitcomp, pl_excontrols,
  pl_exdesign, pl_freefpidercomp, pl_luicontrols, pl_openwire, pl_bgracontrols,
  pl_rx, pl_virtualtrees, pl_shapespak, udm, PJGlobal, UDzialka, UDzialki
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfGlowny, fGlowny);
  Application.Run;

end.

