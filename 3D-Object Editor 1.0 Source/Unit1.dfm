object Form1: TForm1
  Left = 1801
  Top = 329
  Caption = '3D-Object Editor'
  ClientHeight = 605
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 435
    Width = 783
    Height = 151
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = 438
    object BitBtn1: TBitBtn
      Left = 12
      Top = 16
      Width = 75
      Height = 20
      Caption = 'Object'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 12
      Top = 42
      Width = 75
      Height = 20
      Caption = 'Clear'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 12
      Top = 119
      Width = 75
      Height = 20
      Caption = 'Export'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn3Click
    end
    object Button5: TButton
      Left = 12
      Top = 68
      Width = 75
      Height = 20
      Caption = 'Stop'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = Button5Click
    end
    object GroupBox1: TGroupBox
      Left = 93
      Top = 9
      Width = 96
      Height = 136
      Caption = ' View '
      TabOrder = 4
      object RadioButton1: TRadioButton
        Left = 9
        Top = 19
        Width = 72
        Height = 17
        Caption = 'Double 2x'
        TabOrder = 0
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 9
        Top = 38
        Width = 60
        Height = 17
        Caption = 'Original'
        Checked = True
        TabOrder = 1
        OnClick = RadioButton2Click
      end
      object CheckBox1: TCheckBox
        Left = 9
        Top = 61
        Width = 54
        Height = 17
        TabStop = False
        Caption = 'Center'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 9
        Top = 79
        Width = 78
        Height = 17
        TabStop = False
        Caption = 'View Points'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 9
        Top = 97
        Width = 79
        Height = 17
        TabStop = False
        Caption = 'View Edges'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = CheckBox3Click
      end
      object CheckBox4: TCheckBox
        Left = 9
        Top = 115
        Width = 79
        Height = 17
        TabStop = False
        Caption = 'Coordinates'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = CheckBox4Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 195
      Top = 10
      Width = 91
      Height = 136
      Caption = ' Speed '
      TabOrder = 5
      object Label2: TLabel
        Left = 12
        Top = 34
        Width = 13
        Height = 13
        Caption = 'X :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 12
        Top = 69
        Width = 13
        Height = 13
        Caption = 'Y :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 11
        Top = 103
        Width = 13
        Height = 13
        Caption = 'Z :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpinEdit1: TSpinEdit
        Left = 31
        Top = 31
        Width = 50
        Height = 22
        TabStop = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 1
        OnChange = SpinEdit1Change
      end
      object SpinEdit2: TSpinEdit
        Left = 31
        Top = 66
        Width = 50
        Height = 22
        TabStop = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 1
        OnChange = SpinEdit2Change
      end
      object SpinEdit3: TSpinEdit
        Left = 31
        Top = 100
        Width = 50
        Height = 22
        TabStop = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 256
        OnChange = SpinEdit3Change
      end
    end
    object GroupBox3: TGroupBox
      Left = 292
      Top = 10
      Width = 263
      Height = 136
      Caption = ' Editor '
      TabOrder = 6
      object ENum: TLabel
        Left = 10
        Top = 20
        Width = 63
        Height = 16
        Caption = 'Point N'#176' : 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 10
        Top = 46
        Width = 45
        Height = 13
        Caption = 'Positions:'
      end
      object Label3: TLabel
        Left = 10
        Top = 65
        Width = 16
        Height = 13
        Caption = 'X : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 10
        Top = 88
        Width = 16
        Height = 13
        Caption = 'Y : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 10
        Top = 107
        Width = 16
        Height = 13
        Caption = 'Z : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 88
        Top = 46
        Width = 82
        Height = 13
        Caption = 'Related to Point :'
      end
      object ComboBox1: TComboBox
        Left = 88
        Top = 18
        Width = 91
        Height = 22
        Style = csOwnerDrawFixed
        DropDownCount = 30
        TabOrder = 0
        TabStop = False
        OnChange = ComboBox1Change
      end
      object EPosX: TEdit
        Left = 37
        Top = 61
        Width = 37
        Height = 21
        TabStop = False
        TabOrder = 1
        Text = 'EPosX'
        OnExit = EPosXExit
        OnKeyUp = EPosXKeyUp
      end
      object EPosY: TEdit
        Left = 37
        Top = 84
        Width = 37
        Height = 21
        TabStop = False
        TabOrder = 2
        Text = 'EPosX'
        OnExit = EPosXExit
        OnKeyUp = EPosXKeyUp
      end
      object EPosZ: TEdit
        Left = 37
        Top = 107
        Width = 37
        Height = 21
        TabStop = False
        TabOrder = 3
        Text = 'EPosX'
        OnExit = EPosXExit
        OnKeyUp = EPosXKeyUp
      end
      object ListBox1: TListBox
        Left = 88
        Top = 65
        Width = 91
        Height = 65
        TabStop = False
        ItemHeight = 13
        TabOrder = 4
      end
      object Button4: TButton
        Left = 185
        Top = 109
        Width = 70
        Height = 21
        Caption = 'Apply'
        TabOrder = 5
        TabStop = False
        OnClick = Button4Click
      end
      object Button3: TButton
        Left = 185
        Top = 19
        Width = 70
        Height = 21
        Caption = 'Delete Point'
        TabOrder = 6
        TabStop = False
        OnClick = Button3Click
      end
      object Button2: TButton
        Left = 185
        Top = 82
        Width = 70
        Height = 21
        Caption = 'Remove'
        TabOrder = 7
        TabStop = False
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 185
        Top = 57
        Width = 70
        Height = 21
        Caption = 'Add'
        TabOrder = 8
        TabStop = False
        OnClick = Button1Click
      end
    end
    object GroupBox4: TGroupBox
      Left = 561
      Top = 9
      Width = 111
      Height = 136
      Caption = ' Render '
      TabOrder = 7
      object Label9: TLabel
        Left = 5
        Top = 68
        Width = 40
        Height = 13
        Caption = 'Frames :'
      end
      object Label10: TLabel
        Left = 11
        Top = 28
        Width = 35
        Height = 13
        Caption = 'Image :'
      end
      object BitBtn4: TBitBtn
        Left = 53
        Top = 23
        Width = 50
        Height = 25
        Caption = 'Bitmap'
        TabOrder = 0
        TabStop = False
        OnClick = BitBtn4Click
      end
      object SpinEdit4: TSpinEdit
        Left = 55
        Top = 65
        Width = 45
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 10
      end
      object BitBtn5: TBitBtn
        Left = 53
        Top = 93
        Width = 50
        Height = 25
        Caption = 'Frames'
        TabOrder = 2
        OnClick = BitBtn5Click
      end
      object BitBtn6: TBitBtn
        Left = 9
        Top = 92
        Width = 40
        Height = 25
        Caption = 'Abort'
        Enabled = False
        TabOrder = 3
        OnClick = BitBtn6Click
      end
      object ProgressBar1: TProgressBar
        Left = 3
        Top = 123
        Width = 100
        Height = 8
        TabOrder = 4
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 586
    Width = 783
    Height = 19
    Panels = <
      item
        Text = 'Obj :'
        Width = 35
      end
      item
        Text = 'Cube.3dr'
        Width = 200
      end
      item
        Text = 'Ext :'
        Width = 35
      end
      item
        Text = '.3dr'
        Width = 35
      end
      item
        Text = 'Dimension :'
        Width = 75
      end
      item
        Width = 110
      end
      item
        Text = 'Points :'
        Width = 50
      end
      item
        Text = '8'
        Width = 50
      end
      item
        Text = 'Selected :'
        Width = 60
      end
      item
        Width = 50
      end>
    ExplicitTop = 585
    ExplicitWidth = 779
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 435
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 779
    ExplicitHeight = 434
    object Splitter3: TSplitter
      Left = 607
      Top = 1
      Width = 4
      Height = 433
      Align = alRight
      ExplicitLeft = 763
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 606
      Height = 433
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 602
      ExplicitHeight = 432
      object Splitter1: TSplitter
        Left = 273
        Top = 231
        Width = 4
        Height = 201
        ResizeStyle = rsUpdate
        ExplicitTop = 189
        ExplicitHeight = 173
      end
      object Splitter2: TSplitter
        Left = 1
        Top = 227
        Width = 604
        Height = 4
        Cursor = crVSplit
        Align = alTop
        ResizeStyle = rsUpdate
        OnMoved = Splitter2Moved
        ExplicitTop = 185
        ExplicitWidth = 528
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 604
        Height = 226
        Align = alTop
        TabOrder = 0
        OnResize = Panel3Resize
        ExplicitWidth = 600
        object Fond: TPaintBox
          Left = 1
          Top = 1
          Width = 602
          Height = 224
          Align = alClient
          Color = clBtnFace
          ParentColor = False
          PopupMenu = PopupMenu2
          OnMouseDown = FondMouseDown
          ExplicitWidth = 526
          ExplicitHeight = 182
        end
      end
      object Panel5: TPanel
        Left = 277
        Top = 231
        Width = 328
        Height = 201
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 1
        OnResize = Panel4Resize
        ExplicitWidth = 324
        ExplicitHeight = 200
        object Fond2: TPaintBox
          Left = 1
          Top = 1
          Width = 326
          Height = 199
          Align = alClient
          OnMouseDown = Fond2MouseDown
          OnMouseMove = Fond2MouseMove
          OnMouseUp = Fond2MouseUp
          ExplicitTop = 2
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 231
        Width = 272
        Height = 201
        Align = alLeft
        PopupMenu = PopupMenu1
        TabOrder = 2
        OnResize = Panel5Resize
        ExplicitHeight = 200
        object Fond1: TPaintBox
          Left = 1
          Top = 1
          Width = 270
          Height = 199
          Align = alClient
          OnMouseDown = Fond1MouseDown
          OnMouseMove = Fond1MouseMove
          OnMouseUp = Fond1MouseUp
          ExplicitHeight = 171
        end
      end
    end
    object Memo1: TMemo
      Left = 611
      Top = 1
      Width = 171
      Height = 433
      Align = alRight
      Color = clBlack
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 1
      ExplicitLeft = 607
      ExplicitHeight = 432
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 488
    Top = 26
    object Ajouterunpoint1: TMenuItem
      Caption = 'Add Point'
      OnClick = Ajouterunpoint1Click
    end
    object Supprimerlepoint1: TMenuItem
      Caption = 'Delete Point'
      OnClick = Supprimerlepoint1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Creerunearrte1: TMenuItem
      Caption = 'Create Edge'
      OnClick = Creerunearrte1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Apply1: TMenuItem
      Caption = 'Apply'
      OnClick = Apply1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = '3D-Object (*.3dr)|*.3dr'
    Left = 319
    Top = 22
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Objet 3D Rotator (*.3dr)|*.3dr|Fichier 3D studio ASCII (*.asc)|*' +
      '.asc'
    Left = 406
    Top = 21
  end
  object SaveDialog2: TSaveDialog
    Filter = 'Bitmap (*.BMP)|*.bmp'
    Left = 313
    Top = 96
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 405
    Top = 93
  end
  object PopupMenu2: TPopupMenu
    Left = 480
    Top = 98
    object ApplyCoordinates1: TMenuItem
      Caption = 'Apply Coordinates'
      OnClick = ApplyCoordinates1Click
    end
    object Animate1: TMenuItem
      AutoCheck = True
      Caption = 'Animate'
      Checked = True
      OnClick = Animate1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object GenerateRandomObject1: TMenuItem
      Caption = 'Generate Random Object'
      OnClick = GenerateRandomObject1Click
    end
    object GenerateRandomVertex1: TMenuItem
      Caption = 'Generate Random Vertex'
      OnClick = GenerateRandomVertex1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object ImportObject1: TMenuItem
      Caption = 'Import Object'
      OnClick = ImportObject1Click
    end
    object ExportObject1: TMenuItem
      Caption = 'Export Object'
      OnClick = ExportObject1Click
    end
    object Clear1: TMenuItem
      Caption = 'Clear'
      OnClick = Clear1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object DoubleSize2x1: TMenuItem
      Caption = 'Double Size 2x'
      OnClick = DoubleSize2x1Click
    end
    object OriginalSize1: TMenuItem
      Caption = 'Original Size'
      OnClick = OriginalSize1Click
    end
    object ViewPoints1: TMenuItem
      AutoCheck = True
      Caption = 'View Points'
      Checked = True
      OnClick = ViewPoints1Click
    end
    object ViewEdges1: TMenuItem
      AutoCheck = True
      Caption = 'View Edges'
      Checked = True
      OnClick = ViewEdges1Click
    end
    object Center1: TMenuItem
      AutoCheck = True
      Caption = 'Center'
      Checked = True
      OnClick = Center1Click
    end
    object Colors1: TMenuItem
      Caption = 'Colors'
      object Background1: TMenuItem
        Caption = 'Background'
        OnClick = Background1Click
      end
      object Point1: TMenuItem
        Caption = 'Point'
        OnClick = Point1Click
      end
      object Line1: TMenuItem
        Caption = 'Line'
        OnClick = Line1Click
      end
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object CreateBitmap1: TMenuItem
      Caption = 'Create Bitmap'
      OnClick = CreateBitmap1Click
    end
    object RenderFrames1: TMenuItem
      Caption = 'Render Frames'
      OnClick = RenderFrames1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Control1: TMenuItem
      AutoCheck = True
      Caption = 'Control'
      Checked = True
      OnClick = Control1Click
    end
    object ShowCoodinates1: TMenuItem
      AutoCheck = True
      Caption = 'Coordinates'
      Checked = True
      OnClick = ShowCoodinates1Click
    end
  end
  object ColorDialog1: TColorDialog
    Left = 110
    Top = 30
  end
  object ColorDialog2: TColorDialog
    Left = 110
    Top = 104
  end
  object ColorDialog3: TColorDialog
    Left = 109
    Top = 162
  end
end
