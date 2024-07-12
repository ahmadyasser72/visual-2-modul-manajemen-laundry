unit FormPesanan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Vcl.ComCtrls, Data.Bind.DBScope,
  frxClass, frxDBSet;

type
  TFormPesanan1 = class(TForm)
    TablePesanan: TADOTable;
    TablePesananid_pesanan: TAutoIncField;
    TablePesananid_pelanggan: TIntegerField;
    TablePesananid_pekerja: TIntegerField;
    TablePesanantotal_harga: TBCDField;
    TablePesanantanggal_pesanan: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    BindSourceDB1: TBindSourceDB;
    DateTimePickertanggal_pesanan: TDateTimePicker;
    LinkControlToFieldtanggal_pesanan: TLinkControlToField;
    BindingsList1: TBindingsList;
    LookupPelanggan: TADOTable;
    LookupPelangganid_pelanggan: TAutoIncField;
    LookupPelanggannama: TWideStringField;
    TablePesananpelanggan: TStringField;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    LookupPekerja: TADOTable;
    LookupPekerjaid_pekerja: TAutoIncField;
    LookupPekerjanama: TWideStringField;
    TablePesananpekerja: TStringField;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
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
  FormPesanan1: TFormPesanan1;

implementation

{$R *.dfm}

procedure TFormPesanan1.Button1Click(Sender: TObject);
begin
  TablePesanan.Insert;
end;

procedure TFormPesanan1.Button2Click(Sender: TObject);
begin
  TablePesanan.Edit;
end;

procedure TFormPesanan1.Button3Click(Sender: TObject);
begin
  TablePesanan.Delete;
end;

procedure TFormPesanan1.Button4Click(Sender: TObject);
begin
  TablePesanan.Post;
end;

procedure TFormPesanan1.Button5Click(Sender: TObject);
begin
  TablePesanan.Cancel;
end;

end.
