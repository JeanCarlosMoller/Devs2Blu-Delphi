unit UfrmRelFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frxClass,
  frxExportBaseDialog, frxExportPDF,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UdmPedidos, frxDBSet;

type
  TfrmRelFornecedores = class(TForm)
    GroupBox1: TGroupBox;
    edtDescricao: TEdit;
    lblDescricao: TLabel;
    btnExportar: TButton;
    btnVisualizar: TButton;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    procedure btnExportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelFornecedores: TfrmRelFornecedores;

implementation

{$R *.dfm}

procedure TfrmRelFornecedores.btnExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.FileName := Format('%s\Fornecedores.pdf', [xCaminho]);
  frxReport1.PrepareReport();
  frxReport1.Export(frxPDFExport1);

end;

procedure TfrmRelFornecedores.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;
  frxReport1.ShowReport;
end;

procedure TfrmRelFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;

  frmRelFornecedores := nil;
end;

procedure TfrmRelFornecedores.PrepararFiltro;
begin
  FDQuery1.Close;
  FDQuery1.ParamByName('NOME').AsString := '';
  if Trim(edtDescricao.Text) <> EmptyStr then
    FDQuery1.ParamByName('NOME').AsString := '%' +
    Trim(edtDescricao.Text) +'%';
  FDQuery1.Open();
end;

end.
