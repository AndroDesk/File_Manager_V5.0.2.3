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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;Landroid/content/Context;Landroid/os/Looper;J)V
    .registers 6

    iput-object p1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->this$0:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->WHAT_QUERY_METERED_FLUX:I

    iput-object p2, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mContext:Landroid/content/Context;

    iput-wide p4, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mQueryFluxIntervalMs:J

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mUid:I

    return-void
.end method

.method private queryFluxBytes()J
    .registers 5

    iget v0, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mUid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    iget v2, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mUid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    return-void

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->queryFluxBytes()J

    move-result-wide v3

    iget-object p1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/micloud/midrive/manager/ConnectivityManager;->isMeteredNetworkConnected()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-wide v5, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mLastQueryTotalFluxBytes:J

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->this$0:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;

    iget-wide v5, p1, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->mTrafficMeteredFluxBytes:J

    iget-wide v7, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mLastQueryTotalFluxBytes:J

    sub-long v7, v3, v7

    add-long/2addr v7, v5

    iput-wide v7, p1, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->mTrafficMeteredFluxBytes:J

    :cond_2d
    iput-wide v3, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mLastQueryTotalFluxBytes:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-wide v1, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->mQueryFluxIntervalMs:J

    cmp-long p1, v3, v1

    if-ltz p1, :cond_3e

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_42

    :cond_3e
    sub-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_42
    return-void
.end method

.method public init()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
