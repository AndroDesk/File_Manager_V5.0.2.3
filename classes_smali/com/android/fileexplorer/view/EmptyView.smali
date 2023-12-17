.class public Lcom/android/fileexplorer/view/EmptyView;
.super Landroid/widget/FrameLayout;
.source "EmptyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/EmptyView$MamlViewFactory;
    }
.end annotation


# static fields
.field public static final COMMAND_ACTIVE:Ljava/lang/String; = "active"

.field public static final COMMAND_DEACTIVE:Ljava/lang/String; = "deactive"

.field public static final COMMAND_FINISH:Ljava/lang/String; = "finish"

.field public static final COMMAND_INIT:Ljava/lang/String; = "init"

.field public static final COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field public static final COMMAND_PLAY:Ljava/lang/String; = "play"

.field public static final COMMAND_RESUME:Ljava/lang/String; = "resume"

.field private static final TAG:Ljava/lang/String; = "EmptyView"

.field public static final TYPE_FOLDER:I

.field public static final TYPE_INFO:I


# instance fields
.field private mEmptyImageView:Landroid/widget/ImageView;

.field private mHinView:Landroid/widget/TextView;

.field private mIsActive:Z

.field private mMamlView:Lcom/miui/maml/component/MamlView;

.field private mMamlViewType:I

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/EmptyView;->TYPE_FOLDER:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/EmptyView;->TYPE_INFO:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    iput p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlViewType:I

    return-void
.end method

.method private loadImageView(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mEmptyImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mEmptyImageView:Landroid/widget/ImageView;

    const v0, 0x7f08014c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19

    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mEmptyImageView:Landroid/widget/ImageView;

    const v0, 0x7f0802b4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_19
    return-void
.end method

.method private loadMamlView(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_e

    const-string v0, "EmptyView"

    const-string v1, "loadMamlView not null, destroy, create new MamlView."

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/EmptyView;->onDestroy()V

    :cond_e
    iput p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlViewType:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/EmptyView$MamlViewFactory;->getMamlView(Landroid/content/Context;I)Lcom/miui/maml/component/MamlView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702ab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07018f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 p1, 0x1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v0, :cond_62

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-nez v0, :cond_62

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_62

    :cond_56
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_6d

    :cond_62
    :goto_62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_6d
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private loadMamlViewIfNeed(I)V
    .registers 3

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1b

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlViewType:I

    if-eq v0, p1, :cond_1e

    :cond_17
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/EmptyView;->loadMamlView(I)V

    goto :goto_1e

    :cond_1b
    :goto_1b
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/EmptyView;->loadImageView(I)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private removeFromParent(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method private setHintMargin(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    return-void
.end method

.method private setUpHintTextView(II)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    goto :goto_13

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070270

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0, v0}, Lcom/android/fileexplorer/view/EmptyView;->setHintMargin(IIII)V

    :goto_13
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/EmptyView;->setHinText(I)V

    return-void
.end method


# virtual methods
.method public deActiveState()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    const-string v1, "EmptyView"

    if-nez v0, :cond_c

    const-string v0, "deActiveState already, return."

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    const-string v0, "reverseActiveState isActive = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    const-string v1, "deactive"

    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->sendCommand(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method public onCommandMaml(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/miui/maml/component/MamlView;->sendCommand(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    const-string v1, "EmptyView"

    if-eqz v0, :cond_19

    const-string v0, "onDestroy"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/EmptyView;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    goto :goto_1e

    :cond_19
    const-string v0, "onDestroy mMamlView is null"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032ebb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f032cf7

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    const v0, 0x7f032cf6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mEmptyImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_10

    const-string v0, "EmptyView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onPause()V

    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_10

    const-string v0, "EmptyView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onResume()V

    :cond_10
    return-void
.end method

.method public setHinText(I)V
    .registers 4

    const-string v0, "EmptyView"

    const-string v1, "setHinText"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1f
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    if-eqz p1, :cond_13

    const-string p1, "pause"

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/EmptyView;->onCommandMaml(Ljava/lang/String;)V

    const-string p1, "deactive"

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/EmptyView;->onCommandMaml(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public showEmpty(ZI)V
    .registers 4

    if-eqz p2, :cond_d

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    goto :goto_14

    :cond_6
    const p2, 0x7f11001c

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZII)V

    goto :goto_14

    :cond_d
    const p2, 0x7f1102d1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZII)V

    :goto_14
    return-void
.end method

.method public showEmpty(ZII)V
    .registers 7

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    if-eqz p1, :cond_22

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/view/EmptyView;->loadMamlViewIfNeed(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz p1, :cond_17

    invoke-virtual {p1, v0}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/EmptyView;->setHinText(I)V

    invoke-direct {p0, p3, p2}, Lcom/android/fileexplorer/view/EmptyView;->setUpHintTextView(II)V

    :cond_22
    return-void
.end method

.method public showHintText(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    const v0, 0x7f1102d1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/EmptyView;->setHinText(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    goto :goto_12

    :cond_10
    const/16 p1, 0x8

    :goto_12
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method public showLoading(ZI)V
    .registers 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    move v2, v0

    :goto_8
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v0}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mEmptyImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1b
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070271

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0706da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_44
    return-void
.end method

.method public showLoadingWithoutHint(Z)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v1}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    return-void
.end method

.method public toggleActive()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_31

    :cond_b
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    const-string v0, "reverseActiveState isActive = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyView"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    if-eqz v0, :cond_2c

    const-string v0, "active"

    goto :goto_2e

    :cond_2c
    const-string v0, "deactive"

    :goto_2e
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/EmptyView;->onCommandMaml(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-void
.end method
