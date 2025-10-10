unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, StdCtrls, Opengl, XPMan, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Samples.Spin;

type
  Tpt = record
    X:integer;
    Y:integer;
    Z:integer;
    X2d:integer;
    Y2d:integer;
  end;

  TLn = record
    Num1:integer;
    Num2:integer;
  end;

  TOptions = record
    ShowPoint:boolean;
    ShowLn:boolean;
  end;

  TBoucle = class(TThread)
  private
    procedure Affiche();
  protected
    procedure Execute();override;
  public
    constructor Create();
  end;

  TForm1 = class(TForm)
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    Ajouterunpoint1: TMenuItem;
    Supprimerlepoint1: TMenuItem;
    Creerunearrte1: TMenuItem;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Button5: TButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox2: TGroupBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    N1: TMenuItem;
    GroupBox3: TGroupBox;
    ENum: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    EPosX: TEdit;
    Label4: TLabel;
    EPosY: TEdit;
    Label5: TLabel;
    EPosZ: TEdit;
    ListBox1: TListBox;
    Label6: TLabel;
    Button4: TButton;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel4: TPanel;
    Fond: TPaintBox;
    Panel5: TPanel;
    Fond2: TPaintBox;
    Panel6: TPanel;
    Fond1: TPaintBox;
    Memo1: TMemo;
    CheckBox4: TCheckBox;
    GroupBox4: TGroupBox;
    BitBtn4: TBitBtn;
    SpinEdit4: TSpinEdit;
    BitBtn5: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    SaveDialog2: TSaveDialog;
    Timer1: TTimer;
    BitBtn6: TBitBtn;
    PopupMenu2: TPopupMenu;
    GenerateRandomObject1: TMenuItem;
    N2: TMenuItem;
    ApplyCoordinates1: TMenuItem;
    N3: TMenuItem;
    Apply1: TMenuItem;
    N4: TMenuItem;
    Clear1: TMenuItem;
    ImportObject1: TMenuItem;
    ExportObject1: TMenuItem;
    Animate1: TMenuItem;
    N5: TMenuItem;
    DoubleSize2x1: TMenuItem;
    OriginalSize1: TMenuItem;
    ViewPoints1: TMenuItem;
    ViewEdges1: TMenuItem;
    Center1: TMenuItem;
    N6: TMenuItem;
    Control1: TMenuItem;
    CreateBitmap1: TMenuItem;
    N7: TMenuItem;
    RenderFrames1: TMenuItem;
    ShowCoodinates1: TMenuItem;
    ColorDialog1: TColorDialog;
    Colors1: TMenuItem;
    Background1: TMenuItem;
    Point1: TMenuItem;
    ColorDialog2: TColorDialog;
    ColorDialog3: TColorDialog;
    Line1: TMenuItem;
    Splitter3: TSplitter;
    GenerateRandomVertex1: TMenuItem;
    ProgressBar1: TProgressBar;
    procedure Ajouterunpoint1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Fond1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Fond2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4Resize(Sender: TObject);
    procedure Panel5Resize(Sender: TObject);
    procedure Panel3Resize(Sender: TObject);
    procedure Fond1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Fond1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Fond2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Fond2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Creerunearrte1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EPosXExit(Sender: TObject);
    procedure EPosXKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Supprimerlepoint1Click(Sender: TObject);
    procedure FondMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Splitter2Moved(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure GenerateRandomObject1Click(Sender: TObject);
    procedure ApplyCoordinates1Click(Sender: TObject);
    procedure Apply1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure ImportObject1Click(Sender: TObject);
    procedure ExportObject1Click(Sender: TObject);
    procedure Animate1Click(Sender: TObject);
    procedure DoubleSize2x1Click(Sender: TObject);
    procedure OriginalSize1Click(Sender: TObject);
    procedure ViewPoints1Click(Sender: TObject);
    procedure ViewEdges1Click(Sender: TObject);
    procedure Center1Click(Sender: TObject);
    procedure Control1Click(Sender: TObject);
    procedure CreateBitmap1Click(Sender: TObject);
    procedure RenderFrames1Click(Sender: TObject);
    procedure ShowCoodinates1Click(Sender: TObject);
    procedure Background1Click(Sender: TObject);
    procedure Point1Click(Sender: TObject);
    procedure Line1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GenerateRandomVertex1Click(Sender: TObject);
  private
  public
    procedure AjouterPoint(X,Y,Z:integer);
    procedure AjouterArrete(num1,num2:integer);
    procedure SupprimerPoint(Num:integer);
    procedure SupprimerArrete(Num1,Num2:integer);
    Procedure DessinePoint(X,Y,Num:integer;Bmp:TBitmap);
    Procedure DessineArretes();
    Procedure SaveOBJ(LeFichier:string);
    Procedure LoadOBJ(LeFichier:string);
    procedure Init();
    procedure Pt2Param(UpDateListeLiaison:boolean);
    procedure Param2Pt();
    procedure UpdateListePoint();
    procedure Active(Mode:boolean);
    function Distance(X,Y,X2,Y2:integer):integer;
    procedure Load3dstudio(LeFichier:string);
    function TestArrete(Num1,Num2:integer):boolean;
    function ExtraiChiffreApres(Source:string;Dep:integer):integer;
  end;

var
  Form1: TForm1;
  Points:array of Tpt; 
  Lignes:array of Tln; 
  TmpBmp,TmpBmp1,TmpBmp2:TBitmap; 
  PClickX,PClickY,Pkel:integer; 
  CentreX,CentreY,CentreX1,CentreY1,CentreX2,CentreY2:integer; 
  SelPoint,ActPoint,SurvolPoint:integer; 
  TaillePoints:integer; 
  Zoom:integer; 
  IncAngle1,IncAngle2:integer;
  Options:Toptions;
  frame : integer = 0;
  RND : integer = 0;
  BGR, Point, Line : TColor;

implementation

uses Unit2, FctStr;

{$R *.dfm}
function GeneratePass(syllables, numbers: Byte): string;

  function Replicate(Caracter: string; Quant: Integer): string;
  var
    I: Integer;
  begin
    Result := '';
    for I := 1 to Quant do
      Result := Result + Caracter;
  end;
const
  conso: array [0..19] of Char = ('b', 'c', 'd', 'f', 'g', 'h', 'j',
    'k', 'l', 'm', 'n', 'p', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z');
  vocal: array [0..4] of Char = ('a', 'e', 'i', 'o', 'u');
var
  i: Integer;
  si, sf: Longint;
  n: string;
begin
  Result := '';
  Randomize;

  if syllables <> 0 then
    for i := 1 to syllables do
    begin
      Result := Result + conso[Random(19)];
      Result := Result + vocal[Random(4)];
    end;

  if numbers = 1 then Result := Result + IntToStr(Random(9))
  else if numbers >= 2 then
  begin
    if numbers > 9 then numbers := 9;
    si     := StrToInt('1' + Replicate('0', numbers - 1));
    sf     := StrToInt(Replicate('9', numbers));
    n      := FloatToStr(si + Random(sf));
    Result := Result + Copy(n, 0,numbers);
  end;
end;

function ExtraireTexte(Source:string;TexteDep:string;Limites:string;Depart:integer;var Deb:integer; var Longueur:integer):string;
var
  a,b:integer;
  Fin:integer;
  TmpS:string;
  BVal:boolean;
begin
  Result:='';
  if Source='' then exit;
  a:=Depart;
  BVal:=true;
  while BVal do begin
      if copy(Source,a,Length(TexteDep))=TexteDep then begin
          BVal:=false;
          Depart:=a;
      end;
      if (a>=Length(Source)) and (BVal=true) then begin
          BVal:=false;
          exit;
      end;
      inc(a,1);
  end;
  a:=Depart;
  BVal := true;
  while BVal=true do begin
      TmpS := copy(Source,a,1);
      for b:=1 to Length(Limites) do begin
          if copy(Limites,b,1)=TmpS then begin
              BVal:=false;
              a:=a+2;
          end;
      end;
      dec(a,1);
      if a<1 then begin
          BVal:=false;
          a:=a+1;
      end;
  end;
    Deb:=a;
    a:=Depart;
    BVal:=true;
    while BVal=true do begin
        TmpS := copy(Source,a,1);
        for b:=1 to Length(Limites) do begin
            if copy(Limites,b,1)=TmpS then begin
                BVal:=false;
                a:=a-1;
            end;
        end;
    Inc(a,1);
        if TmpS='' then begin
            BVal:=false;
            a:=a-1;
        end;
  end;
  Fin:=a;
  Longueur := Fin-Deb;
  Result := copy(Source,Deb,Fin-Deb);
end;

procedure TForm1.AjouterPoint(X, Y, Z: integer);
var
  Num:integer;
begin
  setlength(Points,length(Points)+1);
  Num := Length(Points)-1;
  Points[Num].X := X;
  Points[Num].Y := Y;
  Points[Num].Z := Z;
  UpdateListePoint;
end;

procedure TForm1.Ajouterunpoint1Click(Sender: TObject);
begin
  if Pkel = 1 then AjouterPoint(PClickX-CentreX1,PClickY-CentreY1,0)
  else
  AjouterPoint(PClickX-CentreX2,0,PClickY-CentreY2);
end;

procedure TForm1.Animate1Click(Sender: TObject);
begin
  Button5.Click;
end;

procedure TForm1.Apply1Click(Sender: TObject);
begin
  Button4.Click;
end;

procedure TForm1.ApplyCoordinates1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  if StatusBar1.Panels[3].Text = '.3dr' then begin
    try
      TaillePoints := 3;
      Init();
      Options.ShowPoint := true;
      Options.ShowLn := true;
      pt2Param(false);
      Sleep(50);
      Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_box.3dr');
      Sleep(100);
      LoadOBJ(ExtractFilePath(Application.ExeName) + 'Data\temp\_box.3dr');
      Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_box.3dr');
      SpinEdit3.OnChange(sender);
      Animate1.Checked := true;
      StatusBar1.Panels[7].Text := IntToStr(ComboBox1.Items.Count);
    except
    end;
  end;

    if StatusBar1.Panels[3].Text = '.asc' then begin
    try
      TaillePoints := 3;
      Init();
      Options.ShowPoint := true;
      Options.ShowLn := true;
      pt2Param(false);
      Sleep(50);
      Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_box.asc');
      Sleep(100);
      Load3dstudio(ExtractFilePath(Application.ExeName) + 'Data\temp\_box.asc');
      Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_box.asc');
      SpinEdit3.OnChange(sender);
      Animate1.Checked := true;
      StatusBar1.Panels[7].Text := IntToStr(ComboBox1.Items.Count);
    except
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TForm1.DessinePoint(X, Y, Num: integer; Bmp: TBitmap);
var
  Color : TColor;
begin
  Bmp.Canvas.Lock;

  if Num = SelPoint then Color := clRed;
  if Num = SurvolPoint then Color := clyellow;
  if (Num<>SelPoint) and (Num<>SurvolPoint) then  Color := Point;

  Bmp.Canvas.Brush.Color := Color;
  Bmp.Canvas.Pen.Color := Color;
  Bmp.Canvas.Ellipse(X-TaillePoints,
                     Y-TaillePoints,
                     X+TaillePoints,
                     Y+TaillePoints);
  Bmp.Canvas.Unlock;
end;

procedure TForm1.AjouterArrete(num1, num2: integer); 
var
  num:integer;
begin
  SetLength(Lignes,Length(Lignes)+1);
  Num := Length(Lignes)-1;
  Lignes[Num].Num1 := Num1;
  Lignes[Num].Num2 := Num2;
end;

// Edge Colors
procedure TForm1.DessineArretes; 
var
  a:integer;
  DepPos:TPoint;
begin
  TmpBmp.Canvas.Brush.Color := Line;
  TmpBmp.Canvas.pen.Color := Line;
  a:=0;
  while a<= Length(Lignes)-1 do begin
    if a>Length(Lignes) then exit;
    DepPos.X := Points[Lignes[a].Num1].X2d;
    DepPos.Y := Points[Lignes[a].Num1].Y2d;
    TmpBmp.Canvas.PenPos := DepPos;
    TmpBmp.Canvas.LineTo(Points[Lignes[a].Num2].X2d,Points[Lignes[a].Num2].Y2d);
    inc(a,1);
  end;
end;

procedure TForm1.LoadOBJ(LeFichier:string);
var
  Fichier : TextFile;
  a, b:integer;
  TmpS : string;
begin
  init;
  try
    AssignFile(Fichier, LeFichier);
    Reset(Fichier);
    readln(Fichier,TmpS);
    SetLength(Points,strtoint(TmpS));

    for a:=0 to Length(Points)-1 do begin
       readln(Fichier,TmpS);
       Points[a].X := strtoint(TmpS);
       readln(Fichier,TmpS);
       Points[a].Y := strtoint(TmpS);
       readln(Fichier,TmpS);
       Points[a].Z := strtoint(TmpS);
    end;

    readln(Fichier,TmpS);
    SetLength(Lignes,strtoint(TmpS));

    for a:=0 to Length(Lignes)-1 do begin
     readln(Fichier,TmpS);
     Lignes[a].num1 := strtoint(TmpS);
     readln(Fichier,TmpS);
     Lignes[a].num2 := strtoint(TmpS);
    end;
  finally
  closeFile(Fichier);
  UpdateListePoint;
  end;
end;

procedure TForm1.OriginalSize1Click(Sender: TObject);
begin
  RadioButton1.OnClick(sender);
end;

procedure TForm1.SaveOBJ(LeFichier:string);
var
  Fichier : TextFile;
  a : integer;
begin
  if lowercase(right(LeFichier,4))<>'.3dr' then Lefichier := Lefichier + '.3dr';
  AssignFile(Fichier,LeFichier);
  Rewrite(Fichier);
  writeln(Fichier,Length(Points));

  for a:=0 to Length(Points)-1 do begin
   writeln(Fichier,inttostr(Points[a].X));
   writeln(Fichier,inttostr(Points[a].Y));
   writeln(Fichier,inttostr(Points[a].Z));
  end;

  writeln(Fichier,Length(Lignes));

  for a:=0 to Length(Lignes)-1 do begin
   writeln(Fichier,inttostr(Lignes[a].num1));
   writeln(Fichier,inttostr(Lignes[a].num2));
  end;

  closeFile(Fichier);
end;

procedure TForm1.ShowCoodinates1Click(Sender: TObject);
begin
  CheckBox4.Checked := not CheckBox4.Checked;
  StatusBar1.Panels[5].Text := 'X=' + IntToStr(Fond.Width) + ' - ' +
                               'Y=' + IntToStr(Fond.Height);
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  Zoom := SpinEdit3.Value;       // Z- Axis
  IncAngle1 := SpinEdit1.Value;  // X-Axis
  IncAngle2 := SpinEdit2.Value;  // Y-Axis
  Button5.Caption := 'Stop';
end;

procedure TForm1.SpinEdit2Change(Sender: TObject);
begin
  Zoom := SpinEdit3.Value;       // Z- Axis
  IncAngle1 := SpinEdit1.Value;  // X-Axis
  IncAngle2 := SpinEdit2.Value;  // Y-Axis
  Button5.Caption := 'Stop';
end;

procedure TForm1.SpinEdit3Change(Sender: TObject);
begin
  Zoom := SpinEdit3.Value;       // Z- Axis
  IncAngle1 := SpinEdit1.Value;  // X-Axis
  IncAngle2 := SpinEdit2.Value;  // Y-Axis
  Button5.Caption := 'Stop';
end;

procedure TForm1.Splitter2Moved(Sender: TObject);
begin
  StatusBar1.Panels[5].Text := 'X=' + IntToStr(Fond.Width) + ' - ' +
                               'Y=' + IntToStr(Fond.Height);
end;

procedure TForm1.Param2Pt;
var
  I:integer;
  Code:integer;
begin
  if SelPoint=-1 then exit;
  val(EPosX.text,I,Code);
  Points[SelPoint].X := I;
  val(EPosY.text,I,Code);
  Points[SelPoint].Y := I;
  val(EPosZ.text,I,Code);
  Points[SelPoint].Z := I;
end;

procedure TForm1.Pt2Param(UpDateListeLiaison:boolean);
var
  a:integer;
begin
  if SelPoint = -1 then begin
   Active(false);
   exit;
 end else Active(true);
  ENum.Caption := 'Point N° : ' + inttostr(SelPoint+1);
  EPosX.Text := inttostr(Points[SelPoint].X);
  EPosY.text := inttostr(Points[SelPoint].Y);
  EPosZ.Text := inttostr(Points[SelPoint].Z);
  ComboBox1.ItemIndex := SelPoint;

  if UpDateListeLiaison then begin
  ListBox1.Clear;

   for a:=0 to Length(Lignes)-1 do begin
    if Lignes[a].Num1 = SelPoint then ListBox1.Items.Add(inttostr(Lignes[a].Num2+1));
    if Lignes[a].Num2 = SelPoint then ListBox1.Items.Add(inttostr(Lignes[a].Num1+1));
   end;
  end;
end;

procedure TForm1.ImportObject1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TForm1.Init;
begin
  SetLength(Points,0);
  SetLength(Lignes,0);
  SurvolPoint := -1;
  ActPoint := -1;
  SelPoint := -1;
  Zoom := 256;                   // Z- Axis
  IncAngle1 := SpinEdit1.Value;  // X-Axis
  IncAngle2 := SpinEdit2.Value;  // Y-Axis
end;

procedure TForm1.UpdateListePoint; 
var
  a:integer;
begin
  ComboBox1.Clear;

  for a:=0 to Length(Points) -1 do
  ComboBox1.Items.Add(inttostr(a+1));
end;

procedure TForm1.ViewEdges1Click(Sender: TObject);
begin
  CheckBox3.Checked := not CheckBox3.Checked;
end;

procedure TForm1.ViewPoints1Click(Sender: TObject);
begin
  CheckBox2.Checked := not CheckBox2.Checked;
end;

procedure TForm1.SupprimerArrete(Num1, Num2: integer);
var
  a,b:integer;
begin
  {$R-}
  for a:=0 to length(Lignes)-1 do begin
   if ((Lignes[a].Num1 = Num1) and (Lignes[a].Num2 =Num2)) or
      ((Lignes[a].Num1 = Num2) and (Lignes[a].Num2 =Num1)) then
      begin
        for b := a+1 to Length(Lignes)-1 do Lignes[b-1] := Lignes[b];
        SetLength(Lignes,Length(Lignes)-1);
      end;
  end;
  {$R+}
end;

procedure TForm1.SupprimerPoint(Num: integer); 
var
a:integer;
begin
   for a := Num+1 to Length(Points)-1 do Points[a-1] := Points[a];
   SetLength(Points,Length(Points)-1);
   for a:=0 to Length(Lignes)-1 do begin
    if Lignes[a].Num1>=Num then Lignes[a].Num1:=Lignes[a].Num1-1;
    if Lignes[a].Num2>=Num then Lignes[a].Num2:=Lignes[a].Num2-1;
   end;
end;

procedure TForm1.Active(Mode: boolean); 
begin
  if Mode = false then begin
    EPosX.Enabled := false;
    EPosY.Enabled := false;
    EPosZ.Enabled := false;
    ListBox1.Enabled := false;
    Button1.Enabled := false;
    Button2.Enabled := false;
    Button3.Enabled := false;
 end else begin
    EPosX.Enabled := true;
    EPosY.Enabled := true;
    EPosZ.Enabled := true;
    ListBox1.Enabled := true;
    Button1.Enabled := true;
    Button2.Enabled := true;
    Button3.Enabled := true;
  end;
end;

function TForm1.Distance(X, Y, X2, Y2: integer): integer;
begin
  result := round(sqrt(sqr(X2-X)+sqr(Y2-Y)));
end;

procedure TForm1.DoubleSize2x1Click(Sender: TObject);
begin
  RadioButton1.OnClick(sender);
end;

procedure TForm1.Line1Click(Sender: TObject);
begin
  if ColorDialog3.Execute then Line := ColorDialog3.Color;
end;

procedure TForm1.Load3dstudio(LeFichier: string);
const
  decalage=0;
var
  Fichier:TextFile;
  TmpS,TmpS2:string;
  Deb,Long:integer;
  a:integer;
  n1,n2,n3:integer;
  l1,l2,l3:integer;
  stop:boolean;
begin
  init();
  a:=0;
  AssignFile(Fichier,LeFichier);
  reset(Fichier);
  stop:=false;
  TmpS := '';
  repeat
  if EOF(Fichier) then stop:=true;
  if instr(1,TmpS,'Vertex')=0 then
    readln(Fichier,TmpS)
   else begin
    if ExtraireTexte(TmpS,'X',' ',1,Deb,Long)<>'' then begin
      SetLength(Points,Length(Points)+1);
      TmpS2 := ExtraireTexte(TmpS,'X',' ',1,Deb,Long);
      TmpS2 := inttostr(ExtraiChiffreApres(TmpS,Deb));
      Points[Length(Points)-1].X := strtoint(TmpS2);
      TmpS2 := ExtraireTexte(TmpS,'Y',' ',1,Deb,Long);
      TmpS2 := inttostr(ExtraiChiffreApres(TmpS,Deb));
      Points[Length(Points)-1].Y := strtoint(TmpS2);
      TmpS2 := ExtraireTexte(TmpS,'Z',' ',1,Deb,Long);
      TmpS2 := inttostr(ExtraiChiffreApres(TmpS,Deb));
      Points[Length(Points)-1].Z := strtoint(TmpS2);
    end;
    readln(Fichier,TmpS);
  end;
  until stop=true;

  TmpS := '';
  stop := false;
  closefile(Fichier);
  AssignFile(Fichier,LeFichier);
  reset(Fichier);

  repeat
  if EOF(Fichier) then stop:=true;
  if instr(1,TmpS,'Face')=0 then
    readln(Fichier,TmpS)
   else begin
    if ExtraireTexte(TmpS,'CA',' ',1,Deb,Long)<>'' then begin
      TmpS2 := ExtraireTexte(TmpS,'A',' ',1,Deb,Long);
      TmpS2 := inttostr(ExtraiChiffreApres(TmpS,Deb));
      n1 := strtoint(TmpS2);
      TmpS2 := ExtraireTexte(TmpS,'B',' ',Deb+Long,Deb,Long);
      TmpS2 := inttostr(ExtraiChiffreApres(TmpS,Deb));
      n2 := strtoint(TmpS2);
      TmpS2 := ExtraireTexte(TmpS,'C',' ',Deb+Long,Deb,Long);
      TmpS2 := inttostr(ExtraiChiffreApres(TmpS,Deb));
      n3 := strtoint(TmpS2);
      TmpS2 := ExtraireTexte(TmpS,'AB',' ',Deb+Long,Deb,Long);
      TmpS2 := inttostr(ExtraiChiffreApres(TmpS,Deb));
      l1 := strtoint(TmpS2);
      TmpS2 := ExtraireTexte(TmpS,'BC',' ',Deb+Long,Deb,Long);
      TmpS2 := inttostr(ExtraiChiffreApres(TmpS,Deb));
      l2 := strtoint(TmpS2);
      TmpS2 := ExtraireTexte(TmpS,'CA',' ',Deb+Long,Deb,Long);
      TmpS2 := inttostr(ExtraiChiffreApres(TmpS+' DE',Deb));
      l3 := strtoint(TmpS2);
      if (TestArrete(n1,n2)=false) and (l1=1) then begin
       SetLength(Lignes,Length(Lignes)+1);
       Lignes[Length(Lignes)-1].Num1 := n1;
       Lignes[Length(Lignes)-1].Num2 := n2;
      end;
      if (TestArrete(n2,n3)=false) and (l2=1) then begin
       SetLength(Lignes,Length(Lignes)+1);
       Lignes[Length(Lignes)-1].Num1 := n2;
       Lignes[Length(Lignes)-1].Num2 := n3;
      end;
      if (TestArrete(n3,n1)=false) and (l3=1) then begin
       SetLength(Lignes,Length(Lignes)+1);
       Lignes[Length(Lignes)-1].Num1 := n3;
       Lignes[Length(Lignes)-1].Num2 := n1;
      end;
    end;
     readln(Fichier,TmpS);
  end;

  until stop=true;
  //beep;
  closefile(Fichier);
  Pt2Param(false);
  UpdateListePoint;
end;

function TForm1.TestArrete(Num1, Num2: integer):boolean;
var
  a:integer;
begin
  Result := false;
  for a:=0 to Length(Lignes)-1 do begin
    if (Lignes[a].Num1 = Num1) and (Lignes[a].Num2 = Num2) then Result := true;
    if (Lignes[a].Num2 = Num1) and (Lignes[a].Num1 = Num2) then Result := true;
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  Bitmap: TBitmap;
  Source: TRect;
  Dest: TRect;
begin
  Bitmap := TBitmap.Create;
  frame := frame + 1;
  try
      with Bitmap do
      begin
        Width := Fond.Width;
        Height := Fond.Height;
        Dest := Rect(0, 0, Width, Height);
      end;

      with Fond do
        Source := Rect(0, 0, Width, Height);
        Bitmap.Canvas.CopyRect(Dest, Fond.Canvas, Source);
        Bitmap.SaveToFile(ExtractFilePath(Application.ExeName) +
                          'Data\Frames\Frame' + '_' + IntToStr(frame) + '.bmp');
        ProgressBar1.Position := frame;
  finally
    Bitmap.Free;
      if frame >= SpinEdit4.Value then begin
        Screen.Cursor := crDefault;
        Timer1.Enabled := false;
        BitBtn5.Enabled := true;
        BitBtn6.Enabled := false;
        MessageDlg('Process Build Frames finish.',mtInformation, [mbOK], 0);
      end;
  end;
end;

procedure TForm1.ExportObject1Click(Sender: TObject);
begin
  BitBtn3.Click;
end;

function TForm1.ExtraiChiffreApres(Source: string; Dep: integer): integer;
var
  a:integer;
  valu:char;
  num:string;
  premier:boolean;
begin
  Num :='';
  Result := 0;
  premier:=false;
  for a:=Dep to Length(Source)-1 do begin
   valu := mid(Source,a,1)[1];
   if ((Ord(valu)>=48) and (Ord(valu)<=57)) or (Ord(valu)=45)  then begin
     num := num + Valu;
     premier:=true;
   end else if premier=true then begin
     Result := strtoint(num);
     exit;
   end;
  end;
end;

procedure TBoucle.Affiche; 
begin
  Form1.Fond.Canvas.Draw(0,0,TmpBmp);
  Form1.Fond1.Canvas.Draw(0,0,TmpBmp1);
  Form1.Fond2.Canvas.Draw(0,0,TmpBmp2);
end;

constructor TBoucle.Create;
begin
  FreeOnTerminate := True;
  inherited Create(false);
  Priority := tplowest;
end;

procedure TBoucle.Execute; 
var
  a:integer;
  Val1,Val2,Val3:integer;
  nX,nY,nZ:real;
  Angle1,Angle2,Angle3:integer;
  s:array[0..359] of real;
  c:array[0..359] of real;
begin
  inherited;
    TmpBmp := TBitmap.Create;
    TmpBmp1 := TBitmap.Create;
    TmpBmp2 := TBitmap.Create;
    Angle1:=0;
    Angle2:=0;
    Angle3:=0;
    Val1 := 256;

    For a := 0 To 359 do begin
     s[a] := Sin(a * (PI / 180));
     c[a] := Cos(a * (PI / 180));
    end;

    repeat
    TmpBmp.Canvas.Lock;
    TmpBmp1.Canvas.Lock;
    TmpBmp2.Canvas.Lock;
    TmpBmp.Height := Form1.Fond.Height;
    TmpBmp.Width := Form1.Fond.Width;
    TmpBmp1.Height := Form1.Fond1.Height;
    TmpBmp1.Width := Form1.Fond1.Width;
    TmpBmp2.Height := Form1.Fond2.Height;
    TmpBmp2.Width := Form1.Fond2.Width;

    TmpBmp.Canvas.Brush.Color := BGR;
    TmpBmp.Canvas.Pen.Color := 0;
    TmpBmp.Canvas.Rectangle(0,0,TmpBmp.Width,TmpBmp.Height);

    TmpBmp1.Canvas.Brush.Color := 0;
    TmpBmp1.Canvas.Pen.Color := 0;
    TmpBmp1.Canvas.Rectangle(0,0,TmpBmp1.Width,TmpBmp1.Height);

    TmpBmp2.Canvas.Brush.Color := 0;
    TmpBmp2.Canvas.Pen.Color := 0;
    TmpBmp2.Canvas.Rectangle(0,0,TmpBmp2.Width,TmpBmp2.Height);

    Angle1 := (Angle1+IncAngle1) Mod 359;
    Angle2 := (Angle2+IncAngle2) Mod 359;

    if Angle1<0 then Angle1:=359;
      if Angle2<0 then Angle2:=359;
      a:=0;
      while a<= Length(Points)-1 do begin
       with Points[a] do begin
         if a<=Length(Points)-1 then begin
         nz := -x*(c[Angle1]*c[Angle2])-y*(s[Angle1]*c[Angle2])-z*s[Angle2]+Val1;
         nx := (-x*s[Angle1]+y*c[Angle1])/nz;
         ny := (-x*(c[Angle1]*s[Angle2])-y*(s[Angle1]*s[Angle2])+z*c[Angle2])/nz;
         X2d := round(nx*Zoom)+CentreX;
         Y2d := round(ny*Zoom) +CentreY;
         if Options.ShowLn then Form1.DessineArretes();
         if Options.ShowPoint then Form1.DessinePoint(X2d,Y2d,a,TmpBmp);
         Form1.DessinePoint(X+CentreX1,Y+CentreY1,a,TmpBmp1);
         Form1.DessinePoint(X+CentreX2,Z+CentreY2,a,TmpBmp2);
       end;
     end;

   inc(a,1);
  end;

  synchronize(Affiche);
  TmpBmp.Canvas.UnLock;
  TmpBmp1.Canvas.UnLock;
  TmpBmp2.Canvas.UnLock;
  sleep(1); 
  until false;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Buffer     : array of Byte;
begin
  IncAngle1 := 0;
  IncAngle2 := 0;
  Active(false);
  //Pt2Param(false);



  SetLength(Buffer, 32768);
  ZeroMemory(@Buffer[0], sizeof(Buffer));
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  a : integer;
begin
  DoubleBuffered := true;

  TaillePoints := 3;
  Init();
  Options.ShowPoint := true;
  Options.ShowLn := true;
  pt2Param(false);
  TBoucle.Create;

  ColorDialog1.Color := clBlack;
  ColorDialog2.Color := clLime;
  ColorDialog3.Color := clWhite;

  BGR := ColorDialog1.Color;
  Point := ColorDialog2.Color;
  Line := ColorDialog3.Color;

  LoadOBJ(ExtractFilePath(Application.ExeName) + 'Data\Objects\Cube.3dr');
  Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\Objects\Cube.3dr');
end;

procedure TForm1.FormDestroy(Sender: TObject);
var
  Buffer     : array of Byte;
begin
  SetLength(Buffer, 32768);
  ZeroMemory(@Buffer[0], sizeof(Buffer));
  Application.Terminate;
end;

procedure TForm1.Fond1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  a:integer;
begin
  Pkel := 1;
  PClickX := X;
  PClickY := Y;

  for a:=0 to Length(Points)-1 do
    if (PClickX-CentreX1 > Points[a].X-TaillePoints) and (PClickX-CentreX1 < Points[a].X+TaillePoints) and (PClickY-CentreY1 > Points[a].Y-TaillePoints) and (PClickY-CentreY1 < Points[a].Y+TaillePoints) then begin
     SelPoint := a;
     ActPoint := a;
     Pt2Param(true);
  end;
end;

procedure TForm1.Fond2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  a:integer;
begin
  Pkel := 2;
  PClickX := X;
  PClickY := Y;

  for a:=0 to Length(Points)-1 do
    if (PClickX-CentreX2 > Points[a].X-TaillePoints) and
       (PClickX-CentreX2 < Points[a].X+TaillePoints) and
       (PClickY-CentreY2 > Points[a].Z-TaillePoints) and
       (PClickY-CentreY2 < Points[a].Z+TaillePoints) then begin
      SelPoint := a;
      ActPoint := a;
      Pt2Param(true);
    end;
end;

procedure TForm1.Panel4Resize(Sender: TObject);
begin
  CentreX2 := Fond2.Width div 2;
  CentreY2 := Fond2.Height div 2;
end;

procedure TForm1.Panel5Resize(Sender: TObject);
begin
  CentreX1 := Fond1.Width div 2;
  CentreY1 := Fond1.Height div 2;
end;

procedure TForm1.Panel3Resize(Sender: TObject);
begin
  CentreX := Fond.Width div 2;
  CentreY := Fond.Height div 2;
end;

procedure TForm1.Fond1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ActPoint:=-1;
end;

procedure TForm1.Fond1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  a:integer;
begin
  if ActPoint<>-1 then begin
    Points[SelPoint].X := X-CentreX1;
    Points[SelPoint].Y := Y-CentreY1;
    Pt2Param(false);
  end;
  StatusBar1.Panels[9].Text := '';
  SurvolPoint := -1;

  for a:=0 to Length(Points)-1 do
    if (X-CentreX1 > Points[a].X-TaillePoints) and (X-CentreX1 < Points[a].X+TaillePoints) and (Y-CentreY1 > Points[a].Y-TaillePoints) and (Y-CentreY1 < Points[a].Y+TaillePoints) then begin
     StatusBar1.Panels[9].Text := inttostr(a+1);
     SurvolPoint := a;
    end;
end;

procedure TForm1.Fond2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
a:integer;
begin
  if ActPoint<>-1 then begin
    Points[SelPoint].X := X-CentreX2;
    Points[SelPoint].Z := Y-CentreY2;
    Pt2Param(false);
  end;

  SurvolPoint := -1;
  StatusBar1.Panels[9].Text := '';

  for a:=0 to Length(Points)-1 do
    if (X-CentreX2 > Points[a].X-TaillePoints) and
       (X-CentreX2 < Points[a].X+TaillePoints) and
       (Y-CentreY2 > Points[a].Z-TaillePoints) and
       (Y-CentreY2 < Points[a].Z+TaillePoints) then begin
     StatusBar1.Panels[9].Text := inttostr(a+1);
     SurvolPoint := a;
  end;
end;

procedure TForm1.Fond2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ActPoint:=-1;
end;

procedure TForm1.CreateBitmap1Click(Sender: TObject);
begin
  BitBtn4.Click;
end;

procedure TForm1.Creerunearrte1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Background1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then BGR := ColorDialog1.Color;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName) + 'Data\Objects';

  if OpenDialog1.Execute then begin

    if UpperCase(right(OpenDialog1.FileName,3))='ASC' then begin
      Load3dstudio(OpenDialog1.FileName);
      StatusBar1.Panels[3].Text := ExtractFileExt(OpenDialog1.FileName);
      Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
      Animate1.Checked := true;
      StatusBar1.Panels[7].Text := IntToStr(ComboBox1.Items.Count);
      SpinEdit3.Value := 2000;
      SpinEdit3.OnChange(sender);
    end else begin

        if UpperCase(right(OpenDialog1.FileName,3))='3DR' then begin
          LoadOBJ(OpenDialog1.FileName);
          Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
          Animate1.Checked := true;
          StatusBar1.Panels[7].Text := IntToStr(ComboBox1.Items.Count);
          StatusBar1.Panels[3].Text := ExtractFileExt(OpenDialog1.FileName);
          SpinEdit3.Value := 256;
          SpinEdit3.OnChange(sender);
          end else begin
          showmessage('Format no Supported!');
        end;
    end;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Active(false);
  Init();
  //Pt2Param(false);
  //UpdateListePoint;
  Memo1.Clear;
  StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  if SaveDialog1.Execute then begin
   SaveOBJ(SaveDialog1.FileName);
  end;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var
  Bitmap: TBitmap;
  Source: TRect;
  Dest: TRect;
begin
  Bitmap := TBitmap.Create;
  try
    if SaveDialog2.Execute then begin
      with Bitmap do
      begin
        Width := Fond.Width;
        Height := Fond.Height;
        Dest := Rect(0, 0, Width, Height);
      end;

      with Fond do
        Source := Rect(0, 0, Width, Height);
        Bitmap.Canvas.CopyRect(Dest, Fond.Canvas, Source);
        Bitmap.SaveToFile(SaveDialog2.FileName + '.bmp');
    end;
  finally
    Bitmap.Free;
  end;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  Beep;
  if MessageBox(Handle,
                'This will Build Bitmap Frames, Continue?','Build Frames',MB_YESNO) = IDYES then
    BEGIN
      Screen.Cursor := crHourGlass;
      frame := 0;
      ProgressBar1.Position := 0;
      Progressbar1.Max := SpinEdit4.Value;
      Timer1.Enabled := true;
      BitBtn5.Enabled := false;
      BitBtn6.Enabled := true;
    END;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  BitBtn5.Enabled := true;
  BitBtn6.Enabled := false;
  frame := 0;
  Timer1.Enabled := false;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.Show;
  Form2.ComboBox1.ItemIndex := SelPoint;
end;

procedure TForm1.EPosXExit(Sender: TObject);
begin
  Param2Pt;
end;
procedure TForm1.EPosXKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Param2Pt();
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  SelPoint := ComboBox1.ItemIndex;
  Pt2Param(true);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if ListBox1.ItemIndex<0 then
  exit;

  SupprimerArrete(SelPoint,strtoint(ListBox1.Items.Strings[ListBox1.itemindex])-1);
  pt2param(true);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  a:integer;
begin
  for a:=0 to ListBox1.Count-1 do
    SupprimerArrete(SelPoint,strtoint(ListBox1.Items.Strings[a])-1);
    SupprimerPoint(SelPoint);
    SelPoint := -1;
    UpDateListePoint;
    pt2Param(false);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  if StatusBar1.Panels[3].Text = '.3dr' then begin
    SaveOBJ(ExtractFilePath(Application.ExeName) + 'Data\temp\_temp');
    Init();
    Pt2Param(false);
    UpdateListePoint;
    Sleep(300);
    LoadOBJ(ExtractFilePath(Application.ExeName) + 'Data\temp\_temp.3dr');
    Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_temp.3dr');
    SpinEdit3.OnChange(sender);
    Animate1.Checked := true;
  end;

  if StatusBar1.Panels[3].Text = '.asc' then begin
    Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_temp.asc');
    Init();
    Pt2Param(false);
    UpdateListePoint;
    Sleep(300);
    Load3dstudio(ExtractFilePath(Application.ExeName) + 'Data\temp\_temp.asc');
    Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_temp.asc');
    SpinEdit3.OnChange(sender);
    Animate1.Checked := true;
  end;

  Screen.Cursor := crDefault;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if Button5.Caption = 'Stop' then begin
    Button5.Caption := 'Animate';
    //Zoom := 256;     // Z- Axis
    IncAngle1 := 0;  // X-Axis
    IncAngle2 := 0;  // Y-Axis
  end else begin
    Button5.Caption := 'Stop';
    //Zoom := 256;     // Z- Axis
    IncAngle1 := 1;  // X-Axis
    IncAngle2 := 1;  // Y-Axis
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.Point1Click(Sender: TObject);
begin
  if ColorDialog2.Execute then Point := ColorDialog2.Color;
end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
  if SurvolPoint = -1 then
    Supprimerlepoint1.Enabled := false
  else
    Supprimerlepoint1.Enabled := true;
end;

procedure TForm1.Supprimerlepoint1Click(Sender: TObject);
begin
  SelPoint := SurvolPoint;
  pt2param(true);
  Button3Click(sender);
end;

procedure TForm1.FondMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Dist,Dist1,Dist2,Dist3,Dist4:integer;
begin
  // This section can be used to adjust the object
  //  with the mouse, activate it if you want.
  {
  Dist := Distance(CentreX,CentreY,X,Y);
  Dist1 := Distance(CentreX,CentreY,X,CentreY);
  Dist2 := Distance(CentreX,CentreY,CentreX,Y);
  if (Dist < 80) and (Button = mbLeft) then Zoom := Zoom +20;
  if (Dist < 80) and (Button = mbRight) and (Zoom>10) then Zoom := Zoom -20;
  if (Dist > 80) and (Dist1>Dist2) and (X>CentreX) then IncAngle1 := IncAngle1 +1;
  if (Dist > 80) and (Dist1>Dist2) and (X<CentreX) then IncAngle1 := IncAngle1 -1;
  if (Dist > 80) and (Button = mbRight) and (Dist1>Dist2) then IncAngle1:=0;
  if (Dist > 80) and (Dist2>Dist1) and (Y>CentreY) then IncAngle2 := IncAngle2 -1;
  if (Dist > 80) and (Dist2>Dist1) and (Y<CentreY)  then IncAngle2 := IncAngle2 +1;
  if (Dist > 80) and (Button = mbRight) and (Dist2>Dist1) then IncAngle2:=0;
  }
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Panel5.Width := Panel2.Width div 2;
  StatusBar1.Panels[5].Text := 'X=' + IntToStr(Fond.Width) + ' - ' +
                               'Y=' + IntToStr(Fond.Height);

  Fond2.Align := alClient;
end;

procedure TForm1.GenerateRandomObject1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Memo1.Clear;
  Memo1.Lines.Add('8');
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  Memo1.Lines.Add( GeneratePass(0, 2));
  Memo1.Lines.Add('-' + GeneratePass(0, 2));
  //Memo1.Lines.Add( GeneratePass(0, 2));

  Memo1.Lines.Add('12');
  Memo1.Lines.Add('0');
  Memo1.Lines.Add('1');
  Memo1.Lines.Add('1');
  Memo1.Lines.Add('2');
  Memo1.Lines.Add('2');
  Memo1.Lines.Add('3');
  Memo1.Lines.Add('0');
  Memo1.Lines.Add('3');
  Memo1.Lines.Add('4');
  Memo1.Lines.Add('5');
  Memo1.Lines.Add('5');
  Memo1.Lines.Add('6');
  Memo1.Lines.Add('6');
  Memo1.Lines.Add('7');
  Memo1.Lines.Add('0');
  Memo1.Lines.Add('7');
  Memo1.Lines.Add('1');
  Memo1.Lines.Add('6');
  Memo1.Lines.Add('2');
  Memo1.Lines.Add('5');
  Memo1.Lines.Add('3');
  Memo1.Lines.Add('4');
  Memo1.Lines.Add('4');
  Memo1.Lines.Add('7');

  try
    TaillePoints := 3;
    Init();
    Options.ShowPoint := true;
    Options.ShowLn := true;
    pt2Param(false);
    Sleep(50);
    Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_rnd.3dr');
    Sleep(100);
    LoadOBJ(ExtractFilePath(Application.ExeName) + 'Data\temp\_rnd.3dr');
    Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_rnd.3dr');
    Animate1.Checked := true;
    StatusBar1.Panels[7].Text := IntToStr(ComboBox1.Items.Count);
  except
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.GenerateRandomVertex1Click(Sender: TObject);
var
  i : integer;
begin
  //Screen.Cursor := crHourGlass;
  Memo1.Clear;
  Memo1.Lines.Add('Named Object: "Random"');
  Memo1.Lines.Add('Tri-mesh, Vertices: 42     Faces: 20');
  Memo1.Lines.Add('Vertex list:');

  for i := 0 to 8 do begin
  Memo1.Lines.Add('Vertex ' + IntToStr(i) + ': X: -' + GeneratePass(0, 1) + ',' +
                  GeneratePass(0, 6) + '   ' + 'Y: ' + GeneratePass(0, 1) + ',' +
                  GeneratePass(0, 6) + '   ' + 'Z: ' + GeneratePass(0, 1) + ',' +
                  GeneratePass(0, 6));
  end;

  Memo1.Lines.Add('Face list:');
  Memo1.Lines.Add('Face 0:    A:' + GeneratePass(0, 1) + ' B:1 C:2 AB:1 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing:');
  Memo1.Lines.Add('Face 1:    A:' + GeneratePass(0, 1) + ' B:2 C:3 AB:1 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 2:    A:' + GeneratePass(0, 1) + ' B:3 C:4 AB:1 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 3:    A:' + GeneratePass(0, 1) + ' B:4 C:5 AB:1 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 4:    A:' + GeneratePass(0, 1) + ' B:5 C:6 AB:1 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 5:    A:' + GeneratePass(0, 1) + ' B:6 C:7 AB:1 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  {
  Memo1.Lines.Add('Face 6:    A:' + GeneratePass(0, 1) + ' B:7 C:8 AB:1 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 7:    A:' + GeneratePass(0, 1) + ' B:8 C:9 AB:1 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 8:    A:' + GeneratePass(0, 1) + ' B:9 C:10 AB:1 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 9:    A:' + GeneratePass(0, 1) + ' B:10 C:1 AB:1 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');

  Memo1.Lines.Add('Face 10:    A:1 B:11 C:12 AB:1 BC:1 CA:0');
  Memo1.Lines.Add('Smoothing: ');


  Memo1.Lines.Add('Face 11:    A:1 B:12 C:2 AB:0 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 12:    A:2 B:12 C:13 AB:1 BC:1 CA:0');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 13:    A:2 B:13 C:3 AB:0 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 14:    A:3 B:13 C:14 AB:1 BC:1 CA:0');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 15:    A:3 B:14 C:4 AB:0 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 16:    A:4 B:14 C:15 AB:1 BC:1 CA:0');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 17:    A:4 B:15 C:5 AB:0 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 18:    A:5 B:15 C:16 AB:1 BC:1 CA:0');
  Memo1.Lines.Add('Smoothing: ');
  Memo1.Lines.Add('Face 19:    A:5 B:16 C:6 AB:0 BC:1 CA:1');
  Memo1.Lines.Add('Smoothing: ');
  }



  try
    TaillePoints := 3;
    Init();
    Options.ShowPoint := true;
    Options.ShowLn := true;
    pt2Param(false);
    Sleep(50);
    Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_rnd.asc');
    Sleep(100);
    Load3dstudio(ExtractFilePath(Application.ExeName) + 'Data\temp\_rnd.asc');
    Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_rnd.asc');
    Animate1.Checked := true;
    SpinEdit3.Value := 4000;
    SpinEdit3.OnChange(sender);
    StatusBar1.Panels[7].Text := IntToStr(ComboBox1.Items.Count);
  except
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
var
  a:integer;
