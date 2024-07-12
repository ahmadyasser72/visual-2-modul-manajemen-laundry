object FormUtama1: TFormUtama1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form Utama'
  ClientHeight = 391
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ConnectionLaundry: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=delphi laundry;Initial Catalog=delphi_laundry'
    LoginPrompt = False
    Left = 288
    Top = 160
  end
  object MainMenu1: TMainMenu
    Left = 288
    Top = 232
    object s1: TMenuItem
      Caption = 'Input Data'
      object Pelanggan1: TMenuItem
        Caption = 'Pelanggan'
        OnClick = Pelanggan1Click
      end
      object Pekerja1: TMenuItem
        Caption = 'Pekerja'
        OnClick = Pekerja1Click
      end
      object Pesanan1: TMenuItem
        Caption = 'Pesanan'
        OnClick = Pesanan1Click
      end
    end
    object Report1: TMenuItem
      Caption = 'Print Laporan'
      object Pelanggan2: TMenuItem
        Caption = 'Pelanggan'
        OnClick = Pelanggan2Click
      end
      object Pekerja2: TMenuItem
        Caption = 'Pekerja'
        OnClick = Pekerja2Click
      end
      object Pesanan2: TMenuItem
        Caption = 'Pesanan'
        OnClick = Pesanan2Click
      end
    end
  end
end
