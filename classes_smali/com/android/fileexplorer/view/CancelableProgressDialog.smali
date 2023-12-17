.class public Lcom/android/fileexplorer/view/CancelableProgressDialog;
.super Lcom/android/fileexplorer/view/ProgressDialog;
.source "CancelableProgressDialog.java"


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mIsCancellable:Z

.field private mIsCancelled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancellable:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancelled:Z

    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 17
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancelled:Z

    .line 13
    const v0, 0x7f11005f

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 19
    return-void
.end method

.method public dismissCancelDialog()V
    .registers 4

    .line 1
    const-string v0, "dismissCancelDialog"

    .line 3
    const-string v1, "dismissProgress"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :try_start_7
    iget-object v1, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 10
    if-eqz v1, :cond_24

    .line 12
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 15
    goto :goto_24

    .line 16
    :catch_f
    move-exception v1

    .line 17
    const-string v2, "dismissProgress error:"

    .line 19
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method public isCancelled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancelled:Z

    .line 3
    return v0
.end method

.method public onBackPressed()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_55

    .line 11
    :cond_a
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancellable:Z

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 18
    if-eqz v0, :cond_52

    .line 20
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_52

    .line 26
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 30
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/content/Context;

    .line 36
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    const v1, 0x7f11005d

    .line 42
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 45
    move-result-object v0

    .line 46
    const v1, 0x7f1101f4

    .line 49
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 52
    move-result-object v0

    .line 53
    const v1, 0x7f11048e

    .line 56
    new-instance v2, Lcom/android/fileexplorer/view/CancelableProgressDialog$1;

    .line 58
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/view/CancelableProgressDialog$1;-><init>(Lcom/android/fileexplorer/view/CancelableProgressDialog;)V

    .line 61
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 64
    move-result-object v0

    .line 65
    const v1, 0x7f1102cc

    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 79
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 82
    goto :goto_55

    .line 83
    :cond_52
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->cancel()V

    .line 86
    :cond_55
    :goto_55
    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancellable:Z

    .line 3
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 6
    return-void
.end method
