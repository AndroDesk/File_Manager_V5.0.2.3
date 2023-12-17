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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_31

    cmp-long v2, p3, v0

    if-lez v2, :cond_31

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v4, v0

    :goto_f
    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    :try_start_12
    invoke-interface {p0, v2, v3, v4, v5}, Lmicloud/compat/v18/utils/BusyWaitUtil$a;->doAction(JJ)Ljava/lang/Object;

    move-result-object p0
    :try_end_16
    .catch Lmicloud/compat/v18/utils/BusyWaitUtil$NotAvailableException; {:try_start_12 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long v4, p1, v4

    cmp-long v8, v4, v0

    if-lez v8, :cond_2b

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    move-wide v4, v6

    goto :goto_f

    :cond_2b
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null == action || timeoutMillis < 0 || retryIntervalMillis <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
