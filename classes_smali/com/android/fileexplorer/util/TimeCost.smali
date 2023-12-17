.class public Lcom/android/fileexplorer/util/TimeCost;
.super Ljava/lang/Object;
.source "TimeCost.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimeCost"


# instance fields
.field private hasInited:Z

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    return-void
.end method


# virtual methods
.method public checkTimeCost(Ljava/lang/String;)V
    .registers 6

    const-string v0, " "

    invoke-static {p1, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/fileexplorer/util/TimeCost;->time:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TimeCost"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    return-void
.end method

.method public checkTimeCostDebug(Ljava/lang/String;)V
    .registers 6

    const-string v0, " "

    invoke-static {p1, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/fileexplorer/util/TimeCost;->time:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TimeCost"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    return-void
.end method

.method public getCostTime()J
    .registers 5

    iget-boolean v0, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/fileexplorer/util/TimeCost;->time:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public init()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/util/TimeCost;->time:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    return-void
.end method
