.class Lmiuix/navigator/NavigationSubNavigator;
.super Lmiuix/navigator/SubNavigator;
.source "NavigationSubNavigator.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/NavigatorImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/SubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    invoke-virtual {p0, p0}, Lmiuix/navigator/SubNavigator;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    new-instance p1, Lmiuix/navigator/NavigationSubNavigator$1;

    invoke-direct {p1, p0}, Lmiuix/navigator/NavigationSubNavigator$1;-><init>(Lmiuix/navigator/NavigationSubNavigator;)V

    invoke-virtual {p0, p1}, Lmiuix/navigator/SubNavigator;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    return-void
.end method


# virtual methods
.method public addNavigatorSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmiuix/navigator/NavigatorImpl;->setNavigationSwitch(Landroid/view/View;)V

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

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v2, 0x3

    and-int/2addr p1, v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz p1, :cond_16

    if-eq p1, v1, :cond_15

    if-eq p1, v3, :cond_13

    return-void

    :cond_13
    move v3, v4

    goto :goto_16

    :cond_15
    move v3, v2

    :cond_16
    :goto_16
    if-ne v3, v4, :cond_1b

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v3

    :goto_1c
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmiuix/navigator/NavigatorFragmentController;->setFragmentState(I)V

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
