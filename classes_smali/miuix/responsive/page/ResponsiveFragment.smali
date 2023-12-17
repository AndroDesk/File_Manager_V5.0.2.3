.class public Lmiuix/responsive/page/ResponsiveFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "ResponsiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/Fragment;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "ResponsiveFragment"


# instance fields
.field private mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    .line 4
    return-void
.end method

.method private notifyResponseOnCreate()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->notifyResponseOnCreate()V

    .line 8
    :cond_7
    return-void
.end method


# virtual methods
.method public bindResponseView(Landroid/view/ViewGroup;Lmiuix/responsive/interfaces/IViewResponsive;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->bindResponseView(Landroid/view/ViewGroup;Lmiuix/responsive/interfaces/IViewResponsive;)V

    .line 6
    return-void
.end method

.method public checkNotifyResponseOnCreate()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->getState()Lmiuix/responsive/map/ResponsiveState;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/responsive/page/ResponsiveFragment;->getResponsiveSubject()Lmiuix/appcompat/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getResponsiveSubject()Lmiuix/appcompat/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public isRegisterResponsive()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 21
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 24
    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 26
    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 29
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    new-instance p1, Lmiuix/responsive/page/ResponsiveFragment$1;

    .line 6
    invoke-direct {p1, p0, p0}, Lmiuix/responsive/page/ResponsiveFragment$1;-><init>(Lmiuix/responsive/page/ResponsiveFragment;Lmiuix/responsive/interfaces/IResponsive;)V

    .line 9
    iput-object p1, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 11
    invoke-virtual {p0}, Lmiuix/responsive/page/ResponsiveFragment;->checkNotifyResponseOnCreate()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_13

    .line 17
    invoke-direct {p0}, Lmiuix/responsive/page/ResponsiveFragment;->notifyResponseOnCreate()V

    .line 20
    :cond_13
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 7
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    return-void
.end method

.method public testNotifyResponseChange(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->testNotifyResponseChange(I)V

    .line 6
    return-void
.end method
