unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    StatusBar1: TStatusBar;
    Label3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}
procedure TForm2.FormActivate(Sender: TObject);
var
  a:integer;
begin
  Combobox1.Clear;
  Combobox2.Clear;

  for a:=0 to Length(Points)-1 do begin
    Combobox1.Items.Add(inttostr(a+1));
    Combobox2.Items.Add(inttostr(a+1));
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := 'Draw Edge from Point N° to Related Point.';
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.AjouterArrete(Combobox1.ItemIndex,Combobox2.ItemIndex);
  Form1.Pt2Param(true);
  Form2.Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form2.Close;
end;
end.



