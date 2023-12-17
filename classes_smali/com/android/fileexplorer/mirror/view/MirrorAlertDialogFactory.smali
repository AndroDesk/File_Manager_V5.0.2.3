.class public Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;
.super Ljava/lang/Object;
.source "MirrorAlertDialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;,
        Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->lambda$createAlertDialog$0(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/widget/CheckBox;)V
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->lambda$createOverrideAlertDialog$2(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->lambda$createOverrideAlertDialog$5(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static createAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .registers 14

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    const v1, 0x7f0d00c1

    .line 34
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->setContentView(I)V

    .line 37
    const v1, 0x7f0a045b

    .line 40
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/TextView;

    .line 46
    const v2, 0x7f0a0457

    .line 49
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/widget/TextView;

    .line 55
    const v3, 0x7f0a0456

    .line 58
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/widget/TextView;

    .line 64
    const v4, 0x7f0a0454

    .line 67
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Landroid/widget/TextView;

    .line 73
    const/16 v5, 0x8

    .line 75
    if-eqz v1, :cond_5c

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_56

    .line 83
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    goto :goto_5c

    .line 87
    :cond_56
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_5c
    :goto_5c
    if-eqz v2, :cond_67

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_67

    .line 101
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_67
    const/4 p1, 0x1

    .line 105
    new-array p2, p1, [Landroid/view/View;

    .line 107
    aput-object v3, p2, v0

    .line 109
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 112
    move-result-object p2

    .line 113
    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 116
    move-result-object p2

    .line 117
    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 119
    const/high16 v2, 0x3f800000  # 1.0f

    .line 121
    invoke-interface {p2, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 124
    move-result-object p2

    .line 125
    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 127
    invoke-interface {p2, v3, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 130
    new-array p2, p1, [Landroid/view/View;

    .line 132
    aput-object v4, p2, v0

    .line 134
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 137
    move-result-object p2

    .line 138
    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 141
    move-result-object p2

    .line 142
    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 144
    invoke-interface {p2, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 147
    move-result-object p2

    .line 148
    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 150
    invoke-interface {p2, v4, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 153
    if-eqz v3, :cond_ab

    .line 155
    new-instance p2, Lcom/android/fileexplorer/mirror/view/a;

    .line 157
    invoke-direct {p2, p5, p0, v0}, Lcom/android/fileexplorer/mirror/view/a;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;I)V

    .line 160
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    move-result p2

    .line 167
    if-nez p2, :cond_ab

    .line 169
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_ab
    if-eqz v4, :cond_c5

    .line 174
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    move-result p2

    .line 178
    if-nez p2, :cond_c2

    .line 180
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    new-instance p2, Lcom/android/fileexplorer/mirror/view/a;

    .line 188
    invoke-direct {p2, p6, p0, p1}, Lcom/android/fileexplorer/mirror/view/a;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;I)V

    .line 191
    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    goto :goto_c5

    .line 195
    :cond_c2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_c5
    :goto_c5
    return-object p0
.end method

.method public static createConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .registers 13

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f1100eb

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v6

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0702d6

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 30
    move-result v0

    .line 31
    const-string v5, ""

    .line 33
    const/4 v8, 0x0

    .line 34
    move-object v2, p0

    .line 35
    move-object v3, p1

    .line 36
    move-object v4, p2

    .line 37
    move-object v7, p3

    .line 38
    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    .line 41
    move-result-object p0

    .line 42
    const p1, 0x7f0a0456

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/TextView;

    .line 51
    if-eqz p1, :cond_3d

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    move-result-object p2

    .line 57
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :cond_3d
    return-object p0
.end method

.method public static createDeleteDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .registers 13

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f110050

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v5

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f110116

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v6

    .line 31
    const/4 v8, 0x0

    .line 32
    move-object v2, p0

    .line 33
    move-object v3, p1

    .line 34
    move-object v4, p2

    .line 35
    move-object v7, p3

    .line 36
    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static createLoadingDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    const v0, 0x7f0d00c6

    .line 34
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->setContentView(I)V

    .line 37
    const v0, 0x7f0a0217

    .line 40
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/ImageView;

    .line 46
    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 48
    const/4 v2, 0x2

    .line 49
    new-array v2, v2, [F

    .line 51
    fill-array-data v2, :array_52

    .line 54
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 57
    move-result-object v0

    .line 58
    const/4 v1, -0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 66
    const-wide/16 v1, 0x5dc

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 73
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 76
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 82
    return-object p0

    .line 83
    :array_52
    .array-data 4
        0x0
        0x43b38000  # 359.0f
    .end array-data
.end method

.method public static createOverrideAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .registers 14

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    const v1, 0x7f0d00c8

    .line 34
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->setContentView(I)V

    .line 37
    const v1, 0x7f0a045b

    .line 40
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/TextView;

    .line 46
    const v2, 0x7f0a0457

    .line 49
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/widget/TextView;

    .line 55
    const v3, 0x7f0a0458

    .line 58
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/widget/TextView;

    .line 64
    const v4, 0x7f0a0459

    .line 67
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Landroid/widget/TextView;

    .line 73
    const v5, 0x7f0a045a

    .line 76
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Landroid/widget/TextView;

    .line 82
    const v6, 0x7f0a00cd

    .line 85
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Landroid/widget/CheckBox;

    .line 91
    if-eqz v1, :cond_6e

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_68

    .line 99
    const/16 p1, 0x8

    .line 101
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    goto :goto_6e

    .line 105
    :cond_68
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_6e
    :goto_6e
    if-eqz v2, :cond_79

    .line 113
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_79

    .line 119
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_79
    if-eqz v6, :cond_85

    .line 124
    new-instance p1, Landroidx/activity/b;

    .line 126
    const/16 p2, 0xf

    .line 128
    invoke-direct {p1, v6, p2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 131
    invoke-virtual {v6, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_85
    const/4 p1, 0x1

    .line 135
    new-array p2, p1, [Landroid/view/View;

    .line 137
    aput-object v3, p2, v0

    .line 139
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 142
    move-result-object p2

    .line 143
    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 146
    move-result-object p2

    .line 147
    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 149
    const/high16 v2, 0x3f800000  # 1.0f

    .line 151
    invoke-interface {p2, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 154
    move-result-object p2

    .line 155
    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 157
    invoke-interface {p2, v3, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 160
    new-array p2, p1, [Landroid/view/View;

    .line 162
    aput-object v4, p2, v0

    .line 164
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 167
    move-result-object p2

    .line 168
    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 171
    move-result-object p2

    .line 172
    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 174
    invoke-interface {p2, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 177
    move-result-object p2

    .line 178
    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 180
    invoke-interface {p2, v4, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 183
    new-array p2, p1, [Landroid/view/View;

    .line 185
    aput-object v5, p2, v0

    .line 187
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 190
    move-result-object p2

    .line 191
    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 194
    move-result-object p2

    .line 195
    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 197
    invoke-interface {p2, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 200
    move-result-object p2

    .line 201
    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 203
    invoke-interface {p2, v5, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 206
    if-eqz v3, :cond_d7

    .line 208
    new-instance p2, Lcom/android/fileexplorer/mirror/view/b;

    .line 210
    invoke-direct {p2, p3, p0, v6, v0}, Lcom/android/fileexplorer/mirror/view/b;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;I)V

    .line 213
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_d7
    if-eqz v4, :cond_e1

    .line 218
    new-instance p2, Lcom/android/fileexplorer/mirror/view/b;

    .line 220
    invoke-direct {p2, p4, p0, v6, p1}, Lcom/android/fileexplorer/mirror/view/b;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;I)V

    .line 223
    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_e1
    if-eqz v5, :cond_ec

    .line 228
    new-instance p1, Lcom/android/fileexplorer/mirror/view/b;

    .line 230
    const/4 p2, 0x2

    .line 231
    invoke-direct {p1, p5, p0, v6, p2}, Lcom/android/fileexplorer/mirror/view/b;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;I)V

    .line 234
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :cond_ec
    return-object p0
.end method

.method public static createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .registers 13

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f110050

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v5

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f1100eb

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v6

    .line 31
    const-string v3, ""

    .line 33
    move-object v2, p0

    .line 34
    move-object v4, p1

    .line 35
    move-object v7, p2

    .line 36
    move-object v8, p3

    .line 37
    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static synthetic d(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->lambda$createAlertDialog$1(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->lambda$createOverrideAlertDialog$4(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->lambda$createOverrideAlertDialog$3(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$createAlertDialog$0(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p0, :cond_5

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;->onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    .line 6
    :cond_5
    return-void
.end method

.method private static synthetic lambda$createAlertDialog$1(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p0, :cond_5

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;->onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    .line 6
    :cond_5
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 9
    return-void
.end method

.method private static synthetic lambda$createOverrideAlertDialog$2(Landroid/widget/CheckBox;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x3f800000  # 1.0f

    .line 8
    mul-float/2addr v0, v1

    .line 9
    const/high16 v2, 0x41c00000  # 24.0f

    .line 11
    div-float/2addr v0, v2

    .line 12
    const/4 v2, 0x0

    .line 13
    cmpl-float v3, v0, v2

    .line 15
    if-lez v3, :cond_3f

    .line 17
    div-float/2addr v1, v0

    .line 18
    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    move-result v0

    .line 25
    shr-int/lit8 v0, v0, 0x1

    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 31
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 34
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 46
    move-result v2

    .line 47
    shr-int/lit8 v2, v2, 0x1

    .line 49
    int-to-float v2, v2

    .line 50
    mul-float/2addr v2, v1

    .line 51
    const/high16 v1, 0x41e00000  # 28.0f

    .line 53
    sub-float/2addr v2, v1

    .line 54
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 57
    move-result v1

    .line 58
    float-to-int v1, v1

    .line 59
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    :cond_3f
    return-void
.end method

.method private static synthetic lambda$createOverrideAlertDialog$3(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_5

    .line 3
    invoke-interface {p0, p1, p3, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;->onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 6
    :cond_5
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 9
    return-void
.end method

.method private static synthetic lambda$createOverrideAlertDialog$4(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_5

    .line 3
    invoke-interface {p0, p1, p3, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;->onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 6
    :cond_5
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 9
    return-void
.end method

.method private static synthetic lambda$createOverrideAlertDialog$5(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_5

    .line 3
    invoke-interface {p0, p1, p3, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;->onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 6
    :cond_5
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 9
    return-void
.end method
