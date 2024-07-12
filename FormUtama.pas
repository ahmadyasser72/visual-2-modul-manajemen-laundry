unit FormUtama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Data.Win.ADODB,
  Vcl.DBCtrls;

type
  TFormUtama1 = class(TForm)
    ConnectionLaundry: TADOConnection;
    MainMenu1: TMainMenu;
    s1: TMenuItem;
    Report1: TMenuItem;
    Pelanggan1: TMenuItem;
    Pesanan1: TMenuItem;
    Pelanggan2: TMenuItem;
    Pesanan2: TMenuItem;
    Pekerja1: TMenuItem;
    Pekerja2: TMenuItem;
    procedure Pelanggan1Click(Sender: TObject);
    procedure Pekerja1Click(Sender: TObject);
    procedure Pesanan1Click(Sender: TObject);
    procedure Pelanggan2Click(Sender: TObject);
    procedure Pekerja2Click(Sender: TObject);
    procedure Pesanan2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUtama1: TFormUtama1;

implementation

{$R *.dfm}

uses FormPekerja, FormPelanggan, FormPesanan;

procedure TFormUtama1.Pekerja1Click(Sender: TObject);
begin
  FormPekerja1.Show;
end;

procedure TFormUtama1.Pekerja2Click(Sender: TObject);
begin
  FormPekerja1.TablePekerja.Requery;
  FormPekerja1.frxReport1.ShowReport;
end;

procedure TFormUtama1.Pelanggan1Click(Sender: TObject);
begin
  FormPelanggan1.Show;
end;

procedure TFormUtama1.Pelanggan2Click(Sender: TObject);
begin
  FormPelanggan1.TablePelanggan.Requery;
  FormPelanggan1.frxReport1.ShowReport;
end;

procedure TFormUtama1.Pesanan1Click(Sender: TObject);
begin
  FormPesanan1.LookupPelanggan.Requery;
  FormPesanan1.LookupPekerja.Requery;
  FormPesanan1.TablePesanan.Requery;
  FormPesanan1.Show;
end;

procedure TFormUtama1.Pesanan2Click(Sender: TObject);
begin
  FormPesanan1.LookupPelanggan.Requery;
  FormPesanan1.LookupPekerja.Requery;
  FormPesanan1.TablePesanan.Requery;
  FormPesanan1.frxReport1.ShowReport;
end;

end.
