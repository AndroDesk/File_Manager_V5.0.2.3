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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Lp4/g;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lp4/g;->f:Lp4/g;

    .line 3
    if-nez v0, :cond_30

    .line 5
    iget-object v0, p0, Lp4/g;->g:Lp4/g;

    .line 7
    if-nez v0, :cond_30

    .line 9
    iget-boolean v0, p0, Lp4/g;->d:Z

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    const-class v0, Lp4/h;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_10
    sget-wide v1, Lp4/h;->b:J

    .line 19
    const-wide/16 v3, 0x2000

    .line 21
    add-long/2addr v1, v3

    .line 22
    const-wide/32 v3, 0x10000

    .line 25
    cmp-long v3, v1, v3

    .line 27
    if-lez v3, :cond_1e

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :cond_1e
    sput-wide v1, Lp4/h;->b:J

    .line 33
    sget-object v1, Lp4/h;->a:Lp4/g;

    .line 35
    iput-object v1, p0, Lp4/g;->f:Lp4/g;

    .line 37
    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lp4/g;->c:I

    .line 40
    iput v1, p0, Lp4/g;->b:I

    .line 42
    sput-object p0, Lp4/h;->a:Lp4/g;

    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_2d
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_2d

    .line 48
    throw p0

    .line 49
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 54
    throw p0
.end method

.method public static b()Lp4/g;
    .registers 6

    .line 1
    const-class v0, Lp4/h;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lp4/h;->a:Lp4/g;

    .line 6
    if-eqz v1, :cond_17

    .line 8
    iget-object v2, v1, Lp4/g;->f:Lp4/g;

    .line 10
    sput-object v2, Lp4/h;->a:Lp4/g;

    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v1, Lp4/g;->f:Lp4/g;

    .line 15
    sget-wide v2, Lp4/h;->b:J

    .line 17
    const-wide/16 v4, 0x2000

    .line 19
    sub-long/2addr v2, v4

    .line 20
    sput-wide v2, Lp4/h;->b:J

    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1e

    .line 25
    new-instance v0, Lp4/g;

    .line 27
    invoke-direct {v0}, Lp4/g;-><init>()V

    .line 30
    return-object v0

    .line 31
    :catchall_1e
    move-exception v1

    .line 32
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    .line 33
    throw v1
.end method
