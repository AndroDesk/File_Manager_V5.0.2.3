.class public Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;
.super Ljava/lang/Object;
.source "SyncRequestParam.java"


# static fields
.field private static final LOCAL_MAX_MANUAL_SYNC_INHERITANCE_DURATION_IN_MILLIS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "SyncRequestParam"

.field private static volatile sLastManualSyncTimeInMillis:J = -0x1L

.field private static sManualSyncCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->sManualSyncCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addParam(Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-wide v0, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->sLastManualSyncTimeInMillis:J

    .line 3
    const-wide/16 v2, -0x1

    .line 5
    cmp-long v2, v0, v2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_19

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    move-result-wide v4

    .line 14
    sub-long/2addr v4, v0

    .line 15
    const-wide/32 v0, 0x493e0

    .line 18
    cmp-long v0, v4, v0

    .line 20
    if-lez v0, :cond_16

    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    move v3, v0

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const-wide/16 v4, 0x0

    .line 28
    :goto_1b
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->sManualSyncCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 33
    move-result v0

    .line 34
    const-string v1, "backend"

    .line 36
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/CharSequence;

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_36

    .line 48
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_36
    const-string p0, "_backend"

    .line 57
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/CharSequence;

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4b

    .line 69
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_4b
    const-string p0, "_delta"

    .line 78
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/lang/CharSequence;

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_60

    .line 90
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_60
    const-string p0, "_count"

    .line 99
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/CharSequence;

    .line 105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_75

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_75
    return-void
.end method

.method public static decrementManualSyncCount()V
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->sManualSyncCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 6
    return-void
.end method

.method public static incrementManualSyncCountAndRecordCurMillis()V
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->sManualSyncCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v0

    .line 10
    sput-wide v0, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->sLastManualSyncTimeInMillis:J

    .line 12
    return-void
.end method
