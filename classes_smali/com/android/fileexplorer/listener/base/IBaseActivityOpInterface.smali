.class public interface abstract Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
.super Ljava/lang/Object;
.source "IBaseActivityOpInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;,
        Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;
    }
.end annotation


# virtual methods
.method public abstract addDisposable(Lk2/b;)V
.end method

.method public abstract calculateProgressDivider(J)D
.end method

.method public abstract cancelOverWrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V
.end method

.method public abstract cancelProcessDialog()V
.end method

.method public abstract dismissProgress()V
.end method

.method public abstract getOverWriteDialog()Lmiuix/appcompat/app/AlertDialog;
.end method

.method public abstract getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;
.end method

.method public abstract getRequestDocumentPermissionDialog()Lmiuix/appcompat/app/AlertDialog;
.end method

.method public abstract getTotalSize()J
.end method

.method public abstract increaseProgressBy(J)V
.end method

.method public initCloudDrive()V
    .registers 1

    return-void
.end method

.method public abstract isActivityFinish()Z
.end method

.method public abstract isProgressCancelled()Z
.end method

.method public abstract isProgressShowing()Z
.end method

.method public abstract resetProgress()V
.end method

.method public abstract setCompressProgress(Ljava/lang/String;I)V
.end method

.method public abstract setOnProgressDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
.end method

.method public abstract setOverWriteDialog(Lmiuix/appcompat/app/AlertDialog;)V
.end method

.method public abstract setProgressMax(J)V
.end method

.method public abstract setProgressSpeed(Ljava/lang/String;)V
.end method

.method public abstract setRequestDocumentPermissionDialog(Lmiuix/appcompat/app/AlertDialog;)V
.end method

.method public abstract setSingleSizeDone(J)V
.end method

.method public abstract showCancelOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
.end method

.method public abstract showLoadingDialog(I)V
.end method

.method public abstract showLoadingDialog(IZ)V
.end method

.method public abstract showOverwriteDialog(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V
.end method

.method public abstract showOverwriteDialog2(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
.end method

.method public abstract showProgressDialog(I)V
.end method

.method public abstract showProgressDialog(II)V
.end method

.method public abstract showProgressDialog(IIZZ)V
.end method

.method public abstract showProgressDialog(IZ)V
.end method

.method public abstract showProgressDialog(IZZ)V
.end method

.method public abstract startSpeedTimer()V
.end method

.method public abstract stopSpeedTimer()V
.end method

.method public abstract unDisposable()V
.end method
