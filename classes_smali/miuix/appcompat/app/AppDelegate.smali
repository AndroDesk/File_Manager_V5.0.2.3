.class Lmiuix/appcompat/app/AppDelegate;
.super Lmiuix/appcompat/app/ActionBarDelegateImpl;
.source "AppDelegate.java"

# interfaces
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/ActionBarDelegateImpl;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "miuix:ActionBar"


# instance fields
.field private mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

.field private final mActivityIdentity:Ljava/lang/String;

.field private mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

.field private mContentParent:Landroid/view/ViewGroup;

.field private mDelegateFinished:Z

.field private mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

.field private mFloatingRoot:Landroid/view/ViewGroup;

.field private mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloatingTheme:Z

.field private mIsFloatingWindow:Z

.field private mIsUserResponsiveEnabled:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

.field private mSplitActionBarEnable:Z

.field private mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUIMode:I

.field private mUserIsFloatingWindow:Ljava/lang/Boolean;

.field public mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/ActivityCallback;Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsUserResponsiveEnabled:Z

    .line 7
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    .line 9
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mUserIsFloatingWindow:Ljava/lang/Boolean;

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 16
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mDelegateFinished:Z

    .line 18
    new-instance p1, Lmiuix/appcompat/app/AppDelegate$3;

    .line 20
    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AppDelegate$3;-><init>(Lmiuix/appcompat/app/AppDelegate;)V

    .line 23
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 28
    move-result-wide v0

    .line 29
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityIdentity:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 37
    iput-object p3, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    .line 39
    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/app/AppDelegate;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->lambda$onConfigurationChanged$0()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/AppDelegate;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/ActivityCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 3
    return-object p0
.end method

