.class public abstract Lcom/android/fileexplorer/activity/BaseNavigatorActivity;
.super Lmiuix/navigator/app/NavigatorActivity;
.source "BaseNavigatorActivity.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/app/NavigatorActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomTabMenu()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBottomTabMenuNavInfoProvider()Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultContentFragment()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lmiuix/appcompat/app/Fragment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationOptionMenu()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getNavigatorInitArgs()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/navigator/app/NavigatorActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOtherNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onCreatePrimaryNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method
