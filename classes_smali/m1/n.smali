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
.method public constructor <init>(Ljava/io/InputStream;Lm1/i;Lm1/c;Lm1/j;Z)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lm1/n;->e:J

    .line 8
    iput-wide v0, p0, Lm1/n;->f:J

    .line 10
    iput-object p2, p0, Lm1/n;->a:Lm1/i;

    .line 12
    iput-object p3, p0, Lm1/n;->b:Lm1/c;

    .line 14
    iput-object p4, p0, Lm1/n;->c:Lm1/j;

    .line 16
    iput-boolean p5, p0, Lm1/n;->d:Z

    .line 18
    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 14

    .line 1
    iget-object v0, p0, Lm1/n;->c:Lm1/j;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    invoke-interface {v0}, Lm1/j;->checkStop()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_18

    .line 12
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 14
    new-instance p2, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    .line 16
    invoke-direct {p2}, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;-><init>()V

    .line 19
    const-string v0, "@ ProcessMonitorInput::process()"

    .line 21
    invoke-direct {p1, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    throw p1

    .line 25
    :cond_18
    :goto_18
    const-wide/16 v0, 0x0

    .line 27
    cmp-long v0, p1, v0

    .line 29
    if-ltz v0, :cond_4b

    .line 31
    iget-wide v0, p0, Lm1/n;->e:J

    .line 33
    add-long/2addr v0, p1

    .line 34
    iput-wide v0, p0, Lm1/n;->e:J

    .line 36
    iget-object v0, p0, Lm1/n;->a:Lm1/i;

    .line 38
    if-eqz v0, :cond_3c

    .line 40
    iget-object v1, v0, Lm1/i;->a:Lm1/h;

    .line 42
    if-eqz v1, :cond_3c

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    move-result-wide v9

    .line 48
    iget-object v2, v0, Lm1/i;->a:Lm1/h;

    .line 50
    iget-object v3, v0, Lm1/i;->b:Ljava/lang/String;

    .line 52
    iget-wide v4, v0, Lm1/i;->c:J

    .line 54
    long-to-float v8, p1

    .line 55
    move-wide v6, v9

    .line 56
    invoke-virtual/range {v2 .. v8}, Lm1/h;->f(Ljava/lang/String;JJF)V

    .line 59
    iput-wide v9, v0, Lm1/i;->c:J

    .line 61
    :cond_3c
    iget-object v0, p0, Lm1/n;->b:Lm1/c;

    .line 63
    if-eqz v0, :cond_4b

    .line 65
    iget-boolean v1, p0, Lm1/n;->d:Z

    .line 67
    if-eqz v1, :cond_48

    .line 69
    invoke-interface {v0, p1, p2}, Lm1/c;->sended(J)V

    .line 72
    goto :goto_4b

    .line 73
    :cond_48
    invoke-interface {v0, p1, p2}, Lm1/c;->received(J)V

    .line 76
    :cond_4b
    :goto_4b
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 5
    iget-wide v0, p0, Lm1/n;->e:J

    .line 7
    iput-wide v0, p0, Lm1/n;->f:J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method

.method public final read()I
    .registers 4

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const-wide/16 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, v2}, Lm1/n;->a(J)V

    :cond_c
    return v0
.end method

.method public final read([BII)I
    .registers 4

    .line 3
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_a

    int-to-long p2, p1

    .line 4
    invoke-virtual {p0, p2, p3}, Lm1/n;->a(J)V

    :cond_a
    return p1
.end method

.method public final declared-synchronized reset()V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 5
    iget-wide v0, p0, Lm1/n;->f:J

    .line 7
    iput-wide v0, p0, Lm1/n;->e:J

    .line 9
    iget-object v2, p0, Lm1/n;->b:Lm1/c;

    .line 11
    if-eqz v2, :cond_17

    .line 13
    iget-boolean v3, p0, Lm1/n;->d:Z

    .line 15
    if-eqz v3, :cond_14

    .line 17
    invoke-interface {v2, v0, v1}, Lm1/c;->setSendPos(J)V

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    invoke-interface {v2, v0, v1}, Lm1/c;->setReceivePos(J)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 24
    :cond_17
    :goto_17
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception v0

    .line 27
    monitor-exit p0

    .line 28
    throw v0
.end method

.method public final skip(J)J
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    .line 4
    move-result-wide p1

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    cmp-long v0, p1, v0

    .line 9
    if-lez v0, :cond_d

    .line 11
    invoke-virtual {p0, p1, p2}, Lm1/n;->a(J)V

    .line 14
    :cond_d
    return-wide p1
.end method
