.class public Lcom/android/fileexplorer/view/ProgressDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_HORIZONTAL_2:I = 0x2


# instance fields
.field private mHasStarted:Z

.field private mIndeterminate:Z

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSpeed:Ljava/lang/String;

.field private mSpeedView:Landroid/widget/TextView;

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->initFormats()V

    .line 10
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/ProgressBar;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/text/NumberFormat;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mSpeedView:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mSpeed:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 11
    return-void
.end method

.method private onMessageChanged()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_16

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

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
    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_8

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_18

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 11
    if-eqz v0, :cond_18

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_18

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 25
    :cond_18
    return-void
.end method

.method private onSpeedChanged()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_14

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 8
    if-eqz v0, :cond_14

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_14

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    :cond_14
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v1, v3, :cond_1d

    .line 15
    new-instance v1, Lcom/android/fileexplorer/view/ProgressDialog$1;

    .line 17
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/ProgressDialog$1;-><init>(Lcom/android/fileexplorer/view/ProgressDialog;)V

    .line 20
    iput-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 22
    const v1, 0x7f0d003e

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    goto :goto_36

    .line 30
    :cond_1d
    const/4 v3, 0x2

    .line 31
    if-ne v1, v3, :cond_2f

    .line 33
    new-instance v1, Lcom/android/fileexplorer/view/ProgressDialog$2;

    .line 35
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/ProgressDialog$2;-><init>(Lcom/android/fileexplorer/view/ProgressDialog;)V

    .line 38
    iput-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 40
    const v1, 0x7f0d0040

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    const v1, 0x7f0d003d

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    :goto_36
    const v1, 0x7f0a0329

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/ProgressBar;

    .line 64
    iput-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 66
    const v1, 0x7f0a026f

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/widget/TextView;

    .line 75
    iput-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0a03c5

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Landroid/widget/TextView;

    .line 86
    iput-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mSpeedView:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 91
    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMax:I

    .line 93
    if-lez v0, :cond_61

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/ProgressDialog;->setMax(I)V

    .line 98
    :cond_61
    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressVal:I

    .line 100
    if-lez v0, :cond_68

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgress(I)V

    .line 105
    :cond_68
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 107
    if-eqz v0, :cond_6f

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    :cond_6f
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mIndeterminate:Z

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/ProgressDialog;->setIndeterminate(Z)V

    .line 117
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->onProgressChanged()V

    .line 120
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStart()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mHasStarted:Z

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
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mHasStarted:Z

    .line 7
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mIndeterminate:Z

    .line 11
    :goto_a
    return-void
.end method

.method public setMax(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->onProgressChanged()V

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    iput p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMax:I

    .line 14
    :goto_d
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_b

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 20
    :goto_13
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->onProgressChanged()V

    goto :goto_f

    .line 4
    :cond_d
    iput p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressVal:I

    :goto_f
    return-void
.end method

.method public setProgress(Ljava/lang/String;I)V
    .registers 3

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 6
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mHasStarted:Z

    if-eqz p1, :cond_f

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->onMessageChanged()V

    goto :goto_11

    .line 9
    :cond_f
    iput p2, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressVal:I

    :goto_11
    return-void
.end method

.method public setProgressStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    .line 3
    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mSpeed:Ljava/lang/String;

    .line 3
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mHasStarted:Z

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->onSpeedChanged()V

    .line 10
    :cond_9
    return-void
.end method
