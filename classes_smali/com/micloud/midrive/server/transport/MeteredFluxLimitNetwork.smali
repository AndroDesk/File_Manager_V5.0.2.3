.class public Lcom/micloud/midrive/server/transport/MeteredFluxLimitNetwork;
.super Lcom/micloud/midrive/server/transport/Network;
.source "MeteredFluxLimitNetwork.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/server/transport/Network;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/server/transport/MeteredFluxLimitNetwork;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public acquireNetwork(Lcom/micloud/midrive/manager/NetworkManager;)V
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Lcom/micloud/midrive/manager/NetworkManager;->acquireAnyNetworkUnderMeteredFluxLimit()V
    :try_end_3
    .catch Lcom/micloud/midrive/manager/NetworkManager$UnavailableException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    new-instance v0, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;

    invoke-direct {v0, p1}, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isNetworkAvailable(Lcom/micloud/midrive/manager/NetworkManager;)Z
    .registers 2

    :try_start_0
    invoke-virtual {p1}, Lcom/micloud/midrive/manager/NetworkManager;->acquireAnyNetworkUnderMeteredFluxLimit()V
    :try_end_3
    .catch Lcom/micloud/midrive/manager/NetworkManager$UnavailableException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p1, 0x1

    return p1

    :catch_5
    const/4 p1, 0x0

    return p1
.end method
