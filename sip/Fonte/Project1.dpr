program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  UImporta in 'UImporta.pas' {FImporta},
  UData in 'UData.pas' {fData};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFImporta, FImporta);
  Application.CreateForm(TfData, fData);
  Application.Run;
end.
