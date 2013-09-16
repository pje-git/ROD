unit UGlowny;

{$mode objfpc}{$H+}

interface

uses
  mysql55conn, sqldb, db, BufDataset, memds, dbf, SdfData, Forms, ExtCtrls,
  StdCtrls, ComCtrls, Menus, ActnList, DBGrids, Calendar, EditBtn,
  IniPropStorage, DbCtrls, BarChart, ExtDlgs, PopupNotifier, DividerBevel,
  TreeFilterEdit, LvlGraphCtrl, ShortPathEdit, ListFilterEdit, IpHtml,
  Ipfilebroker, ovcvlb, TplShapesUnit, VirtualTrees, vte_configtree,
  vte_treedata, vte_json, vte_initree, CodyCtrls, rxctrls, RxViewsPanel, RxMDI,
  pagemngr, duallist, BGRAKnob, BGRALabelFX, BGRAFlashProgressBar, BCLabel,
  OWLComps, OWLStateComps, LSControls, SpkToolbar, spkt_Tab, spkt_Pane,
  spkt_Buttons, spkt_Checkboxes, SpiderForm, ELDsgxObjectInsp, ELDsgxSurface,
  TplShapeProgressUnit, TplLCDScreenUnit, TplStatusBarUnit, VpCalendar,
  ubarcodes, cyColorMatrix, FZDB, FZCommon, FZBase, JDBGridControl, udm,
  PJGlobal, ToggleLabel, WizardControls, LuiConfig, logtreeview, eventlog,
  Classes;

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
    LSTrayIcon1: TLSTrayIcon;
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
    procedure aSprzedarzExecute(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure mSprzedarzClick(Sender: TObject);
    procedure MySQLConAfterConnect(Sender: TObject);
    procedure MySQLConLog(Sender: TSQLConnection; EventType: TDBEventType;
      const Msg: String);
    procedure Panel1Click(Sender: TObject);
    procedure sqlDzialka1BeforeClose(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
  private
    const POLACZONO_Z_BAZA: String = 'Połączono z bazą ';
    const NIE_POLACZONO_Z_BAZA: String = 'Nie połączono z bazą ';
    procedure ConnectToMySQL55;
    { private declarations }
  public
    { public declarations }
  end;

var
  FGlowny: TFGlowny;
{
MySQLConn: TMySQL55Connection;
}

implementation

{$R *.lfm}

{ TFGlowny }

procedure CosTam(s: String);
begin

end;

procedure TFGlowny.mSprzedarzClick(Sender: TObject);
begin
  aSprzedarz.Execute;
end;

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

procedure TFGlowny.Panel1Click(Sender: TObject);
begin

end;

procedure TFGlowny.sqlDzialka1BeforeClose(DataSet: TDataSet);
begin
end;
procedure TFGlowny.ToolButton1Click(Sender: TObject);
begin
   sqlDzialka1.ExecSQL;
end;

procedure TFGlowny.ConnectToMySQL55;
begin
  with DataModuleROD.MySQLCon do if Connected = FALSE then Connected:=True
    else Connected:=False;
end;

procedure TFGlowny.FormCreate(Sender: TObject);
begin
  sqlDzialka1.Active:=TRUE;
//  DataModuleROD.lStatusMsg:=lStatus;
//  DataModuleROD.rStatusShape:=rStatus;
//  DataModuleROD.bConnect:=Button1;
//  ConnectToMySQL55;
end;

procedure TFGlowny.aSprzedarzExecute(Sender: TObject);
begin
  Edit1.Text:='Dupa blada';
end;

procedure TFGlowny.Edit1Enter(Sender: TObject);
begin
  if Edit1.Text = 'Podaj numer' then Edit1.Text := '';
end;

procedure TFGlowny.FormActivate(Sender: TObject);
begin

end;

procedure TFGlowny.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
//    trDzialka.Commit;
//    trDzialka.EndTransaction;
//    trDzialka.Active:=FALSE;

end;


end.

