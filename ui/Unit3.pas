unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Unit1, Data.DB, Data.Win.ADODB, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    StaticText1: TStaticText;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form1.Visible := true;
end;


procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  Form1.Visible := true;
end;

end.
