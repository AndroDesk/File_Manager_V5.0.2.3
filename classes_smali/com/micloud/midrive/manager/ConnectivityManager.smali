.class public Lcom/micloud/midrive/manager/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# static fields
.field private static sInstance:Lcom/micloud/midrive/manager/ConnectivityManager;


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/micloud/midrive/manager/ConnectivityManager;->mConnMgr:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;
    .registers 3

    const-class v0, Lcom/micloud/midrive/manager/ConnectivityManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/micloud/midrive/manager/ConnectivityManager;->sInstance:Lcom/micloud/midrive/manager/ConnectivityManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/micloud/midrive/manager/ConnectivityManager;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/manager/ConnectivityManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/micloud/midrive/manager/ConnectivityManager;->sInstance:Lcom/micloud/midrive/manager/ConnectivityManager;

    :cond_e
    sget-object p0, Lcom/micloud/midrive/manager/ConnectivityManager;->sInstance:Lcom/micloud/midrive/manager/ConnectivityManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public isFreeNetworkConnected()Z
    .registers 2

    invoke-virtual {p0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/micloud/midrive/manager/ConnectivityManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isMeteredNetworkConnected()Z
    .registers 2

    invoke-virtual {p0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/micloud/midrive/manager/ConnectivityManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isNetworkConnected()Z
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/manager/ConnectivityManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/micloud/midrive/manager/ConnectivityManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_18

    :cond_12
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    :cond_18
    :goto_18
    return v1
.end method
