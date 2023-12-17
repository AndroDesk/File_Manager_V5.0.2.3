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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager;->mNetworkConfigChangedCallbacks:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/manager/NetworkManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/manager/NetworkManager;->onConnectivityChanged()V

    return-void
.end method

.method public static get()Lcom/micloud/midrive/manager/NetworkManager;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/manager/NetworkManager;->sInstance:Lcom/micloud/midrive/manager/NetworkManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/manager/NetworkManager;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/manager/NetworkManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/micloud/midrive/manager/NetworkManager;->sInstance:Lcom/micloud/midrive/manager/NetworkManager;

    sget-object p0, Lcom/micloud/midrive/manager/NetworkManager;->sInstance:Lcom/micloud/midrive/manager/NetworkManager;

    invoke-direct {p0}, Lcom/micloud/midrive/manager/NetworkManager;->initNetworkChangedRegistration()V

    return-void
.end method

.method private initNetworkChangedRegistration()V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;-><init>(Lcom/micloud/midrive/manager/NetworkManager;Lcom/micloud/midrive/manager/NetworkManager$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private declared-synchronized notifyNetworkConfigChangedInMainThread()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mNetworkConfigChangedCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;

    invoke-interface {v1}, Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;->onNetworkConfigChangedInMainThread()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onConnectivityChanged()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onConnectivityChanged"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/micloud/midrive/manager/NetworkManager;->notifyNetworkConfigChangedInMainThread()V

    invoke-virtual {p0}, Lcom/micloud/midrive/manager/NetworkManager;->isAnyNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getRequireNetworkForSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/micloud/midrive/helper/SyncConfigHelper;->setRequireNetworkForSync(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    :cond_26
    return-void
.end method


# virtual methods
.method public acquireAnyNetwork()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;

    invoke-direct {v0}, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;-><init>()V

    throw v0
.end method

.method public acquireAnyNetworkUnderMeteredFluxLimit()V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isFreeNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxMonitor:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->getTrafficMeteredFluxBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxLimitBytes:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_28

    return-void

    :cond_28
    iget-object v2, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/micloud/midrive/utils/FormatStringUtils;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/micloud/midrive/manager/NetworkManager$FluxLimitExcessException;

    const-string v2, "Has used flux "

    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/micloud/midrive/manager/NetworkManager$FluxLimitExcessException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3a
    new-instance v0, Lcom/micloud/midrive/manager/NetworkManager$UnknownStateException;

    const-string v1, "Unknown traffic metered bytes"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/manager/NetworkManager$UnknownStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    new-instance v0, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;

    invoke-direct {v0}, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;-><init>()V

    throw v0
.end method

.method public acquireFreeNetwork()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isFreeNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;

    invoke-direct {v0}, Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;-><init>()V

    throw v0
.end method

.method public acquireSpecificNetwork(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/micloud/midrive/server/transport/Network;->acquireNetwork(Lcom/micloud/midrive/manager/NetworkManager;)V

    return-void
.end method

.method public isAnyNetworkAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method public isFreeNetworkAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isFreeNetworkConnected()Z

    move-result v0

    return v0
.end method

.method public isNetworkAvailable(Lcom/micloud/midrive/server/transport/Network;)Z
    .registers 2

    invoke-virtual {p1, p0}, Lcom/micloud/midrive/server/transport/Network;->isNetworkAvailable(Lcom/micloud/midrive/manager/NetworkManager;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized registerNetworkConfigChangedCallback(Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mNetworkConfigChangedCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_12

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mNetworkConfigChangedCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMeteredFluxLimit(J)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Set metered network flux limitation="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/micloud/midrive/utils/FormatStringUtils;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxLimitBytes:J

    iget-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxMonitor:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->stopMonitor()V

    :cond_25
    new-instance p1, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    invoke-direct {p1}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxMonitor:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    iget-object p2, p0, Lcom/micloud/midrive/manager/NetworkManager;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->startMonitor(Landroid/content/Context;J)V

    invoke-direct {p0}, Lcom/micloud/midrive/manager/NetworkManager;->notifyNetworkConfigChangedInMainThread()V

    return-void
.end method

.method public declared-synchronized unregisterNetworkConfigChangedCallback(Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mNetworkConfigChangedCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unsetMeteredFluxLimit()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxMonitor:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->stopMonitor()V

    :cond_7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxLimitBytes:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/micloud/midrive/manager/NetworkManager;->mMeteredFluxMonitor:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    invoke-direct {p0}, Lcom/micloud/midrive/manager/NetworkManager;->notifyNetworkConfigChangedInMainThread()V

    return-void
.end method
