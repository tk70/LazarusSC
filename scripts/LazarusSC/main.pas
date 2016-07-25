unit main;

// Main Soldat Script file, the same as specified in config.ini.

interface

// <<< Inlcude the "Scriptcore" unit here, aside from other script units.
// <<< Preprocessor must be used, so the ScriptCore.pas stays visible for
// <<< IDE and Compiler but not for Soldat Server.
uses
{$ifdef FPC}
	Scriptcore,
{$endif}
	ExampleUnit;


implementation

procedure OnJoinHandler(Player: TActivePlayer; Team: TTeam);
begin
  ExampleUnit_WelcomePlayer(Player);
end;

procedure Init();
begin
  Game.OnJoin := @OnJoinHandler;
end;

begin
    WriteLn('Example SoldatScript Lazarus project');
    Init();
end.

