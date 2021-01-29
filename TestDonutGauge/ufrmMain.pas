unit ufrmMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, ufraDonutGauge,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmMain = class(TForm)
    fraDonutGauge1: TfraDonutGauge;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}


// TfrmMain
// ============================================================================
procedure TfrmMain.FormCreate(Sender: TObject);
begin
  fraDonutGauge1.Max := 2000;
  fraDonutGauge1.Value := 1280;
end;

// ----------------------------------------------------------------------------
procedure TfrmMain.Button1Click(Sender: TObject);
begin
  fraDonutGauge1.Value := 0;
end;

// ----------------------------------------------------------------------------
procedure TfrmMain.Button2Click(Sender: TObject);
begin
  fraDonutGauge1.Value := 500;
end;

// ----------------------------------------------------------------------------
procedure TfrmMain.Button3Click(Sender: TObject);
begin
  fraDonutGauge1.Value := 1280;
end;

// ----------------------------------------------------------------------------
procedure TfrmMain.Button4Click(Sender: TObject);
begin
  fraDonutGauge1.Value := 2000;
end;

end.
