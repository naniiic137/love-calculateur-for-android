unit HeaderFooterTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TLove = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Love: TLove;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TLove.Button1Click(Sender: TObject);
var
ch:string;
  I,x: Integer;
begin
if (Edit1.Text='hamza') or (edit2.Text='hamza') or (Edit1.Text='Hamza') or (edit2.Text='Hamza') then
begin
  label3.Text:='100%';
end
else if (Edit1.Text='wajdi') or (edit2.Text='wajdi') or (Edit1.Text='Wajdi') or (edit2.Text='Wajdi') then
begin
  label3.Text:='-100%';
end
else
begin
ch:=edit1.Text+edit2.Text;
x:=0;
for I := 1 to length(ch) do
begin
  x:=x+ord(ch[i]);
end;
x:=x*2;
str(x mod 101,ch)  ;
label3.Text:=ch+'%';
end;
end;

end.
