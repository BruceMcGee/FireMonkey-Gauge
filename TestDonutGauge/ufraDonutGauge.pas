unit ufraDonutGauge;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Ani;

type
  TfraDonutGauge = class(TFrame)
    Arc1: TArc;
    Arc2: TArc;
    Label1: TLabel;
  private
    FMin: Integer;
    FMax: Integer;
    FValue: Integer;
    procedure Draw;
    procedure SetMax(const Value: Integer);
    procedure SetMin(const Value: Integer);
    procedure SetValue(const Value: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    property Max: Integer read FMax write SetMax;
    property Min: Integer read FMin write SetMin;
    property Value: Integer read FValue write SetValue;
  end;

implementation

{$R *.fmx}


// TfraDonutGauge
// ============================================================================
constructor TfraDonutGauge.Create(AOwner: TComponent);
begin
  inherited;

  FMin := 0;
  FMax := 100;
  FValue := 0;
  Draw;
end;

// ----------------------------------------------------------------------------
procedure TfraDonutGauge.Draw;
var
  LSweepAngle: Single;
begin
  Label1.Text := Format('%.0n', [FValue + 0.0]);
  LSweepAngle := ((FValue - FMin) / (FMax - FMin)) * 270;

  // Arc2.EndAngle := LSweepAngle;
  TAnimator.AnimateFloat(Arc2, 'EndAngle', LSweepAngle, 0.1,
    TAnimationType.InOut, TInterpolationType.Quadratic);
end;

// ----------------------------------------------------------------------------
procedure TfraDonutGauge.SetMax(const Value: Integer);
begin
  FMax := Value;
  Draw;
end;

// ----------------------------------------------------------------------------
procedure TfraDonutGauge.SetMin(const Value: Integer);
begin
  FMin := Value;
  Draw;
end;

// ----------------------------------------------------------------------------
procedure TfraDonutGauge.SetValue(const Value: Integer);
begin
  FValue := Value;
  Draw;
end;

end.
