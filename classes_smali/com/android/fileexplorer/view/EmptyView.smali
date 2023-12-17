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

.field public static final TYPE_FOLDER:I = 0x0

.field public static final TYPE_INFO:I = 0x1


# instance fields
.field private mEmptyImageView:Landroid/widget/ImageView;

.field private mHinView:Landroid/widget/TextView;

.field private mIsActive:Z

.field private mMamlView:Lcom/miui/maml/component/MamlView;

.field private mMamlViewType:I

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlViewType:I

    return-void
.end method

.method private loadImageView(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mEmptyImageView:Landroid/widget/ImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    if-nez p1, :cond_11

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mEmptyImageView:Landroid/widget/ImageView;

    .line 11
    const v0, 0x7f08014c

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    goto :goto_19

    .line 18
    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mEmptyImageView:Landroid/widget/ImageView;

    .line 20
    const v0, 0x7f0802b4

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :goto_19
    return-void
.end method

.method private loadMamlView(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    const-string v0, "EmptyView"

    .line 7
    const-string v1, "loadMamlView not null, destroy, create new MamlView."

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/EmptyView;->onDestroy()V

    .line 15
    :cond_e
    iput p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlViewType:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/EmptyView$MamlViewFactory;->getMamlView(Landroid/content/Context;I)Lcom/miui/maml/component/MamlView;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p1

    .line 31
    const v0, 0x7f0702ab

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result p1

    .line 38
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object p1

    .line 47
    const v1, 0x7f07018f

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    move-result p1

    .line 54
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 56
    const/4 p1, 0x1

    .line 57
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 59
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 74
    if-nez v0, :cond_62

    .line 76
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 78
    if-nez v0, :cond_62

    .line 80
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_56

    .line 86
    goto :goto_62

    .line 87
    :cond_56
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 90
    move-result-object v0

    .line 91
    const v1, 0x7f070191

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    move-result v0

    .line 98
    goto :goto_6d

    .line 99
    :cond_62
    :goto_62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 102
    move-result-object v0

    .line 103
    const v1, 0x7f070190

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 109
    move-result v0

    .line 110
    :goto_6d
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 112
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 123
    return-void
.end method

.method private loadMamlViewIfNeed(I)V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 3
    if-nez v0, :cond_1b

    .line 5
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 7
    if-nez v0, :cond_1b

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_1b

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 18
    if-eqz v0, :cond_17

    .line 20
    iget v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlViewType:I

    .line 22
    if-eq v0, p1, :cond_1e

    .line 24
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/EmptyView;->loadMamlView(I)V

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    :goto_1b
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/EmptyView;->loadImageView(I)V

    .line 31
    :cond_1e
    :goto_1e
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

.method private setHintMargin(IIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_17

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 13
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 15
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 17
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    :cond_17
    return-void
.end method

.method private setUpHintTextView(II)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_4

    .line 4
    goto :goto_13

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p1

    .line 9
    const v0, 0x7f070270

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0, p1, v0, v0}, Lcom/android/fileexplorer/view/EmptyView;->setHintMargin(IIII)V

    .line 20
    :goto_13
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/EmptyView;->setHinText(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public deActiveState()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

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
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 22
    if-eqz v0, :cond_33

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    .line 27
    const-string v0, "reverseActiveState isActive = "

    .line 29
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v0

    .line 33
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 47
    const-string v1, "deactive"

    .line 49
    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->sendCommand(Ljava/lang/String;)V

    .line 52
    :cond_33
    return-void
.end method

.method public onCommandMaml(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/component/MamlView;->sendCommand(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 3
    const-string v1, "EmptyView"

    .line 5
    if-eqz v0, :cond_19

    .line 7
    const-string v0, "onDestroy"

    .line 9
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 19
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/EmptyView;->removeFromParent(Landroid/view/View;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    const-string v0, "onDestroy mMamlView is null"

    .line 28
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_1e
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
    iput-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 15
    const v0, 0x7f0a0161

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0a0160

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mEmptyImageView:Landroid/widget/ImageView;

    .line 37
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    const-string v0, "EmptyView"

    .line 7
    const-string v1, "onPause"

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onPause()V

    .line 17
    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    const-string v0, "EmptyView"

    .line 7
    const-string v1, "onResume"

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onResume()V

    .line 17
    :cond_10
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
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

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
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    .line 21
    if-eqz v0, :cond_1f

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

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
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    .line 8
    if-eqz p1, :cond_13

    .line 10
    const-string p1, "pause"

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/EmptyView;->onCommandMaml(Ljava/lang/String;)V

    .line 15
    const-string p1, "deactive"

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/EmptyView;->onCommandMaml(Ljava/lang/String;)V

    .line 20
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

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZII)V

    goto :goto_14

    :cond_d
    const p2, 0x7f1102d1

    const/4 v0, 0x0

    .line 2
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

    .line 3
    :goto_8
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    if-eqz p1, :cond_22

    .line 4
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/view/EmptyView;->loadMamlViewIfNeed(I)V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    if-eqz p1, :cond_17

    .line 6
    invoke-virtual {p1, v0}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    .line 7
    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/EmptyView;->setHinText(I)V

    .line 9
    invoke-direct {p0, p3, p2}, Lcom/android/fileexplorer/view/EmptyView;->setUpHintTextView(II)V

    :cond_22
    return-void
.end method

.method public showHintText(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    const v0, 0x7f1102d1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/EmptyView;->setHinText(I)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

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
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_7

    .line 6
    move v2, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move v2, v0

    .line 9
    :goto_8
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    .line 12
    if-eqz p1, :cond_44

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {p1, v0}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    .line 21
    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mEmptyImageView:Landroid/widget/ImageView;

    .line 23
    if-eqz p1, :cond_1b

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    :cond_1b
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p1

    .line 37
    const v0, 0x7f070271

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v0

    .line 54
    const v2, 0x7f0706da

    .line 57
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 69
    :cond_44
    return-void
.end method

.method public showLoadingWithoutHint(Z)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 4
    if-eqz p1, :cond_7

    .line 6
    move v2, v0

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move v2, v1

    .line 9
    :goto_8
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    .line 12
    if-eqz p1, :cond_1e

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {p1, v1}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    .line 21
    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/view/EmptyView;->mHinView:Landroid/widget/TextView;

    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :cond_1e
    return-void
.end method

.method public toggleActive()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mMamlView:Lcom/miui/maml/component/MamlView;

    .line 3
    if-eqz v0, :cond_31

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_31

    .line 12
    :cond_b
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    .line 18
    const-string v0, "reverseActiveState isActive = "

    .line 20
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v0

    .line 24
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "EmptyView"

    .line 35
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/EmptyView;->mIsActive:Z

    .line 40
    if-eqz v0, :cond_2c

    .line 42
    const-string v0, "active"

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    const-string v0, "deactive"

    .line 47
    :goto_2e
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/EmptyView;->onCommandMaml(Ljava/lang/String;)V

    .line 50
    :cond_31
    :goto_31
    return-void
.end method