.method private attachToWindow(Landroid/view/Window;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    .line 3
    const-string v1, "AppCompat has already installed itself into the Window"

    .line 5
    if-nez v0, :cond_21

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 10
    move-result-object v0

    .line 11
    instance-of v2, v0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    .line 13
    if-nez v2, :cond_1b

    .line 15
    new-instance v1, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    .line 17
    invoke-direct {v1, p0, v0}, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;-><init>(Lmiuix/appcompat/app/AppDelegate;Landroid/view/Window$Callback;)V

    .line 20
    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 25
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    .line 27
    return-void

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1
.end method

.method private ensureWindow()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-nez v0, :cond_12

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 10
    if-eqz v0, :cond_12

    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->attachToWindow(Landroid/view/Window;)V

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    .line 21
    if-eqz v0, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    const-string v1, "We have not been given a Window"

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0
.end method

.method private getDecorViewLayoutRes(Landroid/view/Window;)I
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/appcompat/R$attr;->windowActionBar:I

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1b

    .line 14
    sget v1, Lmiuix/appcompat/R$attr;->windowActionBarMovable:I

    .line 16
    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_18

    .line 22
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar_movable:I

    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar:I

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_simple:I

    .line 30
    :goto_1d
    sget v3, Lmiuix/appcompat/R$attr;->startingWindowOverlay:I

    .line 32
    invoke-static {v0, v3}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    .line 35
    move-result v3

    .line 36
    if-lez v3, :cond_32

    .line 38
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->isSystemProcess()Z

    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_32

    .line 44
    invoke-static {v0}, Lmiuix/appcompat/app/AppDelegate;->isWindowActionBarEnabled(Landroid/content/Context;)Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_32

    .line 50
    move v1, v3

    .line 51
    :cond_32
    invoke-virtual {p1}, Landroid/view/Window;->isFloating()Z

    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_49

    .line 57
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 60
    move-result-object v3

    .line 61
    instance-of v3, v3, Landroid/app/Dialog;

    .line 63
    if-eqz v3, :cond_49

    .line 65
    sget v3, Lmiuix/appcompat/R$attr;->windowTranslucentStatus:I

    .line 67
    invoke-static {v0, v3, v2}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    .line 70
    move-result v0

    .line 71
    invoke-static {p1, v0}, Lmiuix/core/util/variable/WindowWrapper;->setTranslucentStatus(Landroid/view/Window;I)Z

    .line 74
    :cond_49
    return v1
.end method

.method private installSubDecor()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->ensureWindow()V

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 14
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 24
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 26
    sget-object v3, Lmiuix/appcompat/R$styleable;->Window:[I

    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 31
    move-result-object v2

    .line 32
    sget v3, Lmiuix/appcompat/R$styleable;->Window_responsiveEnabled:I

    .line 34
    iget-boolean v4, p0, Lmiuix/appcompat/app/AppDelegate;->mIsUserResponsiveEnabled:Z

    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_30

    .line 42
    new-instance v3, Lmiuix/appcompat/app/AppDelegate$1;

    .line 44
    invoke-direct {v3, p0, p0}, Lmiuix/appcompat/app/AppDelegate$1;-><init>(Lmiuix/appcompat/app/AppDelegate;Lmiuix/responsive/interfaces/IResponsive;)V

    .line 47
    iput-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 49
    :cond_30
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowLayoutMode:I

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 55
    move-result v3

    .line 56
    if-ne v3, v0, :cond_44

    .line 58
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 60
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 63
    move-result-object v3

    .line 64
    const/16 v5, 0x50

    .line 66
    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    .line 69
    :cond_44
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowActionBar:I

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_153

    .line 77
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_57

    .line 83
    const/16 v3, 0x8

    .line 85
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 88
    :cond_57
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowActionBarOverlay:I

    .line 90
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_64

    .line 96
    const/16 v3, 0x9

    .line 98
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 101
    :cond_64
    sget v3, Lmiuix/appcompat/R$styleable;->Window_isMiuixFloatingTheme:I

    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 106
    move-result v3

    .line 107
    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    .line 109
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowFloating:I

    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 114
    move-result v3

    .line 115
    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 117
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowTranslucentStatus:I

    .line 119
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 122
    move-result v3

    .line 123
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setTranslucentStatus(I)V

    .line 126
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 128
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 135
    move-result-object v3

    .line 136
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 138
    iput v3, p0, Lmiuix/appcompat/app/AppDelegate;->mUIMode:I

    .line 140
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AppDelegate;->installToDecor(Landroid/view/Window;)V

    .line 143
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 145
    if-eqz v1, :cond_ae

    .line 147
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 149
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 152
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 154
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 156
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentInsetStateCallback(Lmiuix/appcompat/app/IContentInsetState;)V

    .line 159
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 161
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 163
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingObserver(Lmiuix/appcompat/app/ExtraPaddingObserver;)V

    .line 166
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 168
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    .line 171
    move-result v3

    .line 172
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 175
    :cond_ae
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    .line 177
    if-eqz v1, :cond_14f

    .line 179
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 181
    if-eqz v1, :cond_14f

    .line 183
    sget v3, Lmiuix/appcompat/R$id;->action_bar_container:I

    .line 185
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 191
    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 193
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 195
    iget-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    .line 197
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 200
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 202
    sget v3, Lmiuix/appcompat/R$id;->action_bar:I

    .line 204
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 210
    iput-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 212
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getLifecycleOwner()Landroidx/lifecycle/m;

    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLifecycleOwner(Landroidx/lifecycle/m;)V

    .line 219
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 221
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 223
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 226
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    .line 228
    if-eqz v1, :cond_ea

    .line 230
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 232
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initIndeterminateProgress()V

    .line 235
    :cond_ea
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isEndActionMenuEnabled()Z

    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_f5

    .line 241
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 243
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndActionMenuEnable(Z)V

    .line 246
    :cond_f5
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 248
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    .line 251
    move-result-object v1

    .line 252
    if-eqz v1, :cond_108

    .line 254
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 256
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 259
    move-result v3

    .line 260
    or-int/lit8 v3, v3, 0x10

    .line 262
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 265
    :cond_108
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getUiOptionsFromMetadata()Ljava/lang/String;

    .line 268
    move-result-object v1

    .line 269
    const-string v3, "splitActionBarWhenNarrow"

    .line 271
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_123

    .line 277
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 279
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 282
    move-result-object v3

    .line 283
    sget v5, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    .line 285
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 288
    move-result v3

    .line 289
    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    .line 291
    goto :goto_12b

    .line 292
    :cond_123
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowSplitActionBar:I

    .line 294
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 297
    move-result v3

    .line 298
    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    .line 300
    :goto_12b
    iget-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    .line 302
    if-eqz v3, :cond_134

    .line 304
    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 306
    invoke-virtual {p0, v0, v1, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 309
    :cond_134
    sget v1, Lmiuix/appcompat/R$styleable;->Window_endActionMenuEnabled:I

    .line 311
    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_140

    .line 317
    invoke-virtual {p0, v0, v4}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setEndActionMenuEnabled(ZZ)V

    .line 320
    goto :goto_14f

    .line 321
    :cond_140
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 323
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 330
    move-result-object v0

    .line 331
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 333
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_14f
    :goto_14f
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 339
    return-void

    .line 340
    :cond_153
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 345
    const-string v1, "You need to use a miui theme (or descendant) with this activity."

    .line 347
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 350
    throw v0
.end method

.method private installToDecor(Landroid/view/Window;)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;->get(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move-object v0, v1

    .line 14
    :goto_d
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 16
    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 20
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->getDecorViewLayoutRes(Landroid/view/Window;)I

    .line 23
    move-result v2

    .line 24
    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 30
    if-eqz v2, :cond_52

    .line 32
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    .line 35
    move-result v2

    .line 36
    iput-boolean v2, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 38
    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 40
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowMode(Z)V

    .line 43
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 45
    iget-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 47
    invoke-virtual {v2, v0, v3}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->replaceSubDecor(Landroid/view/View;Z)Landroid/view/ViewGroup;

    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 53
    iget-boolean v2, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 55
    invoke-direct {p0, v2}, Lmiuix/appcompat/app/AppDelegate;->updateSystemUiStateInFloatingTheme(Z)V

    .line 58
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 60
    invoke-virtual {v2}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->shouldInterceptBack()Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_52

    .line 66
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 68
    invoke-virtual {v2}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 71
    move-result-object v2

    .line 72
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 74
    new-instance v4, Lmiuix/appcompat/app/AppDelegate$2;

    .line 76
    const/4 v5, 0x1

    .line 77
    invoke-direct {v4, p0, v5}, Lmiuix/appcompat/app/AppDelegate$2;-><init>(Lmiuix/appcompat/app/AppDelegate;Z)V

    .line 80
    invoke-virtual {v2, v3, v4}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/m;Landroidx/activity/h;)V

    .line 83
    :cond_52
    sget v2, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    .line 85
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v2

    .line 89
    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 91
    const v4, 0x1020002

    .line 94
    if-eqz v3, :cond_9c

    .line 96
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 98
    iput-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 100
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getLifecycleOwner()Landroidx/lifecycle/m;

    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setLifecycleOwner(Landroidx/lifecycle/m;)V

    .line 107
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 109
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Landroid/view/ViewGroup;

    .line 115
    invoke-virtual {p1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Landroid/view/ViewGroup;

    .line 121
    if-eqz v3, :cond_9c

    .line 123
    :goto_7a
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 126
    move-result v5

    .line 127
    if-lez v5, :cond_8c

    .line 129
    const/4 v5, 0x0

    .line 130
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 137
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    goto :goto_7a

    .line 141
    :cond_8c
    const/4 v5, -0x1

    .line 142
    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    .line 145
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 148
    instance-of v2, v3, Landroid/widget/FrameLayout;

    .line 150
    if-eqz v2, :cond_9c

    .line 152
    check-cast v3, Landroid/widget/FrameLayout;

    .line 154
    invoke-virtual {v3, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_9c
    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 160
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 162
    if-eqz p1, :cond_ab

    .line 164
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Landroid/view/ViewGroup;

    .line 170
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    .line 172
    :cond_ab
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 174
    if-eqz p1, :cond_b8

    .line 176
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 178
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    .line 181
    move-result v1

    .line 182
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->init(Landroid/view/View;Z)V

    .line 185
    :cond_b8
    return-void
.end method

.method private isSystemProcess()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 15
    const-string v1, "android"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method private static isWindowActionBarEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget v0, Lmiuix/appcompat/R$attr;->windowActionBar:I

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method private synthetic lambda$onConfigurationChanged$0()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-static {v0, v1, v2, v3}, Lmiuix/core/util/EnvStateManager;->updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V

    .line 12
    return-void
.end method

.method private notifyFloatWindowModeChanged(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    .line 3
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;->onFloatingWindowModeChanged(Z)V

    .line 6
    return-void
.end method

.method private setFloatingWindowMode(ZIZZ)V
    .registers 6

    .line 3
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    if-eqz v0, :cond_55

    if-nez p4, :cond_b

    sget-boolean p4, Lmiuix/os/Build;->IS_TABLET:Z

    if-nez p4, :cond_b

    goto :goto_55

    .line 4
    :cond_b
    iget-boolean p4, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    if-eq p4, p1, :cond_4a

    iget-object p4, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    .line 5
    invoke-interface {p4, p1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;->onFloatingWindowModeChanging(Z)Z

    move-result p4

    if-eqz p4, :cond_4a

    .line 6
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 7
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowMode(Z)V

    .line 8
    iget-boolean p2, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AppDelegate;->updateSystemUiStateInFloatingTheme(Z)V

    .line 9
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {p2}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->getFloatingLayoutParam()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_38

    if-eqz p1, :cond_33

    const/4 p4, -0x2

    .line 10
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_38

    :cond_33
    const/4 p4, -0x1

    .line 12
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    :cond_38
    :goto_38
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p2, :cond_44

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 16
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onFloatingModeChanged(Z)V

    :cond_44
    if-eqz p3, :cond_55

    .line 17
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->notifyFloatWindowModeChanged(Z)V

    goto :goto_55

    .line 18
    :cond_4a
    iget p3, p0, Lmiuix/appcompat/app/AppDelegate;->mUIMode:I

    if-eq p2, p3, :cond_55

    .line 19
    iput p2, p0, Lmiuix/appcompat/app/AppDelegate;->mUIMode:I

    .line 20
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowMode(Z)V

    :cond_55
    :goto_55
    return-void
.end method

.method private shouldShowFloatingActivityTabletMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingModeSupport()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method private updateSystemUiStateInFloatingTheme(Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 14
    move-result v1

    .line 15
    and-int/lit16 v2, v1, 0x400

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v2, :cond_16

    .line 21
    move v2, v3

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v2, v4

    .line 24
    :goto_17
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1f

    .line 30
    move v5, v3

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v5, v4

    .line 33
    :goto_20
    if-nez v2, :cond_26

    .line 35
    if-eqz v5, :cond_25

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v3, v4

    .line 39
    :cond_26
    :goto_26
    const/16 v2, 0x1e

    .line 41
    if-nez p1, :cond_40

    .line 43
    if-eqz v3, :cond_2f

    .line 45
    or-int/lit16 p1, v1, 0x400

    .line 47
    goto :goto_31

    .line 48
    :cond_2f
    and-int/lit16 p1, v1, -0x401

    .line 50
    :goto_31
    move v1, p1

    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    if-lt p1, v2, :cond_4c

    .line 55
    if-eqz v3, :cond_3c

    .line 57
    invoke-static {v0}, Landroidx/core/content/a;->r(Landroid/view/Window;)V

    .line 60
    goto :goto_4c

    .line 61
    :cond_3c
    invoke-static {v0}, Landroidx/core/content/a;->z(Landroid/view/Window;)V

    .line 64
    goto :goto_4c

    .line 65
    :cond_40
    const/high16 p1, 0xc000000

    .line 67
    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    if-lt p1, v2, :cond_4c

    .line 74
    invoke-static {v0}, Landroidx/core/content/a;->r(Landroid/view/Window;)V

    .line 77
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    .line 17
    invoke-virtual {p1}, Lm/h;->getWrapped()Landroid/view/Window$Callback;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 24
    return-void
.end method

.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8
    :cond_7
    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8
    :cond_7
    return-void
.end method

.method public createActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 10
    if-nez v0, :cond_d

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 16
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 20
    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/ViewGroup;)V

    .line 23
    return-object v0
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppDelegate;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 4
    return-void
.end method

.method public executeCloseEnterAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;->executeCloseEnterAnimation()V

    .line 8
    :cond_7
    return-void
.end method

.method public executeCloseExitAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;->executeCloseExitAnimation()V

    .line 8
    :cond_7
    return-void
.end method

.method public executeOpenEnterAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;->executeOpenEnterAnimation()V

    .line 8
    :cond_7
    return-void
.end method

.method public executeOpenExitAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;->executeOpenExitAnimation()V

    .line 8
    :cond_7
    return-void
.end method

.method public exitFloatingActivityAll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->exitFloatingActivityAll()V

    .line 8
    :cond_7
    return-void
.end method

.method public getActionBarOverlay()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    return-object v0
.end method

.method public getActivityIdentity()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityIdentity:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getBottomMenuCustomViewTranslationY()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomMenuCustomViewTranslationY()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getBottomMenuMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomMenuMode()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getBottomMenuMode()I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    .line 3
    return-object v0
.end method

.method public getExtraHorizontalPadding()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getExtraHorizontalPadding()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getExtraHorizontalPaddingLevel()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getExtraHorizontalPaddingLevel()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getFloatingBrightPanel()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->getFloatingBrightPanel()Landroid/view/View;

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

.method public getLifecycleOwner()Landroidx/lifecycle/m;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    return-object v0
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

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

.method public getResponsiveSubject()Landroid/app/Activity;
    .registers 2

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getResponsiveSubject()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    return-object v0
.end method

.method public hideBottomMenu(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->hideBottomMenu(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public hideBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->hideBottomMenuCustomView()V

    .line 8
    :cond_7
    return-void
.end method

.method public hideFloatingBrightPanel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->hideFloatingBrightPanel()V

    .line 8
    :cond_7
    return-void
.end method

.method public hideFloatingDimBackground()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->hideFloatingDimBackground()V

    .line 8
    :cond_7
    return-void
.end method

.method public installFloatingSwitcher(ZLandroid/os/Bundle;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_17

    .line 12
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isFromMultiApp(Landroid/content/Intent;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_17

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 20
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 26
    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 29
    :goto_1c
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_d
    return-void
.end method

.method public isDelegateFinishing()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mDelegateFinished:Z

    .line 3
    return v0
.end method

.method public isExtraHorizontalPaddingEnable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isExtraHorizontalPaddingEnable()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isExtraPaddingApplyToContentEnable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isExtraPaddingApplyToContentEnable()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isFloatingTheme()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    .line 3
    return v0
.end method

.method public isInFloatingWindowMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mUserIsFloatingWindow:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result v0

    .line 14
    :goto_d
    return v0
.end method

.method public isRegisterResponsive()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

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
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, p1, v2}, Lmiuix/core/util/EnvStateManager;->updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lmiuix/appcompat/app/a;

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/a;-><init>(Ljava/lang/Object;I)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 33
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->isInFloatingWindowMode()Z

    .line 36
    move-result v0

    .line 37
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 39
    sget-boolean v2, Lmiuix/os/Build;->IS_FOLDABLE:Z

    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct {p0, v0, v1, v3, v2}, Lmiuix/appcompat/app/AppDelegate;->setFloatingWindowMode(ZIZZ)V

    .line 45
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 47
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isImmersionMenuShowing()Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3a

    .line 56
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu()V

    .line 59
    :cond_3a
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

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
    if-ge v2, v1, :cond_2c

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 27
    instance-of v4, v3, Lmiuix/appcompat/app/IFragment;

    .line 29
    if-eqz v4, :cond_29

    .line 31
    check-cast v3, Lmiuix/appcompat/app/IFragment;

    .line 33
    invoke-interface {v3}, Lmiuix/appcompat/app/IFragment;->hasActionBar()Z

    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_29

    .line 39
    invoke-interface {v3, p1}, Lmiuix/appcompat/app/IContentInsetState;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 42
    :cond_29
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_12

    .line 45
    :cond_2c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->checkThemeLegality()V

    .line 6
    sget-boolean v0, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->sIsActionBarClassInit:Z

    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_17

    .line 11
    sput-boolean v1, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->sIsActionBarClassInit:Z

    .line 13
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getThemedContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->preloadClass(Landroid/content/Context;)V

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 26
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 32
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    .line 34
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/app/AppDelegate;->installFloatingSwitcher(ZLandroid/os/Bundle;)V

    .line 37
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 39
    sget v0, Lmiuix/appcompat/R$attr;->windowExtraPaddingHorizontal:I

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-static {p1, v0, v2}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_30

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v1, v2

    .line 50
    :goto_31
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 52
    sget v0, Lmiuix/appcompat/R$attr;->windowExtraPaddingHorizontalEnable:I

    .line 54
    invoke-static {p1, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 57
    move-result p1

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 60
    sget v1, Lmiuix/appcompat/R$attr;->windowExtraPaddingApplyToContentEnable:I

    .line 62
    invoke-static {v0, v1, p1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setExtraHorizontalPaddingEnable(Z)V

    .line 69
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->setExtraPaddingApplyToContentEnable(Z)V

    .line 72
    return-void
.end method

.method public onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    .line 1
    if-eqz p1, :cond_c

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 5
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 6

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 5
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelView(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isEndActionMenuEnabled()Z

    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p1, :cond_14

    .line 17
    iget-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    .line 19
    if-eqz p1, :cond_47

    .line 21
    :cond_14
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 23
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v1, :cond_3a

    .line 29
    if-nez p1, :cond_2e

    .line 31
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 38
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 41
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 43
    invoke-interface {v1, v3, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 46
    move-result v2

    .line 47
    :cond_2e
    if-eqz v2, :cond_3e

    .line 49
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 52
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 54
    invoke-interface {v1, v3, v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 57
    move-result v2

    .line 58
    goto :goto_3e

    .line 59
    :cond_3a
    if-eqz p1, :cond_3d

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v2, v3

    .line 63
    :cond_3e
    :goto_3e
    if-eqz v2, :cond_44

    .line 65
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 68
    goto :goto_47

    .line 69
    :cond_44
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 72
    :cond_47
    :goto_47
    return-object v0
.end method

.method public onExtraPaddingChanged(I)V
    .registers 2

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ActivityCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return v0

    .line 2
    :cond_e
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x102002c

    if-ne p1, p2, :cond_4b

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/a;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4b

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_38

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->onNavigateUp()Z

    move-result p1

    goto :goto_44

    .line 7
    :cond_38
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    :goto_44
    if-nez p1, :cond_4b

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_4b
    return v0
.end method

.method public onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 3
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ActivityCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 6
    return-void
.end method

.method public onPostResume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 3
    invoke-interface {v0}, Lmiuix/appcompat/app/ActivityCallback;->onPostResume()V

    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 12
    if-eqz v0, :cond_11

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 18
    :cond_11
    return-void
.end method

.method public onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    if-eqz p1, :cond_c

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lmiuix/appcompat/app/ActivityCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    instance-of v1, v0, Lmiuix/responsive/interfaces/IResponsive;

    .line 5
    if-eqz v1, :cond_9

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lmiuix/responsive/interfaces/IResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 10
    :cond_9
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 3
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 8
    if-eqz v0, :cond_16

    .line 10
    const-string v0, "miuix:ActionBar"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_16

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 23
    :cond_16
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 3
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 6
    if-eqz p1, :cond_1f

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 10
    if-eqz v0, :cond_1f

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 14
    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->onSaveInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 25
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->onSaveInstanceState(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 32
    :cond_1f
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 34
    if-eqz v0, :cond_32

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    .line 38
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 41
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 46
    const-string v1, "miuix:ActionBar"

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 51
    :cond_32
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 3
    invoke-interface {v0}, Lmiuix/appcompat/app/ActivityCallback;->onStop()V

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 16
    if-eqz v1, :cond_14

    .line 18
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 21
    :cond_14
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
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public removeBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->removeBottomMenuCustomView()V

    .line 8
    :cond_7
    return-void
.end method

.method public requestDispatchContentInset()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestDispatchContentInset()V

    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public setBottomExtraInset(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomExtraInset(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuCustomView(Landroid/view/View;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuCustomViewTranslationYWithPx(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setBottomMenuMode(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuMode(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setContentView(I)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 3
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_15

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    :cond_15
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p1}, Lm/h;->getWrapped()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    .line 7
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AppDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 8
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_7

    .line 9
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 10
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :cond_13
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p1}, Lm/h;->getWrapped()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setCorrectNestedScrollMotionEventEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setCorrectNestedScrollMotionEventEnabled(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setEnableSwipToDismiss(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setEnableSwipToDismiss(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingEnable(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingLevel(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setExtraPaddingApplyToContentEnable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingApplyToContentEnable(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setFloatingWindowBorderEnable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowBorderEnable(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setFloatingWindowMode(Z)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mUserIsFloatingWindow:Ljava/lang/Boolean;

    .line 2
    iget v0, p0, Lmiuix/appcompat/app/AppDelegate;->mUIMode:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lmiuix/appcompat/app/AppDelegate;->setFloatingWindowMode(ZIZZ)V

    return-void
.end method

.method public setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setOnFloatingWindowCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setOnFloatingWindowCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setResponsiveEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsUserResponsiveEnabled:Z

    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mTitle:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 10
    :cond_9
    return-void
.end method

.method public shouldDelegateActivityFinish()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->delegateFinishFloatingActivityInternal()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lmiuix/appcompat/app/AppDelegate;->mDelegateFinished:Z

    .line 14
    :cond_d
    return v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public showBottomMenu(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->showBottomMenu(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public showBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->showBottomMenuCustomView()V

    .line 8
    :cond_7
    return-void
.end method

.method public showFloatingBrightPanel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->showFloatingBrightPanel()V

    .line 8
    :cond_7
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method public testNotifyResponseChange(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->testNotifyResponseChange(I)V

    .line 8
    :cond_7
    return-void
.end method
