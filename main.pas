unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls;

type
  TMainForm = class(TForm)
    StatsGroupBox: TGroupBox;
    ActionsGroupBox: TGroupBox;
    TeamMemberImg1: TImage;
    TeamMemberImg2: TImage;
    TeamMemberImg3: TImage;
    TeamMemberImg4: TImage;
    lblHP: TLabel;
    lblPunch: TLabel;
    lblKick: TLabel;
    lblThrow: TLabel;
    lblDefense: TLabel;
    lblSpeed: TLabel;
    OpenRom: TOpenDialog;
    StatsEdit1: TSpinEdit;
    StatsEdit2: TSpinEdit;
    StatsEdit3: TSpinEdit;
    StatsEdit4: TSpinEdit;
    lblBirthDay: TLabel;
    StatsEdit5: TSpinEdit;
    StatsEdit6: TSpinEdit;
    StatsEdit7: TSpinEdit;
    StatsEdit8: TSpinEdit;
    StatsEdit9: TSpinEdit;
    StatsEdit10: TSpinEdit;
    StatsEdit11: TSpinEdit;
    StatsEdit12: TSpinEdit;
    StatsEdit13: TSpinEdit;
    StatsEdit14: TSpinEdit;
    StatsEdit15: TSpinEdit;
    StatsEdit16: TSpinEdit;
    StatsEdit17: TSpinEdit;
    StatsEdit18: TSpinEdit;
    StatsEdit19: TSpinEdit;
    StatsEdit20: TSpinEdit;
    StatsEdit21: TSpinEdit;
    StatsEdit22: TSpinEdit;
    StatsEdit23: TSpinEdit;
    StatsEdit24: TSpinEdit;
    StatsEdit25: TSpinEdit;
    StatsEdit26: TSpinEdit;
    StatsEdit27: TSpinEdit;
    StatsEdit28: TSpinEdit;
    StatsEdit29: TSpinEdit;
    StatsEdit30: TSpinEdit;
    StatsEdit31: TSpinEdit;
    StatsEdit32: TSpinEdit;
    lblMon: TLabel;
    lblDay: TLabel;
    lblTeamSelect: TLabel;
    TeamSelect: TComboBox;
    LoadButton: TButton;
    SaveButton: TButton;
    procedure LoadButtonClick(Sender: TObject);
    procedure TeamSelectSelect(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure StatsEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  MyComponent, mc: TComponent;
  f: File of Byte;
  team_stats_array: array[0..3] of array[0..3] of array[0..7] of Byte;
  rom_file_path: string;
const
  team: array[0..3] of array[0..3] of String = (
    ('$10AF9', '$10B09', '$10B19', '$10B29'),
    ('$10B39', '$10B49', '$10B59', '$10B69'),
    ('$10B79', '$10B89', '$10B99', '$10BA9'),
    ('$10BB9', '$10BC9', '$10BD9', '$10BE9')
    );
  image_folders: array[0..3] of string = ('wrestlers', 'street', 'kung_fu', 'judo');
implementation

procedure SetStats();
var
  img_path, work_directory: string;
  i, j, k: ShortInt;
begin
  k:=1;
  {for i:=1 to 32 do
  begin
    MyComponent:=MainForm.FindComponent('StatsEdit'+IntToStr(i));
    TSpinEdit(MyComponent).Value:=team_stats_array[MainForm.TeamSelect.ItemIndex][0][0];
  end;}

  for i:=0 to 3 do
  begin
    for j:=0 to 7 do
    begin
      MyComponent:=MainForm.FindComponent('StatsEdit'+IntToStr(k));
      TSpinEdit(MyComponent).Value:=team_stats_array[MainForm.TeamSelect.ItemIndex][i][j];
      {if j = 0 then
        TSpinEdit(MyComponent).Value:=TSpinEdit(MyComponent).Value + 8
      else
        if (j = 1) or (j = 2) then
          TSpinEdit(MyComponent).Value:=TSpinEdit(MyComponent).Value + 2
        else
          if (j = 3) or (j = 4) then
            TSpinEdit(MyComponent).Value:=TSpinEdit(MyComponent).Value + 5
          else
            if j = 5 then
              TSpinEdit(MyComponent).Value:=TSpinEdit(MyComponent).Value * 9;}
      k:=k+1;
    end;
  end;

  work_directory:=extractfilepath(paramstr(0)) + 'img\';
  for i:=1 to 4 do
  begin
    MyComponent:=MainForm.FindComponent('TeamMemberImg'+IntToStr(i));
    img_path:=work_directory + image_folders[MainForm.TeamSelect.ItemIndex] + '\0'+IntToStr(i)+'.bmp';
    TImage(MyComponent).Picture.LoadFromFile(img_path);
  end;
end;

procedure LoadCharacteristics();
var
  i,j: ShortInt;
begin
  Assignfile(f, rom_file_path);
  FileMode:=fmOpenRead;
  Reset(f);
  for i:=0 to 3 do
  begin
    for j:=0 to 3 do
    begin
      Seek(f, StrToInt(team[i][j]));
      BlockRead(f, team_stats_array[i][j], 8);
    end;
  end;

  //BlockRead(f, team_stats_array[0], 32);

  CloseFile(f);
end;
{$R *.dfm}

procedure TMainForm.LoadButtonClick(Sender: TObject);
var
  i: ShortInt;
begin
  if OpenRom.Execute then
    begin
      rom_file_path:=OpenRom.FileName;
      TeamSelect.Enabled:=True;
      SaveButton.Enabled:=True;
      for i:=1 to 32 do
      begin
        MyComponent:=FindComponent('StatsEdit'+IntToStr(i));
        TSpinEdit(MyComponent).Enabled:=True;
      end;
      LoadCharacteristics();
      SetStats();
    end
end;

procedure TMainForm.TeamSelectSelect(Sender: TObject);
begin
  SetStats();
end;

procedure TMainForm.SaveButtonClick(Sender: TObject);
var
  i: ShortInt;
begin
  Assignfile(f, rom_file_path);
  FileMode:=fmOpenWrite;
  Reset(f);
  for i:=0 to 3 do
  begin
    Seek(f, StrToInt(team[TeamSelect.ItemIndex][i]));
    BlockWrite(f, team_stats_array[TeamSelect.ItemIndex][i], 8);
  end;
  CloseFile(f);
end;

procedure TMainForm.StatsEdit1Change(Sender: TObject);
var
  stats_index: ShortInt;
  stats_val: Byte;
begin
  stats_index:=(Sender as TSpinEdit).TabOrder - StrToInt((Sender as TSpinEdit).Hint)*8;

  if (Sender as TSpinEdit).Text <> '' then
  begin
    {if stats_index = 0 then
        stats_val:=(Sender as TSpinEdit).Value - 8
      else
        if (stats_index = 1) or (stats_index = 2) then
          stats_val:=(Sender as TSpinEdit).Value - 2
        else
          if (stats_index = 3) or (stats_index = 4) then
            stats_val:=(Sender as TSpinEdit).Value - 5
          else
            if stats_index = 5 then
              stats_val:=Trunc((Sender as TSpinEdit).Value / 9)
            else}
              stats_val:=(Sender as TSpinEdit).Value;

    team_stats_array[TeamSelect.ItemIndex][StrToInt((Sender as TSpinEdit).Hint)][stats_index]:=stats_val;
  end;
end;

end.
