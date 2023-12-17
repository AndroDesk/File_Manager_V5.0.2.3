.class public Lmiuix/appcompat/app/FragmentDelegate;
.super Lmiuix/appcompat/app/ActionBarDelegateImpl;
.source "FragmentDelegate.java"

# interfaces
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/ActionBarDelegateImpl;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroidx/fragment/app/Fragment;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALIDATE_MENU_POSTED:I = 0x10

.field public static final MENU_INVALIDATE:I = 0x1


# instance fields
.field private mExtraThemeRes:I

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mInflatedView:Landroid/view/View;

.field private mInvalidateMenuFlags:B

.field private mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field public mIsInEditActionMode:Z

.field public mIsInSearchActionMode:Z

.field private mIsUserResponsiveEnabled:Z

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

.field private mSubDecor:Landroid/view/View;

.field private mThemedContext:Landroid/content/Context;

.field private final mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 7
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsUserResponsiveEnabled:Z

    .line 13
    iput-boolean v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInEditActionMode:Z

    .line 15
    iput-boolean v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInSearchActionMode:Z

    .line 17
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate$1;

    .line 19
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/FragmentDelegate$1;-><init>(Lmiuix/appcompat/app/FragmentDelegate;)V

    .line 22
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    .line 24
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 26
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/FragmentDelegate;)B
    .registers 1

    .line 1
    iget-byte p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 3
    return p0
.end method

.method public static synthetic access$172(Lmiuix/appcompat/app/FragmentDelegate;I)B
    .registers 3

    .line 1
    iget-byte v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 3
    and-int/2addr p1, v0

    .line 4
    int-to-byte p1, p1

    .line 5
    iput-byte p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 7
    return p1
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-object p1
.end method

.method private getInvalidateMenuRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;

    .line 7
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;-><init>(Lmiuix/appcompat/app/FragmentDelegate;)V

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 14
    return-object v0
.end method


# virtual methods
.method public checkThemeLegality()V
    .registers 1

    return-void
.end method

.method public createActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_14

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 11
    if-eqz v0, :cond_14

    .line 13
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 17
    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 20
    return-object v0

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 4
    return-void
.end method

