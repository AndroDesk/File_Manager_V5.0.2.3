.class Lmiuix/navigator/ContentSubNavigator;
.super Lmiuix/navigator/SubNavigator;
.source "ContentSubNavigator.java"


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavigatorImpl;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/SubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    .line 4
    invoke-virtual {p1, p0}, Lmiuix/navigator/NavigatorImpl;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 7
    invoke-direct {p0}, Lmiuix/navigator/ContentSubNavigator;->setContentShowListener()V

    .line 10
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

    .line 1
    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    .line 4
    move-result-object p1

    .line 5
    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    if-ne p1, p2, :cond_1d

    .line 9
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1d

    .line 19
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout;->onContentShow()V

    .line 30
    :cond_1d
    return-void
.end method

.method private synthetic lambda$setContentShowListener$1(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lmiuix/navigator/b;

    .line 7
    invoke-direct {p2, p0}, Lmiuix/navigator/b;-><init>(Lmiuix/navigator/ContentSubNavigator;)V

    .line 10
    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 13
    return-void
.end method

.method private setContentShowListener()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/navigator/a;

    .line 7
    invoke-direct {v1, p0}, Lmiuix/navigator/a;-><init>(Lmiuix/navigator/ContentSubNavigator;)V

    .line 10
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    .line 13
    return-void
.end method


# virtual methods
.method public addNavigatorSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->addContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    .line 8
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    const-string v0, "miuix.content"

    return-object v0
.end method

.method public isFocused()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isSecondaryOnTop()Z

    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 11
    return v0
.end method

.method public isUserFocused()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isContentUserFocused()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public onBottomNavigationVisibilityChanged(ZI)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_22

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 25
    instance-of v1, v0, Lmiuix/appcompat/app/Fragment;

    .line 27
    if-eqz v1, :cond_c

    .line 29
    check-cast v0, Lmiuix/appcompat/app/Fragment;

    .line 31
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/Fragment;->setBottomExtraInset(I)V

    .line 34
    goto :goto_c

    .line 35
    :cond_22
    return-void
.end method

.method public onContentVisibilityChanged(I)V
    .registers 7
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    .line 1
    and-int/lit8 v0, p1, 0x4

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_8

    .line 7
    move v0, v2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v0, v1

    .line 10
    :goto_9
    const/4 v3, 0x3

    .line 11
    and-int/2addr p1, v3

    .line 12
    const/4 v4, 0x2

    .line 13
    if-eqz p1, :cond_19

    .line 15
    if-eq p1, v2, :cond_1a

    .line 17
    if-eq p1, v4, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    if-eqz v0, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v3, 0x4

    .line 24
    :goto_17
    move v1, v2

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v3, v4

    .line 27
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v3}, Lmiuix/navigator/NavigatorFragmentController;->setFragmentState(I)V

    .line 34
    if-eqz v1, :cond_40

    .line 36
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 39
    move-result-object p1

    .line 40
    const-string v0, "miuix.content"

    .line 42
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_40

    .line 48
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_40

    .line 54
    new-instance v1, Landroidx/fragment/app/a;

    .line 56
    invoke-direct {v1, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 59
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 62
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 65
    :cond_40
    return-void
.end method

.method public removeNavigatorSwitch(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->removeContentSwitch(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method public requestFocus(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isSecondaryContentUserFocused()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_12

    .line 11
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, p1}, Lmiuix/navigator/NavigatorImpl;->setSecondaryOnTop(ZZ)V

    .line 19
    :cond_12
    return-void
.end method

.method public requestUserFocus(Z)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-virtual {p0}, Lmiuix/navigator/Navigator;->requestFocus()V

    .line 16
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->userFocusContent(Z)V

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1
.end method
