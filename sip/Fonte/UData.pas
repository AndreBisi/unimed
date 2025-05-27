unit UData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit;

type
  TfData = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Label3: TLabel;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    DateEdit3: TJvDatePickerEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fData: TfData;

implementation

uses Unit1;

{$R *.dfm}

procedure TfData.Button1Click(Sender: TObject);
begin
  Form1.qryData.Open;
  ProgressBar1.Max := Form1.QryData.RecordCount;
  while not Form1.QryData.Eof do
  begin
    if Form1.QryDatadatservico.Value <= DateEdit1.Date then
    begin
      Form1.QryData.Edit;
      Form1.QryDatadatservico.Value := DateEdit2.Date;
      Form1.QryData.Post;
    end;

    if Form1.QryDatadatservico.Value > DateEdit3.Date then
    begin
      Form1.QryData.Edit;
      Form1.QryDatadatservico.Value := DateEdit3.Date;
      Form1.QryData.Post;
    end;

    Form1.QryData.Next;
    ProgressBar1.Position := form1.QryData.RecNo;
  end;
  Form1.QryData.Close;
end;

end.
