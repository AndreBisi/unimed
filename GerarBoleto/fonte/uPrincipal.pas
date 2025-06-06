unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.Stan.Pool, FireDAC.Stan.Param, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  DateUtils, Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.Grids, Vcl.DBGrids, IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile, IdExplicitTLSClientServerBase, Vcl.OleCtrls, AcroPDFLib_TLB,
  JvBaseEdits, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.ODBC,
  FireDAC.Phys.ODBCDef, FireDAC.DatS, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.Phys.ODBCBase,
  FireDAC.Comp.UI, ppBands, ppStrtch, ppMemo, ppClass, ppDB, ppDBPipe,
  ppDBBDE, ppParameter, ppDesignLayer, ppCtrls, ppBarCod, ppPrnabl,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, JvSpin, System.IOUtils;

type
  TForm1 = class(TForm)
    conexaoProgressDualFin: TFDConnection;
    qryTitulo: TFDQuery;
    ppRel: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppBDEPipeline1: TppBDEPipeline;
    DataSource1: TDataSource;
    ppDBText4: TppDBText;
    ADGUIxWaitCursor1: TFDGUIxWaitCursor;
    ADPhysODBCDriverLink1: TFDPhysODBCDriverLink;
    ppBarCode1: TppBarCode;
    ppShape1: TppShape;
    ppLine3: TppLine;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDBText5: TppDBText;
    ppLblNossoNum: TppLabel;
    qryPessoa: TFDQuery;
    ppLblPagador1: TppLabel;
    ppLblPagador2: TppLabel;
    ppLblPagador3: TppLabel;
    qryEndereco: TFDQuery;
    ppLblMora: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine18: TppLine;
    ppDBText2: TppDBText;
    ppShape3: TppShape;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel38: TppLabel;
    ppLabel4: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppShape5: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppDBText9: TppDBText;
    ppLblNossoNum2: TppLabel;
    ppLblPagador4: TppLabel;
    ppLblPagador5: TppLabel;
    ppLblPagador6: TppLabel;
    ppLblMora2: TppLabel;
    ppLine34: TppLine;
    ppLabel77: TppLabel;
    ppDBText10: TppDBText;
    ppLabel39: TppLabel;
    ppLine17: TppLine;
    ppLabel37: TppLabel;
    ppImage1: TppImage;
    ppImage2: TppImage;
    qryTitulo2: TFDQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TabSheet6: TTabSheet;
    Label3: TLabel;
    edtMensalidade: TJvFilenameEdit;
    BitBtn3: TBitBtn;
    conexao: TFDConnection;
    qryCriaTemp: TFDQuery;
    qryApagaTemp: TFDQuery;
    qryApagaDados: TFDQuery;
    qryInsert: TFDQuery;
    qryRelMensalidade: TFDQuery;
    qryRelMensalidadesequencia: TIntegerField;
    qryRelMensalidadetexto: TStringField;
    ppRelMensalidade: TppReport;
    DataSource2: TDataSource;
    ppParameterList2: TppParameterList;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ADPhysPgDriverLink1: TFDPhysPgDriverLink;
    qryRelMensalidadepagina: TIntegerField;
    ppBDEPipeline2: TppBDEPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    Label4: TLabel;
    edtFatura: TJvFilenameEdit;
    BitBtn4: TBitBtn;
    qryCriaTempFatura: TFDQuery;
    qryApagaTempFatura: TFDQuery;
    qryApagaDadosTempFatura: TFDQuery;
    qryInsertFatura: TFDQuery;
    qryRelFatura: TFDQuery;
    arqRelFatura: TDataSource;
    qryRelFaturaemissao: TDateField;
    qryRelFaturavalor: TBCDField;
    qryRelFaturanumero: TIntegerField;
    qryRelFaturavencimento: TDateField;
    qryRelFaturacompetencia: TStringField;
    qryRelFaturasacado: TStringField;
    qryRelFaturacontrato: TStringField;
    qryRelFaturaendereco: TStringField;
    qryRelFaturacep: TStringField;
    qryRelFaturabairro: TStringField;
    qryRelFaturamunicipio: TStringField;
    qryRelFaturapraca: TStringField;
    qryRelFaturacodemp: TStringField;
    qryRelFaturacnpj: TStringField;
    qryRelFaturainscest: TStringField;
    qryRelFaturavalori: TStringField;
    qryRelFaturavalorii: TStringField;
    qryRelFaturadescricao: TMemoField;
    ppBDEPipeline3: TppBDEPipeline;
    ppRelFatura: TppReport;
    ppParameterList4: TppParameterList;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppShape18: TppShape;
    ppLine46: TppLine;
    ppShape19: TppShape;
    ppLine47: TppLine;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppLine48: TppLine;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppShape28: TppShape;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppShape29: TppShape;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLine56: TppLine;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppImage4: TppImage;
    ppDBMemo2: TppDBMemo;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    qryFaturasTudo: TFDQuery;
    qryFaturasTudonumero: TIntegerField;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    BitBtn5: TBitBtn;
    memoEnvio: TMemo;
    BitBtn6: TBitBtn;
    qryEmail: TFDQuery;
    arqEmail: TDataSource;
    Label7: TLabel;
    Label8: TLabel;
    edtAssunto: TEdit;
    memMensagem: TMemo;
    Panel5: TPanel;
    edtDiretorio: TJvDirectoryEdit;
    lbArquivo: TListBox;
    btnAtualizar: TBitBtn;
    BitBtn7: TBitBtn;
    memEtq: TMemo;
    qryContrato: TFDQuery;
    conexaoProgressDualMed: TFDConnection;
    BitBtn8: TBitBtn;
    ckEmail: TCheckBox;
    Label9: TLabel;
    qryDCovid: TFDQuery;
    IntegerField1: TIntegerField;
    qryICovid: TFDQuery;
    IntegerField2: TIntegerField;
    conexaoUnimed: TFDConnection;
    qryCovid: TFDQuery;
    Label10: TLabel;
    edtRetroativ: TJvFilenameEdit;
    edtParcela: TJvCalcEdit;
    Label11: TLabel;
    qryCovidcodadmin: TIntegerField;
    qryCovidnumcontr: TIntegerField;
    qryCovidcodusuario: TIntegerField;
    qryCovidparentesco: TIntegerField;
    qryCovidnome: TStringField;
    qryCovidvalor: TStringField;
    RadioGroup2: TRadioGroup;
    qryTitulodatavencimento: TDateField;
    qryTitulovalsaldo: TBCDField;
    qryTitulocodpessoa: TIntegerField;
    qryTitulodataemissao: TDateField;
    qryTituloidtitulo: TIntegerField;
    qryTitulonumtit: TIntegerField;
    qryTitulodocumento: TStringField;
    qryPessoanomepessoa: TStringField;
    qryPessoadocumento: TStringField;
    qryEnderecoendereco: TStringField;
    qryEndereconro: TStringField;
    qryEndereconumero: TIntegerField;
    qryEnderecocep: TStringField;
    qryEndereconomemunicipio: TStringField;
    qryEnderecouf: TStringField;
    qryEnderecobairro: TStringField;
    qryEnderecocomplemento: TStringField;
    qryTitulo2nrdocbco: TStringField;
    qryTitulo2datavencimento: TDateField;
    qryTitulo2valsaldo: TBCDField;
    qryTitulo2codpessoa: TIntegerField;
    qryTitulo2dataemissao: TDateField;
    qryTitulo2idtitulo: TIntegerField;
    qryTitulo2numtit: TIntegerField;
    qryEmailcodpessoa: TIntegerField;
    qryContratocodadmin: TIntegerField;
    qryContratonumcontr: TIntegerField;
    qryContratocodusuario: TIntegerField;
    qryContratocontratante: TStringField;
    qryContratocodpessoa: TIntegerField;
    qryTitulonrdocbco: TStringField;
    qryPessoaProgress: TFDQuery;
    qryPessoaProgresscgccpf: TStringField;
    qryEmailSenha: TFDQuery;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ckSenhaTodosBoleto: TCheckBox;
    ckSenhaTodosMensalidade: TCheckBox;
    ckSenhaTodosFatura: TCheckBox;
    Label17: TLabel;
    edtMaximo: TJvCalcEdit;
    Timer1: TTimer;
    ckSequencial: TCheckBox;
    BitBtn9: TBitBtn;
    TabSheet7: TTabSheet;
    Memo1: TMemo;
    edtAssuntoQuitacao: TEdit;
    memQuitacao: TMemo;
    BitBtn10: TBitBtn;
    Label19: TLabel;
    Label20: TLabel;
    qryEmailQuitacao: TFDQuery;
    conexaoQuitacao: TFDConnection;
    qryEmailQuitacaocodpessoa: TIntegerField;
    qryEmailQuitacaoemail: TStringField;
    edtFator: TJvDirectoryEdit;
    qryArquivoSGU: TFDQuery;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryArquivoSGUnumtit: TIntegerField;
    qryArquivoSGUcodpessoa: TIntegerField;
    qryArquivoSGUidtitulo: TIntegerField;
    qryArquivoSGUdatavencimento: TDateField;
    qryArquivoSGUdataemissao: TDateField;
    qryArquivoSGUnrdocbco: TStringField;
    qryArquivoSGUvalsaldo: TBCDField;
    qryArquivoSGUprocessosgu: TIntegerField;
    qryEmailemail: TMemoField;
    procedure BitBtn1Click(Sender: TObject);
    procedure geraBoleto;
    function calculaDigito( pTexto : string ) : string;
    function calculaDigito2( pTexto : string ) : string;
    function calculaDigitoMod10( pTexto : string ) : string;
    function linhaDigitavel( pTexto : string ) : string;
    Function AllTrim( Texto : String ) : String;
    Function NomeArquivo( NomArq : String ) : String;
    function GetFileList(const Path: string): TStringList;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure imporTFDados;
    procedure imporTFDadosFatura;
    procedure imporTFDadosFator;
    procedure imporTFDadosCoparticip;
    procedure mudaArquivo;
    procedure anexaMensalidade( pCodPessoa : integer );
    procedure anexaFator( pCodPessoa : integer );
    procedure anexaCoparticip( pCodPessoa : integer );
    procedure anexaBoleto( pCodPessoa : integer );
    procedure anexaFatura( pCodPessoa : integer );
    procedure anexaQuitacao( pCodPessoa : integer );
    procedure anexaComunicado;
    procedure gravaDados(pSequencia: integer; pTexto: String; pPagina : integer );
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure gerarEtiqueta( pCodPessoa : integer );
    procedure BitBtn8Click(Sender: TObject);
    function contaCaracter( ptexto : string ) : integer;
    procedure tabelaCOVID;
    function documentoSenha( pCodPessoa : integer; pForcaTodos : boolean ) : string;

    procedure enviarEmails(pForma : string);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);

    function alteraTagMenssagem( pTexto : string ) : String;
    function ExisteArquivoSequencial(FileNameBase: string; Directory: string = 'C:\envioBoleto\Enviar\'): Boolean;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  vMaior : Boolean;
  ArqEnv,
  arqAnexos : TStringList;
  vSenhaArquivo : String;


implementation

{$R *.dfm}

uses libXE, ShellApi;

procedure TForm1.anexaBoleto( pCodPessoa : integer );
var
  i : Integer;

begin
  for I := 1 to 9999 do
  begin
    if ( FileExists( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'Boleto' + formatFloat('0000', i) + '.PDF' ) ) then
    arqAnexos.Add( ( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'Boleto' + formatFloat('0000', i) + '.PDF' ) );
  end;
end;

procedure TForm1.anexaComunicado;
begin
  if ( FileExists( 'C:\envioBoleto\Enviar\' + 'Comunicado.pdf' ) ) then
  arqAnexos.Add( ( 'C:\envioBoleto\Enviar\' + 'Comunicado.pdf' ) );
end;

procedure TForm1.anexaCoparticip( pCodPessoa : integer );
var
  i : Integer;

begin
  for I := 1 to 9999 do
  begin
    if ( FileExists( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'COPARTICIP' + formatFloat('0000', i) + '.PDF' ) ) then
    arqAnexos.Add( ( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'COPARTICIP' + formatFloat('0000', i) + '.PDF' ) );

    if ( FileExists( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'COPARTICIP' + formatFloat('0000', i) + '.TXT' ) ) then
    arqAnexos.Add( ( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'COPARTICIP' + formatFloat('0000', i) + '.TXT' ) );
  end;
end;

procedure TForm1.anexaFator( pCodPessoa : integer );
var
  i : Integer;

begin
  for I := 1 to 9999 do
  begin
    if ( FileExists( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'FatorModerador' + formatFloat('0000', i) + '.PDF' ) ) then
    arqAnexos.Add( ( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'FatorModerador' + formatFloat('0000', i) + '.PDF' ) );
  end;
end;

procedure TForm1.anexaFatura( pCodPessoa : integer );
var
  i : Integer;

begin
  for I := 1 to 9999 do
  begin
    if ( FileExists( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'Fatura' + formatFloat('0000', i) + '.PDF' ) ) then
    arqAnexos.Add( ( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'Fatura' + formatFloat('0000', i) + '.PDF' ) );
  end;
end;

procedure TForm1.anexaMensalidade( pCodPessoa : integer );
var
  i : Integer;

begin
  for I := 1 to 9999 do
  begin
    if ( FileExists( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'Mensalidade' + formatFloat('0000', i) + '.PDF' ) ) then
    arqAnexos.Add( ( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'Mensalidade' + formatFloat('0000', i) + '.PDF' ) );

    if ( FileExists( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'Mensalidade' + formatFloat('0000', i) + '.TXT' ) ) then
    arqAnexos.Add( ( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', pCodPessoa ) + 'Mensalidade' + formatFloat('0000', i) + '.TXT' ) );
  end;
end;

procedure TForm1.anexaQuitacao(pCodPessoa: integer);
begin
  if ( FileExists( 'C:\AGBSoft\QuitacaoDeDebitos\2024\separados\' + FormatFloat( '00000000', pCodPessoa ) + 'QuitacaoDebitos_2024.PDF' ) ) then
  arqAnexos.Add( ( 'C:\AGBSoft\QuitacaoDeDebitos\2024\separados\' + FormatFloat( '00000000', pCodPessoa ) + 'QuitacaoDebitos_2024.PDF' ) );
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
  enviarEmails('quitacao');
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  geraBoleto;

  vSenhaArquivo := documentoSenha( qryTitulocodpessoa.AsInteger, ckSenhaTodosBoleto.Checked );
  if ( vSenhaArquivo = 'para imprimir' ) and ( not ckSenhaTodosBoleto.Checked ) then
  begin
    ppRel.PDFSettings.EncryptSettings.Enabled      := False;
    ppRel.PDFSettings.EncryptSettings.UserPassword := '';
  end
  else
  begin
    ppRel.PDFSettings.EncryptSettings.Enabled      := True;
    ppRel.PDFSettings.EncryptSettings.UserPassword := vSenhaArquivo;
  end;
  ppRel.Print;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  if ckEmail.Checked then
  begin
    qryEmail.Close;
    qryEmail.Open();

    qryTitulo2.Close;
    qryTitulo2.Params.ParamByName( 'titIni' ).AsInteger := StrToInt( Edit1.Text );
    qryTitulo2.Params.ParamByName( 'titFin' ).AsInteger := StrToInt( Edit2.Text );

    qryTitulo2.Open();

    while not qryTitulo2.Eof do
    begin
      if qryEmail.Locate( 'codpessoa', qryTitulo2codpessoa.AsString, [] ) then
      begin
        qryTitulo.Close;
        qryTitulo.Params.ParamByName( 'titIni' ).AsInteger := qryTitulo2numtit.AsInteger;
        qryTitulo.Params.ParamByName( 'titFin' ).AsInteger := qryTitulo2numtit.AsInteger;
        qryTitulo.Open();

        ppRel.AllowPrintToArchive := True;
        ppRel.DeviceType       := 'PDF';
        begin
          ppRel.TextFileName     := 'C:\EnvioBoleto\Enviar\' +
                                    FormatFloat( '00000000', qryTitulocodpessoa.AsInteger ) + 'Boleto.PDF';
          ppRel.PrintToDevices;
          ppRel.ShowPrintDialog  := False;

          vSenhaArquivo := documentoSenha( qryTitulocodpessoa.AsInteger, ckSenhaTodosBoleto.Checked );
          if ( vSenhaArquivo = 'para imprimir' ) and ( not ckSenhaTodosBoleto.Checked ) then
          begin
            ppRel.PDFSettings.EncryptSettings.Enabled      := False;
            ppRel.PDFSettings.EncryptSettings.UserPassword := '';
          end
          else
          begin
            ppRel.PDFSettings.EncryptSettings.Enabled      := True;
            ppRel.PDFSettings.EncryptSettings.UserPassword := vSenhaArquivo;
          end;
          ppRel.Print;
        end;
      end;
      Edit1.Text := qryTitulonumtit.AsString;
      qryTitulo2.Next;
    end;
    qryTitulo2.Close;
    qryEmail.Close;
  end
  else
  begin
    qryTitulo2.Close;
    qryTitulo2.Params.ParamByName( 'titIni' ).AsInteger := StrToInt( Edit1.Text );
    qryTitulo2.Params.ParamByName( 'titFin' ).AsInteger := StrToInt( Edit2.Text );

    qryTitulo2.Open();

    while not qryTitulo2.Eof do
    begin
      qryTitulo.Close;
      qryTitulo.Params.ParamByName( 'titIni' ).AsInteger := qryTitulo2numtit.AsInteger;
      qryTitulo.Params.ParamByName( 'titFin' ).AsInteger := qryTitulo2numtit.AsInteger;
      qryTitulo.Open();

      ppRel.AllowPrintToArchive := True;
      ppRel.DeviceType       := 'PDF';
      begin
        if ckSequencial.Checked then
        ppRel.TextFileName     := 'C:\EnvioBoleto\Enviar\' +
                                  FormatFloat( '00000000', qryTitulocodpessoa.AsInteger ) +
                                  'Boleto' +
                                  FormatFloat( '0000', qryTitulo2.RecNo ) +
                                  '.PDF'
        else
        ppRel.TextFileName     := 'C:\EnvioBoleto\Enviar\' +
                                  FormatFloat( '00000000', qryTitulocodpessoa.AsInteger ) + 'Boleto.PDF';
        ppRel.PrintToDevices;
        ppRel.ShowPrintDialog  := False;

        vSenhaArquivo := documentoSenha( qryTitulocodpessoa.AsInteger, ckSenhaTodosBoleto.Checked );
        if ( vSenhaArquivo = 'para imprimir' ) and ( not ckSenhaTodosBoleto.Checked ) then
        begin
          ppRel.PDFSettings.EncryptSettings.Enabled      := False;
          ppRel.PDFSettings.EncryptSettings.UserPassword := '';
        end
        else
        begin
          ppRel.PDFSettings.EncryptSettings.Enabled      := True;
          ppRel.PDFSettings.EncryptSettings.UserPassword := vSenhaArquivo;
        end;

        ppRel.Print;
      end;
      Edit1.Text := qryTitulonumtit.AsString;
      qryTitulo2.Next;
    end;
    qryTitulo2.Close;
  end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  if Copy( edtMensalidade.Text, 1, 1 ) = '"' then
  edtMensalidade.Text := Copy( edtMensalidade.Text, 2, length( edtMensalidade.Text ) - 1 );

  if Copy( edtMensalidade.Text, length( edtMensalidade.Text ), 1 ) = '"' then
  edtMensalidade.Text := copy( edtMensalidade.Text, 1, length( edtMensalidade.Text ) - 1 );

  if edtMensalidade.Text <> '' then
  begin
    if FileExists( edtMensalidade.Text ) then
    begin
      if edtRetroativ.Text <> '' then
      tabelaCOVID;

      ImporTFDados;
    end
    else
    MessageBox(Application.Handle, PChar( 'O arquivo n�o existe' ), 'Erro', 16 );
  end
  else
  MessageBox(Application.Handle, PChar( 'Escolha o arquivo' ), 'Erro', 16 );
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  if Copy( edtFatura.Text, 1, 1 ) = '"' then
  edtFatura.Text := Copy( edtFatura.Text, 2, length( edtFatura.Text ) - 1 );

  if Copy( edtFatura.Text, length( edtFatura.Text ), 1 ) = '"' then
  edtFatura.Text := copy( edtFatura.Text, 1, length( edtFatura.Text ) - 1 );

  if edtFatura.Text <> '' then
  begin
    if FileExists( edtFatura.Text ) then
    begin
      imporTFDadosFatura;
      qryFaturasTudo.Close;

      qryFaturasTudo.Open();

      while not qryFaturasTudo.Eof do
      begin
        qryRelFatura.Close;
        qryRelFatura.Params.ParamByName( 'numero' ).AsInteger := qryFaturasTudonumero.AsInteger;
        qryRelFatura.Open();

        qryTitulo.Close;
        qryTitulo.Params.ParamByName( 'titIni' ).AsInteger  := qryFaturasTudonumero.AsInteger;
        qryTitulo.Params.ParamByName( 'titFin' ).AsInteger  := qryFaturasTudonumero.AsInteger;
        qryTitulo.Open();

        if not qryTitulo.IsEmpty then
        begin
          ppRelFatura.AllowPrintToArchive := True;
          ppRelFatura.DeviceType          := 'PDF';
          begin
            ppRelFatura.TextFileName := 'C:\EnvioBoleto\Enviar\' +
                                        FormatFloat( '00000000', qryTitulocodpessoa.AsInteger ) + 'Fatura.PDF';
            ppRelFatura.PrintToDevices;
            ppRelFatura.ShowPrintDialog  := False;

            vSenhaArquivo := documentoSenha( qryTitulocodpessoa.AsInteger, ckSenhaTodosFatura.Checked );
            if ( vSenhaArquivo = 'para imprimir' ) and ( not ckSenhaTodosFatura.Checked ) then
            begin
              ppRelFatura.PDFSettings.EncryptSettings.Enabled      := False;
              ppRelFatura.PDFSettings.EncryptSettings.UserPassword := '';
            end
            else
            begin
              ppRelFatura.PDFSettings.EncryptSettings.Enabled      := True;
              ppRelFatura.PDFSettings.EncryptSettings.UserPassword := vSenhaArquivo;
            end;

            ppRelFatura.Print;
          end;
        end;
        qryFaturasTudo.Next;
        qryTitulo.Close;
      end;
      qryFaturasTudo.Close;

      qryApagaTempFatura.ExecSQL;
    end
    else
    MessageBox(Application.Handle, PChar( 'O arquivo n�o existe' ), 'Erro', 16 );
  end
  else
  MessageBox(Application.Handle, PChar( 'Escolha o arquivo' ), 'Erro', 16 );
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
var
  ArquivoOrigem: string;
  ArquivoDestino: string;

begin
   qryArquivoSGU.Close;
   qryArquivoSGU.Open();

   while not qryArquivoSGU.Eof do
   begin
     ArquivoOrigem  := edtFator.Directory +
                       '\ANALITICO_SERVICO_EMPRESARIAL_' +
                       FormatFloat('0000000000', qryArquivoSGUprocessosgu.AsInteger) +
                       '-1.PDF';
     ArquivoDestino := 'C:\envioBoleto\enviar\' +
                       FormatFloat('00000000', qryArquivoSGUcodpessoa.AsInteger) +
                       'COPARTICIP' +
                       FormatFloat('0000', qryArquivoSGU.RecNo) +
                       '.PDF';

     TFile.Copy(ArquivoOrigem, ArquivoDestino, True); // True sobrescreve se j� existir

     qryArquivoSGU.Next;
   end;
   qryArquivoSGU.Close;
{  if RadioGroup1.ItemIndex = 1 then
  begin
    if Copy( edtFator.Text, 1, 1 ) = '"' then
    edtFator.Text := Copy( edtFator.Text, 2, length( edtFator.Text ) - 1 );

    if Copy( edtFator.Text, length( edtFator.Text ), 1 ) = '"' then
    edtFator.Text := copy( edtFator.Text, 1, length( edtFator.Text ) - 1 );

    if edtFator.Text <> '' then
    begin
      if FileExists( edtFator.Text ) then
      begin
        ImporTFDadosFator;
      end
      else
      MessageBox(Application.Handle, PChar( 'O arquivo n�o existe' ), 'Erro', 16 );
    end
    else
    MessageBox(Application.Handle, PChar( 'Escolha o arquivo' ), 'Erro', 16 );
  end
  else
  begin
    if Copy( edCoparticip.Text, 1, 1 ) = '"' then
    edCoparticip.Text := Copy( edCoparticip.Text, 2, length( edCoparticip.Text ) - 1 );

    if Copy( edCoparticip.Text, length( edCoparticip.Text ), 1 ) = '"' then
    edCoparticip.Text := copy( edCoparticip.Text, 1, length( edCoparticip.Text ) - 1 );

    if edCoparticip.Text <> '' then
    begin
      if FileExists( edCoparticip.Text ) then
      begin
        ImporTFDadosCoparticip;
      end
      else
      MessageBox(Application.Handle, PChar( 'O arquivo n�o existe' ), 'Erro', 16 );
    end
    else
    MessageBox(Application.Handle, PChar( 'Escolha o arquivo' ), 'Erro', 16 );
  end;}
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  enviarEmails('normal');
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
var
  i: integer;

begin
  memEtq.Lines.Clear;

  for I := 1 to lbArquivo.Items.Count do
  begin
    ShellExecute(Handle, 'print',PChar( (edtDiretorio.Directory + '\' + lbArquivo.Items[ i - 1 ]) ), nil, nil, SW_SHOW );
    if copy( lbArquivo.Items[ i - 1 ], 9, 10 ) = 'Boleto.PDF' then
    gerarEtiqueta( strToInt( onlyDigit( lbArquivo.Items[ i - 1 ] ) ) );

    Sleep( 50 );
  end;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
var
  i: integer;

begin
  memEtq.Lines.Clear;

  for I := 1 to lbArquivo.Items.Count do
  begin
    if copy( lbArquivo.Items[ i - 1 ], 9, 10 ) = 'Boleto.PDF' then
    gerarEtiqueta( strToInt( onlyDigit( lbArquivo.Items[ i - 1 ] ) ) );
  end;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
  enviarEmails('tudo');
end;

procedure TForm1.btnAtualizarClick(Sender: TObject);
begin
  lbArquivo.Items := GetFileList( edtDiretorio.Directory + '\*.PDF' );

  if lbArquivo.Count > 0 then
  lbArquivo.Selected [ 0 ] := true;
end;

function TForm1.calculaDigito(pTexto: string): string;
var
  I: Integer;
  vSoma, vDiv : integer;

begin
  vSoma := 0;

  for I := 1 to 24 do
  begin
    if ( i = 1 ) or ( i = 9 ) or ( i = 17 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 9 )
    else if ( i = 2 ) or ( i = 10 ) or ( i = 18 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 8 )
    else if ( i = 3 ) or ( i = 11 ) or ( i = 19 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 7 )
    else if ( i = 4 ) or ( i = 12 ) or ( i = 20 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 6 )
    else if ( i = 5 ) or ( i = 13 ) or ( i = 21 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 5 )
    else if ( i = 6 ) or ( i = 14 ) or ( i = 22 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 4 )
    else if ( i = 7 ) or ( i = 15 ) or ( i = 23 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 3 )
    else if ( i = 8 ) or ( i = 16 ) or ( i = 24 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 2 );
  end;

  vDiv := ( vSoma div 11 );
  vDiv := vDiv * 11;
  vDiv := vSoma - vDiv;
  if vDiv <= 1 then
  result := pTexto + '0'
  else
  begin
    result := pTexto + intToStr( 11 - vDiv );
  end;
end;

function TForm1.calculaDigito2(pTexto: string): string;
var
  I: Integer;
  vSoma, vDiv : integer;

begin
  vSoma := 0;

  for I := 1 to 43 do
  begin
         if ( i = 4 ) or ( i = 12 ) or ( i = 20 ) or ( i = 28 ) or ( i = 36 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 9 )
    else if ( i = 5 ) or ( i = 13 ) or ( i = 21 ) or ( i = 29 ) or ( i = 37 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 8 )
    else if ( i = 6 ) or ( i = 14 ) or ( i = 22 ) or ( i = 30 ) or ( i = 38 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 7 )
    else if ( i = 7 ) or ( i = 15 ) or ( i = 23 ) or ( i = 31 ) or ( i = 39 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 6 )
    else if ( i = 8 ) or ( i = 16 ) or ( i = 24 ) or ( i = 32 ) or ( i = 40 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 5 )
    else if ( i = 1 ) or ( i = 9 ) or ( i = 17 ) or ( i = 25 ) or ( i = 33 ) or ( i = 41 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 4 )
    else if ( i = 2 ) or ( i = 10 ) or ( i = 18 ) or ( i = 26 ) or ( i = 34 ) or ( i = 42 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 3 )
    else if ( i = 3 ) or ( i = 11 ) or ( i = 19 ) or ( i = 27 ) or ( i = 35 ) or ( i = 43 ) then
    vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 2 );
  end;

  vDiv := 11 -( vSoma mod 11 );
  if ( vDiv <= 1 ) or ( vDiv > 9 ) then
  result := copy( pTexto, 1, 4 ) + '1' + Copy( pTexto, 5, 39 )
  else
  begin
    result := copy( pTexto, 1, 4 ) + intToStr( vDiv ) + Copy( pTexto, 5, 39 );
  end;
end;

function TForm1.calculaDigitoMod10(pTexto: string): string;
var
  vDividido : integer;

var
  I: Integer;
  vSoma, vDig : integer;

begin
  vSoma := 0;
  if Length( pTexto ) = 9 then
  begin
    for I := 1 to 9 do
    begin
      if ( i mod 2 ) = 0 then
      vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 1 )
      else
      begin
        if ( StrToInt( copy( pTexto, i, 1 ) ) * 2 ) >= 10 then
        begin
          vDividido := strToInt( Copy( IntToStr( StrToInt( copy( pTexto, i, 1 ) ) * 2 ), 1, 1 ) ) +
                       strToInt( copy( IntToStr( StrToInt( copy( pTexto, i, 1 ) ) * 2 ), 2, 1 ) );

          vSoma := vSoma + vDividido;
        end
        else
        vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 2 );
      end;
    end;
  end
  else
  begin
    for I := 1 to 10 do
    begin
      if ( i mod 2 ) <> 0 then
      vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 1 )
      else
      begin
        if ( StrToInt( copy( pTexto, i, 1 ) ) * 2 ) >= 10 then
        begin
          vDividido := strToInt( Copy( IntToStr( StrToInt( copy( pTexto, i, 1 ) ) * 2 ), 1, 1 ) ) +
                       strToInt( copy( IntToStr( StrToInt( copy( pTexto, i, 1 ) ) * 2 ), 2, 1 ) );

          vSoma := vSoma + vDividido;
        end
        else
        vSoma := vSoma + ( StrToInt( copy( pTexto, i, 1 ) ) * 2 );
      end;
    end;
  end;

  vDig  := 0;
  while ( vSoma mod 10 ) <> 0 do
  begin
    vDig  := vDig + 1;
    vSoma := vSoma + 1;
  end;
  result := IntToStr( vDig );
end;

function TForm1.contaCaracter(ptexto: string): integer;
var
  i : integer;
begin
  Result := 0;
  for I := 1 to length( ptexto ) do
  begin
    if copy( pTexto, i, 1 ) = ';' then
    result := result + 1;
  end;
end;

function TForm1.documentoSenha(pCodPessoa: integer; pForcaTodos : boolean ): string;
begin
  qryEmailSenha.Close;
  qryEmailSenha.ParamByName( 'codPessoa' ).AsInteger := pCodPessoa;
  qryEmailSenha.Open();

  if ( not qryEmailSenha.IsEmpty ) or ( pForcaTodos ) then
  begin
    qryPessoa.Close;
    qryPessoa.Params.ParamByName( 'codPessoa' ).AsInteger := pCodPessoa;
    qryPessoa.Open();

    if not qryPessoa.IsEmpty then
    result := qryPessoadocumento.AsString
    else
    begin
      qryPessoaProgress.Close;
      qryPessoaProgress.Params.ParamByName( 'codPessoa' ).AsInteger := pCodPessoa;
      qryPessoaProgress.Open();

      Result := qryPessoaProgresscgccpf.AsString;
      qryPessoaProgress.Close;
    end;
    qryPessoa.Close;
  end
  else
  begin
    Result := 'para imprimir';
  end;
end;

procedure TForm1.enviarEmails(pForma : string);
var
  sFrom                : String;
  sBccList             : String;
  sHost                : String;
  iPort                : Integer;
  sUserName            : String;
  sPassword            : String;

  idMessage2           : TIdMessage;
  idText2               : TIdText;
  idSMTP2               : TIdSMTP;
  idSSLIOHandlerSocket2 : TIdSSLIOHandlerSocketOpenSSL;

  sAnexo: string;
  x, contador : integer;
  contEmail, vNumEmail : integer;
  vEmail,
  vEmails : string;

begin
  memoEnvio.Lines.Clear;
  qryEmail.Open();

  //showmessage( inttostr( qryEmail.RecordCount ) );

  ArqEnv    := Tstringlist.Create;
  arqAnexos := TStringList.Create;
  contador  := 1;
  label15.Caption := '';

  if pForma = 'normal' then
  begin
    while ( not qryEmail.Eof ) and ( contador <= edtMaximo.Value ) do
    begin
      arqAnexos.Clear;
      //if ( FileExists( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', qryEmailcodpessoa.AsInteger ) + 'Boleto*.PDF' ) ) then
      if (ExisteArquivoSequencial(FormatFloat( '00000000', qryEmailcodpessoa.AsInteger ) + 'Boleto')) then
      begin
        try
          anexaMensalidade( qryEmailcodpessoa.AsInteger );
          anexaFatura( qryEmailcodpessoa.AsInteger );
          anexaBoleto( qryEmailcodpessoa.AsInteger );
          anexaFator( qryEmailcodpessoa.AsInteger  );
          anexaCoparticip( qryEmailcodpessoa.AsInteger );
          anexaComunicado;

          if ( arqAnexos.Count > 0 ) and ( qryEmailemail.AsString <> '' ) then
          begin
            // instancia��o dos objetos
            IdSSLIOHandlerSocket2 := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
            IdSMTP2 := TIdSMTP.Create(Self);
            IdMessage2 := TIdMessage.Create(Self);

            try
              // Configura��o do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
              IdSSLIOHandlerSocket2.SSLOptions.Method := sslvSSLv23;
              IdSSLIOHandlerSocket2.SSLOptions.Mode := sslmClient;


              // Configura��o do servidor SMTP (TIdSMTP)
              IdSMTP2.IOHandler := IdSSLIOHandlerSocket2;
              IdSMTP2.UseTLS    := utUseImplicitTLS;
              IdSMTP2.AuthType  := satDefault;
              IdSMTP2.Port      := 465;
              IdSMTP2.Host      := 'smtplw.com.br';
              IdSMTP2.Username  := 'performatech';
              IdSMTP2.Password  := 'ZKBhLzGS2610';

              // Configura��o da mensagem (TIdMessage)
              IdMessage2.From.Address           := 'centralcrm@unimedtupa.com.br';
              IdMessage2.From.Name              := 'Unimed de Tup� Cooperativa de Trabalho M�dico';
              IdMessage2.ReplyTo.EMailAddresses := IdMessage2.From.Address;
              IdMessage2.Subject                := edtAssunto.Text + ' (' + qryEmailcodpessoa.AsInteger.ToString + ')';
              IdMessage2.Encoding               := meMIME;

              //vemails := qryEmailemail.AsString + ';ti.andre@unimedtupa.com.br';

              vemails := qryEmailemail.AsString;

              IdMessage2.CCList.Add.Text := 'informatica@unimedtupa.com.br';

              if Pos( ';', vEmails ) = 0 then
              IdMessage2.Recipients.Add.Text := vEmails
              else
              begin
                vNumEmail := contaCaracter( vEmails ) + 1;
                vEmail    := vEmails;
                for contEmail := 1 to vNumEmail do
                begin
                  if Pos( ';', vEmail ) = 0 then
                  IdMessage2.Recipients.Add.Text := AllTrim( vEmail )
                  else
                  IdMessage2.Recipients.Add.Text := allTrim( Copy( vEmail, 1, Pos( ';', vEmail ) - 1 ) );

                  vEmail := Copy( vEmail, Pos( ';', vEmail )+ 1, length( vEmail ) );
                end;
              end;

              IdMessage2.Body.Add( alteraTagMenssagem( memMensagem.Text ) );

              // Opcional - Anexo da mensagem (TIdAttachmentFile)
              IdMessage2.MessageParts.Clear;
              for x := 0 to arqAnexos.Count-1 do
              TIdAttachmentFile.Create(IdMessage2.MessageParts, TFileName( arqAnexos.Strings[x]));

              // Conex�o e autentica��o
              try
                IdSMTP2.Connect;
                IdSMTP2.Authenticate;
              except
                on E:Exception do
                begin
                  MessageDlg('Erro na conex�o ou autentica��o: ' +
                    E.Message, mtWarning, [mbOK], 0);
                  Exit;
                end;
              end;

              // Envio da mensagem
              try
                IdSMTP2.Send(IdMessage2);
                memoEnvio.Lines.Add( 'Enviado : ' + qryEmailcodpessoa.AsString + ' - ' + vEmails );
                memoEnvio.Lines.Add( arqAnexos.Text );

                for x := 0 to arqAnexos.Count-1 do
                begin
                  if NomeArquivo( arqAnexos.Strings[x] ) <> 'Comunicado.pdf' then
                  CopyFile( Pchar( arqAnexos.Strings[x] ), Pchar( 'C:\envioBoleto\Enviados\' + NomeArquivo( arqAnexos.Strings[x] ) ), FALSE );
                end;

                for x := 0 to arqAnexos.Count-1 do
                begin
                  if NomeArquivo( arqAnexos.Strings[x] ) <> 'Comunicado.pdf' then
                  DeleteFile( arqAnexos.Strings[x] );
                end;
                //ArqEnv.Add( ArqAnexo );
              except
                On E:Exception do
                begin
                  MessageDlg('Erro ao enviar a mensagem: ' +
                    E.Message, mtWarning, [mbOK], 0);
                end;
              end;
            finally
              // desconecta do servidor
              IdSMTP2.Disconnect;
              // libera��o da DLL
              UnLoadOpenSSLLibrary;
              // libera��o dos objetos da mem�ria
              FreeAndNil(IdMessage2);
              FreeAndNil(IdSSLIOHandlerSocket2);
              FreeAndNil(IdSMTP2);
            end;
          end;

          Label15.Caption := 'Enviado : ' + contador.ToString + ' email(s) as ' + FormatDateTime( 'hh:mm:ss', Now );
          contador := contador + 1;
          label15.refresh;
        except
          memoEnvio.Lines.SaveToFile('C:\envioBoleto\Log\' + formatdateTime( 'dd_mm_yyyy', now ) + '__' + FormatDateTime( 'hh_mm_ss', now ) + '.Txt');
          qryEmail.Close;
        end;
      end;

      qryEmail.Next;
    end;
  end
  else
  if pForma = 'tudo' then
  begin
    while ( not qryEmail.Eof ) do
    begin
      arqAnexos.Clear;
      //if ( FileExists( 'C:\envioBoleto\Enviar\' + FormatFloat( '00000000', qryEmailcodpessoa.AsInteger ) + 'Boleto.PDF' ) ) then
      if (ExisteArquivoSequencial(FormatFloat( '00000000', qryEmailcodpessoa.AsInteger ) + 'Boleto')) then
      begin
        Sleep( 5000 );
        try
          anexaMensalidade( qryEmailcodpessoa.AsInteger );
          anexaFatura( qryEmailcodpessoa.AsInteger );
          anexaBoleto( qryEmailcodpessoa.AsInteger );
          anexaFator( qryEmailcodpessoa.AsInteger  );
          anexaCoparticip( qryEmailcodpessoa.AsInteger );
          anexaComunicado;

          if ( arqAnexos.Count > 0 ) and ( OnlyChar( qryEmailemail.AsString ) <> '' ) then
          begin
            // instancia��o dos objetos
            IdSSLIOHandlerSocket2 := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
            IdSMTP2 := TIdSMTP.Create(Self);
            IdMessage2 := TIdMessage.Create(Self);





            //Configura os par�metros necess�rios para SSL
            IdSSLIOHandlerSocket2                   := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
            IdSSLIOHandlerSocket2.SSLOptions.Method := sslvSSLv23;
            IdSSLIOHandlerSocket2.SSLOptions.Mode  := sslmClient;








            try

              // Configura��o do servidor SMTP (TIdSMTP)
              IdSMTP2.IOHandler := IdSSLIOHandlerSocket2;
              IdSMTP2.UseTLS    := utUseImplicitTLS;
              IdSMTP2.AuthType  := satDefault;
              IdSMTP2.Port      := 465;
              IdSMTP2.Host      := 'smtplw.com.br';
              IdSMTP2.Username  := 'performatech';
              IdSMTP2.Password  := 'ZKBhLzGS2610';





              // Configura��o da mensagem (TIdMessage)
              IdMessage2.From.Address           := 'centralcrm@unimedtupa.com.br';
              IdMessage2.From.Name              := 'Unimed de Tup� Cooperativa de Trabalho M�dico';
              IdMessage2.ReplyTo.EMailAddresses := IdMessage2.From.Address;
              IdMessage2.Subject                := edtAssunto.Text + ' (' + qryEmailcodpessoa.AsInteger.ToString + ')';
              IdMessage2.Encoding               := meMIME;

              //vemails := qryEmailemail.AsString + ';ti.andre@unimedtupa.com.br';

              vemails := qryEmailemail.AsString;

              IdMessage2.CCList.Add.Text := 'informatica@unimedtupa.com.br';

              if Pos( ';', vEmails ) = 0 then
              IdMessage2.Recipients.Add.Text := vEmails
              else
              begin
                vNumEmail := contaCaracter( vEmails ) + 1;
                vEmail    := vEmails;
                for contEmail := 1 to vNumEmail do
                begin
                  if Pos( ';', vEmail ) = 0 then
                  IdMessage2.Recipients.Add.Text := AllTrim( vEmail )
                  else
                  IdMessage2.Recipients.Add.Text := allTrim( Copy( vEmail, 1, Pos( ';', vEmail ) - 1 ) );

                  vEmail := Copy( vEmail, Pos( ';', vEmail )+ 1, length( vEmail ) );
                end;
              end;

              IdMessage2.Body.Add( alteraTagMenssagem( memMensagem.Text ) );

              // Opcional - Anexo da mensagem (TIdAttachmentFile)
              IdMessage2.MessageParts.Clear;
              for x := 0 to arqAnexos.Count-1 do
              TIdAttachmentFile.Create(IdMessage2.MessageParts, TFileName( arqAnexos.Strings[x]));

              // Conex�o e autentica��o
              try
                IdSMTP2.Connect;
                IdSMTP2.Authenticate;
              except
                on E:Exception do
                begin
                  MessageDlg('Erro na conex�o ou autentica��o: ' +
                    E.Message, mtWarning, [mbOK], 0);
                  Exit;
                end;
              end;

              // Envio da mensagem
              try
                IdSMTP2.Send(IdMessage2);
                memoEnvio.Lines.Add( 'Enviado : ' + qryEmailcodpessoa.AsString + ' - ' + vEmails );
                memoEnvio.Lines.Add( arqAnexos.Text );

                for x := 0 to arqAnexos.Count-1 do
                begin
                  if NomeArquivo( arqAnexos.Strings[x] ) <> 'Comunicado.pdf' then
                  CopyFile( Pchar( arqAnexos.Strings[x] ), Pchar( 'C:\envioBoleto\Enviados\' + NomeArquivo( arqAnexos.Strings[x] ) ), FALSE );
                end;

                for x := 0 to arqAnexos.Count-1 do
                begin
                  if NomeArquivo( arqAnexos.Strings[x] ) <> 'Comunicado.pdf' then
                  DeleteFile( arqAnexos.Strings[x] );
                end;
                //ArqEnv.Add( ArqAnexo );
              except
                On E:Exception do
                begin
                  MessageDlg('Erro ao enviar a mensagem: ' +
                    E.Message, mtWarning, [mbOK], 0);
                end;
              end;
            finally
              // desconecta do servidor
              IdSMTP2.Disconnect;
              // libera��o da DLL
              UnLoadOpenSSLLibrary;
              // libera��o dos objetos da mem�ria
              FreeAndNil(IdMessage2);
              FreeAndNil(IdSSLIOHandlerSocket2);
              FreeAndNil(IdSMTP2);
            end;
          end;

          Label15.Caption := 'Enviado : ' + contador.ToString + ' email(s) as ' + FormatDateTime( 'hh:mm:ss', Now );
          contador := contador + 1;
          label15.refresh;
        except
          memoEnvio.Lines.SaveToFile('C:\envioBoleto\Log\' + formatdateTime( 'dd_mm_yyyy', now ) + '__' + FormatDateTime( 'hh_mm_ss', now ) + '.Txt');
          qryEmail.Close;
        end;
      end;

      qryEmail.Next;
    end;
  end
  else
  if pForma = 'quitacao' then
  begin
    qryEmailQuitacao.Close;
    qryEmailQuitacao.Open();

    while ( not qryEmailQuitacao.Eof ) do
    begin
      arqAnexos.Clear;
      if ( FileExists( 'C:\AGBSoft\QuitacaoDeDebitos\2024\separados\' + FormatFloat( '00000000', qryEmailQuitacaocodpessoa.AsInteger ) + 'QuitacaoDebitos_2024.PDF' ) ) then
      begin
        Sleep( 10000 );
        try
          anexaQuitacao( qryEmailQuitacaocodpessoa.AsInteger );

          if ( arqAnexos.Count > 0 ) and ( OnlyChar( qryEmailQuitacaoemail.AsString ) <> '' ) then
          begin
            // instancia��o dos objetos
            IdSSLIOHandlerSocket2 := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
            IdSMTP2 := TIdSMTP.Create(Self);
            IdMessage2 := TIdMessage.Create(Self);

            try
              // Configura��o do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
              IdSSLIOHandlerSocket2.SSLOptions.Method := sslvSSLv23;
              IdSSLIOHandlerSocket2.SSLOptions.Mode := sslmClient;


              // Configura��o do servidor SMTP (TIdSMTP)
              IdSMTP2.IOHandler := IdSSLIOHandlerSocket2;
              IdSMTP2.UseTLS    := utUseImplicitTLS;
              IdSMTP2.AuthType  := satDefault;
              IdSMTP2.Port      := 465;
              IdSMTP2.Host      := 'smtplw.com.br';
              IdSMTP2.Username  := 'performatech';
              IdSMTP2.Password  := 'ZKBhLzGS2610';

              // Configura��o da mensagem (TIdMessage)
              IdMessage2.From.Address           := 'centralcrm@unimedtupa.com.br';
              IdMessage2.From.Name              := 'Unimed de Tup� Cooperativa de Trabalho M�dico';
              IdMessage2.ReplyTo.EMailAddresses := IdMessage2.From.Address;
              IdMessage2.Subject                := edtAssuntoQuitacao.Text + ' (' + qryEmailQuitacaocodpessoa.AsInteger.ToString + ')';
              IdMessage2.Encoding               := meMIME;

              //vemails := qryEmailemail.AsString + ';ti.andre@unimedtupa.com.br';

              vemails := qryEmailQuitacaoemail.AsString;

              IdMessage2.CCList.Add.Text := 'informatica@unimedtupa.com.br';

              if Pos( ';', vEmails ) = 0 then
              IdMessage2.Recipients.Add.Text := vEmails
              else
              begin
                vNumEmail := contaCaracter( vEmails ) + 1;
                vEmail    := vEmails;
                for contEmail := 1 to vNumEmail do
                begin
                  if Pos( ';', vEmail ) = 0 then
                  IdMessage2.Recipients.Add.Text := AllTrim( vEmail )
                  else
                  IdMessage2.Recipients.Add.Text := allTrim( Copy( vEmail, 1, Pos( ';', vEmail ) - 1 ) );

                  vEmail := Copy( vEmail, Pos( ';', vEmail )+ 1, length( vEmail ) );
                end;
              end;

              IdMessage2.Body.Add( alteraTagMenssagem( memQuitacao.Text ) );

              // Opcional - Anexo da mensagem (TIdAttachmentFile)
              IdMessage2.MessageParts.Clear;
              for x := 0 to arqAnexos.Count-1 do
              TIdAttachmentFile.Create(IdMessage2.MessageParts, TFileName( arqAnexos.Strings[x]));

              // Conex�o e autentica��o
              try
                IdSMTP2.Connect;
                IdSMTP2.Authenticate;
              except
                on E:Exception do
                begin
                  MessageDlg('Erro na conex�o ou autentica��o: ' +
                    E.Message, mtWarning, [mbOK], 0);
                  Exit;
                end;
              end;

              // Envio da mensagem
              try
                IdSMTP2.Send(IdMessage2);
                Memo1.Lines.Clear;
                memo1.Lines.Add( 'Enviado : ' + qryEmailQuitacaocodpessoa.AsString + ' - ' + vEmails );
                memo1.Lines.Add( arqAnexos.Text );

                for x := 0 to arqAnexos.Count-1 do
                begin
                  if NomeArquivo( arqAnexos.Strings[x] ) <> 'QuitacaoDebitos_2024.PDF' then
                  CopyFile( Pchar( arqAnexos.Strings[x] ), Pchar( 'C:\AGBSoft\QuitacaoDeDebitos\2024\enviados\' + NomeArquivo( arqAnexos.Strings[x] ) ), FALSE );
                end;

                for x := 0 to arqAnexos.Count-1 do
                begin
                  if NomeArquivo( arqAnexos.Strings[x] ) <> 'QuitacaoDebitos_2024.PDF' then
                  DeleteFile( arqAnexos.Strings[x] );
                end;
                //ArqEnv.Add( ArqAnexo );

                Memo1.Lines.SaveToFile('C:\AGBSoft\QuitacaoDeDebitos\2024\enviados\' + FormatFloat( '000000', qryEmailQuitacaocodpessoa.AsInteger ) + '_' + formatdateTime( 'dd_mm_yyyy', now ) + '__' + FormatDateTime( 'hh_mm_ss', now ) + '.Txt');
              except
                On E:Exception do
                begin
                  MessageDlg('Erro ao enviar a mensagem: ' +
                    E.Message, mtWarning, [mbOK], 0);
                end;
              end;
            finally
              // desconecta do servidor
              IdSMTP2.Disconnect;
              // libera��o da DLL
              UnLoadOpenSSLLibrary;
              // libera��o dos objetos da mem�ria
              FreeAndNil(IdMessage2);
              FreeAndNil(IdSSLIOHandlerSocket2);
              FreeAndNil(IdSMTP2);
            end;
          end;

          Label15.Caption := 'Enviado : ' + contador.ToString + ' email(s) as ' + FormatDateTime( 'hh:mm:ss', Now );
          contador := contador + 1;
          label15.refresh;
        except
          Memo1.Lines.SaveToFile('C:\AGBSoft\QuitacaoDeDebitos\2024\enviados\' + formatdateTime( 'dd_mm_yyyy', now ) + '__' + FormatDateTime( 'hh_mm_ss', now ) + '.Txt');
          qryEmailQuitacao.Close;
        end;
      end;

      qryEmailQuitacao.Next;
    end;
  end;

  memoEnvio.Lines.SaveToFile('C:\envioBoleto\Log\' + formatdateTime( 'dd_mm_yyyy', now ) + '__' + FormatDateTime( 'hh_mm_ss', now ) + '.Txt');
  qryEmail.Close;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Label15.Caption := '';
  PageControl1.ActivePageIndex := 0;
end;

procedure TForm1.geraBoleto;
begin
  qryTitulo.Close;
  qryTitulo.Params.ParamByName( 'titIni' ).AsInteger := StrToInt( Edit1.Text );
  qryTitulo.Params.ParamByName( 'titFin' ).AsInteger := StrToInt( Edit2.Text );
  qryTitulo.Open();
end;

procedure TForm1.gerarEtiqueta(pCodPessoa: integer);
var
  vEndereco : string;

begin
  qryContrato.ParamByName( 'codPessoa' ).AsInteger := pCodPessoa;
  qryContrato.Open();

  qryEndereco.ParamByName( 'codPessoa' ).AsInteger := pCodPessoa;
  qryEndereco.Open();

  vEndereco := '';
  if ( not qryContrato.IsEmpty ) and ( not qryEndereco.IsEmpty ) then
  begin
    memEtq.Lines.Add( FormatFloat( '0000', qryContratocodadmin.AsInteger ) + '.' +
                      FormatFloat( '000000', qryContratonumcontr.AsInteger ) + ' - ' +
                      qryContratocontratante.AsString );

    vEndereco := qryEnderecoendereco.AsString;

    if qryEnderecoNumero.AsInteger > 0 then
    vEndereco := vEndereco + ', ' + qryEnderecoNumero.AsString
    else
    vEndereco := vEndereco + ', ' + qryEnderecoNro.AsString;

    if qryEnderecocomplemento.AsString <> '' then
    vEndereco := vEndereco + ' - ' +
                 qryEnderecocomplemento.AsString;

    memEtq.Lines.Add( vEndereco );
    memEtq.Lines.Add( qryEnderecobairro.AsString );
    memEtq.Lines.Add( qryEndereconomemunicipio.AsString + '/' +
                      qryEnderecouf.AsString );
    memEtq.Lines.Add( 'CEP: ' +
                      Copy( qryEnderecocep.AsString, 1, 2 ) + '.' +
                      Copy( qryEnderecocep.AsString, 3, 3 ) + '-' +
                      Copy( qryEnderecocep.AsString, 6, 3 ) );
    memEtq.Lines.Add( '' );
  end;
  qryContrato.Close;
  qryEndereco.Close;
end;

procedure TForm1.gravaDados(pSequencia: integer; pTexto: String; pPagina : integer);
begin
  qryInsert.Params.ParamByName( 'sequencia' ).Value := pSequencia;
  qryInsert.Params.ParamByName( 'texto' ).Value     := RemoveAcento( pTexto );
  qryInsert.Params.ParamByName( 'pagina' ).Value    := pPagina;
  qryinsert.ExecSQL;
end;

procedure TForm1.imporTFDados;
var
  i,
  vPagina, vCont  : integer;
  vArquivo : TextFile;
  vArquivoZD : TextFile;
  vLinha   : String;
  vLinha1,
  vLinha2,
  vLinha3,
  vLinha4,
  vLinha5,
  vLinha6,
  vCodPessoa : string;

  vCodAdmin,
  vnumContr,
  vCodUsuario : string;

begin
  qryCriaTemp.ExecSQL;
  qryApagaDados.ExecSQL;
  i       := 0;
  vMaior  := False;
  vPagina := 1;

  vLinha1 := '';
  vLinha2 := '';
  vLinha3 := '';
  vLinha4 := '';
  vLinha5 := '';
  vLinha6 := '';

  AssignFile( vArquivo, edtMensalidade.Text );
  Reset( vArquivo );
  vCont := 0;
  while not Eof( vArquivo ) do
  begin
    i := i + 1;
    Readln( vArquivo, vLinha );

    inc( vCont );
    label12.Caption := intToStr( vCont );
    label12.Refresh;

    if Pos( '', vLinha ) > 0 then
    vLinha := trocaCaracter( vLinha, '', '' );

    if i <= 6 then
    begin
      if i = 1 then
      vLinha1 := vLinha
      else if i = 2 then
      vLinha2 := vLinha
      else if i = 3 then
      vLinha3 := vLinha
      else if i = 4 then
      vLinha4 := vLinha
      else if i = 5 then
      vLinha5 := vLinha
      else if i = 6 then
      begin
        vLinha6 := vLinha;
        vCodPessoa := OnlyDigit( Copy( vLinha, 82, 7 ) );
      end;
    end
    else begin
      if copy( vLinha, 1, 12 ) = 'CONTRATANTE:' then
      begin
        if edtRetroativ.Text <> '' then
        begin
          qryContrato.Close;
          qryContrato.ParamByName( 'codPessoa' ).AsInteger := StrToInt( vCodPessoa );
          qryContrato.Open();

          if not qryContrato.IsEmpty then
          begin
            qryCovid.Close;
            qryCovid.ParamByName( 'codAdmin' ).AsInteger   := qryContratocodadmin.AsInteger;
            qryCovid.ParamByName( 'numContr' ).AsInteger   := qryContratonumcontr.AsInteger;

            if RadioGroup2.ItemIndex = 0 then
            qryCovid.SQL.Strings[3] := ' and   codusuario = ' + qryContratocodusuario.AsString
            else
            qryCovid.SQL.Strings[3] := '';

            qryCovid.Open();

            if not qryCovid.IsEmpty then
            begin
              gravaDados( i, 'Ap�s o cumprimento do Comunicado n� 85 de 31 de agosto de 2020 da ANS sobre suspens�o da aplica��o do reajuste do plano ', vPagina );
              Inc( i );
              gravaDados( i, 'de sa�de por varia��o de custos (anual) no per�odo de setembro a dezembro de 2020, segue recomposi��o dos valores.      ', vPagina );
              Inc( i );
              gravaDados( i, 'Conforme Diretoria Colegiada (DICOL) da ANS definiu que, os valores relativos a suspens�o do reajuste no  per�odo  ser� ', vPagina );
              Inc( i );
              gravaDados( i, 'dilu�do em 12 parcelas iguais e sucessivas (janeiro a dezembro/2021).                                                   ', vPagina );
              Inc( i );
              gravaDados( i, '', vPagina );
              Inc( i );

              while not qryCovid.Eof do
              begin
                 gravaDados( i,
                             FormatFloat( '000000', qryCovidcodusuario.AsInteger ) + '.' +
                             FormatFloat( '00', qryCovidparentesco.AsInteger ) + ' - ' +
                             CompletaEspacoDireita( copy( qryCovidnome.AsString, 1, 68 ), 68 ) + ' -R$ ' +
                             completaEspacoEsquerda( qryCovidvalor.AsString, 8 ) + ' - referente parcela ' + edtParcela.Text + '/12.',
                             vPagina );
                 Inc( i );
                 qryCovid.Next;
              end;
            end;
          end;
        end;

        qryRelMensalidade.Open();

        ppRelMensalidade.AllowPrintToArchive := True;
        ppRelMensalidade.DeviceType     := 'PDF';
        begin
          ppRelMensalidade.TextFileName := 'C:\EnvioBoleto\Enviar\' +
                                           CompletaZeroEsq( vCodPessoa, 8 ) + 'Mensalidade.PDF';
          ppRelMensalidade.PrintToDevices;
          ppRelMensalidade.ShowPrintDialog  := False;

          vSenhaArquivo := documentoSenha( vcodPessoa.ToInteger, ckSenhaTodosMensalidade.Checked );
          if ( vSenhaArquivo = 'para imprimir' ) and ( not ckSenhaTodosMensalidade.Checked ) then
          begin
            ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := False;
            ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := '';
          end
          else
          begin
            ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := True;
            ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := vSenhaArquivo;
          end;
          ppRelMensalidade.Print;

          if ( vCodPessoa = '128622' ) or ( vCodPessoa = '128742' ) then
          begin
            AssignFile( vArquivoZD, 'C:\EnvioBoleto\Enviar\' +
                                     CompletaZeroEsq( vCodPessoa, 8 ) + 'Mensalidade.TXT' );
            Rewrite( vArquivoZD );
            qryRelMensalidade.First;
            while not qryRelMensalidade.Eof do
            begin
              Writeln( vArquivoZD, qryRelMensalidadetexto.AsString );
              qryRelMensalidade.Next;
            end;
            CloseFile( vArquivoZD );
          end;
        end;

        vPagina    := 1;
        vCodPessoa := OnlyDigit( Copy( vLinha, 82, 7 ) );
        qryRelMensalidade.Close;
        qryApagaDados.ExecSQL;
      end;
      if ( Copy( vLinha2, 1, 6 ) = 'UNIMED' ) and ( copy( vLinha6, 1, 12 ) <> 'CONTRATANTE:' ) then
      vPagina := vPagina + 1;

      gravaDados( i, vLinha1, vPagina );

      vLinha1 := vLinha2;
      vLinha2 := vLinha3;
      vLinha3 := vLinha4;
      vLinha4 := vLinha5;
      vLinha5 := vLinha6;
      vLinha6 := vLinha;
    end;
  end;

  //imprime o ultimo
  gravaDados( i + 1, vLinha2, vPagina );
  gravaDados( i + 2, vLinha3, vPagina );
  gravaDados( i + 3, vLinha4, vPagina );
  gravaDados( i + 4, vLinha5, vPagina );
  gravaDados( i + 5, vLinha6, vPagina );

  qryContrato.Close;
  qryContrato.ParamByName( 'codPessoa' ).AsInteger := StrToInt( vCodPessoa );
  qryContrato.Open();

  qryCovid.Close;
  qryCovid.ParamByName( 'codAdmin' ).AsInteger   := qryContratocodadmin.AsInteger;
  qryCovid.ParamByName( 'numContr' ).AsInteger   := qryContratonumcontr.AsInteger;

  if RadioGroup2.ItemIndex = 0 then
  qryCovid.SQL.Strings[3] := ' and   codusuario = ' + qryContratocodusuario.AsString
  else
  qryCovid.SQL.Strings[3] := '';

  qryCovid.Open();

  if not qryCovid.IsEmpty then
  begin
    i := i + 6;
    gravaDados( i, 'Ap�s o cumprimento do Comunicado n� 85 de 31 de agosto de 2020 da ANS sobre suspens�o da aplica��o do reajuste do plano ', vPagina );
    Inc( i );
    gravaDados( i, 'de sa�de por varia��o de custos (anual) no per�odo de setembro a dezembro de 2020, segue recomposi��o dos valores.      ', vPagina );
    Inc( i );
    gravaDados( i, 'Conforme Diretoria Colegiada (DICOL) da ANS definiu que, os valores relativos a suspens�o do reajuste no  per�odo  ser� ', vPagina );
    Inc( i );
    gravaDados( i, 'dilu�do em 12 parcelas iguais e sucessivas (janeiro a dezembro/2021).                                                   ', vPagina );
    Inc( i );
    gravaDados( i, '', vPagina );
    Inc( i );

    while not qryCovid.Eof do
    begin
       gravaDados( i,
                   FormatFloat( '000000', qryCovidcodusuario.AsInteger ) + '.' +
                   FormatFloat( '00', qryCovidparentesco.AsInteger ) + ' - ' +
                   CompletaEspacoDireita( copy( qryCovidnome.AsString, 1, 68 ), 68 ) + ' -R$ ' +
                   completaEspacoEsquerda( qryCovidvalor.AsString, 8 ) + ' - referente parcela ' + edtParcela.Text + '/12.',
                   vPagina );
       Inc( i );
       qryCovid.Next;
    end;
  end;

  qryRelMensalidade.Open();

  ppRelMensalidade.AllowPrintToArchive := True;
  ppRelMensalidade.DeviceType     := 'PDF';
  begin
    ppRelMensalidade.TextFileName := 'C:\EnvioBoleto\Enviar\' +
                                     CompletaZeroEsq( vCodPessoa, 8 ) + 'Mensalidade.PDF';
    ppRelMensalidade.PrintToDevices;
    ppRelMensalidade.ShowPrintDialog  := False;

    vSenhaArquivo := documentoSenha( vCodPessoa.ToInteger, ckSenhaTodosMensalidade.Checked );
    if ( vSenhaArquivo = 'para imprimir' ) and ( not ckSenhaTodosMensalidade.Checked ) then
    begin
      ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := False;
      ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := '';
    end
    else
    begin
      ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := True;
      ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := vSenhaArquivo;
    end;

    ppRelMensalidade.Print;
  end;

  vPagina    := 1;
  vCodPessoa := OnlyDigit( Copy( vLinha, 82, 7 ) );
  qryRelMensalidade.Close;
  qryApagaDados.ExecSQL;

  CloseFile( vArquivo );
  qryRelMensalidade.Close;
  qryApagaTemp.ExecSQL;
end;

procedure TForm1.imporTFDadosCoparticip;
var
  i,
  vPagina  : integer;
  vArquivo : TextFile;
  vArquivoZD : TextFile;
  vLinha   : String;
  vLinha1,
  vLinha2,
  vLinha3,
  vLinha4,
  vLinha5,
  vLinha6,
  vLinha7,
  vLinha8,
  vCodPessoa : string;
  vNumLinha : Integer;

begin
  {qryCriaTemp.ExecSQL;
  qryApagaDados.ExecSQL;
  i       := 0;
  vMaior  := False;
  vPagina := 1;

  vLinha1 := '';
  vLinha2 := '';
  vLinha3 := '';
  vLinha4 := '';
  vLinha5 := '';
  vLinha6 := '';
  vLinha7 := '';
  vLinha8 := '';

  AssignFile( vArquivo, edCoparticip.Text );
  Reset( vArquivo );
  vNumLinha := 0;
  while not Eof( vArquivo ) do
  begin
    vNumLinha := vNumLinha + 1;
    label16.Caption := IntToStr( vNumLinha );
    label16.Refresh;

    i := i + 1;
    Readln( vArquivo, vLinha );

    if Pos( '', vLinha ) > 0 then
    vLinha := trocaCaracter( vLinha, '', '' );

    if i <= 8 then
    begin
      if i = 1 then
      vLinha1 := vLinha
      else if i = 2 then
      vLinha2 := vLinha
      else if i = 3 then
      vLinha3 := vLinha
      else if i = 4 then
      vLinha4 := vLinha
      else if i = 5 then
      vLinha5 := vLinha
      else if i = 6 then
      vLinha6 := vLinha
      else if i = 7 then
      vLinha7 := vLinha
      else if i = 8 then
      begin
        vLinha8 := vLinha;
        vCodPessoa := OnlyDigit( Copy( vLinha, 72, 6 ) );
      end;
    end
    else begin
      if copy( vLinha, 1, 12 ) = 'Contratante:' then
      begin
        qryRelMensalidade.Open();

        ppRelMensalidade.AllowPrintToArchive := True;
        ppRelMensalidade.DeviceType     := 'PDF';
        begin
          ppRelMensalidade.TextFileName := 'C:\EnvioBoleto\Enviar\' + CompletaZeroEsq( vCodPessoa, 8 ) + 'Coparticipacao.PDF';
          ppRelMensalidade.PrintToDevices;
          ppRelMensalidade.ShowPrintDialog  := False;


          vSenhaArquivo := documentoSenha( vcodpessoa.ToInteger, ckSenhaTodosFM.Checked );
          if ( vSenhaArquivo = 'para imprimir' ) and ( not ckSenhaTodosFM.Checked ) then
          begin
            ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := False;
            ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := '';
          end
          else
          begin
            ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := True;
            ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := vSenhaArquivo;
          end;

          ppRelMensalidade.Print;

          if ( vCodPessoa = '128622' ) or ( vCodPessoa = '128742' ) then
          begin
            AssignFile( vArquivoZD, 'C:\EnvioBoleto\Enviar\' +
                                     CompletaZeroEsq( vCodPessoa, 8 ) + 'Coparticipacao.TXT' );
            Rewrite( vArquivoZD );
            qryRelMensalidade.First;
            while not qryRelMensalidade.Eof do
            begin
              Writeln( vArquivoZD, qryRelMensalidadetexto.AsString );
              qryRelMensalidade.Next;
            end;
            CloseFile( vArquivoZD );
          end;
        end;

        vPagina    := 1;
        vCodPessoa := OnlyDigit( Copy( vLinha, 72, 6 ) );
        qryRelMensalidade.Close;
        qryApagaDados.ExecSQL;
      end;

      if ( Copy( vLinha2, 1, 6 ) = 'UNIMED' ) and ( copy( vLinha8, 1, 12 ) <> 'Contratante:' ) then
      begin
        vPagina := vPagina + 1;
        gravaDados( i, vLinha1, vPagina );
        i := i + 1;
      end;

      vLinha1 := vLinha2;
      vLinha2 := vLinha3;
      vLinha3 := vLinha4;
      vLinha4 := vLinha5;
      vLinha5 := vLinha6;
      vLinha6 := vLinha7;
      vLinha7 := vlinha8;
      vLinha8 := vLinha;
      gravaDados( i, vLinha1, vPagina );
    end;
  end;

  //imprime o ultimo
  gravaDados( i + 1, vLinha2, vPagina );
  gravaDados( i + 2, vLinha3, vPagina );
  gravaDados( i + 3, vLinha4, vPagina );
  gravaDados( i + 4, vLinha5, vPagina );
  gravaDados( i + 5, vLinha6, vPagina );
  gravaDados( i + 6, vLinha7, vPagina );
  gravaDados( i + 7, vLinha8, vPagina );

  qryRelMensalidade.Open();

  ppRelMensalidade.AllowPrintToArchive := True;
  ppRelMensalidade.DeviceType     := 'PDF';
  begin
    ppRelMensalidade.TextFileName := 'C:\EnvioBoleto\Enviar\' + CompletaZeroEsq( vCodPessoa, 8 ) + 'Coparticipacao.PDF';
    ppRelMensalidade.PrintToDevices;
    ppRelMensalidade.ShowPrintDialog  := False;

    vSenhaArquivo := documentoSenha( vCodPessoa.ToInteger, ckSenhaTodosFM.Checked );
    if ( vSenhaArquivo = 'para imprimir' ) and ( not ckSenhaTodosFM.Checked ) then
    begin
      ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := False;
      ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := '';
    end
    else
    begin
      ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := True;
      ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := vSenhaArquivo;
    end;

    ppRelMensalidade.Print;
  end;

  vPagina    := 1;
  vCodPessoa := OnlyDigit( Copy( vLinha, 82, 7 ) );
  qryRelMensalidade.Close;
  qryApagaDados.ExecSQL;

  CloseFile( vArquivo );
  qryRelMensalidade.Close;
  qryApagaTemp.ExecSQL;}
end;

procedure TForm1.imporTFDadosFator;
var
  i,
  vPagina  : integer;
  vArquivo : TextFile;
  vLinha   : String;
  vLinha1,
  vLinha2,
  vLinha3,
  vLinha4,
  vLinha5,
  vLinha6,
  vLinha7,
  vLinha8,
  vCodPessoa : string;
  vNumLinha: Integer;

begin
{  qryCriaTemp.ExecSQL;
  qryApagaDados.ExecSQL;
  i       := 0;
  vMaior  := False;
  vPagina := 1;

  vLinha1 := '';
  vLinha2 := '';
  vLinha3 := '';
  vLinha4 := '';
  vLinha5 := '';
  vLinha6 := '';
  vLinha7 := '';
  vLinha8 := '';

  AssignFile( vArquivo, edtFator.Text );
  Reset( vArquivo );
  vNumLinha := 0;
  while not Eof( vArquivo ) do
  begin
    vNumLinha := vNumlinha + 1;
    label14.Caption := IntToStr( vNumLinha );
    label14.Refresh;

    i := i + 1;
    Readln( vArquivo, vLinha );

    if Pos( '', vLinha ) > 0 then
    vLinha := trocaCaracter( vLinha, '', '' );

    if i <= 8 then
    begin
      if i = 1 then
      vLinha1 := vLinha
      else if i = 2 then
      vLinha2 := vLinha
      else if i = 3 then
      vLinha3 := vLinha
      else if i = 4 then
      vLinha4 := vLinha
      else if i = 5 then
      vLinha5 := vLinha
      else if i = 6 then
      vLinha6 := vLinha
      else if i = 7 then
      vLinha7 := vLinha
      else if i = 8 then
      begin
        vLinha8 := vLinha;
        vCodPessoa := OnlyDigit( Copy( vLinha, 72, 6 ) );
      end;
    end
    else begin
      if copy( vLinha, 1, 12 ) = 'Contratante:' then
      begin
        qryRelMensalidade.Open();

        ppRelMensalidade.AllowPrintToArchive := True;
        ppRelMensalidade.DeviceType     := 'PDF';
        begin
          ppRelMensalidade.TextFileName := 'C:\EnvioBoleto\Enviar\' + CompletaZeroEsq( vCodPessoa, 8 ) + 'FatorModerador.PDF';
          ppRelMensalidade.PrintToDevices;
          ppRelMensalidade.ShowPrintDialog  := False;

          vSenhaArquivo := documentoSenha( vCodPessoa.ToInteger, ckSenhaTodosFM.Checked );
          if ( vSenhaArquivo = 'para imprimir' ) and ( not ckSenhaTodosFM.Checked ) then
          begin
            ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := False;
            ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := '';
          end
          else
          begin
            ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := True;
            ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := vSenhaArquivo;
          end;

          ppRelMensalidade.Print;
        end;

        vPagina    := 1;
        vCodPessoa := OnlyDigit( Copy( vLinha, 72, 6 ) );
        qryRelMensalidade.Close;
        qryApagaDados.ExecSQL;
      end;

      if ( Copy( vLinha2, 1, 6 ) = 'UNIMED' ) and ( copy( vLinha8, 1, 12 ) <> 'Contratante:' ) then
      begin
        vPagina := vPagina + 1;
        gravaDados( i, vLinha1, vPagina );
        i := i + 1;
      end;

      vLinha1 := vLinha2;
      vLinha2 := vLinha3;
      vLinha3 := vLinha4;
      vLinha4 := vLinha5;
      vLinha5 := vLinha6;
      vLinha6 := vLinha7;
      vLinha7 := vlinha8;
      vLinha8 := vLinha;
      gravaDados( i, vLinha1, vPagina );
    end;
  end;

  //imprime o ultimo
  gravaDados( i + 1, vLinha2, vPagina );
  gravaDados( i + 2, vLinha3, vPagina );
  gravaDados( i + 3, vLinha4, vPagina );
  gravaDados( i + 4, vLinha5, vPagina );
  gravaDados( i + 5, vLinha6, vPagina );
  gravaDados( i + 6, vLinha7, vPagina );
  gravaDados( i + 7, vLinha8, vPagina );

  qryRelMensalidade.Open();

  ppRelMensalidade.AllowPrintToArchive := True;
  ppRelMensalidade.DeviceType     := 'PDF';
  begin
    ppRelMensalidade.TextFileName := 'C:\EnvioBoleto\Enviar\' + CompletaZeroEsq( vCodPessoa, 8 ) + 'FatorModerador.PDF';
    ppRelMensalidade.PrintToDevices;
    ppRelMensalidade.ShowPrintDialog  := False;

    vSenhaArquivo := documentoSenha( vCodPessoa.ToInteger, ckSenhaTodosFM.Checked );
    if ( vSenhaArquivo = 'para imprimir' ) and ( ckSenhaTodosFM.Checked ) then
    begin
      ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := False;
      ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := '';
    end
    else
    begin
      ppRelMensalidade.PDFSettings.EncryptSettings.Enabled      := True;
      ppRelMensalidade.PDFSettings.EncryptSettings.UserPassword := vSenhaArquivo;
    end;
    ppRelMensalidade.Print;
  end;

  vPagina    := 1;
  vCodPessoa := OnlyDigit( Copy( vLinha, 82, 7 ) );
  qryRelMensalidade.Close;
  qryApagaDados.ExecSQL;

  CloseFile( vArquivo );
  qryRelMensalidade.Close;
  qryApagaTemp.ExecSQL; }
end;

procedure TForm1.imporTFDadosFatura;
var
  Arquivo    : TextFile;
  Linha      : String;
  vPonto     : char;
  vCont      : Integer;

  //dados
  vDescricao       : tStringList;
  vEmissao, vVencimento : tDateTime;
  vValor           : Double;
  vNumero          : Integer;
  vCompetencia     : string[7];
  vSacado, vPraca  : string[55];
  vContrato        : string[4];
  vEndereco        : string[50];
  vCep             : string[9];
  vBairro          : string[25];
  vMunicipio       : string[27];
  vCodEmp          : string[5];
  vCNPJ, vInscEst  : string[20];
  vValor1, vValor2 : string[60];

begin
  qryCriaTempFatura.ExecSQL;
  qryApagaDadosTempFatura.ExecSQL;
  AssignFile( Arquivo, edtFatura.Text );
  Reset( Arquivo );
  vDescricao := TStringList.Create;
  vPonto := 'C';

  while not Eof( Arquivo ) do
  begin
    Readln( Arquivo, linha );

    if ( copy( linha, 20, 1 ) = '/' ) and ( copy( linha, 23, 1 ) = '/' ) then
    vPonto := 'D';

    if vPonto = 'C' then
    begin
      vDescricao.Add( Linha );
    end
    else
    begin
      if ( copy( linha, 20, 1 ) = '/' ) and ( copy( linha, 23, 1 ) = '/' ) then
      begin
        vEmissao := StrToDate( copy( linha, 18, 10 ) );
        vCont    := 1;
      end;

      if vCont = 5 then
      begin
        vValor      := StrToFloat( TiraPonto( AllTrim( copy( linha, 6, 16 ) ) ) );
        vNumero     := StrToInt( TrimRight( TrimLeft( Copy( linha, 22, 9 ) ) ) );
        vVencimento := StrToDate( TrimRight( TrimLeft( Copy( linha, 60, 10 ) ) ) );
      end;

      if vCont = 8 then
      vCompetencia := TrimLeft( TrimRight( Copy( Linha, 4, 10 ) ) );

      if vCont = 10 then
      begin
        vSacado   := TrimRight( TrimLeft( Copy( linha, 22, 55 ) ) );
        vContrato := TrimRight( TrimLeft( Copy( linha, 78, 5 ) ) );
      end;

      if vCont = 11 then
      begin
        vEndereco := TrimRight( TrimLeft( Copy( linha, 22, 50 ) ) );
        vCEP      := Copy( linha, 74, 9 );
      end;

      if vCont = 12 then
      begin
        vBairro    := TrimRight( TrimLeft( Copy( linha, 22, 25 ) ) );
        vMunicipio := TrimRight( TrimLeft( Copy( linha, 47, 27 ) ) );
      end;

      if vCont = 13 then
      begin
        vPraca  := TrimRight( TrimLeft( Copy( linha, 22, 55 ) ) );
        vCodEmp := TrimRight( TrimLeft( Copy( linha, 78, 5 ) ) );
      end;

      if vCont = 14 then
      begin
        vCNPJ    := Copy( linha, 22, 14 );
        vInscEst := TrimRight( TrimLeft( Copy( linha, 59, 20 ) ) );
      end;

      if ( vCont = 16 ) and
         ( AllTrim( linha ) <> '' ) then
        vValor1 := TrimLeft( TrimRight( Copy( linha, 20, 80 ) ) );

      if ( vCont = 17 ) then
      begin
        if ( AllTrim( vValor1 ) <> '' ) then
        vValor2 := TrimLeft( TrimRight( Copy( linha, 20, 80 ) ) )
        else
        vValor1 := TrimLeft( TrimRight( Copy( linha, 20, 80 ) ) );
      end;

      if ( vCont = 18 ) and
         ( AllTrim( vValor2 ) = '' ) then
      vValor2 := TrimLeft( TrimRight( Copy( linha, 20, 80 ) ) );

      {if vCont = 17 then
      vValor1 := Copy( linha, 24, 60 );

      if vCont = 18 then
      vValor2 := Copy( linha, 24, 60 );}

      vCont := vCont + 1;

      if Copy( linha, 1, 1 ) = '' then
      begin
        vPonto := 'C';

        with qryInsertFatura do
        begin
          Params.ParamByName( 'emissao' ).Value     := vEmissao;
          Params.ParamByName( 'valor' ).Value       := vValor;
          Params.ParamByName( 'numero' ).Value      := vNumero;
          Params.ParamByName( 'vencimento' ).Value  := vVencimento;
          Params.ParamByName( 'competencia' ).Value := vCompetencia;
          Params.ParamByName( 'sacado' ).Value      := vSacado;
          Params.ParamByName( 'contrato' ).Value    := vContrato;
          Params.ParamByName( 'endereco' ).Value    := vEndereco;
          Params.ParamByName( 'cep' ).Value         := vCep;
          Params.ParamByName( 'bairro' ).Value      := vBairro;
          Params.ParamByName( 'municipio' ).Value   := vMunicipio;
          Params.ParamByName( 'praca' ).Value       := vPraca;
          Params.ParamByName( 'codemp' ).Value      := vCodEmp;
          Params.ParamByName( 'cnpj' ).Value        := vCNPJ;
          Params.ParamByName( 'inscest' ).Value     := vInscEst;
          Params.ParamByName( 'valori' ).Value      := trocaCaracter( vValor1, ',', '.' );
          Params.ParamByName( 'valorii' ).Value     := trocaCaracter( vValor2, ',', '.' );
          Params.ParamByName( 'descricao' ).Text    := vDescricao.Text;
          ExecSQL;
        end;

        vDescricao.Clear;
        vEmissao     := 0;
        vVencimento  := 0;
        vValor       := 0;
        vNumero      := 0;
        vCompetencia := '';
        vSacado      := '';
        vPraca       := '';
        vContrato    := '';
        vEndereco    := '';
        vCep         := '';
        vBairro      := '';
        vMunicipio   := '';
        vCodEmp      := '';
        vCNPJ        := '';
        vInscEst     := '';
        vValor1      := '';
        vValor2      := '';
      end;
    end;
  end;
  CloseFile( Arquivo );
end;

function TForm1.linhaDigitavel(pTexto: string): string;
begin
  result := result + copy( ptexto, 1, 4 ) +
                     copy( pTexto, 20, 5 ); //digito

  result := result + calculaDigitoMod10( result );

  result := result + copy( pTexto, 25, 10 );  //digito

  result := result + calculaDigitoMod10( copy( pTexto, 25, 10 ) );

  result := result + copy( pTexto, 35, 10 );  //digito

  result := result + calculaDigitoMod10( copy( pTexto, 35, 10 ) );

  result := result + copy( ptexto, 5, 1 );

  result := result + copy( pTexto, 6, 14 );
end;

procedure TForm1.mudaArquivo;
var
  i, j    : Integer;
  Arquivo : String;

begin
  for i := 1 to ArqEnv.Count do
  begin
    Arquivo := ArqEnv[ i - 1 ];
    CopyFile( Pchar( ArqEnv[ i - 1 ] ),
              Pchar( 'C:\EnvioProdu��o\Enviados\' + Arquivo ), FALSE );
    DeleteFile( PChar( ArqEnv[ i - 1 ] ) );
  end;

end;

procedure TForm1.ppDetailBand1BeforePrint(Sender: TObject);
var
  vCodigodeBarras : string;
  vLinhaDigitavel : string;

begin
  vCodigodeBarras := '11' +
                     qryTitulonrdocbco.AsString +
                     '3022090909510';
  vCodigodeBarras := calculaDigito( vCodigoDeBarras );


  if (qryTitulodatavencimento.AsDateTime <= strToDate('21/02/2025') ) then
  begin
    vCodigoDeBarras := calculaDigito2( '7489' +
                                       CompletaZeroEsq( inttostr( daysbetween( qryTitulodatavencimento.AsDateTime, strtodate( '07/10/1997' ))), 4 ) +
                                       CompletaZeroEsq( FloatToStr( ( qryTitulovalsaldo.AsFloat * 100) ), 10 ) + vCodigodeBarras );
  end
  else
  begin
    vCodigoDeBarras := calculaDigito2( '7489' +
                                       CompletaZeroEsq( inttostr( daysbetween( qryTitulodatavencimento.AsDateTime, strtodate( '22/02/2025' ))), 4 ) +
                                       CompletaZeroEsq( FloatToStr( ( qryTitulovalsaldo.AsFloat * 100) ), 10 ) + vCodigodeBarras );
  end;


  ppBarCode1.Data := vCodigodeBarras;

  vLinhaDigitavel := linhaDigitavel( vCodigodeBarras );

  ppLabel4.Caption := copy( vLinhaDigitavel, 1, 5 ) + '.' +
                      copy( vLinhaDigitavel, 6, 5 ) + ' ' +
                      copy( vLinhaDigitavel, 11, 5 ) + '.' +
                      copy( vLinhaDigitavel, 16, 6 ) + ' ' +
                      copy( vLinhaDigitavel, 22, 5 ) + '.' +
                      copy( vLinhaDigitavel, 27, 6 ) + ' ' +
                      copy( vLinhaDigitavel, 33, 1 ) + ' ' +
                      copy( vLinhaDigitavel, 34, 14 );

  ppLblNossoNum.Caption := Copy( qryTitulonrdocbco.AsString, 1, 2 ) + '/' +
                           Copy( qryTitulonrdocbco.AsString, 3, 6 ) + '-' +
                           Copy( qryTitulonrdocbco.AsString, 9, 1 );

  qryPessoa.Close;
  qryPessoa.Params.ParamByName( 'codPessoa' ).AsInteger := qryTitulocodpessoa.AsInteger;
  qryPessoa.Open();
  qryEndereco.Close;
  qryEndereco.Params.ParamByName( 'codPessoa' ).AsInteger := qryTitulocodpessoa.AsInteger;
  qryEndereco.Open();

  ppLblPagador1.Caption := qryPessoanomePessoa.AsString + ' - ' +
                           qryPessoadocumento.AsString;
  ppLblPagador2.Caption := qryEnderecoendereco.AsString + ', ' + qryEnderecoNumero.AsString + ' - ' + qryEnderecobairro.AsString;
  ppLblPagador3.Caption := qryEndereconomemunicipio.AsString + ' - ' + qryEnderecouf.AsString + ' - ' + qryEnderecocep.AsString;
  ppLblMora.Caption     := 'APOS VENCIMENTO COBRAR MORA DIARIA DE R$ ' +
                           FormatFloat( '#,0.00', ( ( qryTitulovalsaldo.AsFloat / 30 ) * 0.02 ) );


  ppLblNossoNum2.Caption := Copy( qryTitulonrdocbco.AsString, 1, 2 ) + '/' +
                           Copy( qryTitulonrdocbco.AsString, 3, 6 ) + '-' +
                           Copy( qryTitulonrdocbco.AsString, 9, 1 );

  ppLblPagador4.Caption := qryPessoanomePessoa.AsString + ' - ' +
                           qryPessoadocumento.AsString;
  ppLblPagador5.Caption := qryEnderecoendereco.AsString + ', ' + qryEnderecoNumero.AsString + ' - ' + qryEnderecobairro.AsString;
  ppLblPagador6.Caption := qryEndereconomemunicipio.AsString + ' - ' + qryEnderecouf.AsString + ' - ' + qryEnderecocep.AsString;
  ppLblMora2.Caption     := 'APOS VENCIMENTO COBRAR MORA DIARIA DE R$ ' +
                           FormatFloat( '#,0.00', ( ( qryTitulovalsaldo.AsFloat / 30 ) * 0.02 ) );


  qryEndereco.Close;
  qryPessoa.Close;

end;

procedure TForm1.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if Odd( qryRelMensalidade.RecNo ) then
  ppDBText11.Color := clWhite
  else
  ppDBText11.Color := $00F4F4F4;
end;

procedure TForm1.tabelaCOVID;
var
  Arquivo : TextFile;
  p, a,
  nCampo, vCont  : Integer;
  i:integer;
  admin, contr, usu, parentesco,
  nome, valor, cartao, vAux, linha :string;

begin
  qryDCOVID.ExecSQL;

  AssignFile( Arquivo, EdtRetroativ.Text );
  Reset( Arquivo );
  while not Eof( Arquivo ) do
  begin
    nCampo     := 1;
    admin      := '';
    contr      := '';
    usu        := '';
    parentesco := '';
    nome       := '';
    valor      := '';
    cartao     := '';

    ReadLn( Arquivo, linha );

    Inc( vCont );
    label13.Caption := IntToStr( vCont );
    Label13.Refresh;

    if linha <> '' then
    begin

      for p := 1 to Length( linha ) do
      begin
        if Copy( Linha, p, 1 ) = ';' then
        nCampo := nCampo + 1
        else
        begin
          if nCampo = 1 then
          admin := admin + Copy( Linha, p, 1 )
          else
          if nCampo = 2 then
          contr := contr + Copy( Linha, p, 1 )
          else
          if nCampo = 3 then
          usu := usu + Copy( Linha, p, 1 )
          else
          if nCampo = 4 then
          parentesco := parentesco + Copy( Linha, p, 1 )
          else
          if nCampo = 5 then
          nome := nome + Copy( Linha, p, 1 )
          else
          if nCampo = 6 then
          valor := valor + Copy( Linha, p, 1 );
        end;
      end;

      qryICovid.Params.ParamByName( 'codadmin' ).AsInteger   := StrToInt( admin );
      qryICovid.Params.ParamByName( 'numcontr' ).AsInteger   := StrToInt( contr );
      qryICovid.Params.ParamByName( 'codusuario' ).AsInteger := StrToInt( usu );
      qryICovid.Params.ParamByName( 'parentesco' ).AsInteger := StrToInt( parentesco );
      qryICovid.Params.ParamByName( 'nome' ).AsString        := nome;
      qryICovid.Params.ParamByName( 'valor' ).AsString       := valor;
      qryICovid.ExecSQL;
    end;
  end;

  Closefile( Arquivo );
end;

Function TForm1.AllTrim( Texto : String ) : String;
var
  I  : Integer;
begin
  Result := '';

  for i := 1 to Length( Texto ) do
  begin
    if Copy( Texto, i, 1 ) <> ' ' then
    Result := Result + Copy( Texto, i, 1 );
  end;
end;

Function TForm1.NomeArquivo( NomArq : String ) : String;
var
  j : Integer;
begin
  Result := '';
  j := Length( NomArq );
  while ( j > 0 ) and ( Copy( NomArq, j, 1 ) <> '\' ) do
  begin
    Result := Copy( NomArq, j, 1 ) + Result;
    j := j - 1;
  end;
end;

function TForm1.GetFileList(const Path: string): TStringList;
var
  I: Integer;
  SearchRec: TSearchRec;

begin
  Result := TStringList.Create;
  try
    I := FindFirst(Path, 0, SearchRec);
    while I = 0 do
    begin
      Result.Add(SearchRec.Name);
      I := FindNext(SearchRec);
    end;
    except
      Result.Free;
    raise;
  end;
end;

function TForm1.alteraTagMenssagem( pTexto : string ) : String;
var
  vRetorno : string;

begin
  if ( time >= StrToTime( '06:00:00' ) ) and ( time < StrToTime( '12:00:00' ) ) then
  vRetorno := pTexto.Replace( '<<saudacao>>', 'Bom dia' )
  else
  if ( time >= StrToTime( '12:00:00' ) ) and ( time < StrToTime( '18:00:00' ) ) then
  vRetorno := pTexto.Replace( '<<saudacao>>', 'Boa tarde' )
  else
  vRetorno := pTexto.Replace( '<<saudacao>>', 'Boa noite' );

  Result := vRetorno;
end;

function TForm1.ExisteArquivoSequencial(FileNameBase: string; Directory: string = 'C:\envioBoleto\Enviar\'): Boolean;
var
  SearchPattern: string;
  SearchRec: TSearchRec;
begin
  Result := False;
  SearchPattern := FileNameBase + '*.PDF';

  try
    if FindFirst(TPath.Combine(Directory, SearchPattern), faAnyFile, SearchRec) = 0 then
      Result := True;
  finally
    FindClose(SearchRec);
  end;
end;

end.
