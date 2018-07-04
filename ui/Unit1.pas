unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  URegister, UProductCatalog, USale,
  Unit2, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    //Sale: TSale;
    /// <link>aggregation</link>
    Regicter: TRegister;
    catalog: TProductCatalog;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  id: integer;
  qty: integer;
begin
  // Registe.enterItem();
  id := strtoint(Edit1.Text);
  qty := strtoint(Edit2.Text);

  Regicter.enterItem(id, qty);

  Edit1.Text := '0';
  Edit2.Text := '0';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form2.Visible := true;
  Form2.Edit1.Text := IntToStr(Regicter.getTotalSale);
  self.Visible := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Edit1.Text := '0';
  Edit2.Text := '0';

  catalog := TProductCatalog.create;
  Regicter := TRegister.create(catalog);
  Regicter.makeNewSale;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  id: integer;
  qty: integer;
begin
  // Registe.enterItem();
  id := 100;
  qty := 0;

  Edit1.Text := '100';
  Edit2.Text := '0';
end;
procedure TForm1.Button7Click(Sender: TObject);
var
  id: integer;
  qty: integer;
begin
  // Registe.enterItem();
  id := 200;
  qty := 0;

  Edit1.Text := '200';
  Edit2.Text := '0';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  showmessage('+1')
end;
procedure TForm1.Button8Click(Sender: TObject);
begin
  showmessage('-1')
end;


end.
