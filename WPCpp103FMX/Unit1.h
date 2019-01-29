//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Forms.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.Objects.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Types.hpp>
#include <FMX.ActnList.hpp>
#include <FMX.MediaLibrary.Actions.hpp>
#include <FMX.StdActns.hpp>
#include <System.Actions.hpp>
#include <System.Permissions.hpp>
#include <FMX.DialogService.hpp>

//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE で管理されるコンポーネント
	TToolBar *ToolBar1;
	TButton *Button1;
	TImage *Image1;
	TActionList *ActionList1;
	TTakePhotoFromCameraAction *TakePhotoFromCameraAction1;
	void __fastcall TakePhotoFromCameraAction1DidFinishTaking(TBitmap *Image);
	void __fastcall FormShow(TObject *Sender);
private:	// ユーザー宣言
public:		// ユーザー宣言
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
