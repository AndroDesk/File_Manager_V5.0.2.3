.class public Lcom/micloud/midrive/manager/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# static fields
.field private static sInstance:Lcom/micloud/midrive/manager/ConnectivityManager;


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "connectivity"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 12
    iput-object p1, p0, Lcom/micloud/midrive/manager/ConnectivityManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 14
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;
    .registers 3

    .line 1
    const-class v0, Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/micloud/midrive/manager/ConnectivityManager;->sInstance:Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 10
    invoke-direct {v1, p0}, Lcom/micloud/midrive/manager/ConnectivityManager;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lcom/micloud/midrive/manager/ConnectivityManager;->sInstance:Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 15
    :cond_e
    sget-object p0, Lcom/micloud/midrive/manager/ConnectivityManager;->sInstance:Lcom/micloud/midrive/manager/ConnectivityManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_12
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method


# virtual methods
.method public isFreeNetworkConnected()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    iget-object v0, p0, Lcom/micloud/midrive/manager/ConnectivityManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public isMeteredNetworkConnected()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    iget-object v0, p0, Lcom/micloud/midrive/manager/ConnectivityManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public isNetworkConnected()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/manager/ConnectivityManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_18

    .line 10
    iget-object v2, p0, Lcom/micloud/midrive/manager/ConnectivityManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 12
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_12

    .line 18
    goto :goto_18

    .line 19
    :cond_12
    const/16 v1, 0xc

    .line 21
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 24
    move-result v1

    .line 25
    :cond_18
    :goto_18
    return v1
.end method
