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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f042d57

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->setContentView(I)V

    const v1, 0x7f0329cd

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0329c1

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0329c0

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0329c2

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x8

    if-eqz v1, :cond_70

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_70

    :cond_6a
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_70
    :goto_70
    if-eqz v2, :cond_7b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7b

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7b
    const/4 p1, 0x1

    new-array p2, p1, [Landroid/view/View;

    aput-object v3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-interface {p2, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, v3, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p2, p1, [Landroid/view/View;

    aput-object v4, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p2, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, v4, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    if-eqz v3, :cond_bf

    new-instance p2, Lcom/android/fileexplorer/mirror/view/a;

    invoke-direct {p2, p5, p0, v0}, Lcom/android/fileexplorer/mirror/view/a;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;I)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_bf

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_bf
    if-eqz v4, :cond_d9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d6

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/android/fileexplorer/mirror/view/a;

    invoke-direct {p2, p6, p0, p1}, Lcom/android/fileexplorer/mirror/view/a;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;I)V

    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d9

    :cond_d6
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_d9
    :goto_d9
    return-object p0
.end method

.method public static createConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .registers 13

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f182d7d

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const-string v5, ""

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    const p1, 0x7f0329c0

    invoke-static/range {p1 .. p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_45
    return-object p0
.end method

.method public static createDeleteDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .registers 13

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f182dc6

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f182c80

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static createLoadingDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog;
    .registers 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f042d50

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->setContentView(I)V

    const v0, 0x7f032f81

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_5a

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-object p0

    :array_5a
    .array-data 4
        0x0
        0x43b38000  # 359.0f
    .end array-data
.end method

.method public static createOverrideAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .registers 14

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f042d5e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->setContentView(I)V

    const v1, 0x7f0329cd

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0329c1

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0329ce

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0329cf

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0329cc

    invoke-static {v5}, Lnp/NPFog;->d(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f032d5b

    invoke-static {v6}, Lnp/NPFog;->d(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    if-eqz v1, :cond_8a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_84

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8a

    :cond_84
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8a
    :goto_8a
    if-eqz v2, :cond_95

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_95

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_95
    if-eqz v6, :cond_a1

    new-instance p1, Landroidx/activity/b;

    const/16 p2, 0xf

    invoke-direct {p1, v6, p2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a1
    const/4 p1, 0x1

    new-array p2, p1, [Landroid/view/View;

    aput-object v3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-interface {p2, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, v3, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p2, p1, [Landroid/view/View;

    aput-object v4, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p2, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, v4, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p2, p1, [Landroid/view/View;

    aput-object v5, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p2, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, v5, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    if-eqz v3, :cond_f3

    new-instance p2, Lcom/android/fileexplorer/mirror/view/b;

    invoke-direct {p2, p3, p0, v6, v0}, Lcom/android/fileexplorer/mirror/view/b;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f3
    if-eqz v4, :cond_fd

    new-instance p2, Lcom/android/fileexplorer/mirror/view/b;

    invoke-direct {p2, p4, p0, v6, p1}, Lcom/android/fileexplorer/mirror/view/b;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_fd
    if-eqz v5, :cond_108

    new-instance p1, Lcom/android/fileexplorer/mirror/view/b;

    const/4 p2, 0x2

    invoke-direct {p1, p5, p0, v6, p2}, Lcom/android/fileexplorer/mirror/view/b;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;I)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_108
    return-object p0
.end method

.method public static createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .registers 13

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f182dc6

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f182d7d

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, ""

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

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

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;->onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private static synthetic lambda$createAlertDialog$1(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;->onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    :cond_5
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method

.method private static synthetic lambda$createOverrideAlertDialog$2(Landroid/widget/CheckBox;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x41c00000  # 24.0f

    div-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_3f

    div-float/2addr v1, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x41e00000  # 28.0f

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3f
    return-void
.end method

.method private static synthetic lambda$createOverrideAlertDialog$3(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p3, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;->onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    :cond_5
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method

.method private static synthetic lambda$createOverrideAlertDialog$4(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p3, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;->onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    :cond_5
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method

.method private static synthetic lambda$createOverrideAlertDialog$5(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p3, p2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;->onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    :cond_5
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method
