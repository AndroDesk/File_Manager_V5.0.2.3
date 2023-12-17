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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    return-void
.end method

.method private getAssetsPath()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->isNightMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string v0, "maml/emptyView/darkMode"

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-string v0, "maml/emptyView/normalMode"

    .line 12
    :goto_b
    return-object v0
.end method

.method private isNightMode()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 11
    and-int/lit8 v0, v0, 0x30

    .line 13
    const/16 v1, 0x20

    .line 15
    if-ne v0, v1, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method private loadMamlView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    const-string v0, "EmptyView"

    .line 7
    const-string v1, "loadMamlView not null, destroy, create new MamlView."

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onDestroy()V

    .line 15
    :cond_e
    return-void
.end method

.method private removeFromParent(Landroid/view/View;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    :cond_e
    return-void
.end method


# virtual methods
.method public deActiveState()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    .line 3
    const-string v1, "EmptyView"

    .line 5
    if-nez v0, :cond_c

    .line 7
    const-string v0, "deActiveState already, return."

    .line 9
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 22
    if-eqz v0, :cond_2c

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    .line 27
    const-string v0, "reverseActiveState isActive = "

    .line 29
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v0

    .line 33
    iget-boolean v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2c
    return-void
.end method

.method public onCommandMaml(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 3
    const-string v1, "EmptyView"

    .line 5
    if-eqz v0, :cond_14

    .line 7
    const-string v0, "onDestroy"

    .line 9
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 14
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->removeFromParent(Landroid/view/View;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    const-string v0, "onDestroy mMamlView is null"

    .line 23
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :goto_19
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a032d

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ProgressBar;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 15
    const v0, 0x7f0a0161

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0a0212

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 35
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    const-string v0, "EmptyView"

    .line 7
    const-string v1, "onPause"

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_b
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 10
    if-eqz v0, :cond_12

    .line 12
    const-string v0, "EmptyView"

    .line 14
    const-string v1, "onResume"

    .line 16
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_12
    return-void
.end method

.method public setHinText(I)V
    .registers 4

    .line 1
    const-string v0, "EmptyView"

    .line 3
    const-string v1, "setHinText"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 10
    if-eqz v0, :cond_12

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    .line 21
    if-eqz v0, :cond_1f

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    :cond_1f
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    if-eqz p1, :cond_13

    .line 6
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    .line 8
    if-eqz p1, :cond_13

    .line 10
    const-string p1, "pause"

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onCommandMaml(Ljava/lang/String;)V

    .line 15
    const-string p1, "deactive"

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onCommandMaml(Ljava/lang/String;)V

    .line 20
    :cond_13
    return-void
.end method

.method public showEmpty(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    :cond_7
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    .line 3
    :goto_f
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    if-eqz p1, :cond_24

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f1102d1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setHinText(I)V

    :cond_24
    return-void
.end method

.method public showEmpty(ZI)V
    .registers 6

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    if-nez v0, :cond_7

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    :cond_7
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    .line 9
    :goto_f
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    if-eqz p1, :cond_21

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setHinText(I)V

    :cond_21
    return-void
.end method

.method public showHintText(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    const v0, 0x7f1102d1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setHinText(I)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    .line 13
    if-eqz p1, :cond_10

    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    const/16 p1, 0x8

    .line 19
    :goto_12
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_15
    return-void
.end method

.method public showLoading(ZI)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    .line 8
    :cond_7
    const/16 v0, 0x8

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_e

    .line 13
    move v2, v1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v2, v0

    .line 16
    :goto_f
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    .line 19
    if-eqz p1, :cond_2a

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 23
    if-eqz p1, :cond_1b

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_1b
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mHinView:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 43
    :cond_2a
    return-void
.end method

.method public toggleActive()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->loadMamlView()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIvEmpty:Landroid/view/View;

    .line 10
    if-eqz v0, :cond_38

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 18
    goto :goto_38

    .line 19
    :cond_12
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    .line 25
    const-string v0, "reverseActiveState isActive = "

    .line 27
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v0

    .line 31
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "EmptyView"

    .line 42
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->mIsActive:Z

    .line 47
    if-eqz v0, :cond_33

    .line 49
    const-string v0, "active"

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    const-string v0, "deactive"

    .line 54
    :goto_35
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onCommandMaml(Ljava/lang/String;)V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method
