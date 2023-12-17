.class public Lcom/android/fileexplorer/view/ProgressDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I

.field public static final STYLE_HORIZONTAL_2:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ProgressDialog;->STYLE_HORIZONTAL:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ProgressDialog;->STYLE_HORIZONTAL_2:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->initFormats()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/ProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/text/NumberFormat;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mSpeedView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mSpeed:Ljava/lang/String;

    return-object p0
.end method

.method private initFormats()V
    .registers 3

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private onMessageChanged()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_16
    return-void
.end method

.method private onProgressChanged()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_18
    return-void
.end method

.method private onSpeedChanged()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_14
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1d

    new-instance v1, Lcom/android/fileexplorer/view/ProgressDialog$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/ProgressDialog$1;-><init>(Lcom/android/fileexplorer/view/ProgressDialog;)V

    iput-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_36

    :cond_1d
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2f

    new-instance v1, Lcom/android/fileexplorer/view/ProgressDialog$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/ProgressDialog$2;-><init>(Lcom/android/fileexplorer/view/ProgressDialog;)V

    iput-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const v1, 0x7f0d0040

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_36

    :cond_2f
    const v1, 0x7f0d003d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_36
    const v1, 0x7f032ebf

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const v1, 0x7f032ff9

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    const v1, 0x7f032e53

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mSpeedView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMax:I

    if-lez v0, :cond_6d

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/ProgressDialog;->setMax(I)V

    :cond_6d
    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressVal:I

    if-lez v0, :cond_74

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgress(I)V

    :cond_74
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7b

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_7b
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/ProgressDialog;->setIndeterminate(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->onProgressChanged()V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_a

    :cond_8
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mIndeterminate:Z

    :goto_a
    return-void
.end method

.method public setMax(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->onProgressChanged()V

    goto :goto_d

    :cond_b
    iput p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMax:I

    :goto_d
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_11
    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :goto_13
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->onProgressChanged()V

    goto :goto_f

    :cond_d
    iput p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressVal:I

    :goto_f
    return-void
.end method

.method public setProgress(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mHasStarted:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->onMessageChanged()V

    goto :goto_11

    :cond_f
    iput p2, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressVal:I

    :goto_11
    return-void
.end method

.method public setProgressStyle(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mSpeed:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ProgressDialog;->mHasStarted:Z

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ProgressDialog;->onSpeedChanged()V

    :cond_9
    return-void
.end method
