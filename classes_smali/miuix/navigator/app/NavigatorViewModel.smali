.class public Lmiuix/navigator/app/NavigatorViewModel;
.super Landroidx/lifecycle/a0;
.source "NavigatorViewModel.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lmiuix/navigator/app/NavigatorBuilder;Landroid/os/Bundle;)V
    .registers 6

    invoke-interface {p1}, Lmiuix/navigator/app/NavigatorBuilder;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object v0

    invoke-interface {p1}, Lmiuix/navigator/app/NavigatorBuilder;->getNavigationOptionMenu()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator;->setNavigationMenu(I)V

    invoke-interface {p1}, Lmiuix/navigator/app/NavigatorBuilder;->getBottomTabMenu()I

    move-result v1

    invoke-interface {p1}, Lmiuix/navigator/app/NavigatorBuilder;->getBottomTabMenuNavInfoProvider()Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiuix/navigator/Navigator;->setBottomTabMenu(ILmiuix/navigator/navigatorinfo/NavigatorInfoProvider;)V

    invoke-interface {p1, v0, p2}, Lmiuix/navigator/app/NavigatorBuilder;->onCreatePrimaryNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V

    invoke-interface {p1, v0, p2}, Lmiuix/navigator/app/NavigatorBuilder;->onCreateOtherNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V

    return-void
.end method
