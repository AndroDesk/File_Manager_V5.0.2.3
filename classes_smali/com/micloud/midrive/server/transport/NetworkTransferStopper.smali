.class public Lcom/micloud/midrive/server/transport/NetworkTransferStopper;
.super Ljava/lang/Object;
.source "NetworkTransferStopper.java"

# interfaces
.implements Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;


# instance fields
.field private final mNetwork:Lcom/micloud/midrive/server/transport/Network;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/server/transport/NetworkTransferStopper;->mNetwork:Lcom/micloud/midrive/server/transport/Network;

    .line 6
    return-void
.end method


# virtual methods
.method public checkStop()Z
    .registers 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/micloud/midrive/manager/NetworkManager;->get()Lcom/micloud/midrive/manager/NetworkManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/micloud/midrive/server/transport/NetworkTransferStopper;->mNetwork:Lcom/micloud/midrive/server/transport/Network;

    .line 7
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/manager/NetworkManager;->acquireSpecificNetwork(Lcom/micloud/midrive/server/transport/Network;)V
    :try_end_9
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_0 .. :try_end_9} :catch_b

    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :catch_b
    const/4 v0, 0x1

    .line 13
    return v0
.end method
