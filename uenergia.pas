unit UEnergia;

{$mode objfpc}{$H+}

interface

uses
  Forms, ComCtrls, ExtendedNotebook;

type

  { TFEnergia }

  TFEnergia = class(TForm)
    emEnergia: TExtendedNotebook;
    tsRozliczenie: TTabSheet;
    tsUstawienia: TTabSheet;
    tsWydruk: TTabSheet;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fEnergia: TFEnergia;

implementation

{$R *.lfm}

end.

