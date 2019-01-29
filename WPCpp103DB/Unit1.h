//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.IB.hpp>
#include <FireDAC.Phys.IBDef.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE で管理されるコンポーネント
	TFDConnection *FDConnection1;
	TFDTable *FDTable1;
	TDBGrid *DBGrid1;
	TSplitter *Splitter1;
	TPanel *Panel1;
	TFloatField *FDTable1SPECIES_NO;
	TStringField *FDTable1CATEGORY;
	TStringField *FDTable1COMMON_NAME;
	TStringField *FDTable1SPECIES_NAME;
	TFloatField *FDTable1LENGTH__CM_;
	TFloatField *FDTable1LENGTH_IN;
	TWideMemoField *FDTable1NOTES;
	TBlobField *FDTable1GRAPHIC;
	TLabel *Label1;
	TDBEdit *DBEdit1;
	TDataSource *DataSource1;
	TLabel *Label2;
	TDBEdit *DBEdit2;
	TLabel *Label3;
	TDBEdit *DBEdit3;
	TLabel *Label4;
	TDBEdit *DBEdit4;
	TLabel *Label5;
	TDBEdit *DBEdit5;
	TLabel *Label6;
	TDBEdit *DBEdit6;
	TLabel *Label7;
	TDBMemo *DBMemo1;
	TLabel *Label8;
	TDBImage *DBImage1;
	TDBNavigator *DBNavigator1;
	TSaveDialog *SaveDialog1;
	void __fastcall DBImage1DblClick(TObject *Sender);
private:	// ユーザー宣言
public:		// ユーザー宣言
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
