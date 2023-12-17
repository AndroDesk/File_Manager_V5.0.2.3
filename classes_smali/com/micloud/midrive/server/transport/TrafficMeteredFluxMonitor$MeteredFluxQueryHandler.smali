.class Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;
.super Landroid/os/Handler;
.source "TrafficMeteredFluxMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MeteredFluxQueryHandler"
.end annotation


# instance fields
.field private final WHAT_QUERY_METERED_FLUX:I

.field private final mContext:Landroid/content/Context;

.field private mLastQueryTotalFluxBytes:J

.field private final mQueryFluxIntervalMs:J

.field private final mUid:I

.field public final synthetic this$0:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;Landroid/content/Context;Landroid/os/Looper;J)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->this$0:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    .line 3
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->WHAT_QUERY_METERED_FLUX:I

    .line 9
    iput-object p2, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mContext:Landroid/content/Context;

    .line 11
    iput-wide p4, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mQueryFluxIntervalMs:J

    .line 13
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mUid:I

    .line 19
    return-void
.end method

.method private queryFluxBytes()J
    .registers 5

    .line 1
    iget v0, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mUid:I

    .line 3
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 6
    move-result-wide v0

    .line 7
    iget v2, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mUid:I

    .line 9
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v2, v0

    .line 14
    return-wide v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v1

    .line 11
    invoke-direct {p0}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->queryFluxBytes()J

    .line 14
    move-result-wide v3

    .line 15
    iget-object p1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {p1}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/micloud/midrive/manager/ConnectivityManager;->isMeteredNetworkConnected()Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2d

    .line 27
    iget-wide v5, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mLastQueryTotalFluxBytes:J

    .line 29
    const-wide/16 v7, 0x0

    .line 31
    cmp-long p1, v5, v7

    .line 33
    if-eqz p1, :cond_2d

    .line 35
    iget-object p1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->this$0:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    .line 37
    iget-wide v5, p1, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->mTrafficMeteredFluxBytes:J

    .line 39
    iget-wide v7, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mLastQueryTotalFluxBytes:J

    .line 41
    sub-long v7, v3, v7

    .line 43
    add-long/2addr v7, v5

    .line 44
    iput-wide v7, p1, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->mTrafficMeteredFluxBytes:J

    .line 46
    :cond_2d
    iput-wide v3, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mLastQueryTotalFluxBytes:J

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    move-result-wide v3

    .line 52
    sub-long/2addr v3, v1

    .line 53
    iget-wide v1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mQueryFluxIntervalMs:J

    .line 55
    cmp-long p1, v3, v1

    .line 57
    if-ltz p1, :cond_3e

    .line 59
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    goto :goto_42

    .line 63
    :cond_3e
    sub-long/2addr v1, v3

    .line 64
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    :goto_42
    return-void
.end method

.method public init()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    return-void
.end method
