.class public final Lp4/h;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field public static a:Lp4/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lp4/g;)V
    .registers 6

    iget-object v0, p0, Lp4/g;->f:Lp4/g;

    if-nez v0, :cond_30

    iget-object v0, p0, Lp4/g;->g:Lp4/g;

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lp4/g;->d:Z

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const-class v0, Lp4/h;

    monitor-enter v0

    :try_start_10
    sget-wide v1, Lp4/h;->b:J

    const-wide/16 v3, 0x2000

    add-long/2addr v1, v3

    const-wide/32 v3, 0x10000

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    monitor-exit v0

    return-void

    :cond_1e
    sput-wide v1, Lp4/h;->b:J

    sget-object v1, Lp4/h;->a:Lp4/g;

    iput-object v1, p0, Lp4/g;->f:Lp4/g;

    const/4 v1, 0x0

    iput v1, p0, Lp4/g;->c:I

    iput v1, p0, Lp4/g;->b:I

    sput-object p0, Lp4/h;->a:Lp4/g;

    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_2d

    throw p0

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static b()Lp4/g;
    .registers 6

    const-class v0, Lp4/h;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lp4/h;->a:Lp4/g;

    if-eqz v1, :cond_17

    iget-object v2, v1, Lp4/g;->f:Lp4/g;

    sput-object v2, Lp4/h;->a:Lp4/g;

    const/4 v2, 0x0

    iput-object v2, v1, Lp4/g;->f:Lp4/g;

    sget-wide v2, Lp4/h;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lp4/h;->b:J

    monitor-exit v0

    return-object v1

    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1e

    new-instance v0, Lp4/g;

    invoke-direct {v0}, Lp4/g;-><init>()V

    return-object v0

    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method
