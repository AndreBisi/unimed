unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  DB,
  StdCtrls, ppStrtch, ppMemo, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache,
  ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, ppParameter,
  ppRichTx, jpeg, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ppDesignLayer, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ppReport1: TppReport;
    DataSource1: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppMemo1: TppMemo;
    ppMemo3: TppMemo;
    ppLabel2: TppLabel;
    ppParameterList1: TppParameterList;
    ppBDEPipeline1: TppBDEPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDQuery1pessoacod: TIntegerField;
    FDQuery1pessoanom: TStringField;
    FDQuery1dtvencimento: TDateField;
    FDQuery1dtpagamento: TDateField;
    FDQuery1valorpago: TFMTBCDField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    ppImage2: TppImage;
    lblNome: TppLabel;
    ppImage1: TppImage;
    qryPessoa: TFDQuery;
    qryPessoapessoacod: TIntegerField;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    function CompletaEspacoEsquerda( Texto: String; Qtd: Integer ) : String;
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDConnection1.Connected := True;
  ppReport1.AllowPrintToArchive := False;
  ppReport1.DeviceType          := 'Screen';

  FDQuery1.Close;
  FDQuery1.ParamByName( 'pessoaini' ).AsInteger := 1;
  FDQuery1.ParamByName( 'pessoafin' ).AsInteger := 9999999999;
  FDQuery1.Open;

  //ppReport1.PrintToDevices;
  ppReport1.Print;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ppReport1.AllowPrintToArchive := True;
  ppReport1.DeviceType          := 'PDF';

  qryPessoa.Open();
  while not qryPessoa.Eof do
  begin
    FDQuery1.Close;
    FDQuery1.ParamByName( 'pessoaIni' ).AsInteger := qryPessoapessoacod.AsInteger;
    FDQuery1.ParamByName( 'pessoaFin' ).AsInteger := qryPessoapessoacod.AsInteger;
    FDQuery1.Open();

    ppReport1.TextFileName := 'C:\AGBSoft\QuitacaoDeDebitos\2024\separados\' +
                              FormatFloat( '00000000', qryPessoapessoacod.AsInteger ) + 'QuitacaoDebitos_2024.PDF';
    ppReport1.PrintToDevices;
    ppReport1.ShowPrintDialog  := False;
    ppReport1.Print;

    qryPessoa.Next;
  end;

  qryPessoa.Close();
end;

Function TForm1.CompletaEspacoEsquerda(texto : string; qtd : integer) : string;
var
  Tamanho,I : integer;
  TextoRet  : String;

begin
  Tamanho := Length(Texto);
  for I := 1 to (Qtd - Tamanho) do
  begin
    TextoRet := ' ' + TextoRet;
  end;
  Result := TextoRet + Texto;
end;

procedure TForm1.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  lblNome.Caption := FDQuery1pessoacod.AsString + ' - ' +
                     FDQuery1pessoanom.AsString;
end;

end.
