unit UGlowny;

{$mode objfpc}{$H+}

interface

uses
  mysql55conn, sqldb, db, BufDataset, memds, dbf, SdfData, Forms, ExtCtrls,
  StdCtrls, ComCtrls, Menus, ActnList, DBGrids, Calendar, EditBtn,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  IniPropStorage, DbCtrls, BarChart, DividerBevel, udm, PJGlobal, Classes;
=======
  IniPropStorage, DbCtrls, BarChart, DividerBevel, IpHtml, Ipfilebroker, FZDB,
  JDBGridControl, udm, PJGlobal, Classes;
>>>>>>> parent of 04ff3e3... Wyczyszczone, skompiloweane - robota
=======
  IniPropStorage, DbCtrls, BarChart, DividerBevel, IpHtml, Ipfilebroker, FZDB,
  JDBGridControl, udm, PJGlobal, Classes;
>>>>>>> parent of 04ff3e3... Wyczyszczone, skompiloweane - robota
=======
  IniPropStorage, DbCtrls, BarChart, DividerBevel, IpHtml, Ipfilebroker, FZDB,
  JDBGridControl, udm, PJGlobal, Classes;
>>>>>>> parent of 04ff3e3... Wyczyszczone, skompiloweane - robota

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
    Button1: TButton;
    CalcEdit1: TCalcEdit;
    Datasource1: TDatasource;
    Edit1: TEdit;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    dbgDzialki: TDBGrid;
=======
=======
>>>>>>> parent of 04ff3e3... Wyczyszczone, skompiloweane - robota
=======
>>>>>>> parent of 04ff3e3... Wyczyszczone, skompiloweane - robota
    Edit2: TEdit;
    dbgDzialki: TFZDBGrid;
>>>>>>> parent of 04ff3e3... Wyczyszczone, skompiloweane - robota
    IniGeneralSettings: TIniPropStorage;
    Label1: TLabel;
    lStatus: TLabel;
    mSets: TMenuItem;
    mAdmin: TMenuItem;
    mMaintenance: TMenuItem;
    mNarzedzia: TMenuItem;
    mGlowne: TMainMenu;
    mDzialkowiec: TMenuItem;
    mSprzedarz: TMenuItem;
    mWalne: TMenuItem;
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
    pStatus: TPanel;
    rStatus: TShape;
    SQLQuery1: TSQLQuery;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    procedure aSprzedarzExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure mSprzedarzClick(Sender: TObject);
    procedure SQLQuery1BeforeClose(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
  private
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

procedure TFGlowny.SQLQuery1BeforeClose(DataSet: TDataSet);
begin
//  SQLTransaction1.CloseDataSets;
//  SQLTransaction1.EndTransaction;
end;
procedure TFGlowny.ToolButton1Click(Sender: TObject);
begin
   SQLQuery1.ExecSQL;
end;

procedure TFGlowny.ConnectToMySQL55;
begin
  with DataModuleROD.MySQLCon do if Connected = FALSE then begin
    Connected:=True;
    SQLQuery1.ExecSQL;
    SQLQuery1.Active:=TRUE;
    Datasource1.Enabled:=TRUE;
    dbgDzialki.Enabled:=TRUE;
    dbgDzialki.Refresh;
  end else begin
//    SQLTransaction1.Commit;
//    SQLTransaction1.EndTransaction;
//    SQLTransaction1.Active:=FALSE;
//    SQLQuery1.Active:=FALSE;
    Datasource1.Enabled:=FALSE;
    Connected:=False;
  end;
end;

procedure TFGlowny.FormCreate(Sender: TObject);
begin
  DataModuleROD.lStatusMsg:=lStatus;
  DataModuleROD.rStatusShape:=rStatus;
  DataModuleROD.bConnect:=Button1;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
//  SQLTransaction1.EndTransaction;
//  SQLTransaction1.Active:=FALSE;
//  SQLTransaction1.EndTransaction;
=======
  SQLTransaction1.EndTransaction;
  SQLTransaction1.Active:=FALSE;
  SQLTransaction1.EndTransaction;
>>>>>>> parent of 04ff3e3... Wyczyszczone, skompiloweane - robota
=======
  SQLTransaction1.EndTransaction;
  SQLTransaction1.Active:=FALSE;
  SQLTransaction1.EndTransaction;
>>>>>>> parent of 04ff3e3... Wyczyszczone, skompiloweane - robota
=======
  SQLTransaction1.EndTransaction;
  SQLTransaction1.Active:=FALSE;
  SQLTransaction1.EndTransaction;
>>>>>>> parent of 04ff3e3... Wyczyszczone, skompiloweane - robota
  ConnectToMySQL55;
end;

procedure TFGlowny.aSprzedarzExecute(Sender: TObject);
begin
  Edit1.Text:='Dupa blada';
end;

procedure TFGlowny.Button1Click(Sender: TObject);
begin
  ConnectToMySQL55;
end;

procedure TFGlowny.Edit1Enter(Sender: TObject);
begin
  if Edit1.Text = 'Podaj numer' then Edit1.Text := '';
end;

procedure TFGlowny.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
//  SQLTransaction1.EndTransaction;
//  SQLTransaction1.Commit;
//  SQLTransaction1.Active:=FALSE;
  Datasource1.Enabled:=FALSE;
  SQLQuery1.Active:=FALSE;
end;


end.

