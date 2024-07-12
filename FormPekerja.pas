unit FormPekerja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, frxClass, frxDBSet;

type
  TFormPekerja1 = class(TForm)
    TablePekerja: TADOTable;
    TablePekerjaid_pekerja: TAutoIncField;
    TablePekerjanama: TWideStringField;
    TablePekerjaalamat: TWideStringField;
    TablePekerjatelepon: TWideStringField;
    TablePekerjaposisi: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
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
  FormPekerja1: TFormPekerja1;

implementation

{$R *.dfm}

procedure TFormPekerja1.Button1Click(Sender: TObject);
begin
  TablePekerja.Insert;
end;

procedure TFormPekerja1.Button2Click(Sender: TObject);
begin
  TablePekerja.Edit;
end;

procedure TFormPekerja1.Button3Click(Sender: TObject);
begin
  TablePekerja.Delete;
end;

procedure TFormPekerja1.Button4Click(Sender: TObject);
begin
  TablePekerja.Post;
end;

procedure TFormPekerja1.Button5Click(Sender: TObject);
begin
  TablePekerja.Cancel;
end;

end.
