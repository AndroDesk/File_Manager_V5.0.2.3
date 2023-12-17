.class public Lmiuix/appcompat/app/ProgressDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressPercentView:Landroid/widget/TextView;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    .line 6
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/ProgressDialog;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/ProgressDialog;)Ljava/text/NumberFormat;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/app/ProgressDialog;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressVal:I

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/app/ProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    return-object p0
.end method

.method private initFormats()V
    .registers 3

    .line 1
    const-string v0, "%1d/%2d"

    .line 3
    iput-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 15
    return-void
.end method

.method private onProgressChanged()V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_15

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

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
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    :cond_15
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/ProgressDialog;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiuix/appcompat/app/ProgressDialog;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2
    invoke-static/range {v0 .. v5}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiuix/appcompat/app/ProgressDialog;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-static/range {v0 .. v5}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/ProgressDialog;
    .registers 7

    .line 4
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0, p3}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    .line 8
    invoke-virtual {v0, p4}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 9
    invoke-virtual {v0, p5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMax:I

    .line 12
    return v0
.end method

.method public getProgress()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressVal:I

    .line 12
    return v0
.end method

.method public getSecondaryProgress()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mSecondaryProgressVal:I

    .line 12
    return v0
.end method

.method public incrementProgressBy(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 8
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementBy:I

    .line 14
    add-int/2addr v0, p1

    .line 15
    iput v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementBy:I

    .line 17
    :goto_10
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 8
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementSecondaryBy:I

    .line 14
    add-int/2addr v0, p1

    .line 15
    iput v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementSecondaryBy:I

    .line 17
    :goto_10
    return-void
.end method

.method public isIndeterminate()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminate:Z

    .line 12
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    .line 15
    const/4 v3, 0x0

    .line 16
    const v4, 0x101005d

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x1

    .line 33
    new-array v6, v4, [I

    .line 35
    sget v7, Lmiuix/appcompat/R$attr;->dialogProgressPercentColor:I

    .line 37
    aput v7, v6, v5

    .line 39
    invoke-virtual {v2, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v6

    .line 51
    sget v7, Lmiuix/appcompat/R$color;->miuix_appcompat_dialog_default_progress_percent_color:I

    .line 53
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 56
    move-result v6

    .line 57
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 60
    move-result v5

    .line 61
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    iget v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    .line 66
    if-ne v2, v4, :cond_61

    .line 68
    new-instance v2, Lmiuix/appcompat/app/ProgressDialog$1;

    .line 70
    invoke-direct {v2, p0, v5}, Lmiuix/appcompat/app/ProgressDialog$1;-><init>(Lmiuix/appcompat/app/ProgressDialog;I)V

    .line 73
    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 75
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_horizontalProgressLayout:I

    .line 77
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_progress:I

    .line 79
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 82
    move-result v2

    .line 83
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    move-result-object v0

    .line 87
    sget v2, Lmiuix/appcompat/R$id;->progress_percent:I

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroid/widget/TextView;

    .line 95
    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    .line 97
    goto :goto_6d

    .line 98
    :cond_61
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_progressLayout:I

    .line 100
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_progress_dialog:I

    .line 102
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 105
    move-result v2

    .line 106
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    move-result-object v0

    .line 110
    :goto_6d
    const v2, 0x102000d

    .line 113
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 119
    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 121
    sget v2, Lmiuix/appcompat/R$id;->message:I

    .line 123
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Landroid/widget/TextView;

    .line 129
    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 131
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    const/16 v4, 0x1c

    .line 135
    if-lt v3, v4, :cond_99

    .line 137
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    move-result-object v3

    .line 145
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_message_line_height:I

    .line 147
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 150
    move-result v3

    .line 151
    invoke-static {v2, v3}, Lmiuix/appcompat/app/f;->e(Landroid/widget/TextView;I)V

    .line 154
    :cond_99
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMax:I

    .line 162
    if-lez v0, :cond_a6

    .line 164
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    .line 167
    :cond_a6
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressVal:I

    .line 169
    if-lez v0, :cond_ad

    .line 171
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 174
    :cond_ad
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mSecondaryProgressVal:I

    .line 176
    if-lez v0, :cond_b4

    .line 178
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 181
    :cond_b4
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementBy:I

    .line 183
    if-lez v0, :cond_bb

    .line 185
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->incrementProgressBy(I)V

    .line 188
    :cond_bb
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementSecondaryBy:I

    .line 190
    if-lez v0, :cond_c2

    .line 192
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 195
    :cond_c2
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    if-eqz v0, :cond_c9

    .line 199
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_c9
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    if-eqz v0, :cond_d0

    .line 206
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :cond_d0
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 211
    if-eqz v0, :cond_d7

    .line 213
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 216
    :cond_d7
    iget-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminate:Z

    .line 218
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    .line 221
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    .line 224
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStart()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mHasStarted:Z

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
    iput-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mHasStarted:Z

    .line 7
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    iput-boolean p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminate:Z

    .line 11
    :goto_a
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/androidbasewidget/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    :goto_a
    return-void
.end method

.method public setMax(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 8
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mMax:I

    .line 14
    :goto_d
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_b

    .line 10
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 20
    :goto_13
    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressVal:I

    .line 3
    iget-boolean p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mHasStarted:Z

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    .line 10
    :cond_9
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    :goto_a
    return-void
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    .line 6
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    .line 6
    return-void
.end method

.method public setProgressStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    .line 3
    return-void
.end method

.method public setSecondaryProgress(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 8
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mSecondaryProgressVal:I

    .line 14
    :goto_d
    return-void
.end method
