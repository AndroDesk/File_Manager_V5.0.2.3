.class public final Lm1/o;
.super Ljava/io/FilterOutputStream;
.source "ProcessMonitorOutputStream.java"


# instance fields
.field public final a:Lm1/i;

.field public final b:Lm1/c;

.field public final c:Lm1/j;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lm1/i;Lm1/c;Lm1/j;Z)V
    .registers 6

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lm1/o;->a:Lm1/i;

    iput-object p3, p0, Lm1/o;->b:Lm1/c;

    iput-object p4, p0, Lm1/o;->c:Lm1/j;

    iput-boolean p5, p0, Lm1/o;->d:Z

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 14

    iget-object v0, p0, Lm1/o;->c:Lm1/j;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lm1/j;->checkStop()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_18

    :cond_b
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    invoke-direct {p2}, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;-><init>()V

    const-string v0, "@ ProcessMonitorOutputStream::process()"

    invoke-direct {p1, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_18
    :goto_18
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_46

    iget-object v0, p0, Lm1/o;->a:Lm1/i;

    if-eqz v0, :cond_37

    iget-object v1, v0, Lm1/i;->a:Lm1/h;

    if-eqz v1, :cond_37

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v2, v0, Lm1/i;->a:Lm1/h;

    iget-object v3, v0, Lm1/i;->b:Ljava/lang/String;

    iget-wide v4, v0, Lm1/i;->c:J

    long-to-float v8, p1

    move-wide v6, v9

    invoke-virtual/range {v2 .. v8}, Lm1/h;->f(Ljava/lang/String;JJF)V

    iput-wide v9, v0, Lm1/i;->c:J

    :cond_37
    iget-object v0, p0, Lm1/o;->b:Lm1/c;

    if-eqz v0, :cond_46

    iget-boolean v1, p0, Lm1/o;->d:Z

    if-eqz v1, :cond_43

    invoke-interface {v0, p1, p2}, Lm1/c;->sended(J)V

    goto :goto_46

    :cond_43
    invoke-interface {v0, p1, p2}, Lm1/c;->received(J)V

    :cond_46
    :goto_46
    return-void
.end method

.method public final write(I)V
    .registers 4

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lm1/o;->a(J)V

    return-void
.end method

.method public final write([BII)V
    .registers 5

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Lm1/o;->a(J)V

    return-void
.end method
