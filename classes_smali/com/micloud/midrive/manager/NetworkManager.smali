.class public Lcom/micloud/midrive/manager/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;,
        Lcom/micloud/midrive/manager/NetworkManager$UnknownStateException;,
        Lcom/micloud/midrive/manager/NetworkManager$FluxLimitExcessException;,
        Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;,
        Lcom/micloud/midrive/manager/NetworkManager$UnavailableException;,
        Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;
    }
.end annotation


# static fields
.field private static final MIN_UPDATE_METERED_FLUX_INTERVAL_MS:J = 0x3e8L

.field private static volatile sInstance:Lcom/micloud/midrive/manager/NetworkManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMeteredFluxLimitBytes:J

.field private mMeteredFluxMonitor:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

.field private final mNetworkConfigChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Ljava/util/LinkedList;

    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager;->mNetworkConfigChangedCallbacks:Ljava/util/List;

    .line 13
    return-void
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/manager/NetworkManager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/manager/NetworkManager;->onConnectivityChanged()V

    .line 4
    return-void
.end method

.method public static get()Lcom/micloud/midrive/manager/NetworkManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/manager/NetworkManager;->sInstance:Lcom/micloud/midrive/manager/NetworkManager;

    .line 3
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/manager/NetworkManager;

    .line 3
    invoke-direct {v0, p0}, Lcom/micloud/midrive/manager/NetworkManager;-><init>(Landroid/content/Context;)V

    .line 6
    sput-object v0, Lcom/micloud/midrive/manager/NetworkManager;->sInstance:Lcom/micloud/midrive/manager/NetworkManager;

    .line 8
    sget-object p0, Lcom/micloud/midrive/manager/NetworkManager;->sInstance:Lcom/micloud/midrive/manager/NetworkManager;

    .line 10
    invoke-direct {p0}, Lcom/micloud/midrive/manager/NetworkManager;->initNetworkChangedRegistration()V

    .line 13
    return-void
.end method

.method private initNetworkChangedRegistration()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 3
    new-instance v1, Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;-><init>(Lcom/micloud/midrive/manager/NetworkManager;Lcom/micloud/midrive/manager/NetworkManager$1;)V

    .line 9
    new-instance v2, Landroid/content/IntentFilter;

    .line 11
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 13
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    return-void
.end method

.method private declared-synchronized notifyNetworkConfigChangedInMainThread()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mNetworkConfigChangedCallbacks:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_17

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;

    .line 20
    invoke-interface {v1}, Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;->onNetworkConfigChangedInMainThread()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    .line 23
    goto :goto_7

    .line 24
    :cond_17
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception v0

    .line 27
    monitor-exit p0

    .line 28
    throw v0
.end method

.method private onConnectivityChanged()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "onConnectivityChanged"

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0}, Lcom/micloud/midrive/manager/NetworkManager;->notifyNetworkConfigChangedInMainThread()V

    .line 15
    invoke-virtual {p0}, Lcom/micloud/midrive/manager/NetworkManager;->isAnyNetworkAvailable()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_26

    .line 21
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {v0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getRequireNetworkForSync(Landroid/content/Context;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_26

    .line 29
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {v0, v2}, Lcom/micloud/midrive/helper/SyncConfigHelper;->setRequireNetworkForSync(Landroid/content/Context;Z)V

    .line 34
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    .line 39
    :cond_26
    return-void
.end method


# virtual methods
.method public acquireAnyNetwork()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;

    .line 16
    invoke-direct {v0}, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;-><init>()V

    .line 19
    throw v0
.end method

.method public acquireAnyNetworkUnderMeteredFluxLimit()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_42

    .line 13
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isFreeNetworkConnected()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxMonitor:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    .line 28
    if-eqz v0, :cond_3a

    .line 30
    invoke-virtual {v0}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->getTrafficMeteredFluxBytes()J

    .line 33
    move-result-wide v0

    .line 34
    iget-wide v2, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxLimitBytes:J

    .line 36
    cmp-long v2, v0, v2

    .line 38
    if-gez v2, :cond_28

    .line 40
    return-void

    .line 41
    :cond_28
    iget-object v2, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {v2, v0, v1}, Lcom/micloud/midrive/utils/FormatStringUtils;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/micloud/midrive/manager/NetworkManager$FluxLimitExcessException;

    .line 49
    const-string v2, "Has used flux "

    .line 51
    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v1, v0}, Lcom/micloud/midrive/manager/NetworkManager$FluxLimitExcessException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v1

    .line 59
    :cond_3a
    new-instance v0, Lcom/micloud/midrive/manager/NetworkManager$UnknownStateException;

    .line 61
    const-string v1, "Unknown traffic metered bytes"

    .line 63
    invoke-direct {v0, v1}, Lcom/micloud/midrive/manager/NetworkManager$UnknownStateException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0

    .line 67
    :cond_42
    new-instance v0, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;

    .line 69
    invoke-direct {v0}, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;-><init>()V

    .line 72
    throw v0
.end method

.method public acquireFreeNetwork()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isFreeNetworkConnected()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;

    .line 16
    invoke-direct {v0}, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;-><init>()V

    .line 19
    throw v0
.end method

.method public acquireSpecificNetwork(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lcom/micloud/midrive/server/transport/Network;->acquireNetwork(Lcom/micloud/midrive/manager/NetworkManager;)V

    .line 4
    return-void
.end method

.method public isAnyNetworkAvailable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isFreeNetworkAvailable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isFreeNetworkConnected()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isNetworkAvailable(Lcom/micloud/midrive/server/transport/Network;)Z
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lcom/micloud/midrive/server/transport/Network;->isNetworkAvailable(Lcom/micloud/midrive/manager/NetworkManager;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public declared-synchronized registerNetworkConfigChangedCallback(Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mNetworkConfigChangedCallbacks:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_12

    .line 8
    if-eqz v0, :cond_b

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mNetworkConfigChangedCallbacks:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public setMeteredFluxLimit(J)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Set metered network flux limitation="

    .line 6
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 12
    invoke-static {v2, p1, p2}, Lcom/micloud/midrive/utils/FormatStringUtils;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v1, v0, v2

    .line 26
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 29
    iput-wide p1, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxLimitBytes:J

    .line 31
    iget-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxMonitor:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    .line 33
    if-eqz p1, :cond_25

    .line 35
    invoke-virtual {p1}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->stopMonitor()V

    .line 38
    :cond_25
    new-instance p1, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    .line 40
    invoke-direct {p1}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxMonitor:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    .line 45
    iget-object p2, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    .line 47
    const-wide/16 v0, 0x3e8

    .line 49
    invoke-virtual {p1, p2, v0, v1}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->startMonitor(Landroid/content/Context;J)V

    .line 52
    invoke-direct {p0}, Lcom/micloud/midrive/manager/NetworkManager;->notifyNetworkConfigChangedInMainThread()V

    .line 55
    return-void
.end method

.method public declared-synchronized unregisterNetworkConfigChangedCallback(Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mNetworkConfigChangedCallbacks:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public unsetMeteredFluxLimit()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxMonitor:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->stopMonitor()V

    .line 8
    :cond_7
    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxLimitBytes:J

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxMonitor:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    .line 15
    invoke-direct {p0}, Lcom/micloud/midrive/manager/NetworkManager;->notifyNetworkConfigChangedInMainThread()V

    .line 18
    return-void
.end method