.method public getBottomMenuCustomViewTranslationY()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomMenuCustomViewTranslationY()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getBottomMenuMode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomMenuMode()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    invoke-super {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getBottomMenuMode()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    .line 3
    if-nez v0, :cond_28

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    .line 7
    if-nez v1, :cond_28

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    .line 17
    if-eqz v1, :cond_1b

    .line 19
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 21
    invoke-interface {v0}, Lmiuix/appcompat/app/IContentInsetState;->getContentInset()Landroid/graphics/Rect;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    .line 27
    goto :goto_38

    .line 28
    :cond_1b
    if-nez v0, :cond_38

    .line 30
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getContentInset()Landroid/graphics/Rect;

    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    .line 40
    goto :goto_38

    .line 41
    :cond_28
    if-eqz v0, :cond_38

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 45
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 47
    if-eqz v1, :cond_38

    .line 49
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 51
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentInset()Landroid/graphics/Rect;

    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    .line 57
    :cond_38
    :goto_38
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    .line 59
    return-object v0
.end method

.method public getExtraHorizontalPadding()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getExtraHorizontalPadding()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getExtraHorizontalPaddingLevel()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getExtraHorizontalPaddingLevel()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getInflatedView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/m;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 3
    return-object v0
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->getState()Lmiuix/responsive/map/ResponsiveState;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getResponsiveSubject()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getResponsiveSubject()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_17

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 9
    iget v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    .line 11
    if-eqz v0, :cond_17

    .line 13
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 17
    iget v2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    .line 19
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 26
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public hideBottomMenu(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->hideBottomMenu(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public hideBottomMenuCustomView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->hideBottomMenuCustomView()V

    .line 12
    :cond_b
    return-void
.end method

.method public final installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 3
    if-nez v0, :cond_d8

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1f

    .line 16
    move-object v3, v0

    .line 17
    check-cast v3, Lmiuix/appcompat/app/AppCompatActivity;

    .line 19
    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->getExtraHorizontalPaddingLevel()I

    .line 22
    move-result v4

    .line 23
    invoke-virtual {p0, v4}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraHorizontalPaddingLevel(I)V

    .line 26
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    .line 29
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    .line 32
    :cond_1f
    const/4 v3, 0x1

    .line 33
    iput-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 35
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar:I

    .line 37
    invoke-virtual {p3, v4, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 43
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getLifecycleOwner()Landroidx/lifecycle/m;

    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setLifecycleOwner(Landroidx/lifecycle/m;)V

    .line 50
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    .line 52
    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 55
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 57
    instance-of v4, p3, Lmiuix/appcompat/app/IFragment;

    .line 59
    if-eqz v4, :cond_48

    .line 61
    check-cast p3, Lmiuix/appcompat/app/IContentInsetState;

    .line 63
    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentInsetStateCallback(Lmiuix/appcompat/app/IContentInsetState;)V

    .line 66
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 68
    check-cast p3, Lmiuix/appcompat/app/ExtraPaddingObserver;

    .line 70
    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingObserver(Lmiuix/appcompat/app/ExtraPaddingObserver;)V

    .line 73
    :cond_48
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setRootSubDecor(Z)V

    .line 76
    iget-boolean p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    .line 78
    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 81
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    .line 84
    move-result p3

    .line 85
    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 88
    iget p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    .line 90
    if-eqz p3, :cond_6f

    .line 92
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->checkThemeLegality()V

    .line 95
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 97
    check-cast p3, Lmiuix/appcompat/app/IFragment;

    .line 99
    invoke-interface {p3}, Lmiuix/appcompat/app/IFragment;->checkThemeLegality()V

    .line 102
    const p3, 0x1010054

    .line 105
    invoke-static {p1, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_6f
    if-eqz v1, :cond_7a

    .line 114
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 116
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 119
    move-result p3

    .line 120
    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onFloatingModeChanged(Z)V

    .line 123
    :cond_7a
    sget p3, Lmiuix/appcompat/R$id;->action_bar:I

    .line 125
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object p3

    .line 129
    check-cast p3, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 131
    iput-object p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 133
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getLifecycleOwner()Landroidx/lifecycle/m;

    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLifecycleOwner(Landroidx/lifecycle/m;)V

    .line 140
    iget-object p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 142
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    .line 144
    invoke-virtual {p3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 147
    iget-boolean p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    .line 149
    if-eqz p3, :cond_9b

    .line 151
    iget-object p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 153
    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initIndeterminateProgress()V

    .line 156
    :cond_9b
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isEndActionMenuEnabled()Z

    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_a6

    .line 162
    iget-object p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 164
    invoke-virtual {p3, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndActionMenuEnable(Z)V

    .line 167
    :cond_a6
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getUiOptionsFromMetadata()Ljava/lang/String;

    .line 170
    move-result-object p3

    .line 171
    const-string v0, "splitActionBarWhenNarrow"

    .line 173
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    move-result p3

    .line 177
    if-eqz p3, :cond_bd

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 182
    move-result-object p1

    .line 183
    sget v0, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 188
    move-result p1

    .line 189
    goto :goto_cd

    .line 190
    :cond_bd
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 195
    move-result-object p1

    .line 196
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowSplitActionBar:I

    .line 198
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 201
    move-result v0

    .line 202
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    move p1, v0

    .line 206
    :goto_cd
    if-eqz p1, :cond_d2

    .line 208
    invoke-virtual {p0, p1, p3, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 211
    :cond_d2
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 214
    iput-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 216
    goto :goto_fd

    .line 217
    :cond_d8
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 222
    move-result-object p1

    .line 223
    if-eqz p1, :cond_fd

    .line 225
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 230
    move-result-object p1

    .line 231
    instance-of p1, p1, Landroid/view/ViewGroup;

    .line 233
    if-eqz p1, :cond_fd

    .line 235
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Landroid/view/ViewGroup;

    .line 243
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 246
    move-result p2

    .line 247
    if-nez p2, :cond_fd

    .line 249
    iget-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 251
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 254
    :cond_fd
    :goto_fd
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    .line 1
    iget-byte v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 5
    if-nez v1, :cond_12

    .line 7
    or-int/lit8 v0, v0, 0x10

    .line 9
    int-to-byte v0, v0

    .line 10
    iput-byte v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 12
    invoke-direct {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getInvalidateMenuRunnable()Ljava/lang/Runnable;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 19
    :cond_12
    return-void
.end method

.method public isExtraHorizontalPaddingEnable()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isExtraHorizontalPaddingEnable()Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isExtraPaddingApplyToContentEnable()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isExtraPaddingApplyToContentEnable()Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isInEditActionMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInEditActionMode:Z

    .line 3
    return v0
.end method

.method public isIsInSearchActionMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInSearchActionMode:Z

    .line 3
    return v0
.end method

.method public isRegisterResponsive()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 18
    :cond_11
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 23
    if-eqz v0, :cond_33

    .line 25
    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 27
    if-eqz v0, :cond_33

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    move-result-object v0

    .line 35
    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 37
    if-eqz v1, :cond_33

    .line 39
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 41
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 43
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 45
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 48
    move-result v0

    .line 49
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onFloatingModeChanged(Z)V

    .line 52
    :cond_33
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 54
    if-eqz v0, :cond_3a

    .line 56
    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    :cond_3a
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_12
    if-ge v2, v1, :cond_32

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 27
    instance-of v4, v3, Lmiuix/appcompat/app/IFragment;

    .line 29
    if-eqz v4, :cond_2f

    .line 31
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2f

    .line 37
    check-cast v3, Lmiuix/appcompat/app/IFragment;

    .line 39
    invoke-interface {v3}, Lmiuix/appcompat/app/IFragment;->hasActionBar()Z

    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_2f

    .line 45
    invoke-interface {v3, p1}, Lmiuix/appcompat/app/IContentInsetState;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 48
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_12

    .line 51
    :cond_32
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-static {p1, p3}, Lmiuix/appcompat/internal/util/AnimationUtils;->createAnimator(Landroidx/fragment/app/Fragment;I)Landroid/animation/Animator;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 3
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 5
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/IFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    .line 1
    if-nez p1, :cond_b

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 5
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 7
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/IFragment;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lmiuix/appcompat/R$styleable;->Window:[I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object v0

    .line 11
    sget v1, Lmiuix/appcompat/R$styleable;->Window_responsiveEnabled:I

    .line 13
    iget-boolean v2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsUserResponsiveEnabled:Z

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1b

    .line 21
    new-instance v1, Lmiuix/appcompat/app/FragmentDelegate$2;

    .line 23
    invoke-direct {v1, p0, p0}, Lmiuix/appcompat/app/FragmentDelegate$2;-><init>(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/responsive/interfaces/IResponsive;)V

    .line 26
    iput-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 28
    :cond_1b
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowActionBar:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_d4

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2f

    .line 43
    const/16 v1, 0x8

    .line 45
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 48
    :cond_2f
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowActionBarOverlay:I

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3c

    .line 56
    const/16 v1, 0x9

    .line 58
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 61
    :cond_3c
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowTranslucentStatus:I

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 66
    move-result v1

    .line 67
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setTranslucentStatus(I)V

    .line 70
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 77
    move-result-object p1

    .line 78
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    .line 80
    if-eqz v1, :cond_c2

    .line 82
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p0, v1, p2, p1}, Lmiuix/appcompat/app/FragmentDelegate;->installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 89
    iget-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 91
    const v1, 0x1020002

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Landroid/view/ViewGroup;

    .line 100
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 102
    check-cast v1, Lmiuix/appcompat/app/IFragment;

    .line 104
    invoke-interface {v1, p1, p2, p3}, Lmiuix/appcompat/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    .line 110
    if-eqz p1, :cond_92

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 115
    move-result-object p1

    .line 116
    if-eq p1, p2, :cond_92

    .line 118
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_8a

    .line 126
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/view/ViewGroup;

    .line 134
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    .line 136
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    :cond_8a
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 142
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    .line 144
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    :cond_92
    sget p1, Lmiuix/appcompat/R$styleable;->Window_endActionMenuEnabled:I

    .line 149
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_9f

    .line 155
    const/4 p1, 0x1

    .line 156
    invoke-virtual {p0, p1, v2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setEndActionMenuEnabled(ZZ)V

    .line 159
    goto :goto_ce

    .line 160
    :cond_9f
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 162
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_ce

    .line 168
    iget-byte p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 170
    and-int/lit8 p3, p2, 0x10

    .line 172
    if-nez p3, :cond_ce

    .line 174
    or-int/lit8 p2, p2, 0x10

    .line 176
    int-to-byte p2, p2

    .line 177
    iput-byte p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 179
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 186
    move-result-object p1

    .line 187
    invoke-direct {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getInvalidateMenuRunnable()Ljava/lang/Runnable;

    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 194
    goto :goto_ce

    .line 195
    :cond_c2
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 197
    check-cast v1, Lmiuix/appcompat/app/IFragment;

    .line 199
    invoke-interface {v1, p1, p2, p3}, Lmiuix/appcompat/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 202
    move-result-object p1

    .line 203
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    .line 205
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 207
    :cond_ce
    :goto_ce
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 212
    return-object p1

    .line 213
    :cond_d4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 218
    const-string p2, "You need to use a miuix theme (or descendant) with this fragment."

    .line 220
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 223
    throw p1
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onDestroy()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 12
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasAddSplitActionBar:Z

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 16
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 18
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 20
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 2

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    if-nez p1, :cond_9

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_9
    const/4 v0, 0x6

    if-ne p1, v0, :cond_13

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 3
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 5
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/IFragment;->onPanelClosed(ILandroid/view/Menu;)V

    .line 8
    if-nez p1, :cond_e

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 12
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 15
    :cond_e
    return-void
.end method

.method public onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    if-nez p1, :cond_c

    .line 3
    iget-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 5
    check-cast p2, Lmiuix/appcompat/app/IFragment;

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p2, p1, v0, p3}, Lmiuix/appcompat/app/IFragment;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v1, v0, Lmiuix/responsive/interfaces/IResponsive;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/responsive/interfaces/IResponsive;

    .line 9
    invoke-interface {v0, p1, p2, p3}, Lmiuix/responsive/interfaces/IResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 3
    check-cast p1, Lmiuix/appcompat/app/IFragment;

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    .line 7
    invoke-interface {p1, v0, p2}, Lmiuix/appcompat/app/IFragment;->onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_20

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    .line 18
    if-eqz v1, :cond_1a

    .line 20
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 22
    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 25
    move-result-object v0

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    if-eqz v0, :cond_20

    .line 30
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 33
    :cond_20
    return-void
.end method

.method public removeBottomMenuCustomView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->removeBottomMenuCustomView()V

    .line 12
    :cond_b
    return-void
.end method

.method public requestDispatchContentInset()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestDispatchContentInset()V

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_1f

    .line 25
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 27
    invoke-interface {v0}, Lmiuix/appcompat/app/IContentInsetState;->requestDispatchContentInset()Z

    .line 30
    move-result v0

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v0, v2

    .line 33
    :goto_20
    if-nez v0, :cond_2b

    .line 35
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->requestDispatchContentInset()Z

    .line 42
    move-result v0

    .line 43
    return v0

    .line 44
    :cond_2b
    return v2
.end method

.method public setBottomExtraInset(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomExtraInset(I)V

    .line 12
    :cond_b
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuCustomView(Landroid/view/View;)V

    .line 12
    :cond_b
    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuCustomViewTranslationYWithPx(I)V

    .line 12
    :cond_b
    return-void
.end method

.method public setBottomMenuMode(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuMode(I)V

    .line 12
    :cond_b
    return-void
.end method

.method public setCorrectNestedScrollMotionEventEnabled(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setCorrectNestedScrollMotionEventEnabled(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingEnable(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setExtraPaddingApplyToContentEnable(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingApplyToContentEnable(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public setExtraThemeRes(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    .line 3
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 7
    if-eqz v1, :cond_d

    .line 9
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V

    .line 14
    :cond_d
    return-void
.end method

.method public setResponsiveEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsUserResponsiveEnabled:Z

    .line 3
    return-void
.end method

.method public showBottomMenu(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->showBottomMenu(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public showBottomMenuCustomView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->showBottomMenuCustomView()V

    .line 12
    :cond_b
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->unregisterCoordinateScrollView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_20

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    .line 18
    if-eqz v1, :cond_1a

    .line 20
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 22
    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 25
    move-result-object v0

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    if-eqz v0, :cond_20

    .line 30
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->unregisterCoordinateScrollView(Landroid/view/View;)V

    .line 33
    :cond_20
    return-void
.end method

.method public updateOptionsMenu(I)V
    .registers 3

    .line 1
    iget-byte v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 3
    and-int/lit8 p1, p1, 0x1

    .line 5
    or-int/2addr p1, v0

    .line 6
    int-to-byte p1, p1

    .line 7
    iput-byte p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 9
    return-void
.end method
