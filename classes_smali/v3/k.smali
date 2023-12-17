.class public final Lv3/k;
.super Ljava/lang/Object;
.source "Tasks.kt"


# static fields
.field public static final a:J

.field public static final b:I

.field public static final c:I

.field public static final d:J

.field public static e:Lv3/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lv3/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lv3/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    .line 1
    const-wide/16 v3, 0x1

    .line 3
    const-wide v5, 0x7fffffffffffffffL

    .line 8
    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    .line 10
    const-wide/32 v1, 0x186a0

    .line 13
    invoke-static/range {v0 .. v6}, Lu3/b;->b(Ljava/lang/String;JJJ)J

    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lv3/k;->a:J

    .line 19
    sget v0, Lu3/s;->a:I

    .line 21
    const/4 v1, 0x2

    .line 22
    if-ge v0, v1, :cond_18

    .line 24
    move v0, v1

    .line 25
    :cond_18
    const/16 v1, 0x8

    .line 27
    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static {v2, v0, v3, v4, v1}, Lu3/b;->c(Ljava/lang/String;IIII)I

    .line 34
    move-result v0

    .line 35
    sput v0, Lv3/k;->b:I

    .line 37
    const/4 v0, 0x4

    .line 38
    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 40
    const v2, 0x1ffffe

    .line 43
    invoke-static {v1, v2, v4, v2, v0}, Lu3/b;->c(Ljava/lang/String;IIII)I

    .line 46
    move-result v0

    .line 47
    sput v0, Lv3/k;->c:I

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    const-wide/16 v6, 0x3c

    .line 53
    const-wide/16 v8, 0x1

    .line 55
    const-wide v10, 0x7fffffffffffffffL

    .line 60
    const-string v5, "kotlinx.coroutines.scheduler.keep.alive.sec"

    .line 62
    invoke-static/range {v5 .. v11}, Lu3/b;->b(Ljava/lang/String;JJJ)J

    .line 65
    move-result-wide v1

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 69
    move-result-wide v0

    .line 70
    sput-wide v0, Lv3/k;->d:J

    .line 72
    sget-object v0, Lv3/d;->a:Lv3/d;

    .line 74
    sput-object v0, Lv3/k;->e:Lv3/d;

    .line 76
    new-instance v0, Lv3/i;

    .line 78
    invoke-direct {v0, v4}, Lv3/i;-><init>(I)V

    .line 81
    sput-object v0, Lv3/k;->f:Lv3/i;

    .line 83
    new-instance v0, Lv3/i;

    .line 85
    invoke-direct {v0, v3}, Lv3/i;-><init>(I)V

    .line 88
    sput-object v0, Lv3/k;->g:Lv3/i;

    .line 90
    return-void
.end method
