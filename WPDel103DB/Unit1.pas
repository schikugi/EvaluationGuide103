unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    FDTable1SPECIES_NO: TFloatField;
    FDTable1CATEGORY: TStringField;
    FDTable1COMMON_NAME: TStringField;
    FDTable1SPECIES_NAME: TStringField;
    FDTable1LENGTH__CM_: TFloatField;
    FDTable1LENGTH_IN: TFloatField;
    FDTable1NOTES: TWideMemoField;
    FDTable1GRAPHIC: TBlobField;
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
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    DBImage1: TDBImage;
    Splitter1: TSplitter;
    DBNavigator1: TDBNavigator;
    SaveDialog1: TSaveDialog;
    procedure DBImage1DblClick(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DBImage1DblClick(Sender: TObject);
var
  FileName : String;
begin
  // レコードから項目を取得し、SaveDialogにファイル名として設定する
  FileName := FDTable1.FieldByName('COMMON_NAME').AsString;
  SaveDialog1.FileName :=  FileName;

  // ダイアログを表示して、画像の保存先を指定する
  if SaveDialog1.Execute = true then
  begin
    // 画像ファイルを保存する。
    DBImage1.Picture.SaveToFile(SaveDialog1.FileName);
  end;

end;

end.
