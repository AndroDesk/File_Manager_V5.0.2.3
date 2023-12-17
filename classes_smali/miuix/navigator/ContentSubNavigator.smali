.class Lmiuix/navigator/ContentSubNavigator;
.super Lmiuix/navigator/SubNavigator;
.source "ContentSubNavigator.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/NavigatorImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/SubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    invoke-virtual {p1, p0}, Lmiuix/navigator/NavigatorImpl;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    invoke-direct {p0}, Lmiuix/navigator/ContentSubNavigator;->setContentShowListener()V

    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/ContentSubNavigator;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/ContentSubNavigator;->lambda$setContentShowListener$1(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic b(Lmiuix/navigator/ContentSubNavigator;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/ContentSubNavigator;->lambda$setContentShowListener$0(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method private synthetic lambda$setContentShowListener$0(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p1, p2, :cond_1d

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout;->onContentShow()V

    :cond_1d
    return-void
.end method

.method private synthetic lambda$setContentShowListener$1(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 3

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance p2, Lmiuix/navigator/b;

    invoke-direct {p2, p0}, Lmiuix/navigator/b;-><init>(Lmiuix/navigator/ContentSubNavigator;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    return-void
.end method

.method private setContentShowListener()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lmiuix/navigator/a;

    invoke-direct {v1, p0}, Lmiuix/navigator/a;-><init>(Lmiuix/navigator/ContentSubNavigator;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    return-void
.end method


# virtual methods
.method public addNavigatorSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->addContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    const-string v0, "miuix.content"

    return-object v0
.end method

.method public isFocused()Z
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isSecondaryOnTop()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUserFocused()Z
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isContentUserFocused()Z

    move-result v0

    return v0
.end method

.method public onBottomNavigationVisibilityChanged(ZI)V
    .registers 5

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lmiuix/appcompat/app/Fragment;

    if-eqz v1, :cond_c

    check-cast v0, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/Fragment;->setBottomExtraInset(I)V

    goto :goto_c

    :cond_22
    return-void
.end method

.method public onContentVisibilityChanged(I)V
    .registers 7
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    const/4 v3, 0x3

    and-int/2addr p1, v3

    const/4 v4, 0x2

    if-eqz p1, :cond_19

    if-eq p1, v2, :cond_1a

    if-eq p1, v4, :cond_13

    return-void

    :cond_13
    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x4

    :goto_17
    move v1, v2

    goto :goto_1a

    :cond_19
    move v3, v4

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    move-result-object p1

    invoke-virtual {p1, v3}, Lmiuix/navigator/NavigatorFragmentController;->setFragmentState(I)V

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "miuix.content"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_40

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    :cond_40
    return-void
.end method

.method public removeNavigatorSwitch(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->removeContentSwitch(Landroid/view/View;)V

    return-void
.end method

.method public requestFocus(Z)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isSecondaryContentUserFocused()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lmiuix/navigator/NavigatorImpl;->setSecondaryOnTop(ZZ)V

    :cond_12
    return-void
.end method

.method public requestUserFocus(Z)Z
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    invoke-virtual {p0}, Lmiuix/navigator/Navigator;->requestFocus()V

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->userFocusContent(Z)V

    const/4 p1, 0x1

    return p1
.end method
