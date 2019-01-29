unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Permissions, FMX.DialogService,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, System.Actions, FMX.ActnList, FMX.Objects,
  FMX.StdActns, FMX.MediaLibrary.Actions, FMX.Platform;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Button1: TButton;
    Image1: TImage;
    ActionList1: TActionList;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure FormShow(Sender: TObject);
  private
    { private 宣言 }
  public
    { public 宣言 }
  end;

var
  Form1: TForm1;

implementation


{$R *.fmx}



procedure TForm1.FormShow(Sender: TObject);
begin
{$IFDEF ANDROID}

  PermissionsService.RequestPermissions(['android.permission.CAMERA', 'android.permission.READ_EXTERNAL_STORAGE', 'android.permission.WRITE_EXTERNAL_STORAGE'],
      procedure(const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>)
      begin
        if (Length(AGrantResults) <> 3)
          or (AGrantResults[0] <> TPermissionStatus.Granted)
          or (AGrantResults[1] <> TPermissionStatus.Granted)
          or (AGrantResults[2] <> TPermissionStatus.Granted)
        then
          TDialogService.ShowMessage('アプリケーションにカメラへのアクセス、ストレージの読み書きの権限が必要です。')
      end
  );
{$ENDIF}
end;

// 必要な権限がない場合、ユーザーにどのような権限がないのかを通知する
procedure TForm1.TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
begin
  Image1.Bitmap.Assign(Image);
end;



end.
