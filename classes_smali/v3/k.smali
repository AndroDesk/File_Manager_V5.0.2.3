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

    const-wide/16 v3, 0x1

    const-wide v5, 0x7fffffffffffffffL

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    invoke-static/range {v0 .. v6}, Lu3/b;->b(Ljava/lang/String;JJJ)J

    move-result-wide v0

    sput-wide v0, Lv3/k;->a:J

    sget v0, Lu3/s;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_18

    move v0, v1

    :cond_18
    const/16 v1, 0x8

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Lu3/b;->c(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lv3/k;->b:I

    const/4 v0, 0x4

    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    const v2, 0x1ffffe

    invoke-static {v1, v2, v4, v2, v0}, Lu3/b;->c(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lv3/k;->c:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3c

    const-wide/16 v8, 0x1

    const-wide v10, 0x7fffffffffffffffL

    const-string v5, "kotlinx.coroutines.scheduler.keep.alive.sec"

    invoke-static/range {v5 .. v11}, Lu3/b;->b(Ljava/lang/String;JJJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lv3/k;->d:J

    sget-object v0, Lv3/d;->a:Lv3/d;

    sput-object v0, Lv3/k;->e:Lv3/d;

    new-instance v0, Lv3/i;

    invoke-direct {v0, v4}, Lv3/i;-><init>(I)V

    sput-object v0, Lv3/k;->f:Lv3/i;

    new-instance v0, Lv3/i;

    invoke-direct {v0, v3}, Lv3/i;-><init>(I)V

    sput-object v0, Lv3/k;->g:Lv3/i;

    return-void
.end method
