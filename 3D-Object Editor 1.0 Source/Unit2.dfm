object Form2: TForm2
  Left = 1604
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Edge'
  ClientHeight = 174
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 277
    Height = 97
    Caption = ' Add Edge '
    TabOrder = 0
    object Label2: TLabel
      Left = 123
      Top = 50
      Width = 42
      Height = 13
      Caption = 'to Point :'
    end
    object Label1: TLabel
      Left = 24
      Top = 50
      Width = 30
      Height = 13
      Caption = 'Point :'
    end
    object Label3: TLabel
      Left = 234
      Top = 50
      Width = 34
      Height = 13
      Caption = '= Edge'
    end
    object ComboBox2: TComboBox
      Left = 171
      Top = 47
      Width = 57
      Height = 21
      DropDownCount = 30
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 60
      Top = 47
      Width = 57
      Height = 21
      DropDownCount = 30
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 32
    Top = 111
    Width = 60
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 111
    Width = 60
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button2Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 155
    Width = 289
    Height = 19
    Panels = <
      item
        Text = 'Obj :'
        Width = 45
      end
      item
        Width = 50
      end>
    ExplicitTop = 154
    ExplicitWidth = 285
  end
end
