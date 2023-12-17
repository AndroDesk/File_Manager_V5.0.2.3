.class public Lcom/android/fileexplorer/util/TimeCost;
.super Ljava/lang/Object;
.source "TimeCost.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimeCost"


# instance fields
.field private hasInited:Z

.field private time:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    .line 7
    return-void
.end method


# virtual methods
.method public checkTimeCost(Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, " "

    .line 3
    invoke-static {p1, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/android/fileexplorer/util/TimeCost;->time:J

    .line 13
    sub-long/2addr v0, v2

    .line 14
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const-string v0, "TimeCost"

    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    .line 29
    return-void
.end method

.method public checkTimeCostDebug(Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, " "

    .line 3
    invoke-static {p1, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/android/fileexplorer/util/TimeCost;->time:J

    .line 13
    sub-long/2addr v0, v2

    .line 14
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const-string v0, "TimeCost"

    .line 23
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    .line 29
    return-void
.end method

.method public getCostTime()J
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    return-wide v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/android/fileexplorer/util/TimeCost;->time:J

    .line 17
    sub-long/2addr v0, v2

    .line 18
    return-wide v0
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/fileexplorer/util/TimeCost;->time:J

    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/fileexplorer/util/TimeCost;->hasInited:Z

    .line 10
    return-void
.end method
