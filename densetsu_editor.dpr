program densetsu_editor;

uses
  Forms,
  main in 'main.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Densetsu Editor';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
