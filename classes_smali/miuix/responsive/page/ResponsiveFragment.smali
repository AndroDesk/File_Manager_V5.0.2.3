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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    return-void
.end method

.method private notifyResponseOnCreate()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->notifyResponseOnCreate()V

    :cond_7
    return-void
.end method


# virtual methods
.method public bindResponseView(Landroid/view/ViewGroup;Lmiuix/responsive/interfaces/IViewResponsive;)V
    .registers 4

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->bindResponseView(Landroid/view/ViewGroup;Lmiuix/responsive/interfaces/IViewResponsive;)V

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

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->getState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiuix/responsive/page/ResponsiveFragment;->getResponsiveSubject()Lmiuix/appcompat/app/Fragment;

    move-result-object v0

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lmiuix/responsive/page/ResponsiveFragment$1;

    invoke-direct {p1, p0, p0}, Lmiuix/responsive/page/ResponsiveFragment$1;-><init>(Lmiuix/responsive/page/ResponsiveFragment;Lmiuix/responsive/interfaces/IResponsive;)V

    iput-object p1, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {p0}, Lmiuix/responsive/page/ResponsiveFragment;->checkNotifyResponseOnCreate()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lmiuix/responsive/page/ResponsiveFragment;->notifyResponseOnCreate()V

    :cond_13
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    return-void
.end method

.method public testNotifyResponseChange(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment;->mResponsiveFragmentStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->testNotifyResponseChange(I)V

    return-void
.end method
