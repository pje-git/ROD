unit UDM;

{$mode objfpc}{$H+}

interface

uses
  Classes, mysql55conn, sqldb, eventlog,Graphics, PJGlobal,
  StdCtrls, ExtCtrls;

type

  { TDataModuleROD }

  TDataModuleROD = class(TDataModule)

    EventLog1: TEventLog;
    MySQLCon: TMySQL55Connection;
    procedure MySQLConAfterConnect(Sender: TObject);
    procedure MySQLConAfterDisconnect(Sender: TObject);
    procedure MySQLConBeforeConnect(Sender: TObject);
    procedure MySQLConLog(Sender: TSQLConnection; EventType: TDBEventType;
      const Msg: String);
  private
    { private declarations }
    globalRec: TGlobalRec;
  public
    { public declarations }
    lStatusMsg: TLabel;
    rStatusShape: TShape;
    bConnect: TButton;

  end;

var
  DataModuleROD: TDataModuleROD;

implementation

{$R *.lfm}

{ TDataModuleROD }

procedure TDataModuleROD.MySQLConLog(Sender: TSQLConnection;
  EventType: TDBEventType; const Msg: String);
begin
  eventlog1.Log(Msg);
  lStatusMsg.Caption:=Msg;
end;


procedure TDataModuleROD.MySQLConBeforeConnect(Sender: TObject);
begin
  if (lStatusMsg<>nil) then lStatusMsg.Caption := 'Nawiązuję połączenie ... proszę czekać ...';
  if (rStatusShape<>nil) then rStatusShape.Brush.Color := clYellow;
end;

procedure TDataModuleROD.MySQLConAfterConnect(Sender: TObject);
begin
  if (lStatusMsg<>nil) then lStatusMsg.Caption := 'Połączono z bazą '+MySQLCon.DatabaseName+'.';
  if (rStatusShape<>nil) then rStatusShape.Brush.Color := clLime;
  if (bConnect<>nil) then bConnect.Caption:='Rozłącz';
end;

procedure TDataModuleROD.MySQLConAfterDisconnect(Sender: TObject);
begin
  if (bConnect<>nil) then bConnect.Caption:='Połącz';
  if (lStatusMsg<>nil) then lStatusMsg.Caption := 'Rozłączono bazę '+MySQLCon.DatabaseName+'.';
  if (rStatusShape<>nil) then rStatusShape.Brush.Color := clRed;
end;

end.

