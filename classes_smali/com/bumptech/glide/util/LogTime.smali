.class public final Lcom/bumptech/glide/util/LogTime;
.super Ljava/lang/Object;
.source "LogTime.java"


# static fields
.field private static final MILLIS_MULTIPLIER:D


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 3
    const-wide/high16 v2, 0x4024000000000000L  # 10.0

    .line 5
    const-wide/high16 v4, 0x4018000000000000L  # 6.0

    .line 7
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 10
    move-result-wide v2

    .line 11
    div-double/2addr v0, v2

    .line 12
    sput-wide v0, Lcom/bumptech/glide/util/LogTime;->MILLIS_MULTIPLIER:D

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getElapsedMillis(J)D
    .registers 4

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p0

    .line 6
    long-to-double p0, v0

    .line 7
    sget-wide v0, Lcom/bumptech/glide/util/LogTime;->MILLIS_MULTIPLIER:D

    .line 9
    mul-double/2addr p0, v0

    .line 10
    return-wide p0
.end method

.method public static getLogTime()J
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
