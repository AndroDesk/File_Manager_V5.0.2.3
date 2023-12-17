.class public final Lm1/o;
.super Ljava/io/FilterOutputStream;
.source "ProcessMonitorOutputStream.java"


# instance fields
.field public final a:Lm1/i;

.field public final b:Lm1/c;

.field public final c:Lm1/j;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lm1/i;Lm1/c;Lm1/j;Z)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    iput-object p2, p0, Lm1/o;->a:Lm1/i;

    .line 6
    iput-object p3, p0, Lm1/o;->b:Lm1/c;

    .line 8
    iput-object p4, p0, Lm1/o;->c:Lm1/j;

    .line 10
    iput-boolean p5, p0, Lm1/o;->d:Z

    .line 12
    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 14

    .line 1
    iget-object v0, p0, Lm1/o;->c:Lm1/j;

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
    const-string v0, "@ ProcessMonitorOutputStream::process()"

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
    if-ltz v0, :cond_46

    .line 31
    iget-object v0, p0, Lm1/o;->a:Lm1/i;

    .line 33
    if-eqz v0, :cond_37

    .line 35
    iget-object v1, v0, Lm1/i;->a:Lm1/h;

    .line 37
    if-eqz v1, :cond_37

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    move-result-wide v9

    .line 43
    iget-object v2, v0, Lm1/i;->a:Lm1/h;

    .line 45
    iget-object v3, v0, Lm1/i;->b:Ljava/lang/String;

    .line 47
    iget-wide v4, v0, Lm1/i;->c:J

    .line 49
    long-to-float v8, p1

    .line 50
    move-wide v6, v9

    .line 51
    invoke-virtual/range {v2 .. v8}, Lm1/h;->f(Ljava/lang/String;JJF)V

    .line 54
    iput-wide v9, v0, Lm1/i;->c:J

    .line 56
    :cond_37
    iget-object v0, p0, Lm1/o;->b:Lm1/c;

    .line 58
    if-eqz v0, :cond_46

    .line 60
    iget-boolean v1, p0, Lm1/o;->d:Z

    .line 62
    if-eqz v1, :cond_43

    .line 64
    invoke-interface {v0, p1, p2}, Lm1/c;->sended(J)V

    .line 67
    goto :goto_46

    .line 68
    :cond_43
    invoke-interface {v0, p1, p2}, Lm1/c;->received(J)V

    .line 71
    :cond_46
    :goto_46
    return-void
.end method

.method public final write(I)V
    .registers 4

    .line 3
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    const-wide/16 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lm1/o;->a(J)V

    return-void
.end method

.method public final write([BII)V
    .registers 5

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p3

    .line 2
    invoke-virtual {p0, p1, p2}, Lm1/o;->a(J)V

    return-void
.end method
