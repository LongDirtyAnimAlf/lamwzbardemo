{hint: Pascal files location: ...\zbardemo\jni }
unit unit1;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, zbarcodescannerview, Laz_And_Controls;
  
type

  { TAndroidModule1 }

  TAndroidModule1 = class(jForm)
    jButton1: jButton;
    jEditText1: jEditText;
    jZBarcodeScannerView1: jZBarcodeScannerView;
    procedure AndroidModule1Close(Sender: TObject);
    procedure AndroidModule1JNIPrompt(Sender: TObject);
    procedure jButton1Click(Sender: TObject);
    procedure jZBarcodeScannerView1Click(Sender: TObject);
    procedure jZBarcodeScannerView1ScannerResult(Sender: TObject;
      codedata: string; codeformat: TBarcodeFormat);
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  AndroidModule1: TAndroidModule1;

implementation
  
{$R *.lfm}
  

{ TAndroidModule1 }

procedure TAndroidModule1.jZBarcodeScannerView1Click(Sender: TObject);
begin
  if IsRuntimePermissionGranted('android.permission.CAMERA') then
  begin
    jEditText1.Text:='';
    jZBarcodeScannerView1.Scan();
  end;
end;

procedure TAndroidModule1.jZBarcodeScannerView1ScannerResult(Sender: TObject;
  codedata: string; codeformat: TBarcodeFormat);
begin
  jEditText1.Text:=codedata;
  ShowMessage('Got code ! Touch photo to rescan.',TGravity.gvCenter,TShowLength.slLong);
end;

procedure TAndroidModule1.AndroidModule1Close(Sender: TObject);
begin
  jZBarcodeScannerView1.StopScan();
end;

procedure TAndroidModule1.AndroidModule1JNIPrompt(Sender: TObject);
begin
  jEditText1.Text:='';
end;

procedure TAndroidModule1.jButton1Click(Sender: TObject);
begin
  if IsRuntimePermissionGranted('android.permission.CAMERA') then
  begin
    jEditText1.Text:='';
    jZBarcodeScannerView1.Scan();
  end
  else
  begin
    ShowMessage('No permission ! Please allow app to use the camera.',TGravity.gvCenter,TShowLength.slLong);
  end;
end;

end.
