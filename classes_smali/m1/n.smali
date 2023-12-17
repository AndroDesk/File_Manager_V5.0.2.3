.class public final Lm1/n;
.super Ljava/io/FilterInputStream;
.source "ProcessMonitorInputStream.java"


# instance fields
.field public final a:Lm1/i;

.field public final b:Lm1/c;

.field public final c:Lm1/j;

.field public final d:Z

.field public e:J

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lm1/i;Lm1/c;Lm1/j;Z)V
    .registers 8

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm1/n;->e:J

    iput-wide v0, p0, Lm1/n;->f:J

    iput-object p2, p0, Lm1/n;->a:Lm1/i;

    iput-object p3, p0, Lm1/n;->b:Lm1/c;

    iput-object p4, p0, Lm1/n;->c:Lm1/j;

    iput-boolean p5, p0, Lm1/n;->d:Z

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 14

    iget-object v0, p0, Lm1/n;->c:Lm1/j;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lm1/j;->checkStop()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_18

    :cond_b
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    invoke-direct {p2}, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;-><init>()V

    const-string v0, "@ ProcessMonitorInput::process()"

    invoke-direct {p1, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_18
    :goto_18
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4b

    iget-wide v0, p0, Lm1/n;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lm1/n;->e:J

    iget-object v0, p0, Lm1/n;->a:Lm1/i;

    if-eqz v0, :cond_3c

    iget-object v1, v0, Lm1/i;->a:Lm1/h;

    if-eqz v1, :cond_3c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v2, v0, Lm1/i;->a:Lm1/h;

    iget-object v3, v0, Lm1/i;->b:Ljava/lang/String;

    iget-wide v4, v0, Lm1/i;->c:J

    long-to-float v8, p1

    move-wide v6, v9

    invoke-virtual/range {v2 .. v8}, Lm1/h;->f(Ljava/lang/String;JJF)V

    iput-wide v9, v0, Lm1/i;->c:J

    :cond_3c
    iget-object v0, p0, Lm1/n;->b:Lm1/c;

    if-eqz v0, :cond_4b

    iget-boolean v1, p0, Lm1/n;->d:Z

    if-eqz v1, :cond_48

    invoke-interface {v0, p1, p2}, Lm1/c;->sended(J)V

    goto :goto_4b

    :cond_48
    invoke-interface {v0, p1, p2}, Lm1/c;->received(J)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    iget-wide v0, p0, Lm1/n;->e:J

    iput-wide v0, p0, Lm1/n;->f:J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final read()I
    .registers 4

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lm1/n;->a(J)V

    :cond_c
    return v0
.end method

.method public final read([BII)I
    .registers 4

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_a

    int-to-long p2, p1

    invoke-virtual {p0, p2, p3}, Lm1/n;->a(J)V

    :cond_a
    return p1
.end method

.method public final declared-synchronized reset()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    iget-wide v0, p0, Lm1/n;->f:J

    iput-wide v0, p0, Lm1/n;->e:J

    iget-object v2, p0, Lm1/n;->b:Lm1/c;

    if-eqz v2, :cond_17

    iget-boolean v3, p0, Lm1/n;->d:Z

    if-eqz v3, :cond_14

    invoke-interface {v2, v0, v1}, Lm1/c;->setSendPos(J)V

    goto :goto_17

    :cond_14
    invoke-interface {v2, v0, v1}, Lm1/c;->setReceivePos(J)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .registers 5

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    invoke-virtual {p0, p1, p2}, Lm1/n;->a(J)V

    :cond_d
    return-wide p1
.end method
