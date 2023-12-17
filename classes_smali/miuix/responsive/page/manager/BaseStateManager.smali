.class public abstract Lmiuix/responsive/page/manager/BaseStateManager;
.super Ljava/lang/Object;
.source "BaseStateManager.java"


# static fields
.field public static sEnableResponsive:Z = true


# instance fields
.field public final mOldState:Lmiuix/responsive/map/ResponsiveState;

.field public mState:Lmiuix/responsive/map/ResponsiveState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/responsive/map/ResponsiveState;

    .line 6
    invoke-direct {v0}, Lmiuix/responsive/map/ResponsiveState;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    .line 11
    return-void
.end method

.method public static disableResponsive()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lmiuix/responsive/page/manager/BaseStateManager;->sEnableResponsive:Z

    .line 4
    return-void
.end method

.method public static enableResponsive()V
    .registers 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lmiuix/responsive/page/manager/BaseStateManager;->sEnableResponsive:Z

    .line 4
    return-void
.end method

.method public static isSupportResponsive()Z
    .registers 1

    .line 1
    sget-boolean v0, Lmiuix/responsive/page/manager/BaseStateManager;->sEnableResponsive:Z

    .line 3
    return v0
.end method


# virtual methods
.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public computeResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lmiuix/responsive/ResponsiveStateHelper;->computeResponsiveState(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public computeResponsiveStateFromConfig(Landroid/content/res/Configuration;)Lmiuix/responsive/map/ResponsiveState;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1, p1}, Lmiuix/responsive/ResponsiveStateHelper;->computeResponsiveStateOnConfigChanged(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;)Lmiuix/responsive/map/ResponsiveState;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public isStateEquals(Lmiuix/responsive/map/ResponsiveState;Lmiuix/responsive/map/ResponsiveState;)Z
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onAfterConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onBeforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method
