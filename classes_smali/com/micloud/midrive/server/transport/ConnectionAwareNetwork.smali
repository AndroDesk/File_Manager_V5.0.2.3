.class public Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;
.super Lcom/micloud/midrive/server/transport/Network;
.source "ConnectionAwareNetwork.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mFreeNetworkOnly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0}, Lcom/micloud/midrive/server/transport/Network;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    return-void
.end method

.method private static available(Lcom/micloud/midrive/manager/NetworkManager;Z)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    :try_start_4
    invoke-virtual {p0}, Lcom/micloud/midrive/manager/NetworkManager;->acquireFreeNetwork()V
    :try_end_7
    .catch Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException; {:try_start_4 .. :try_end_7} :catch_8

    return v1

    :catch_8
    return v0

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/micloud/midrive/manager/NetworkManager;->acquireAnyNetwork()V
    :try_end_c
    .catch Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException; {:try_start_9 .. :try_end_c} :catch_d

    return v1

    :catch_d
    return v0
.end method


# virtual methods
.method public acquireNetwork(Lcom/micloud/midrive/manager/NetworkManager;)V
    .registers 4

    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    invoke-static {p1, v0}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->available(Lcom/micloud/midrive/manager/NetworkManager;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    new-instance p1, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;

    const-string v0, "network not available: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFreeNetworkOnly()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    return v0
.end method

.method public isNetworkAvailable(Lcom/micloud/midrive/manager/NetworkManager;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    invoke-static {p1, v0}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->available(Lcom/micloud/midrive/manager/NetworkManager;Z)Z

    move-result p1

    return p1
.end method

.method public setFreeNetworkOnly(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFreeNetworkOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->mFreeNetworkOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
