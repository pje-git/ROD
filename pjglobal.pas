unit PJGlobal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TGlobalRec }

  TGlobalRec = class(TObject)
    globalpStatus: ^String;
    globalStatusPin: ^byte;
    public
        Constructor Create(Sender: TObject);
  end;

implementation


  { TGlobalRec }

  constructor TGlobalRec.Create(Sender: TObject);
  begin
    new(globalStatusPin);
    globalStatusPin^:=0;
    inherited Create;
  end;

end.

