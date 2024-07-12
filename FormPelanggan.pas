unit FormPelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Data.Win.ADODB, Vcl.ButtonGroup,
  frxClass, frxDBSet;

type
  TFormPelanggan1 = class(TForm)
    TablePelanggan: TADOTable;
    DataSource1: TDataSource;
    TablePelangganid_pelanggan: TAutoIncField;
    TablePelanggannama: TWideStringField;
    TablePelangganalamat: TWideStringField;
    TablePelanggantelepon: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPelanggan1: TFormPelanggan1;

implementation

{$R *.dfm}

uses FormUtama;

procedure TFormPelanggan1.Button1Click(Sender: TObject);
begin
  TablePelanggan.Insert;
end;

procedure TFormPelanggan1.Button2Click(Sender: TObject);
begin
  TablePelanggan.Edit;
end;

procedure TFormPelanggan1.Button3Click(Sender: TObject);
begin
  TablePelanggan.Delete;
end;

procedure TFormPelanggan1.Button4Click(Sender: TObject);
begin
  TablePelanggan.Post;
end;

procedure TFormPelanggan1.Button5Click(Sender: TObject);
begin
  TablePelanggan.Cancel;
end;

end.
