.class Lmiuix/navigator/NavigationSubNavigator;
.super Lmiuix/navigator/SubNavigator;
.source "NavigationSubNavigator.java"


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavigatorImpl;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/SubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    .line 4
    invoke-virtual {p0, p0}, Lmiuix/navigator/SubNavigator;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 7
    new-instance p1, Lmiuix/navigator/NavigationSubNavigator$1;

    .line 9
    invoke-direct {p1, p0}, Lmiuix/navigator/NavigationSubNavigator$1;-><init>(Lmiuix/navigator/NavigationSubNavigator;)V

    .line 12
    invoke-virtual {p0, p1}, Lmiuix/navigator/SubNavigator;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public addNavigatorSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lmiuix/navigator/NavigatorImpl;->setNavigationSwitch(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    const-string v0, "miuix.navigation"

    return-object v0
.end method

.method public isFocused()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isUserFocused()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 7
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    .line 1
    and-int/lit8 v0, p1, 0x4

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    const/4 v2, 0x3

    .line 10
    and-int/2addr p1, v2

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x4

    .line 13
    if-eqz p1, :cond_16

    .line 15
    if-eq p1, v1, :cond_15

    .line 17
    if-eq p1, v3, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    move v3, v4

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v3, v2

    .line 23
    :cond_16
    :goto_16
    if-ne v3, v4, :cond_1b

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v2, v3

    .line 29
    :goto_1c
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v2}, Lmiuix/navigator/NavigatorFragmentController;->setFragmentState(I)V

    .line 36
    return-void
.end method

.method public requestFocus(Z)V
    .registers 2

    return-void
.end method

.method public requestUserFocus(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
