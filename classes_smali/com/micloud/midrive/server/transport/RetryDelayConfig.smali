.class public Lcom/micloud/midrive/server/transport/RetryDelayConfig;
.super Ljava/lang/Object;
.source "RetryDelayConfig.java"


# static fields
.field private static final MAX_RETRY_DELAY:J = 0x2710L

.field private static final MIN_RETRY_DELAY:J = 0x3e8L

.field private static sRandom:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 6
    sput-object v0, Lcom/micloud/midrive/server/transport/RetryDelayConfig;->sRandom:Ljava/util/Random;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "RetryDelayConfig class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static getDelay(J)J
    .registers 8

    .line 1
    const-wide/16 v0, 0x3e8

    .line 3
    cmp-long v0, p0, v0

    .line 5
    if-ltz v0, :cond_f

    .line 7
    const-wide/16 v0, 0x2710

    .line 9
    cmp-long v0, p0, v0

    .line 11
    if-lez v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    move-wide v0, p0

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    :goto_f
    invoke-static {}, Lcom/micloud/midrive/server/transport/RetryDelayConfig;->getRandomDelay()J

    .line 19
    move-result-wide v0

    .line 20
    :goto_13
    const/4 v2, 0x1

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    const/4 v3, 0x0

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v5, "hint: "

    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string p0, ", delay: "

    .line 39
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    aput-object p0, v2, v3

    .line 51
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 54
    return-wide v0
.end method

.method private static getRandomDelay()J
    .registers 4

    .line 1
    sget-object v0, Lcom/micloud/midrive/server/transport/RetryDelayConfig;->sRandom:Ljava/util/Random;

    .line 3
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x2329

    .line 13
    rem-long/2addr v0, v2

    .line 14
    const-wide/16 v2, 0x3e8

    .line 16
    add-long/2addr v0, v2

    .line 17
    return-wide v0
.end method
