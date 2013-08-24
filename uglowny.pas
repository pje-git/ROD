unit UGlowny;

{$mode objfpc}{$H+}

interface

uses
  mysql55conn, sqldb, db, BufDataset, memds, dbf, SdfData, Forms, ExtCtrls,
  StdCtrls, ComCtrls, Menus, ActnList, DBGrids, Calendar, EditBtn,
  IniPropStorage, DbCtrls, BarChart, DividerBevel, IpHtml, Ipfilebroker, udm,
  PJGlobal, Classes;

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
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    IniGeneralSettings: TIniPropStorage;
    Label1: TLabel;
    Label2: TLabel;
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
    SQLTransaction1: TSQLTransaction;
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
    procedure FormCreate(Sender: TObject);
    procedure mSprzedarzClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FGlowny: TFGlowny;
  MySQLConn: TMySQL55Connection;

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

procedure TFGlowny.ToolButton1Click(Sender: TObject);
begin
   SQLQuery1.ExecSQL;
end;

procedure TFGlowny.FormCreate(Sender: TObject);
begin
  DataModuleROD.lStatusMsg:=lStatus;
  DataModuleROD.rStatusShape:=rStatus;
  DataModuleROD.bConnect:=Button1;

end;

procedure TFGlowny.aSprzedarzExecute(Sender: TObject);
begin
  Edit1.Text:='Dupa blada';
end;

procedure TFGlowny.Button1Click(Sender: TObject);
begin
  with DataModuleROD.MySQLCon do if Connected = FALSE then Connected:=True else Connected:=False;
end;

procedure TFGlowny.Edit1Enter(Sender: TObject);
begin
  if Edit1.Text = 'Podaj numer' then Edit1.Text := '';
end;


end.

