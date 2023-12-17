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

.field public static final STYLE_HORIZONTAL:I = 0x1

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
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancellable:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancelled:Z

    .line 10
    iput v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 14
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHandler:Landroid/os/Handler;

    .line 19
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->initFormats()V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 24
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mTvProgress:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/ProgressBar;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/text/NumberFormat;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mSpeedView:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mSpeed:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mFileProgress:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method private initFormats()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 11
    return-void
.end method

.method private onFileProgressChanged(II)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_2f

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 8
    if-eqz v0, :cond_2f

    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2f

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 19
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Landroid/os/Bundle;

    .line 25
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 28
    const-string v3, "totalCount"

    .line 30
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    const-string p1, "currentCount"

    .line 35
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 41
    iput v1, v0, Landroid/os/Message;->what:I

    .line 43
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    :cond_2f
    return-void
.end method

.method private onMessageChanged()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_16

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 8
    if-eqz v0, :cond_16

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_16

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    :cond_16
    return-void
.end method

.method private onProgressChanged()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_15

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 8
    if-eqz v0, :cond_15

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_15

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    :cond_15
    return-void
.end method

.method private onSpeedChanged()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_14

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 8
    if-eqz v0, :cond_14

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_14

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    :cond_14
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
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancelled:Z

    .line 13
    const v0, 0x7f11005f

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 19
    return-void
.end method

.method public dismissCancelDialog()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_27

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_27

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/Activity;

    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_27

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 27
    if-eqz v0, :cond_27

    .line 29
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_27

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 37
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 40
    :cond_27
    return-void
.end method

.method public isCancelled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancelled:Z

    .line 3
    return v0
.end method

.method public onBackPressed()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

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
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancellable:Z

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

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
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mActivityRef:Ljava/lang/ref/WeakReference;

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
    new-instance v2, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$2;

    .line 58
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$2;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)V

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
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 79
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 82
    goto :goto_55

    .line 83
    :cond_52
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->cancel()V

    .line 86
    :cond_55
    :goto_55
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStart()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHasStarted:Z

    .line 7
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStop()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHasStarted:Z

    .line 7
    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIsCancellable:Z

    .line 3
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 6
    return-void
.end method

.method public setFileProgress(II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onFileProgressChanged(II)V

    .line 4
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIndeterminate:Z

    .line 11
    :goto_a
    return-void
.end method

.method public setMax(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onProgressChanged()V

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMax:I

    .line 14
    :goto_d
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_b

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 20
    :goto_13
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onProgressChanged()V

    goto :goto_f

    .line 4
    :cond_d
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressVal:I

    :goto_f
    return-void
.end method

.method public setProgress(Ljava/lang/String;I)V
    .registers 3

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 6
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHasStarted:Z

    if-eqz p1, :cond_f

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onMessageChanged()V

    goto :goto_11

    .line 9
    :cond_f
    iput p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressVal:I

    :goto_11
    return-void
.end method

.method public setProgressStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    .line 3
    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mSpeed:Ljava/lang/String;

    .line 3
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mHasStarted:Z

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onSpeedChanged()V

    .line 10
    :cond_9
    return-void
.end method

.method public show()V
    .registers 6

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressStyle:I

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v3, :cond_20

    .line 18
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$MyHandler;

    .line 20
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$MyHandler;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)V

    .line 23
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 25
    const v1, 0x7f0d003f

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    const v1, 0x7f0d0041

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    :goto_27
    const v1, 0x7f0a0329

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/widget/ProgressBar;

    .line 49
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 51
    const v1, 0x7f0a026f

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/widget/TextView;

    .line 60
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0a03c5

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/TextView;

    .line 71
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mSpeedView:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f0a0188

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/widget/TextView;

    .line 82
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mFileProgress:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0a0466

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/widget/TextView;

    .line 93
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mTvProgress:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0a0454

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/widget/TextView;

    .line 104
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelButton:Landroid/widget/TextView;

    .line 106
    if-eqz v1, :cond_a2

    .line 108
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isSupportCancelTransferFile(Landroid/content/Context;)Z

    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_a2

    .line 118
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelButton:Landroid/widget/TextView;

    .line 120
    const/4 v2, 0x0

    .line 121
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    new-array v1, v3, [Landroid/view/View;

    .line 126
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelButton:Landroid/widget/TextView;

    .line 128
    aput-object v3, v1, v2

    .line 130
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 133
    move-result-object v1

    .line 134
    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 137
    move-result-object v1

    .line 138
    const/high16 v3, 0x3f800000  # 1.0f

    .line 140
    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 142
    invoke-interface {v1, v3, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 145
    move-result-object v1

    .line 146
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelButton:Landroid/widget/TextView;

    .line 148
    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    .line 150
    invoke-interface {v1, v3, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 153
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mCancelButton:Landroid/widget/TextView;

    .line 155
    new-instance v2, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$1;

    .line 157
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)V

    .line 160
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    :cond_a2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->setContentView(Landroid/view/View;)V

    .line 166
    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMax:I

    .line 168
    if-lez v0, :cond_ac

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMax(I)V

    .line 173
    :cond_ac
    iget v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mProgressVal:I

    .line 175
    if-lez v0, :cond_b3

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgress(I)V

    .line 180
    :cond_b3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 182
    if-eqz v0, :cond_ba

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    :cond_ba
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->mIndeterminate:Z

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setIndeterminate(Z)V

    .line 192
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onProgressChanged()V

    .line 195
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_d0

    .line 201
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 204
    move-result-object v0

    .line 205
    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 209
    :cond_d0
    return-void
.end method
