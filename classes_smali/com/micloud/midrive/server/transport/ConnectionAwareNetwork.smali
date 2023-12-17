.class public Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;
.super Lcom/micloud/midrive/server/transport/Network;
.source "ConnectionAwareNetwork.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mFreeNetworkOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/server/transport/Network;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mContext:Landroid/content/Context;

    .line 6
    iput-boolean p2, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    .line 8
    return-void
.end method

.method private static available(Lcom/micloud/midrive/manager/NetworkManager;Z)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_9

    .line 5
    :try_start_4
    invoke-virtual {p0}, Lcom/micloud/midrive/manager/NetworkManager;->acquireFreeNetwork()V
    :try_end_7
    .catch Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException; {:try_start_4 .. :try_end_7} :catch_8

    .line 8
    return v1

    .line 9
    :catch_8
    return v0

    .line 10
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/micloud/midrive/manager/NetworkManager;->acquireAnyNetwork()V
    :try_end_c
    .catch Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException; {:try_start_9 .. :try_end_c} :catch_d

    .line 13
    return v1

    .line 14
    :catch_d
    return v0
.end method


# virtual methods
.method public acquireNetwork(Lcom/micloud/midrive/manager/NetworkManager;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    .line 3
    invoke-static {p1, v0}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->available(Lcom/micloud/midrive/manager/NetworkManager;Z)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance p1, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;

    .line 12
    const-string v0, "network not available: "

    .line 14
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p1, v0}, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public isFreeNetworkOnly()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    .line 3
    return v0
.end method

.method public isNetworkAvailable(Lcom/micloud/midrive/manager/NetworkManager;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    .line 3
    invoke-static {p1, v0}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->available(Lcom/micloud/midrive/manager/NetworkManager;Z)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setFreeNetworkOnly(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "{mContext="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", mFreeNetworkOnly="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-boolean v1, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const/16 v1, 0x7d

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
