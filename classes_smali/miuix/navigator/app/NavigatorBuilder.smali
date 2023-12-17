.class public interface abstract Lmiuix/navigator/app/NavigatorBuilder;
.super Ljava/lang/Object;
.source "NavigatorBuilder.java"


# virtual methods
.method public abstract getBottomTabMenu()I
.end method

.method public abstract getBottomTabMenuNavInfoProvider()Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;
.end method

.method public abstract getDefaultContentFragment()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lmiuix/appcompat/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNavHostFragment()Lmiuix/navigator/NavHostFragment;
.end method

.method public abstract getNavigationOptionMenu()I
.end method

.method public abstract getNavigator()Lmiuix/navigator/Navigator;
.end method

.method public abstract getNavigatorInitArgs()Landroid/os/Bundle;
.end method

.method public abstract newLabel(Ljava/lang/String;ILmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;
.end method

.method public abstract newLabel(Ljava/lang/String;Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;
.end method

.method public abstract onCreateOtherNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V
.end method

.method public abstract onCreatePrimaryNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V
.end method
