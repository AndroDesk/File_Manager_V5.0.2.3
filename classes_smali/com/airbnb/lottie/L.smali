.class public Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static DBG:Z = false

.field private static final MAX_DEPTH:I = 0x14

.field public static final TAG:Ljava/lang/String; = "LOTTIE"

.field private static depthPastMaxDepth:I = 0x0

.field private static sections:[Ljava/lang/String; = null

.field private static startTimeNs:[J = null

.field private static traceDepth:I = 0x0

.field private static traceEnabled:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 8
    const/16 v1, 0x14

    .line 10
    if-ne v0, v1, :cond_12

    .line 12
    sget p0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 14
    add-int/lit8 p0, p0, 0x1

    .line 16
    sput p0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 18
    return-void

    .line 19
    :cond_12
    sget-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    .line 21
    aput-object p0, v1, v0

    .line 23
    sget-object v1, Lcom/airbnb/lottie/L;->startTimeNs:[J

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 28
    move-result-wide v2

    .line 29
    aput-wide v2, v1, v0

    .line 31
    sget v0, Li0/i;->a:I

    .line 33
    invoke-static {p0}, Li0/i$a;->a(Ljava/lang/String;)V

    .line 36
    sget p0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 38
    add-int/lit8 p0, p0, 0x1

    .line 40
    sput p0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 42
    return-void
.end method

.method public static endSection(Ljava/lang/String;)F
    .registers 5

    .line 1
    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_a

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 8
    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 10
    return v1

    .line 11
    :cond_a
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 13
    if-nez v0, :cond_f

    .line 15
    return v1

    .line 16
    :cond_f
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 20
    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 22
    const/4 v1, -0x1

    .line 23
    if-eq v0, v1, :cond_52

    .line 25
    sget-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    .line 27
    aget-object v0, v1, v0

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_38

    .line 35
    sget p0, Li0/i;->a:I

    .line 37
    invoke-static {}, Li0/i$a;->b()V

    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 43
    move-result-wide v0

    .line 44
    sget-object p0, Lcom/airbnb/lottie/L;->startTimeNs:[J

    .line 46
    sget v2, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 48
    aget-wide v2, p0, v2

    .line 50
    sub-long/2addr v0, v2

    .line 51
    long-to-float p0, v0

    .line 52
    const v0, 0x49742400  # 1000000.0f

    .line 55
    div-float/2addr p0, v0

    .line 56
    return p0

    .line 57
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    const-string v1, "Unbalanced trace call "

    .line 61
    const-string v2, ". Expected "

    .line 63
    invoke-static {v1, p0, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object p0

    .line 67
    sget-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    .line 69
    sget v2, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 71
    aget-object v1, v1, v2

    .line 73
    const-string v2, "."

    .line 75
    invoke-static {p0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    throw v0

    .line 83
    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 85
    const-string v0, "Can\'t end trace section. There are none."

    .line 87
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p0
.end method

.method public static setTraceEnabled(Z)V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 3
    if-ne v0, p0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sput-boolean p0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 8
    if-eqz p0, :cond_13

    .line 10
    const/16 p0, 0x14

    .line 12
    new-array v0, p0, [Ljava/lang/String;

    .line 14
    sput-object v0, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    .line 16
    new-array p0, p0, [J

    .line 18
    sput-object p0, Lcom/airbnb/lottie/L;->startTimeNs:[J

    .line 20
    :cond_13
    return-void
.end method
