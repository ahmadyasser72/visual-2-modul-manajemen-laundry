object FormPesanan1: TFormPesanan1
  Left = 0
  Top = 0
  Caption = 'Input Data Pesanan'
  ClientHeight = 401
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 56
    Width = 55
    Height = 13
    Caption = 'id_pesanan'
    FocusControl = DBEdit1
  end
  object Label4: TLabel
    Left = 32
    Top = 204
    Width = 56
    Height = 13
    Caption = 'total_harga'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 32
    Top = 252
    Width = 83
    Height = 13
    Caption = 'tanggal_pesanan'
  end
  object Label2: TLabel
    Left = 32
    Top = 104
    Width = 50
    Height = 13
    Caption = 'pelanggan'
    FocusControl = DBLookupComboBox1
  end
  object Label3: TLabel
    Left = 32
    Top = 152
    Width = 36
    Height = 13
    Caption = 'pekerja'
    FocusControl = DBLookupComboBox2
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 72
    Width = 160
    Height = 21
    DataField = 'id_pesanan'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit4: TDBEdit
    Left = 32
    Top = 220
    Width = 160
    Height = 21
    DataField = 'total_harga'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 216
    Top = 56
    Width = 441
    Height = 233
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 32
    Top = 309
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 169
    Top = 309
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 307
    Top = 309
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 444
    Top = 309
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 582
    Top = 309
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 7
    OnClick = Button5Click
  end
  object DateTimePickertanggal_pesanan: TDateTimePicker
    Left = 32
    Top = 271
    Width = 160
    Height = 21
    TabOrder = 8
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 32
    Top = 120
    Width = 160
    Height = 21
    DataField = 'pelanggan'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 32
    Top = 171
    Width = 160
    Height = 21
    DataField = 'pekerja'
    DataSource = DataSource1
    TabOrder = 10
  end
  object TablePesanan: TADOTable
    Active = True
    Connection = FormUtama1.ConnectionLaundry
    CursorType = ctStatic
    TableName = 'pesanan'
    Left = 624
    Top = 344
    object TablePesananid_pesanan: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id_pesanan'
      ReadOnly = True
    end
    object TablePesananid_pelanggan: TIntegerField
      FieldName = 'id_pelanggan'
      Visible = False
    end
    object TablePesananid_pekerja: TIntegerField
      FieldName = 'id_pekerja'
      Visible = False
    end
    object TablePesananpelanggan: TStringField
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'pelanggan'
      LookupDataSet = LookupPelanggan
      LookupKeyFields = 'id_pelanggan'
      LookupResultField = 'nama'
      KeyFields = 'id_pelanggan'
      Lookup = True
    end
    object TablePesananpekerja: TStringField
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'pekerja'
      LookupDataSet = LookupPekerja
      LookupKeyFields = 'id_pekerja'
      LookupResultField = 'nama'
      KeyFields = 'id_pekerja'
      Lookup = True
    end
    object TablePesanantotal_harga: TBCDField
      DisplayWidth = 11
      FieldName = 'total_harga'
      Precision = 10
      Size = 2
    end
    object TablePesanantanggal_pesanan: TDateField
      DisplayWidth = 13
      FieldName = 'tanggal_pesanan'
    end
  end
  object DataSource1: TDataSource
    DataSet = TablePesanan
    Left = 552
    Top = 344
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = TablePesanan
    ScopeMappings = <>
    Left = 112
    Top = 344
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 36
    Top = 344
    object LinkControlToFieldtanggal_pesanan: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tanggal_pesanan'
      Control = DateTimePickertanggal_pesanan
      Track = True
    end
  end
  object LookupPelanggan: TADOTable
    Active = True
    Connection = FormUtama1.ConnectionLaundry
    CursorType = ctStatic
    TableName = 'pelanggan'
    Left = 472
    Top = 344
    object LookupPelangganid_pelanggan: TAutoIncField
      FieldName = 'id_pelanggan'
      ReadOnly = True
    end
    object LookupPelanggannama: TWideStringField
      FieldName = 'nama'
      Size = 255
    end
  end
  object LookupPekerja: TADOTable
    Active = True
    Connection = FormUtama1.ConnectionLaundry
    CursorType = ctStatic
    TableName = 'pekerja'
    Left = 392
    Top = 344
    object LookupPekerjaid_pekerja: TAutoIncField
      FieldName = 'id_pekerja'
      ReadOnly = True
    end
    object LookupPekerjanama: TWideStringField
      FieldName = 'nama'
      Size = 255
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataSource1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 296
    Top = 344
  end
  object frxReport1: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45452.854088379600000000
    ReportOptions.LastChange = 45452.854088379600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 208
    Top = 344
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 260.598593500000000000
          Width = 219.212740000000000000
          Height = 56.692950000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Roboto Cn'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Daftar Pesanan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clMaroon
          HAlign = haCenter
          Memo.UTF8W = (
            'ID Pesanan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Width = 188.976377952756000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clMaroon
          HAlign = haCenter
          Memo.UTF8W = (
            'Pelanggan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 188.976377950000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clMaroon
          HAlign = haCenter
          Memo.UTF8W = (
            'Pekerja')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 132.283550000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clMaroon
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Harga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clMaroon
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal Pesanan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id_pelanggan: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'id_pesanan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."id_pesanan"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.826840000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'pelanggan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."pelanggan"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'pekerja'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."pekerja"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'total_harga'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."total_harga"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal_pesanan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."tanggal_pesanan"]')
          ParentFont = False
        end
      end
    end
  end
end
