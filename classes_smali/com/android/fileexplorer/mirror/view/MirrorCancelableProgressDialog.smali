.class public Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "MirrorCancelableProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$MyHandler;
    }
.end annotation


# static fields
.field private static final CURRENT_COUNT:Ljava/lang/String; = "currentCount"

.field public static final STYLE_HORIZONTAL:I

.field private static final TAG:Ljava/lang/String; = "MirrorCancelableProgressDialog"

.field private static final TOTAL_COUNT:Ljava/lang/String; = "totalCount"


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

.field private mCancelButton:Landroid/widget/TextView;

.field private mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mFileProgress:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHasStarted:Z

.field private mIndeterminate:Z

.field private mIsCancellable:Z

.field private mIsCancelled:Z

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSpeed:Ljava/lang/String;

.field private mSpeedView:Landroid/widget/TextView;

.field private mTvProgress:Landroid/widget/TextView;

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->STYLE_HORIZONTAL:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancellable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancelled:Z

    iput v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->initFormats()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mTvProgress:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/ProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/text/NumberFormat;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mSpeedView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mSpeed:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mFileProgress:Landroid/widget/TextView;

    return-object p0
.end method

.method private initFormats()V
    .registers 3

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private onFileProgressChanged(II)V
    .registers 7

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2f

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "totalCount"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "currentCount"

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2f
    return-void
.end method

.method private onMessageChanged()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_16
    return-void
.end method

.method private onProgressChanged()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_15
    return-void
.end method

.method private onSpeedChanged()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_14
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

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancelled:Z

    const v0, 0x7f11005f

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void
.end method

.method public dismissCancelDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    :cond_27
    return-void
.end method

.method public isCancelled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancelled:Z

    return v0
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_55

    :cond_a
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancellable:Z

    if-nez v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_52

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

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

    new-instance v2, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$2;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1102cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_55

    :cond_52
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->cancel()V

    :cond_55
    :goto_55
    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancellable:Z

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method public setFileProgress(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onFileProgressChanged(II)V

    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_a

    :cond_8
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIndeterminate:Z

    :goto_a
    return-void
.end method

.method public setMax(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onProgressChanged()V

    goto :goto_d

    :cond_b
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMax:I

    :goto_d
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_11
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :goto_13
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onProgressChanged()V

    goto :goto_f

    :cond_d
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressVal:I

    :goto_f
    return-void
.end method

.method public setProgress(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHasStarted:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onMessageChanged()V

    goto :goto_11

    :cond_f
    iput p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressVal:I

    :goto_11
    return-void
.end method

.method public setProgressStyle(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mSpeed:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHasStarted:Z

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onSpeedChanged()V

    :cond_9
    return-void
.end method

.method public show()V
    .registers 6

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$MyHandler;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$MyHandler;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)V

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const v1, 0x7f0d003f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_27

    :cond_20
    const v1, 0x7f0d0041

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_27
    const v1, 0x7f032ebf

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const v1, 0x7f032ff9

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessageView:Landroid/widget/TextView;

    const v1, 0x7f032e53

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mSpeedView:Landroid/widget/TextView;

    const v1, 0x7f032c1e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mFileProgress:Landroid/widget/TextView;

    const v1, 0x7f0329f0

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mTvProgress:Landroid/widget/TextView;

    const v1, 0x7f0329c2

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelButton:Landroid/widget/TextView;

    if-eqz v1, :cond_ba

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isSupportCancelTransferFile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ba

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-array v1, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelButton:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const/high16 v3, 0x3f800000  # 1.0f

    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v3, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelButton:Landroid/widget/TextView;

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v3, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_ba
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->setContentView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMax:I

    if-lez v0, :cond_c4

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMax(I)V

    :cond_c4
    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressVal:I

    if-lez v0, :cond_cb

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgress(I)V

    :cond_cb
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d2

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_d2
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setIndeterminate(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onProgressChanged()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_e8

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_e8
    return-void
.end method
