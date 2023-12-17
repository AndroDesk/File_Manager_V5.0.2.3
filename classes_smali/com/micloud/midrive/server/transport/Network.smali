.class public abstract Lcom/micloud/midrive/server/transport/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildConnectionAwareNetworkForTest(Landroid/content/Context;Z)Lcom/micloud/midrive/server/transport/Network;
    .registers 3

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;-><init>(Landroid/content/Context;Z)V

    .line 6
    return-object v0
.end method

.method public static forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;
    .registers 3

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;-><init>(Landroid/content/Context;Z)V

    .line 7
    return-object v0
.end method

.method public static forAllowFreeNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;
    .registers 3

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;-><init>(Landroid/content/Context;Z)V

    .line 7
    return-object v0
.end method

.method public static forMeteredFluxLimit(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/MeteredFluxLimitNetwork;

    .line 3
    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/transport/MeteredFluxLimitNetwork;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;
    .registers 3

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;-><init>(Landroid/content/Context;Z)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public abstract acquireNetwork(Lcom/micloud/midrive/manager/NetworkManager;)V
.end method

.method public abstract isNetworkAvailable(Lcom/micloud/midrive/manager/NetworkManager;)Z
.end method
