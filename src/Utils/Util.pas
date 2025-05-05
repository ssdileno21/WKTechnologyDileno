unit Util;

interface

uses System.SysUtils, Vcl.Controls, Vcl.StdCtrls, System.Math, Vcl.Graphics;

function GetiniPath : string;

procedure DefinirEstadoControleVisual(Ctrl: TWinControl; Enabled: Boolean);

implementation

function GetiniPath : string;
begin
  Result := ExtractFilePath(ParamStr(0)) + 'config.ini';
end;

procedure DefinirEstadoControleVisual(Ctrl: TWinControl; Enabled: Boolean);
begin
  Ctrl.Enabled := Enabled;
  if Ctrl is TEdit then
    TEdit(Ctrl).Color := IfThen(Enabled, clWindow, clBtnFace);
end;


end.
