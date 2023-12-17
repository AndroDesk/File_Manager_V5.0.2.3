.class public final Lmicloud/compat/v18/utils/BusyWaitUtil;
.super Ljava/lang/Object;
.source "BusyWaitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmicloud/compat/v18/utils/BusyWaitUtil$a;,
        Lmicloud/compat/v18/utils/BusyWaitUtil$NotAvailableException;
    }
.end annotation


# direct methods
.method public static a(Lmicloud/compat/v18/utils/BusyWaitUtil$a;JJ)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueType:",
            "Ljava/lang/Object;",
            ">(",
            "Lmicloud/compat/v18/utils/BusyWaitUtil$a<",
            "TValueType;>;JJ)TValueType;"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p1, v0

    .line 5
    if-ltz v2, :cond_31

    .line 7
    cmp-long v2, p3, v0

    .line 9
    if-lez v2, :cond_31

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v2

    .line 15
    move-wide v4, v0

    .line 16
    :goto_f
    const-wide/16 v6, 0x1

    .line 18
    add-long/2addr v6, v4

    .line 19
    :try_start_12
    invoke-interface {p0, v2, v3, v4, v5}, Lmicloud/compat/v18/utils/BusyWaitUtil$a;->doAction(JJ)Ljava/lang/Object;

    .line 22
    move-result-object p0
    :try_end_16
    .catch Lmicloud/compat/v18/utils/BusyWaitUtil$NotAvailableException; {:try_start_12 .. :try_end_16} :catch_17

    .line 23
    return-object p0

    .line 24
    :catch_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 27
    move-result-wide v4

    .line 28
    sub-long/2addr v4, v2

    .line 29
    sub-long v4, p1, v4

    .line 31
    cmp-long v8, v4, v0

    .line 33
    if-lez v8, :cond_2b

    .line 35
    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 38
    move-result-wide v4

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 42
    move-wide v4, v6

    .line 43
    goto :goto_f

    .line 44
    :cond_2b
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 49
    throw p0

    .line 50
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    const-string p1, "null == action || timeoutMillis < 0 || retryIntervalMillis <= 0"

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0
.end method
