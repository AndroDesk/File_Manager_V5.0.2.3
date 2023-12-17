.class Lmiuix/navigator/NavigationFragmentDelegate;
.super Lmiuix/navigator/NavigatorFragmentDelegate;
.source "NavigationFragmentDelegate.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;


# instance fields
.field private mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

.field private mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/NavigationFragmentDelegate;)Lmiuix/view/MiuiBlurUiHelper;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigator/NavigationFragmentDelegate;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$102(Lmiuix/navigator/NavigationFragmentDelegate;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private updateBgBlur()V
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    move-result-object v1

    sget-object v2, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-eq v1, v2, :cond_10

    sget-object v2, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    if-ne v1, v2, :cond_1b

    :cond_10
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isNavigationOverlay()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigationFragmentDelegate;->applyBlur(Z)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    return-void
.end method

.method public isApplyBlur()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    move-result v0

    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    move-result v0

    return v0
.end method

.method public isSupportBlur()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isSupportBlur()Z

    move-result v0

    return v0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeStarted(Landroid/view/ActionMode;)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object p1

    iget-object p1, p1, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "miuix.content"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_34

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    instance-of v0, v0, Lmiuix/view/EditActionMode;

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_34
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object p1

    iget-object p1, p1, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "miuix.secondaryContent"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_65

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    instance-of v0, v0, Lmiuix/view/EditActionMode;

    if-eqz v0, :cond_65

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_65
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    invoke-direct {p0}, Lmiuix/navigator/NavigationFragmentDelegate;->updateBgBlur()V

    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    sget v0, Lmiuix/navigator/R$attr;->navigationFragmentStyle:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void

    :cond_a
    const/16 v1, 0x2000

    const/16 v2, 0x2006

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a;->setDisplayOptions(II)V

    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiuix/navigator/NavigationFragmentDelegate$1;

    invoke-direct {v1, p0}, Lmiuix/navigator/NavigationFragmentDelegate$1;-><init>(Lmiuix/navigator/NavigationFragmentDelegate;)V

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v2, v1}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    iput-object p1, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_38

    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    move-result p1

    if-nez p1, :cond_38

    move p1, p2

    goto :goto_39

    :cond_38
    move p1, v2

    :goto_39
    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigationFragmentDelegate;->setSupportBlur(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$attr;->bgBlurOptions:I

    invoke-static {p1, v0, v2}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4d

    invoke-virtual {p0, p2}, Lmiuix/navigator/NavigationFragmentDelegate;->setEnableBlur(Z)V

    :cond_4d
    invoke-direct {p0}, Lmiuix/navigator/NavigationFragmentDelegate;->updateBgBlur()V

    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    return-void
.end method

.method public updateViewAfterNavigatorSwitchPresenter(Lmiuix/appcompat/app/ActionBar;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/navigator/NavigatorFragmentDelegate;->updateViewAfterNavigatorSwitchPresenter(Lmiuix/appcompat/app/ActionBar;)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object v0

    if-eqz p1, :cond_19

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object p1

    sget v1, Lmiuix/navigator/R$id;->navigator_switch:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiuix/navigator/SubNavigator;->addNavigatorSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    :cond_19
    return-void
.end method
