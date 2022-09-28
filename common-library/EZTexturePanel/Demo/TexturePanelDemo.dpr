program TexturePanelDemo;

uses
  Forms,
  Unit1 in 'Unit1.pas' {EZTexturePanelForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TEZTexturePanelForm, EZTexturePanelForm);
  Application.Run;
end.
