.class Lmiuix/navigator/NavigationFragmentDelegate;
.super Lmiuix/navigator/NavigatorFragmentDelegate;
.source "NavigationFragmentDelegate.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;


# instance fields
.field private mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

.field private mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;


# direct methods
.method public constructor <init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/NavigationFragmentDelegate;)Lmiuix/view/MiuiBlurUiHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigator/NavigationFragmentDelegate;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lmiuix/navigator/NavigationFragmentDelegate;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p1
.end method

.method private updateBgBlur()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 11
    if-eq v1, v2, :cond_10

    .line 13
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    .line 15
    if-ne v1, v2, :cond_1b

    .line 17
    :cond_10
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isNavigationOverlay()Z

    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigationFragmentDelegate;->applyBlur(Z)V

    .line 28
    :cond_1b
    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    .line 6
    return-void
.end method

.method public isApplyBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSupportBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isSupportBlur()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 14
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "miuix.content"

    .line 20
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 23
    move-result-object p1

    .line 24
    instance-of v0, p1, Lmiuix/appcompat/app/Fragment;

    .line 26
    if-eqz v0, :cond_34

    .line 28
    check-cast p1, Lmiuix/appcompat/app/Fragment;

    .line 30
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    .line 37
    move-result-object v0

    .line 38
    instance-of v0, v0, Lmiuix/view/EditActionMode;

    .line 40
    if-eqz v0, :cond_34

    .line 42
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 53
    :cond_34
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 60
    move-result-object p1

    .line 61
    iget-object p1, p1, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 63
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 66
    move-result-object p1

    .line 67
    const-string v0, "miuix.secondaryContent"

    .line 69
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 72
    move-result-object p1

    .line 73
    instance-of v0, p1, Lmiuix/appcompat/app/Fragment;

    .line 75
    if-eqz v0, :cond_65

    .line 77
    check-cast p1, Lmiuix/appcompat/app/Fragment;

    .line 79
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    .line 86
    move-result-object v0

    .line 87
    instance-of v0, v0, Lmiuix/view/EditActionMode;

    .line 89
    if-eqz v0, :cond_65

    .line 91
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 102
    :cond_65
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object p1, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 6
    if-eqz p1, :cond_d

    .line 8
    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    .line 11
    invoke-direct {p0}, Lmiuix/navigator/NavigationFragmentDelegate;->updateBgBlur()V

    .line 14
    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 7
    move-result-object p1

    .line 8
    sget v0, Lmiuix/navigator/R$attr;->navigationFragmentStyle:I

    .line 10
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    .line 17
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    return-void

    .line 11
    :cond_a
    const/16 v1, 0x2000

    .line 13
    const/16 v2, 0x2006

    .line 15
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a;->setDisplayOptions(II)V

    .line 18
    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 21
    new-instance p1, Lmiuix/view/MiuiBlurUiHelper;

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lmiuix/navigator/NavigationFragmentDelegate$1;

    .line 33
    invoke-direct {v1, p0}, Lmiuix/navigator/NavigationFragmentDelegate$1;-><init>(Lmiuix/navigator/NavigationFragmentDelegate;)V

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {p1, p2, v0, v2, v1}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    .line 40
    iput-object p1, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 42
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    .line 45
    move-result p1

    .line 46
    const/4 p2, 0x1

    .line 47
    if-eqz p1, :cond_38

    .line 49
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_38

    .line 55
    move p1, p2

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move p1, v2

    .line 58
    :goto_39
    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigationFragmentDelegate;->setSupportBlur(Z)V

    .line 61
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    .line 64
    move-result-object p1

    .line 65
    sget v0, Lmiuix/appcompat/R$attr;->bgBlurOptions:I

    .line 67
    invoke-static {p1, v0, v2}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    .line 70
    move-result p1

    .line 71
    and-int/lit8 p1, p1, 0x4

    .line 73
    if-eqz p1, :cond_4d

    .line 75
    invoke-virtual {p0, p2}, Lmiuix/navigator/NavigationFragmentDelegate;->setEnableBlur(Z)V

    .line 78
    :cond_4d
    invoke-direct {p0}, Lmiuix/navigator/NavigationFragmentDelegate;->updateBgBlur()V

    .line 81
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    .line 6
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    .line 6
    return-void
.end method

.method public updateViewAfterNavigatorSwitchPresenter(Lmiuix/appcompat/app/ActionBar;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/navigator/NavigatorFragmentDelegate;->updateViewAfterNavigatorSwitchPresenter(Lmiuix/appcompat/app/ActionBar;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 7
    move-result-object v0

    .line 8
    if-eqz p1, :cond_19

    .line 10
    if-eqz v0, :cond_19

    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    sget v1, Lmiuix/navigator/R$id;->navigator_switch:I

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Lmiuix/navigator/SubNavigator;->addNavigatorSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    .line 26
    :cond_19
    return-void
.end method
