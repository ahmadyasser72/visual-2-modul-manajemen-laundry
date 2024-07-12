program Project1;

uses
  Vcl.Forms,
  FormUtama in 'FormUtama.pas' {FormUtama1},
  FormPelanggan in 'FormPelanggan.pas' {FormPelanggan1},
  FormPekerja in 'FormPekerja.pas' {FormPekerja1},
  FormPesanan in 'FormPesanan.pas' {FormPesanan1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormUtama1, FormUtama1);
  Application.CreateForm(TFormPelanggan1, FormPelanggan1);
  Application.CreateForm(TFormPekerja1, FormPekerja1);
  Application.CreateForm(TFormPesanan1, FormPesanan1);
  Application.Run;
end.
