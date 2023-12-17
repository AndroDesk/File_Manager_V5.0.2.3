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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancellable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancelled:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancelled:Z

    const v0, 0x7f11005f

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void
.end method

.method public dismissCancelDialog()V
    .registers 4

    const-string v0, "dismissCancelDialog"

    const-string v1, "dismissProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v1, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_24

    :catch_f
    move-exception v1

    const-string v2, "dismissProgress error:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    return-void
.end method

.method public isCancelled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancelled:Z

    return v0
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_55

    :cond_a
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancellable:Z

    if-nez v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_52

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11005d

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1101f4

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11048e

    new-instance v2, Lcom/android/fileexplorer/view/CancelableProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/view/CancelableProgressDialog$1;-><init>(Lcom/android/fileexplorer/view/CancelableProgressDialog;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1102cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_55

    :cond_52
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->cancel()V

    :cond_55
    :goto_55
    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog;->mIsCancellable:Z

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method
