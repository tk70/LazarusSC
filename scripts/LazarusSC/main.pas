unit main;

// Main Soldat Script file, the same as specified in config.ini.

interface

// <<< Inlcude the "Scriptcore" unit here, aside from other script units.
// <<< Preprocessor must be used, so the ScriptCore.pas stays visible for
// <<< IDE and Compiler but not for Soldat Server.
uses
{$ifdef FPC}
	Scriptcore;
{$endif}

implementation

procedure OnKitPickup_(P: TActivePlayer; Kit: TActiveMapObject);
begin
end;

procedure OnMapChange_(NewMap: string);
begin
end;

procedure OnAfterMapChange_(Map: string);
begin
end;

procedure OnLeaveGame_(P: TActivePlayer; Kicked: Boolean);
begin
end;

procedure OnPlayerKill_(Killer, Victim: TActivePlayer; BulletId: Byte);
begin
end;

function OnPlayerDamage_(Shooter, Victim: TActivePlayer; Damage: single; BulletId: byte): single;
begin
end;

procedure OnFlagGrab_(P: TActivePlayer; TFlag: TActiveFlag; Team: Byte; GrabbedInBase: Boolean);
begin
end;

procedure OnWeaponChange_(Pl: TActivePlayer; Primary, Secondary: TPlayerWeapon);
begin
end;

procedure OnAfterRespawn_(P: TActivePlayer);
begin
end;

function OnBeforeRespawn_(P: TActivePlayer): TVector;
begin
end;

procedure OnJoinTeam_(P: TActivePlayer; Team: TTeam);
begin
end;

procedure OnJoinGame_(P: TActivePlayer; Team: TTeam);
begin
end;

procedure OnPlayerSpeak_(P: TActivePlayer; Text: string);
begin
end;

function OnCommand_(P: TActivePlayer; Text: string): boolean;
begin
end;

function OnPlayerCommand_(P: TActivePlayer; Text: string): boolean;
begin
end;

function OnVoteMap_(P: TActivePlayer; Map: string): boolean;
begin
end;

procedure OnTick_(Ticks: integer);
begin
end;   

procedure Init();
var i: byte;
begin
  for i := 1 to 32 do begin
    Players[i].OnWeaponChange := @OnWeaponChange_;
    Players[i].OnDamage := @OnPlayerDamage_;
    Players[i].OnSpeak := @OnPlayerSpeak_;
    Players[i].OnCommand := @OnPlayerCommand_;
    Players[i].OnKill := @OnPlayerKill_;
    Players[i].OnVoteMapStart := @OnVoteMap_;
    Players[i].OnBeforeRespawn := @OnBeforeRespawn_;
    Players[i].OnAfterRespawn := @OnAfterRespawn_;
    Players[i].OnKitPickup := @OnKitPickup_;
    Players[i].OnFlagGrab := @OnFlagGrab_;
  end;
  Game.OnLeave := @OnLeaveGame_;
  Game.OnJoin := @OnJoinGame_;
  Game.OnClockTick := @OnTick_;
  Game.TickThreshold := 1;
  Game.OnAdminCommand := @OnCommand_;
  for i := 1 to 5 do begin
    Game.Teams[i].OnJoin := @OnJoinTeam_;
  end;
  Map.OnBeforeMapChange := @OnMapChange_;
  Map.OnAfterMapChange := @OnAfterMapChange_;   
end;

begin
    WriteLn('Blank SoldatScript Lazarus project');
    Init();
end.