begin
  for a:=0 to length(Points)-1 do begin
    Points[a].X := Points[a].X *2;
    Points[a].Y := Points[a].Y *2;
    Points[a].Z := Points[a].Z *2;
  end;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
var
  a:integer;
begin
  for a:=0 to length(Points)-1 do begin
    Points[a].X := Points[a].X div 2;
    Points[a].Y := Points[a].Y div 2;
    Points[a].Z := Points[a].Z div 2;
  end;
end;

procedure TForm1.RenderFrames1Click(Sender: TObject);
begin
  BitBtn5.Click;
end;

procedure TForm1.Center1Click(Sender: TObject);
begin
  CheckBox1.Checked := not CheckBox1.Checked;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
var
  a:integer;
  Xmin,Xmax,Ymin,Ymax,Zmin,Zmax:integer;
  DecX,DecY,DecZ:integer;
begin
  Xmin := 0;
  Xmax := 0;
  Ymin := 0;
  Ymax := 0;
  Zmin := 0;
  Zmax := 0;

  for a:=0 to Length(Points)-1 do begin
    if Points[a].X<Points[Xmin].X then Xmin := a;
    if Points[a].X>Points[Xmax].X then Xmax := a;
    if Points[a].Y<Points[Ymin].Y then Ymin := a;
    if Points[a].Y>Points[Ymax].Y then Ymax := a;
    if Points[a].Z<Points[Zmin].Z then Zmin := a;
    if Points[a].Z>Points[Zmax].Z then Zmax := a;
  end;

  DecX := 0-(Points[Xmin].X+Points[Xmax].X) div 2;
  DecY := 0-(Points[Ymin].Y+Points[Ymax].Y) div 2;
  DecZ := 0-(Points[Zmin].Z+Points[Zmax].Z) div 2;

  for a:=0 to Length(Points)-1 do begin
    Points[a].X :=Points[a].X + DecX;
    Points[a].Y :=Points[a].Y + DecY;
    Points[a].Z :=Points[a].Z + DecZ;
  end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  Options.ShowPoint := CheckBox2.Checked;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  Options.ShowLn := CheckBox3.Checked;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  Memo1.Visible := CheckBox4.Checked;
end;

procedure TForm1.Clear1Click(Sender: TObject);
begin
  BitBtn2.Click;
end;

procedure TForm1.Control1Click(Sender: TObject);
begin
  Panel1.Visible := Control1.Checked;
end;

end.



