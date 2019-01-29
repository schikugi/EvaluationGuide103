object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 606
  ClientWidth = 898
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 560
    Top = 0
    Width = 338
    Height = 606
    Align = alRight
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 560
    Height = 606
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 1
      Width = 62
      Height = 13
      Caption = 'SPECIES_NO'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 41
      Width = 54
      Height = 13
      Caption = 'CATEGORY'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 81
      Width = 80
      Height = 13
      Caption = 'COMMON_NAME'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 121
      Width = 75
      Height = 13
      Caption = 'SPECIES_NAME'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 8
      Top = 161
      Width = 71
      Height = 13
      Caption = 'LENGTH__CM_'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 8
      Top = 201
      Width = 55
      Height = 13
      Caption = 'LENGTH_IN'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 8
      Top = 241
      Width = 33
      Height = 13
      Caption = 'NOTES'
      FocusControl = DBMemo1
    end
    object Label8: TLabel
      Left = 8
      Top = 353
      Width = 45
      Height = 13
      Caption = 'GRAPHIC'
      FocusControl = DBImage1
    end
    object Splitter1: TSplitter
      Left = 556
      Top = 1
      Height = 604
      Align = alRight
      ExplicitLeft = 472
      ExplicitTop = 264
      ExplicitHeight = 100
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 17
      Width = 134
      Height = 21
      DataField = 'SPECIES_NO'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 57
      Width = 199
      Height = 21
      DataField = 'CATEGORY'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 97
      Width = 394
      Height = 21
      DataField = 'COMMON_NAME'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 137
      Width = 524
      Height = 21
      DataField = 'SPECIES_NAME'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 177
      Width = 134
      Height = 21
      DataField = 'LENGTH__CM_'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 217
      Width = 134
      Height = 21
      DataField = 'LENGTH_IN'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 257
      Width = 185
      Height = 89
      DataField = 'NOTES'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBImage1: TDBImage
      Left = 8
      Top = 369
      Width = 329
      Height = 184
      DataField = 'GRAPHIC'
      DataSource = DataSource1
      TabOrder = 7
      OnDblClick = DBImage1DblClick
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 568
      Width = 240
      Height = 25
      DataSource = DataSource1
      TabOrder = 8
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Public\Documents\Embarcadero\Studio\20.0\Sampl' +
        'es\Data\dbdemos.gdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 744
    Top = 32
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'SPECIES_NO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'BIOLIFE'
    TableName = 'BIOLIFE'
    Left = 824
    Top = 32
    object FDTable1SPECIES_NO: TFloatField
      FieldName = 'SPECIES_NO'
      Origin = 'SPECIES_NO'
    end
    object FDTable1CATEGORY: TStringField
      FieldName = 'CATEGORY'
      Origin = 'CATEGORY'
      Size = 15
    end
    object FDTable1COMMON_NAME: TStringField
      FieldName = 'COMMON_NAME'
      Origin = 'COMMON_NAME'
      Size = 30
    end
    object FDTable1SPECIES_NAME: TStringField
      FieldName = 'SPECIES_NAME'
      Origin = 'SPECIES_NAME'
      Size = 40
    end
    object FDTable1LENGTH__CM_: TFloatField
      FieldName = 'LENGTH__CM_'
      Origin = 'LENGTH__CM_'
    end
    object FDTable1LENGTH_IN: TFloatField
      FieldName = 'LENGTH_IN'
      Origin = 'LENGTH_IN'
    end
    object FDTable1NOTES: TWideMemoField
      FieldName = 'NOTES'
      Origin = 'NOTES'
      BlobType = ftWideMemo
    end
    object FDTable1GRAPHIC: TBlobField
      FieldName = 'GRAPHIC'
      Origin = 'GRAPHIC'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 488
    Top = 296
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'bmp'
    Filter = #12499#12483#12488#12510#12483#12503#12501#12449#12452#12523'|*.bmp'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 504
    Top = 552
  end
end
