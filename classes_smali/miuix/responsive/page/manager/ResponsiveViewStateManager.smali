.class public Lmiuix/responsive/page/manager/ResponsiveViewStateManager;
.super Lmiuix/responsive/page/manager/BaseStateManager;
.source "ResponsiveViewStateManager.java"


# instance fields
.field private mHostActivityIsIResponsive:Z

.field private mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lmiuix/responsive/interfaces/IViewResponsive;)V
    .registers 3

    invoke-direct {p0}, Lmiuix/responsive/page/manager/BaseStateManager;-><init>()V

    iput-object p1, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mView:Landroid/view/View;

    iput-object p2, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    const-class p2, Lmiuix/responsive/interfaces/IResponsive;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mHostActivityIsIResponsive:Z

    return-void
.end method


# virtual methods
.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-boolean v0, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mHostActivityIsIResponsive:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lmiuix/responsive/page/manager/BaseStateManager;->isSupportResponsive()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->onAfterConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    invoke-virtual {p0, v0, v1}, Lmiuix/responsive/page/manager/BaseStateManager;->isStateEquals(Lmiuix/responsive/map/ResponsiveState;Lmiuix/responsive/map/ResponsiveState;)Z

    move-result v0

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    invoke-virtual {p0, p1, v1, v0}, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->notifyResponseChange(Landroid/content/res/Configuration;Lmiuix/responsive/map/ResponsiveState;Z)V

    :cond_1b
    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-boolean v0, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mHostActivityIsIResponsive:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lmiuix/responsive/page/manager/BaseStateManager;->isSupportResponsive()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    invoke-virtual {v0, v1}, Lmiuix/responsive/map/ResponsiveState;->setTo(Lmiuix/responsive/map/ResponsiveState;)V

    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->computeResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object v0

    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->onBeforeConfigurationChanged(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    :cond_1b
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public notifyResponseChange(Landroid/content/res/Configuration;Lmiuix/responsive/map/ResponsiveState;Z)V
    .registers 5

    new-instance v0, Lmiuix/responsive/map/ScreenSpec;

    invoke-direct {v0}, Lmiuix/responsive/map/ScreenSpec;-><init>()V

    if-eqz p2, :cond_a

    invoke-virtual {p2, v0}, Lmiuix/responsive/map/ResponsiveState;->toScreenSpec(Lmiuix/responsive/map/ScreenSpec;)V

    :cond_a
    iget-object p2, p0, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    if-eqz p2, :cond_11

    invoke-interface {p2, p1, v0, p3}, Lmiuix/responsive/interfaces/IViewResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)Z

    :cond_11
    return-void
.end method
