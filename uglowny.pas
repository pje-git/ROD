unit UGlowny;

{$mode objfpc}{$H+}

interface

uses
  mysql55conn, sqldb, db, Forms, ExtCtrls,
  StdCtrls, ComCtrls, Menus, ActnList,
  IniPropStorage,
  TreeFilterEdit, CodyCtrls, LSControls, spkt_Tab, spkt_Pane,
  spkt_Buttons, spkt_Checkboxes, FZCommon, eventlog,

//  formy
  UEnergia, UDzialka;

type

  { TFGlowny }

  TFGlowny = class(TForm)
    aClose: TAction;
    aSprzedarz: TAction;
    aSala: TAction;
    aDzialkowiec: TAction;
    aImport: TAction;
    aExport: TAction;
    aWoda: TAction;
    aEnergia: TAction;
    alGlowny: TActionList;
    CodyTreeView1: TCodyTreeView;
    dsDzialka: TDatasource;
    Edit1: TEdit;
    bDziaki: TFZDropDownButton;
    FZDropDownButton2: TFZDropDownButton;
    FZDropDownButton3: TFZDropDownButton;
    FZDropDownButton4: TFZDropDownButton;
    FZDropDownButton5: TFZDropDownButton;
    logDzialka: TEventLog;
    IniDzialka: TIniPropStorage;
    Label2: TLabel;
    tiROD: TLSTrayIcon;
    mSets: TMenuItem;
    mAdmin: TMenuItem;
    mMaintenance: TMenuItem;
    mNarzedzia: TMenuItem;
    mGlowne: TMainMenu;
    mDzialkowiec: TMenuItem;
    mSprzedarz: TMenuItem;
    mWalne: TMenuItem;
    MySQLCon: TMySQL55Connection;
    mZarzad: TMenuItem;
    mRozliczenia: TMenuItem;
    mPomoc: TMenuItem;
    mClose: TMenuItem;
    mWoda: TMenuItem;
    mSala: TMenuItem;
    mPrad: TMenuItem;
    mExport: TMenuItem;
    mImport: TMenuItem;
    mFile: TMenuItem;
    mObsluga: TMenuItem;
    mKsiegowosc: TMenuItem;
    pgConfig: TTabSheet;
    tbGlowny: TPageControl;
    pGlowny: TPanel;
    SpkCheckbox1: TSpkCheckbox;
    SpkCheckbox2: TSpkCheckbox;
    SpkCheckbox3: TSpkCheckbox;
    SpkLargeButton1: TSpkLargeButton;
    SpkLargeButton2: TSpkLargeButton;
    SpkLargeButton3: TSpkLargeButton;
    SpkLargeButton4: TSpkLargeButton;
    SpkPane1: TSpkPane;
    SpkPane2: TSpkPane;
    SpkPane3: TSpkPane;
    SpkRadioButton1: TSpkRadioButton;
    SpkRadioButton2: TSpkRadioButton;
    SpkRadioButton3: TSpkRadioButton;
    SpkRadioButton4: TSpkRadioButton;
    SpkRadioButton5: TSpkRadioButton;
    SpkSmallButton1: TSpkSmallButton;
    SpkSmallButton2: TSpkSmallButton;
    SpkSmallButton3: TSpkSmallButton;
    SpkSmallButton4: TSpkSmallButton;
    SpkSmallButton5: TSpkSmallButton;
    SpkTab1: TSpkTab;
    SpkTab2: TSpkTab;
    SpkTab3: TSpkTab;
    SpkTab4: TSpkTab;
    SpkTab5: TSpkTab;
    SpkTab6: TSpkTab;
    sqlDzialka1: TSQLQuery;
    sqlDzialka1imie: TStringField;
    sqlDzialka1metraz: TLongintField;
    sqlDzialka1nazwisko: TStringField;
    sqlDzialka1numer: TStringField;
    sbGlowny: TStatusBar;
    pgModyly: TTabSheet;
    pgSzukaj: TTabSheet;
    pgLista: TTabSheet;
    trDzialka: TSQLTransaction;
    TreeFilterEdit1: TTreeFilterEdit;
    procedure FormCreate(Sender: TObject);
    procedure FZDropDownButton3Click(Sender: TObject);
    procedure MySQLConAfterConnect(Sender: TObject);
    procedure MySQLConLog(Sender: TSQLConnection; EventType: TDBEventType;
      const Msg: String);
  private
    const POLACZONO_Z_BAZA: String = 'Połączono z bazą ';
    const NIE_POLACZONO_Z_BAZA: String = 'Nie połączono z bazą ';
    { private declarations }
  public
    { public declarations }
  end;

var
  FGlowny: TFGlowny;
  //FormEnergia: TFormEnergia;
  //FEnergia: TForEnergia;
  //MySQLConn: TMySQL55Connection;


implementation

{$R *.lfm}

{ TFGlowny }

procedure TFGlowny.MySQLConAfterConnect(Sender: TObject);
begin
  with MySQLCon do begin
    if Connected then sbGlowny.Panels.Items[1].Text := POLACZONO_Z_BAZA + DatabaseName
    else sbGlowny.Panels.Items[1].Text := NIE_POLACZONO_Z_BAZA + DatabaseName;
  end;
end;

procedure TFGlowny.MySQLConLog(Sender: TSQLConnection; EventType: TDBEventType;
  const Msg: String);
begin
  logDzialka.Info(Msg);
end;


procedure TFGlowny.FormCreate(Sender: TObject);
begin
  sqlDzialka1.Active:=TRUE;
end;

procedure TFGlowny.FZDropDownButton3Click(Sender: TObject);
begin
  if not Assigned (fEnergia) then    // sprawdzasz czy istnieje
       fEnergia := TFEnergia.Create(fEnergia);  //jeżeli nie to tworzysz
  fEnergia.Show
  //if not Assigned (fDzialka) then    // sprawdzasz czy istnieje
  //     fDzialka := TFDzialka.Create(fDzialka);  //jeżeli nie to tworzysz
  //fDzialka.Show
end;

end.

