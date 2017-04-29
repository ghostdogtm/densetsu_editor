object MainForm: TMainForm
  Left = 816
  Top = 78
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Densetsu Editor'
  ClientHeight = 273
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StatsGroupBox: TGroupBox
    Left = 8
    Top = 8
    Width = 433
    Height = 193
    Caption = 'Stats'
    TabOrder = 0
    object TeamMemberImg1: TImage
      Left = 10
      Top = 32
      Width = 23
      Height = 31
      Transparent = True
    end
    object TeamMemberImg2: TImage
      Left = 10
      Top = 72
      Width = 23
      Height = 31
      Transparent = True
    end
    object TeamMemberImg3: TImage
      Left = 10
      Top = 112
      Width = 23
      Height = 31
      Transparent = True
    end
    object TeamMemberImg4: TImage
      Left = 10
      Top = 151
      Width = 23
      Height = 31
      Transparent = True
    end
    object lblHP: TLabel
      Left = 45
      Top = 24
      Width = 15
      Height = 13
      Caption = 'HP'
    end
    object lblPunch: TLabel
      Left = 96
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Punch'
    end
    object lblKick: TLabel
      Left = 145
      Top = 24
      Width = 21
      Height = 13
      Caption = 'Kick'
    end
    object lblThrow: TLabel
      Left = 192
      Top = 24
      Width = 30
      Height = 13
      Caption = 'Throw'
    end
    object lblDefense: TLabel
      Left = 240
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Defense'
    end
    object lblSpeed: TLabel
      Left = 288
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Speed'
    end
    object lblBirthDay: TLabel
      Left = 336
      Top = 8
      Width = 57
      Height = 13
      Caption = 'Birth Day:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMon: TLabel
      Left = 336
      Top = 24
      Width = 21
      Height = 13
      Caption = 'Mon'
    end
    object lblDay: TLabel
      Left = 384
      Top = 24
      Width = 19
      Height = 13
      Caption = 'Day'
    end
    object StatsEdit1: TSpinEdit
      Left = 45
      Top = 40
      Width = 42
      Height = 22
      Hint = '0'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 0
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit2: TSpinEdit
      Left = 96
      Top = 40
      Width = 42
      Height = 22
      Hint = '0'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 1
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit3: TSpinEdit
      Left = 145
      Top = 40
      Width = 42
      Height = 22
      Hint = '0'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 2
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit4: TSpinEdit
      Left = 192
      Top = 40
      Width = 42
      Height = 22
      Hint = '0'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 3
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit5: TSpinEdit
      Left = 240
      Top = 40
      Width = 42
      Height = 22
      Hint = '0'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 4
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit6: TSpinEdit
      Left = 288
      Top = 40
      Width = 42
      Height = 22
      Hint = '0'
      Enabled = False
      MaxValue = 11
      MinValue = 0
      TabOrder = 5
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit7: TSpinEdit
      Left = 336
      Top = 40
      Width = 42
      Height = 22
      Hint = '0'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 6
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit8: TSpinEdit
      Left = 384
      Top = 40
      Width = 42
      Height = 22
      Hint = '0'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 7
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit9: TSpinEdit
      Left = 45
      Top = 80
      Width = 42
      Height = 22
      Hint = '1'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 8
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit10: TSpinEdit
      Left = 96
      Top = 80
      Width = 42
      Height = 22
      Hint = '1'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 9
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit11: TSpinEdit
      Left = 144
      Top = 80
      Width = 42
      Height = 22
      Hint = '1'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 10
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit12: TSpinEdit
      Left = 192
      Top = 80
      Width = 42
      Height = 22
      Hint = '1'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 11
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit13: TSpinEdit
      Left = 240
      Top = 80
      Width = 42
      Height = 22
      Hint = '1'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 12
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit14: TSpinEdit
      Left = 288
      Top = 80
      Width = 42
      Height = 22
      Hint = '1'
      Enabled = False
      MaxValue = 11
      MinValue = 0
      TabOrder = 13
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit15: TSpinEdit
      Left = 336
      Top = 80
      Width = 42
      Height = 22
      Hint = '1'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 14
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit16: TSpinEdit
      Left = 384
      Top = 80
      Width = 42
      Height = 22
      Hint = '1'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 15
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit17: TSpinEdit
      Left = 45
      Top = 120
      Width = 42
      Height = 22
      Hint = '2'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 16
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit18: TSpinEdit
      Left = 96
      Top = 120
      Width = 42
      Height = 22
      Hint = '2'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 17
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit19: TSpinEdit
      Left = 144
      Top = 120
      Width = 42
      Height = 22
      Hint = '2'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 18
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit20: TSpinEdit
      Left = 192
      Top = 120
      Width = 42
      Height = 22
      Hint = '2'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 19
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit21: TSpinEdit
      Left = 240
      Top = 120
      Width = 42
      Height = 22
      Hint = '2'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 20
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit22: TSpinEdit
      Left = 288
      Top = 120
      Width = 42
      Height = 22
      Hint = '2'
      Enabled = False
      MaxValue = 11
      MinValue = 0
      TabOrder = 21
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit23: TSpinEdit
      Left = 336
      Top = 120
      Width = 42
      Height = 22
      Hint = '2'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 22
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit24: TSpinEdit
      Left = 384
      Top = 120
      Width = 42
      Height = 22
      Hint = '2'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 23
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit25: TSpinEdit
      Left = 45
      Top = 160
      Width = 42
      Height = 22
      Hint = '3'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 24
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit26: TSpinEdit
      Left = 96
      Top = 160
      Width = 42
      Height = 22
      Hint = '3'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 25
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit27: TSpinEdit
      Left = 144
      Top = 160
      Width = 42
      Height = 22
      Hint = '3'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 26
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit28: TSpinEdit
      Left = 192
      Top = 160
      Width = 42
      Height = 22
      Hint = '3'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 27
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit29: TSpinEdit
      Left = 240
      Top = 160
      Width = 42
      Height = 22
      Hint = '3'
      Enabled = False
      MaxValue = 99
      MinValue = 0
      TabOrder = 28
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit30: TSpinEdit
      Left = 288
      Top = 160
      Width = 42
      Height = 22
      Hint = '3'
      Enabled = False
      MaxValue = 11
      MinValue = 0
      TabOrder = 29
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit31: TSpinEdit
      Left = 336
      Top = 160
      Width = 42
      Height = 22
      Hint = '3'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 30
      Value = 0
      OnChange = StatsEdit1Change
    end
    object StatsEdit32: TSpinEdit
      Left = 384
      Top = 160
      Width = 42
      Height = 22
      Hint = '3'
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 31
      Value = 0
      OnChange = StatsEdit1Change
    end
  end
  object ActionsGroupBox: TGroupBox
    Left = 8
    Top = 208
    Width = 433
    Height = 57
    Caption = 'Actions'
    TabOrder = 1
    object lblTeamSelect: TLabel
      Left = 128
      Top = 8
      Width = 63
      Height = 13
      Caption = 'Team Select:'
    end
    object TeamSelect: TComboBox
      Left = 128
      Top = 28
      Width = 153
      Height = 21
      Style = csDropDownList
      Enabled = False
      ImeName = 'Russian'
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Wrestler'
      OnSelect = TeamSelectSelect
      Items.Strings = (
        'Wrestler'
        'Street Fighter'
        'Kung Fu Fighter'
        'Judo Fighter')
    end
    object LoadButton: TButton
      Left = 8
      Top = 24
      Width = 105
      Height = 25
      Caption = 'Load Rom'
      TabOrder = 1
      OnClick = LoadButtonClick
    end
    object SaveButton: TButton
      Left = 288
      Top = 24
      Width = 137
      Height = 25
      Caption = 'Save Current'
      TabOrder = 2
      OnClick = SaveButtonClick
    end
  end
  object OpenRom: TOpenDialog
    Filter = 'NES Rom (*.nes)|*.nes'
    Left = 512
    Top = 192
  end
end
