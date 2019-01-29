//---------------------------------------------------------------------------

#include <fmx.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.fmx"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::TakePhotoFromCameraAction1DidFinishTaking(TBitmap *Image)

{
	Image1->Bitmap->Assign(Image);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormShow(TObject *Sender)
{
#ifdef ANDROID
	DynamicArray<String> permissions;
	permissions.Length = 2;
	permissions[0] = _D("android.permission.CAMERA");
	permissions[1] = _D("android.permission.WRITE_EXTERNAL_STORAGE");

	PermissionsService()->RequestPermissions(
		permissions,
		[this](const System::DynamicArray<System::UnicodeString> APermissions, const System::DynamicArray<TPermissionStatus> AGrantResults) {
			if ((AGrantResults.Length != 2) ||
				(AGrantResults[0] != TPermissionStatus::Granted) ||
				(AGrantResults[1] != TPermissionStatus::Granted)) {
				TDialogService::ShowMessage(_D("カメラ・ストレージへアクセスするための承認が必要です"));
			}
		}
	);

#endif
}
//---------------------------------------------------------------------------

