unit exampleunit;
// Example Soldat script unit.

interface

// <<< Inlcude the "Scriptcore" unit here, aside from other script units.
// <<< Preprocessor must be used, so the ScriptCore.pas stays visible for
// <<< IDE and Compiler but not for Soldat Server.
{$ifdef FPC}
uses
	Scriptcore;
{$endif}

procedure ExampleUnit_WelcomePlayer(Player: TActivePlayer);

implementation

procedure ExampleUnit_WelcomePlayer(Player: TActivePlayer);
begin
  Player.WriteConsole('Hello, ' + Player.Name, $FFFFFF);
end;

end.

