.class public Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;
.super Landroid/os/HandlerThread;
.source "TrafficMeteredFluxMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficMeteredFluxMonitor"


# instance fields
.field private mMeteredFluxQueryHandler:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;

.field public volatile mTrafficMeteredFluxBytes:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "TrafficMeteredFluxMonitor"

    .line 3
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getTrafficMeteredFluxBytes()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->mTrafficMeteredFluxBytes:J

    .line 3
    return-wide v0
.end method

.method public startMonitor(Landroid/content/Context;J)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->mTrafficMeteredFluxBytes:J

    .line 8
    new-instance v0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;

    .line 10
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 13
    move-result-object v5

    .line 14
    move-object v2, v0

    .line 15
    move-object v3, p0

    .line 16
    move-object v4, p1

    .line 17
    move-wide v6, p2

    .line 18
    invoke-direct/range {v2 .. v7}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;-><init>(Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;Landroid/content/Context;Landroid/os/Looper;J)V

    .line 21
    iput-object v0, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->mMeteredFluxQueryHandler:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;

    .line 23
    invoke-virtual {v0}, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;->init()V

    .line 26
    return-void
.end method

.method public stopMonitor()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->mTrafficMeteredFluxBytes:J

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor;->mMeteredFluxQueryHandler:Lcom/micloud/midrive/server/transport/TrafficMeteredFluxMonitor$MeteredFluxQueryHandler;

    .line 11
    return-void
.end method
