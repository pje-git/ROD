unit UDzialki;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, mysql55conn, db, eventlog, FileUtil, FZDB, Forms,
  Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, ComCtrls, Menus, ActnList,
  IniPropStorage;

type

  { TfDzialki }

  TfDzialki = class(TForm)
    aClose: TAction;
    aDzialkowiec: TAction;
    aEnergia: TAction;
    aExport: TAction;
    aImport: TAction;
    alGlowny: TActionList;
    aSala: TAction;
    aSprzedarz: TAction;
    aWoda: TAction;
    Button1: TButton;
    dbgDzialki: TFZDBGrid;
    dsDzialka: TDatasource;
    Edit1: TEdit;
    IniDzialka: TIniPropStorage;
    Label1: TLabel;
    Label2: TLabel;
    logDzialka: TEventLog;
    lStatus: TLabel;
    mAdmin: TMenuItem;
    mClose: TMenuItem;
    mDzialkowiec: TMenuItem;
    mExport: TMenuItem;
    mFile: TMenuItem;
    mGlowne: TMainMenu;
    mImport: TMenuItem;
    mKsiegowosc: TMenuItem;
    mMaintenance: TMenuItem;
    mNarzedzia: TMenuItem;
    mObsluga: TMenuItem;
    mPomoc: TMenuItem;
    mPrad: TMenuItem;
    mRozliczenia: TMenuItem;
    mSala: TMenuItem;
    mSets: TMenuItem;
    mSprzedarz: TMenuItem;
    mWalne: TMenuItem;
    mWoda: TMenuItem;
    MySQLCon: TMySQL55Connection;
    mZarzad: TMenuItem;
    pStatus: TPanel;
    rStatus: TShape;
    sqlDzialka1: TSQLQuery;
    sqlDzialka1imie: TStringField;
    sqlDzialka1metraz: TLongintField;
    sqlDzialka1nazwisko: TStringField;
    sqlDzialka1numer: TStringField;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    trDzialka: TSQLTransaction;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fDzialki: TfDzialki;

implementation

{$R *.lfm}

end.

