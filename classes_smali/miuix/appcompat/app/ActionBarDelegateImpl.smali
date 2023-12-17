.class public abstract Lmiuix/appcompat/app/ActionBarDelegateImpl;
.super Ljava/lang/Object;
.source "ActionBarDelegateImpl.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBarDelegate;
.implements Lmiuix/appcompat/app/ExtraPaddingObserver;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;


# static fields
.field public static final METADATA_UI_OPTIONS:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field private static final TAG:Ljava/lang/String; = "ActionBarDelegate"

.field public static final UI_OPTION_SPLIT_ACTION_BAR_WHEN_NARROW:Ljava/lang/String; = "splitActionBarWhenNarrow"


# instance fields
.field public mActionBar:Lmiuix/appcompat/app/ActionBar;

.field public mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field public mActionMode:Landroid/view/ActionMode;

.field public final mActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field public mContentInset:Landroid/graphics/Rect;

.field private mEndActionMenuEnabled:Z

.field public mFeatureIndeterminateProgress:Z

.field public mFeatureProgress:Z

.field public mHasActionBar:Z

.field public mHasAddSplitActionBar:Z

.field private mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mImmersionMenuEnabled:Z

.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

.field private mOnBackPressedCallback:Landroidx/activity/h;

.field public mOverlayActionBar:Z

.field public mSubDecorInstalled:Z

.field private mTranslucentStatus:I

.field public mViewWithContentInset:Landroid/view/View;

.field public mViewWithContentInsetInitPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasAddSplitActionBar:Z

    .line 9
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 11
    return-void
.end method

.method private updateOnBackPressedCallbackState(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOnBackPressedCallback:Landroidx/activity/h;

    .line 3
    if-nez v0, :cond_1b

    .line 5
    new-instance v0, Lmiuix/appcompat/app/ActionBarDelegateImpl$1;

    .line 7
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl$1;-><init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Z)V

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOnBackPressedCallback:Landroidx/activity/h;

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 14
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getLifecycleOwner()Landroidx/lifecycle/m;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOnBackPressedCallback:Landroidx/activity/h;

    .line 24
    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/m;Landroidx/activity/h;)V

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    invoke-virtual {v0, p1}, Landroidx/activity/h;->setEnabled(Z)V

    .line 31
    :goto_1e
    return-void
.end method


# virtual methods
.method public addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_1a

    .line 3
    sget v0, Lmiuix/appcompat/R$id;->content_mask_vs:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewStub;

    .line 11
    if-eqz v0, :cond_11

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_17

    .line 18
    :cond_11
    sget v0, Lmiuix/appcompat/R$id;->content_mask:I

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    :goto_17
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentMask(Landroid/view/View;)V

    .line 27
    :cond_1a
    return-void
.end method

