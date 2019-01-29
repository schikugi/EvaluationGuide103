//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::DBImage1DblClick(TObject *Sender)
{
	UnicodeString FileName = FDTable1->FieldByName("COMMON_NAME")->AsString;
	SaveDialog1->FileName = FileName;

	if (SaveDialog1->Execute()) {
		DBImage1->Picture->SaveToFile(SaveDialog1->FileName);

	}
}
//---------------------------------------------------------------------------
