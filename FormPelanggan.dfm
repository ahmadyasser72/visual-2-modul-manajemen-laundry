object FormPelanggan1: TFormPelanggan1
  Left = 0
  Top = 0
  Caption = 'Input Data Pelanggan'
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
    Top = 77
    Width = 64
    Height = 13
    Caption = 'id_pelanggan'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 32
    Top = 120
    Width = 26
    Height = 13
    Caption = 'nama'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 32
    Top = 168
    Width = 32
    Height = 13
    Caption = 'alamat'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 32
    Top = 218
    Width = 36
    Height = 13
    Caption = 'telepon'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 93
    Width = 160
    Height = 21
    DataField = 'id_pelanggan'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 138
    Width = 160
    Height = 21
    DataField = 'nama'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 186
    Width = 160
    Height = 21
    DataField = 'alamat'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 32
    Top = 237
    Width = 160
    Height = 21
    DataField = 'telepon'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 216
    Top = 77
    Width = 441
    Height = 181
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 32
    Top = 285
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 169
    Top = 285
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 307
    Top = 285
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 444
    Top = 285
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 582
    Top = 285
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 9
    OnClick = Button5Click
  end
  object TablePelanggan: TADOTable
    Active = True
    Connection = FormUtama1.ConnectionLaundry
    CursorType = ctStatic
    TableName = 'pelanggan'
    Left = 624
    Top = 344
    object TablePelangganid_pelanggan: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id_pelanggan'
      ReadOnly = True
    end
    object TablePelanggannama: TWideStringField
      DisplayWidth = 16
      FieldName = 'nama'
      Size = 255
    end
    object TablePelangganalamat: TWideStringField
      DisplayWidth = 26
      FieldName = 'alamat'
      Size = 255
    end
    object TablePelanggantelepon: TWideStringField
      DisplayWidth = 14
      FieldName = 'telepon'
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = TablePelanggan
    Left = 544
    Top = 344
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataSource1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 368
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
    Left = 280
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
            'Daftar Pelanggan')
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
            'ID Pelanggan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Width = 204.094620000000000000
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
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 253.228510000000000000
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
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 177.637910000000000000
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
            'Telepon')
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
          DataField = 'id_pelanggan'
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
            '[frxDBDataset1."id_pelanggan"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.826840000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
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
            '[frxDBDataset1."nama"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
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
            '[frxDBDataset1."alamat"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'telepon'
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
            '[frxDBDataset1."telepon"]')
          ParentFont = False
        end
      end
    end
  end
end