.method public addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasAddSplitActionBar:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasAddSplitActionBar:Z

    .line 9
    sget v0, Lmiuix/appcompat/R$id;->split_action_bar_vs:I

    .line 11
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/ViewStub;

    .line 17
    if-eqz v0, :cond_19

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 25
    goto :goto_21

    .line 26
    :cond_19
    sget v0, Lmiuix/appcompat/R$id;->split_action_bar:I

    .line 28
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 34
    :goto_21
    if-eqz v0, :cond_38

    .line 36
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 38
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 41
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 43
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 46
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 48
    invoke-virtual {v1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 51
    invoke-virtual {p3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setSplitActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 54
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 57
    :cond_38
    sget v1, Lmiuix/appcompat/R$id;->action_bar_container:I

    .line 59
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 65
    sget v2, Lmiuix/appcompat/R$id;->action_context_bar_vs:I

    .line 67
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/view/ViewStub;

    .line 73
    if-eqz v2, :cond_51

    .line 75
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 81
    goto :goto_59

    .line 82
    :cond_51
    sget v2, Lmiuix/appcompat/R$id;->action_context_bar:I

    .line 84
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 90
    :goto_59
    if-eqz v2, :cond_6c

    .line 92
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 95
    invoke-virtual {p3, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 98
    if-eqz v0, :cond_6c

    .line 100
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 103
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 106
    invoke-virtual {v2, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 109
    :cond_6c
    return-void
.end method

.method public bindViewWithContentInset(Landroid/view/View;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 3
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 5
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p1}, Lm0/g0$e;->f(Landroid/view/View;)I

    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 19
    invoke-static {v3}, Lm0/g0$e;->e(Landroid/view/View;)I

    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    move-result v4

    .line 29
    invoke-direct {v0, v1, v2, v3, v4}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(IIII)V

    .line 32
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInsetInitPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 34
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 36
    if-eqz v1, :cond_2d

    .line 38
    check-cast p1, Landroid/view/ViewGroup;

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 43
    move-result p1

    .line 44
    iput-boolean p1, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->clipToPadding:Z

    .line 46
    :cond_2d
    return-void
.end method

.method public createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    .line 13
    return-object v0
.end method

.method public dismissImmersionMenu(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->dismiss(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 9
    if-nez v0, :cond_14

    .line 11
    invoke-interface {p0}, Lmiuix/appcompat/app/ActionBarDelegate;->createActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 21
    :cond_14
    :goto_14
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 23
    return-object v0
.end method

.method public final getActionBarThemedContext()Landroid/content/Context;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_c

    .line 9
    invoke-virtual {v1}, Landroidx/appcompat/app/a;->getThemedContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    return-object v0
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    .line 3
    return-object v0
.end method

.method public getActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    return-object v0
.end method

.method public getBottomMenuMode()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public abstract getLifecycleOwner()Landroidx/lifecycle/m;
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    .line 3
    if-nez v0, :cond_1f

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_16

    .line 11
    new-instance v1, Landroid/view/MenuInflater;

    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->getThemedContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    .line 22
    goto :goto_1f

    .line 23
    :cond_16
    new-instance v0, Landroid/view/MenuInflater;

    .line 25
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 27
    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    .line 32
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    .line 34
    return-object v0
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public getTranslucentStatus()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    .line 3
    return v0
.end method

.method public final getUiOptionsFromMetadata()Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 10
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 13
    move-result-object v2

    .line 14
    const/16 v3, 0x80

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 19
    move-result-object v1

    .line 20
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 22
    if-eqz v1, :cond_1d

    .line 24
    const-string v2, "android.support.UI_OPTIONS"

    .line 26
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 30
    :cond_1d
    return-object v0

    .line 31
    :catch_1e
    const-string v1, "getUiOptionsFromMetadata: Activity \'"

    .line 33
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, "\' not in manifest"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    const-string v2, "ActionBarDelegate"

    .line 61
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public hasActionBar()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method

.method public isEndActionMenuEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mEndActionMenuEnabled:Z

    .line 3
    return v0
.end method

.method public isImmersionMenuEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    .line 3
    return v0
.end method

.method public isImmersionMenuShowing()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    .line 5
    if-nez v1, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->isShowing()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->updateOnBackPressedCallbackState(Z)V

    .line 8
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->updateOnBackPressedCallbackState(Z)V

    .line 7
    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 6
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 7
    if-eqz v0, :cond_13

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 15
    if-eqz v0, :cond_13

    .line 17
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20
    :cond_13
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    .line 3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public abstract onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 8
    :cond_7
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    .line 10
    if-eqz v0, :cond_1a

    .line 12
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 14
    if-eqz v0, :cond_1a

    .line 16
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->onDestroy()V

    .line 27
    :cond_1a
    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .registers 2

    return-void
.end method

.method public abstract synthetic onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end method

.method public onMenuModeChange(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->reopenMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 5
    return-void
.end method

.method public onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onPostResume()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    .line 3
    if-eqz v0, :cond_14

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 7
    if-eqz v0, :cond_14

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 15
    if-eqz v0, :cond_14

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 21
    :cond_14
    return-void
.end method

.method public abstract onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
.end method

.method public onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInsetInitPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 10
    invoke-direct {v0, v1}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(Lmiuix/internal/util/ViewUtils$RelativePadding;)V

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 15
    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 18
    move-result v1

    .line 19
    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 21
    if-eqz v1, :cond_19

    .line 23
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 28
    :goto_1b
    add-int/2addr v2, v3

    .line 29
    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 31
    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 33
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 35
    add-int/2addr v2, v3

    .line 36
    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 38
    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 40
    if-eqz v1, :cond_2c

    .line 42
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 47
    :goto_2e
    add-int/2addr v2, p1

    .line 48
    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 50
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 52
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 54
    if-eqz v1, :cond_41

    .line 56
    instance-of v1, p1, Lm0/a0;

    .line 58
    if-eqz v1, :cond_41

    .line 60
    check-cast p1, Landroid/view/ViewGroup;

    .line 62
    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToScrollingView(Landroid/view/ViewGroup;)V

    .line 65
    goto :goto_44

    .line 66
    :cond_41
    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    .line 69
    :goto_44
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 5
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    .line 7
    if-eqz v1, :cond_17

    .line 9
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 11
    if-eqz v1, :cond_17

    .line 13
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 19
    if-eqz v1, :cond_17

    .line 21
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 24
    :cond_17
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 3

    .line 1
    if-nez p2, :cond_7

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 10
    :cond_9
    return-void
.end method

.method public reopenMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_29

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowReserved()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_29

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 13
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowMenuShowing()Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1b

    .line 19
    if-nez p2, :cond_15

    .line 21
    goto :goto_1b

    .line 22
    :cond_15
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 24
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideOverflowMenu()Z

    .line 27
    goto :goto_28

    .line 28
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_28

    .line 36
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 38
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showOverflowMenu()Z

    .line 41
    :cond_28
    :goto_28
    return-void

    .line 42
    :cond_29
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    .line 45
    return-void
.end method

.method public requestWindowFeature(I)Z
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v0, :cond_1f

    .line 5
    const/4 v0, 0x5

    .line 6
    if-eq p1, v0, :cond_1c

    .line 8
    const/16 v0, 0x8

    .line 10
    if-eq p1, v0, :cond_19

    .line 12
    const/16 v0, 0x9

    .line 14
    if-eq p1, v0, :cond_16

    .line 16
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_16
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    .line 25
    return v1

    .line 26
    :cond_19
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    .line 28
    return v1

    .line 29
    :cond_1c
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    .line 31
    return v1

    .line 32
    :cond_1f
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureProgress:Z

    .line 34
    return v1
.end method

.method public setEndActionMenuEnabled(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setEndActionMenuEnabled(ZZ)V

    return-void
.end method

.method public setEndActionMenuEnabled(ZZ)V
    .registers 4

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mEndActionMenuEnabled:Z

    .line 3
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_28

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndActionMenuEnable(Z)V

    if-eqz p2, :cond_15

    .line 5
    invoke-interface {p0}, Lmiuix/appcompat/app/ActionBarDelegate;->invalidateOptionsMenu()V

    goto :goto_28

    .line 6
    :cond_15
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lmiuix/appcompat/app/a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lmiuix/appcompat/app/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_28
    :goto_28
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    .line 3
    return-void
.end method

.method public setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 15
    :cond_e
    return-void
.end method

.method public setTranslucentStatus(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lmiuix/appcompat/R$integer;->window_translucent_status:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_12

    .line 15
    const/4 v1, 0x2

    .line 16
    if-gt v0, v1, :cond_12

    .line 18
    move p1, v0

    .line 19
    :cond_12
    iget v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    .line 21
    if-eq v0, p1, :cond_24

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Lmiuix/core/util/variable/WindowWrapper;->setTranslucentStatus(Landroid/view/Window;I)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_24

    .line 35
    iput p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    .line 37
    :cond_24
    return-void
.end method

.method public showImmersionMenu()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    if-eqz v1, :cond_1a

    .line 2
    check-cast v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->getLastAnchor()Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    check-cast v1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->getLastParent()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void

    .line 5
    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_2c

    .line 6
    sget v1, Lmiuix/appcompat/R$id;->more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void

    .line 8
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t find anchor view in actionbar or any other anchor view used before. Do you use default actionbar and immersion menu is enabled?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    if-nez v0, :cond_c

    const-string p1, "ActionBarDelegate"

    const-string p2, "Try to show immersion menu when immersion menu disabled"

    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-eqz p1, :cond_4c

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1b

    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 13
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    .line 14
    :cond_1b
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    if-nez v0, :cond_39

    .line 16
    new-instance v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;-><init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/Menu;)V

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    goto :goto_3e

    .line 17
    :cond_39
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->update(Landroid/view/Menu;)V

    .line 18
    :goto_3e
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_4b
    return-void

    .line 20
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must specify a valid anchor view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->unregisterCoordinateScrollView(Landroid/view/View;)V

    .line 10
    :cond_9
    return-void
.end method
