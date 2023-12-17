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

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/micloud/midrive/server/transport/RetryDelayConfig;->sRandom:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RetryDelayConfig class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDelay(J)J
    .registers 8

    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_f

    const-wide/16 v0, 0x2710

    cmp-long v0, p0, v0

    if-lez v0, :cond_d

    goto :goto_f

    :cond_d
    move-wide v0, p0

    goto :goto_13

    :cond_f
    :goto_f
    invoke-static {}, Lcom/micloud/midrive/server/transport/RetryDelayConfig;->getRandomDelay()J

    move-result-wide v0

    :goto_13
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", delay: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    return-wide v0
.end method

.method private static getRandomDelay()J
    .registers 4

    sget-object v0, Lcom/micloud/midrive/server/transport/RetryDelayConfig;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2329

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    return-wide v0
.end method
