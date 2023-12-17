.class public Lmiuix/responsive/page/manager/ResponsiveViewStateManager;
.super Lmiuix/responsive/page/manager/BaseStateManager;
.source "ResponsiveViewStateManager.java"


# instance fields
.field private mHostActivityIsIResponsive:Z

.field private mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lmiuix/responsive/interfaces/IViewResponsive;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/responsive/page/manager/BaseStateManager;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mView:Landroid/view/View;

    .line 6
    iput-object p2, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    .line 8
    const-class p2, Lmiuix/responsive/interfaces/IResponsive;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    move-result p1

    .line 22
    iput-boolean p1, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mHostActivityIsIResponsive:Z

    .line 24
    return-void
.end method


# virtual methods
.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mHostActivityIsIResponsive:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {}, Lmiuix/responsive/page/manager/BaseStateManager;->isSupportResponsive()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1b

    .line 12
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->onAfterConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 15
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 17
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    .line 19
    invoke-virtual {p0, v0, v1}, Lmiuix/responsive/page/manager/BaseStateManager;->isStateEquals(Lmiuix/responsive/map/ResponsiveState;Lmiuix/responsive/map/ResponsiveState;)Z

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 25
    invoke-virtual {p0, p1, v1, v0}, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->notifyResponseChange(Landroid/content/res/Configuration;Lmiuix/responsive/map/ResponsiveState;Z)V

    .line 28
    :cond_1b
    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mHostActivityIsIResponsive:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {}, Lmiuix/responsive/page/manager/BaseStateManager;->isSupportResponsive()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1b

    .line 12
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    .line 14
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 16
    invoke-virtual {v0, v1}, Lmiuix/responsive/map/ResponsiveState;->setTo(Lmiuix/responsive/map/ResponsiveState;)V

    .line 19
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->computeResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->onBeforeConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 26
    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 28
    :cond_1b
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public notifyResponseChange(Landroid/content/res/Configuration;Lmiuix/responsive/map/ResponsiveState;Z)V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/responsive/map/ScreenSpec;

    .line 3
    invoke-direct {v0}, Lmiuix/responsive/map/ScreenSpec;-><init>()V

    .line 6
    if-eqz p2, :cond_a

    .line 8
    invoke-virtual {p2, v0}, Lmiuix/responsive/map/ResponsiveState;->toScreenSpec(Lmiuix/responsive/map/ScreenSpec;)V

    .line 11
    :cond_a
    iget-object p2, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    .line 13
    if-eqz p2, :cond_11

    .line 15
    invoke-interface {p2, p1, v0, p3}, Lmiuix/responsive/interfaces/IViewResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)Z

    .line 18
    :cond_11
    return-void
.end method
