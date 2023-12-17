.class public Lmiuix/navigator/app/NavigatorViewModel;
.super Landroidx/lifecycle/a0;
.source "NavigatorViewModel.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public init(Lmiuix/navigator/app/NavigatorBuilder;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-interface {p1}, Lmiuix/navigator/app/NavigatorBuilder;->getNavigator()Lmiuix/navigator/Navigator;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lmiuix/navigator/app/NavigatorBuilder;->getNavigationOptionMenu()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator;->setNavigationMenu(I)V

    .line 12
    invoke-interface {p1}, Lmiuix/navigator/app/NavigatorBuilder;->getBottomTabMenu()I

    .line 15
    move-result v1

    .line 16
    invoke-interface {p1}, Lmiuix/navigator/app/NavigatorBuilder;->getBottomTabMenuNavInfoProvider()Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Lmiuix/navigator/Navigator;->setBottomTabMenu(ILmiuix/navigator/navigatorinfo/NavigatorInfoProvider;)V

    .line 23
    invoke-interface {p1, v0, p2}, Lmiuix/navigator/app/NavigatorBuilder;->onCreatePrimaryNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V

    .line 26
    invoke-interface {p1, v0, p2}, Lmiuix/navigator/app/NavigatorBuilder;->onCreateOtherNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V

    .line 29
    return-void
.end method
