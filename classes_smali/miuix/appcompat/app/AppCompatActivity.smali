.class public Lmiuix/appcompat/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/IActivity;
.implements Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;
.implements Lmiuix/appcompat/app/floatingactivity/IActivityIdentity;
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingSuperCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;,
        Lmiuix/appcompat/app/AppCompatActivity$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/FragmentActivity;",
        "Lmiuix/appcompat/app/IActivity;",
        "Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;",
        "Lmiuix/appcompat/app/floatingactivity/IActivityIdentity;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

.field private mWindowInfo:Lmiuix/core/util/WindowBaseInfo;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 4
    new-instance v0, Lmiuix/appcompat/app/AppDelegate;

    .line 6
    new-instance v1, Lmiuix/appcompat/app/AppCompatActivity$Callback;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/AppCompatActivity$Callback;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/AppCompatActivity$1;)V

    .line 12
    new-instance v3, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;

    .line 14
    invoke-direct {v3, p0, v2}, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/AppCompatActivity$1;)V

    .line 17
    invoke-direct {v0, p0, v1, v3}, Lmiuix/appcompat/app/AppDelegate;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/ActivityCallback;Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;)V

    .line 20
    iput-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 22
    return-void
.end method

.method public static synthetic access$1001(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1101(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1201(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public static synthetic access$201(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public static synthetic access$301(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 4
    return-void
.end method

.method public static synthetic access$401(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 4
    return-void
.end method

.method public static synthetic access$501(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/MenuItem;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$601(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/Menu;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4
    return-void
.end method

.method public static synthetic access$701(Lmiuix/appcompat/app/AppCompatActivity;I)Landroid/view/View;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$801(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/Menu;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$901(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    return-void
.end method

.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6
    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6
    return-void
.end method

.method public bindViewWithContentInset(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->bindViewWithContentInset(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public checkThemeLegality()V
    .registers 1

    return-void
.end method

.method public dismissImmersionMenu(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 6
    return-void
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/AppDelegate;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 6
    return-void
.end method

.method public executeCloseEnterAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->executeCloseEnterAnimation()V

    .line 6
    return-void
.end method

.method public executeCloseExitAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->executeCloseExitAnimation()V

    .line 6
    return-void
.end method

.method public executeOpenEnterAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->executeOpenEnterAnimation()V

    .line 6
    return-void
.end method

.method public executeOpenExitAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->executeOpenExitAnimation()V

    .line 6
    return-void
.end method

.method public exitFloatingActivityAll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->exitFloatingActivityAll()V

    .line 6
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->shouldDelegateActivityFinish()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 12
    :cond_b
    return-void
.end method

.method public getActivityIdentity()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->getActivityIdentity()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBottomMenuCustomViewTranslationY()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->getBottomMenuCustomViewTranslationY()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBottomMenuMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->getBottomMenuMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->getContentInset()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getExtraHorizontalPadding()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->getExtraHorizontalPadding()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getExtraHorizontalPaddingLevel()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->getExtraHorizontalPaddingLevel()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFloatingBrightPanel()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->getFloatingBrightPanel()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getMenuInflater()Landroid/view/MenuInflater;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getResponsiveSubject()Landroid/app/Activity;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getResponsiveSubject()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getTranslucentStatus()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWindowInfo()Lmiuix/core/util/WindowBaseInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 3
    return-object v0
.end method

.method public getWindowType()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    .line 7
    return v0

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    return v0
.end method

.method public hideBottomMenu()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->hideBottomMenu(Z)V

    return-void
.end method

.method public hideBottomMenu(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->hideBottomMenu(Z)V

    return-void
.end method

.method public hideBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->hideBottomMenuCustomView()V

    .line 6
    return-void
.end method

.method public hideFloatingBrightPanel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->hideFloatingBrightPanel()V

    .line 6
    return-void
.end method

.method public hideFloatingDimBackground()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->hideFloatingDimBackground()V

    .line 6
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->invalidateOptionsMenu()V

    .line 6
    return-void
.end method

.method public isExtraHorizontalPaddingEnable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->isExtraHorizontalPaddingEnable()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isExtraPaddingApplyToContentEnable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->isExtraPaddingApplyToContentEnable()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isFinishing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->isDelegateFinishing()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_11

    .line 9
    invoke-super {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 19
    :goto_12
    return v0
.end method

.method public isFloatingWindowTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->isFloatingTheme()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isInFloatingWindowMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->isInFloatingWindowMode()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isRegisterResponsive()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->isRegisterResponsive()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isResponsiveEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 6
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 6
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 14
    invoke-virtual {v0}, Lmiuix/core/util/WindowBaseInfo;->isDirty()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_18

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 22
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Lmiuix/core/util/WindowBaseInfo;)V

    .line 25
    :cond_18
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 27
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 30
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 33
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    .line 9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isResponsiveEnabled()Z

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AppDelegate;->setResponsiveEnabled(Z)V

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 15
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 p1, 0x0

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p0, p1, v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lmiuix/appcompat/app/AppCompatActivity;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 26
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->onCreatePanelView(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onDestroy()V

    .line 6
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->removeInfoOfContext(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 12
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 15
    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .registers 2

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->onExtraPaddingChanged(I)V

    .line 6
    return-void
.end method

.method public onFloatingWindowModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onFloatingWindowModeChanging(Z)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyDown(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyLongPress(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyMultiple(Landroidx/fragment/app/FragmentManager;IILandroid/view/KeyEvent;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyUp(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->onPanelClosed(ILandroid/view/Menu;)V

    .line 6
    return-void
.end method

.method public onPostResume()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->onPostResume()V

    .line 6
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/AppDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    .line 6
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 6
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->onStop()V

    .line 6
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 6
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AppDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public realFinish()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 4
    return-void
.end method

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public removeBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->removeBottomMenuCustomView()V

    .line 6
    return-void
.end method

.method public requestDispatchContentInset()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->requestDispatchContentInset()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public requestExtraWindowFeature(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setBottomExtraInset(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setBottomExtraInset(I)V

    .line 6
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setBottomMenuCustomView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setBottomMenuCustomViewTranslationYWithPx(I)V

    .line 6
    return-void
.end method

.method public setBottomMenuMode(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setBottomMenuMode(I)V

    .line 6
    return-void
.end method

.method public setContentView(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setCorrectNestedScrollMotionEventEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setCorrectNestedScrollMotionEventEnabled(Z)V

    .line 6
    return-void
.end method

.method public setEnableSwipToDismiss(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setEnableSwipToDismiss(Z)V

    .line 6
    return-void
.end method

.method public setEndActionMenuEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setEndActionMenuEnabled(Z)V

    .line 6
    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setExtraHorizontalPaddingEnable(Z)V

    .line 6
    return-void
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setExtraHorizontalPaddingLevel(I)V

    .line 6
    return-void
.end method

.method public setExtraPaddingApplyToContentEnable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setExtraPaddingApplyToContentEnable(Z)V

    .line 6
    return-void
.end method

.method public setFloatingWindowBorderEnable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setFloatingWindowBorderEnable(Z)V

    .line 6
    return-void
.end method

.method public setFloatingWindowMode(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setFloatingWindowMode(Z)V

    .line 6
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setImmersionMenuEnabled(Z)V

    .line 6
    return-void
.end method

.method public setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V

    .line 6
    return-void
.end method

.method public setOnFloatingWindowCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setOnFloatingWindowCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;)V

    .line 6
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V

    .line 6
    return-void
.end method

.method public setTranslucentStatus(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setTranslucentStatus(I)V

    .line 6
    return-void
.end method

.method public showBottomMenu()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->showBottomMenu(Z)V

    return-void
.end method

.method public showBottomMenu(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->showBottomMenu(Z)V

    return-void
.end method

.method public showBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->showBottomMenuCustomView()V

    .line 6
    return-void
.end method

.method public showFloatingBrightPanel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->showFloatingBrightPanel()V

    .line 6
    return-void
.end method

.method public showImmersionMenu()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu()V

    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public testNotifyResponseChange(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->testNotifyResponseChange(I)V

    .line 6
    return-void
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->unregisterCoordinateScrollView(Landroid/view/View;)V

    .line 6
    return-void
.end method
