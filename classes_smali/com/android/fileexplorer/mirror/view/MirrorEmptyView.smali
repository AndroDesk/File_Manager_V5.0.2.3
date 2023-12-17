.class public Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;
.super Landroid/widget/FrameLayout;
.source "MirrorEmptyView.java"


# static fields
.field public static final COMMAND_ACTIVE:Ljava/lang/String; = "active"

.field public static final COMMAND_DEACTIVE:Ljava/lang/String; = "deactive"

.field public static final COMMAND_FINISH:Ljava/lang/String; = "finish"

.field public static final COMMAND_INIT:Ljava/lang/String; = "init"

.field public static final COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field public static final COMMAND_PLAY:Ljava/lang/String; = "play"

.field public static final COMMAND_RESUME:Ljava/lang/String; = "resume"

.field private static final TAG:Ljava/lang/String; = "EmptyView"


# instance fields
.field private mHinView:Landroid/widget/TextView;

.field private mIsActive:Z

.field private mIvEmpty:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    return-void
.end method

.method private getAssetsPath()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "maml/emptyView/darkMode"

    goto :goto_b

    :cond_9
    const-string v0, "maml/emptyView/normalMode"

    :goto_b
    return-object v0
.end method

.method private isNightMode()Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private loadMamlView()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-eqz v0, :cond_e

    const-string v0, "EmptyView"

    const-string v1, "loadMamlView not null, destroy, create new MamlView."

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onDestroy()V

    :cond_e
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


# virtual methods
.method public deActiveState()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    const-string v0, "reverseActiveState isActive = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public onCommandMaml(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    const-string v1, "EmptyView"

    if-eqz v0, :cond_14

    const-string v0, "onDestroy"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    goto :goto_19

    :cond_14
    const-string v0, "onDestroy mMamlView is null"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
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

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f032cf7

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    const v0, 0x7f032f84

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-eqz v0, :cond_b

    const-string v0, "EmptyView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-eqz v0, :cond_12

    const-string v0, "EmptyView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public setHinText(I)V
    .registers 4

    const-string v0, "EmptyView"

    const-string v1, "setHinText"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1f
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    if-eqz p1, :cond_13

    const-string p1, "pause"

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onCommandMaml(Ljava/lang/String;)V

    const-string p1, "deactive"

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onCommandMaml(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public showEmpty(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    :cond_7
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f1102d1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setHinText(I)V

    :cond_24
    return-void
.end method

.method public showEmpty(ZI)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    :cond_7
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setHinText(I)V

    :cond_21
    return-void
.end method

.method public showHintText(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    const v0, 0x7f1102d1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setHinText(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    :cond_7
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    move v2, v0

    :goto_f
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_2a
    return-void
.end method

.method public toggleActive()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_38

    :cond_12
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    const-string v0, "reverseActiveState isActive = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyView"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    if-eqz v0, :cond_33

    const-string v0, "active"

    goto :goto_35

    :cond_33
    const-string v0, "deactive"

    :goto_35
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onCommandMaml(Ljava/lang/String;)V

    :cond_38
    :goto_38
    return-void
.end method
