.class public final Lm1/b;
.super Ljava/io/FilterInputStream;
.source "DecoderInputStream.java"


# instance fields
.field public final a:Lp1/h;

.field public final b:[B

.field public c:Z

.field public d:Z

.field public e:J

.field public final f:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lp1/h;)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lm1/b;->e:J

    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    iput-object p2, p0, Lm1/b;->a:Lp1/h;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lm1/b;->b:[B

    iget-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    instance-of p1, p1, Ls1/l;

    if-eqz p1, :cond_24

    iget-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast p1, Ls1/l;

    invoke-virtual {p1}, Ls1/l;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lm1/b;->f:J

    goto :goto_28

    :cond_24
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lm1/b;->f:J

    :goto_28
    return-void

    :cond_29
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a(I[BI)I
    .registers 13

    iget-boolean v0, p0, Lm1/b;->c:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lm1/b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_39

    move v2, p1

    move v0, p3

    :goto_16
    if-lez v0, :cond_23

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_23

    add-int/2addr v2, v1

    sub-int/2addr v0, v1

    goto :goto_16

    :cond_23
    if-ge v0, p3, :cond_32

    iget-object v2, p0, Lm1/b;->a:Lp1/h;

    sub-int v6, p3, v0

    iget-object v3, v2, Lp1/h;->b:Ls1/j;

    move-object v4, p2

    move v5, p1

    move-object v7, p2

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Ls1/j;->a([BII[BI)V

    :cond_32
    if-gez v1, :cond_37

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm1/b;->d:Z

    :cond_37
    sub-int/2addr p3, v0

    return p3

    :cond_39
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_3f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final available()I
    .registers 3

    iget-boolean v0, p0, Lm1/b;->c:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lm1/b;->d:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .registers 2

    iget-boolean v0, p0, Lm1/b;->c:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm1/b;->c:Z

    iput-boolean v0, p0, Lm1/b;->d:Z

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    :cond_c
    return-void
.end method

.method public final mark(I)V
    .registers 4

    iget-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    instance-of p1, p1, Ls1/l;

    if-eqz p1, :cond_10

    iget-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast p1, Ls1/l;

    invoke-virtual {p1}, Ls1/l;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lm1/b;->e:J

    :cond_10
    return-void
.end method

.method public final markSupported()Z
    .registers 2

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Ls1/l;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lm1/b;->a:Lp1/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final read()I
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lm1/b;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    return v3

    :cond_c
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .registers 6

    iget-boolean v0, p0, Lm1/b;->c:Z

    if-nez v0, :cond_64

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_5e

    if-ltz p3, :cond_5e

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_5e

    if-nez p3, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    array-length v0, p1

    if-gt p2, v0, :cond_58

    if-ltz p3, :cond_58

    if-ltz p2, :cond_58

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_58

    :try_start_1f
    invoke-virtual {p0, p2, p1, p3}, Lm1/b;->a(I[BI)I

    move-result p1

    if-lez p1, :cond_26

    return p1

    :cond_26
    iget-boolean p1, p0, Lm1/b;->d:Z

    if-eqz p1, :cond_31

    iget-object p1, p0, Lm1/b;->a:Lp1/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, -0x1

    return p1

    :cond_31
    if-eqz p1, :cond_39

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_39
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    new-instance p2, Ljava/util/zip/DataFormatException;

    const-string p3, "Failed read data from decoder."

    invoke-direct {p2, p3}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception p1

    iget-boolean p2, p0, Lm1/b;->d:Z

    if-eqz p2, :cond_57

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_57
    throw p1

    :cond_58
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_5e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_64
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final reset()V
    .registers 6

    invoke-virtual {p0}, Lm1/b;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-wide v0, p0, Lm1/b;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_37

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ls1/l;

    invoke-virtual {v0}, Ls1/l;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lm1/b;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm1/b;->d:Z

    :cond_1f
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ls1/l;

    iget-wide v1, p0, Lm1/b;->e:J

    invoke-virtual {v0, v1, v2}, Ls1/l;->e(J)V

    iget-object v0, p0, Lm1/b;->a:Lp1/h;

    invoke-virtual {v0}, Lp1/h;->a()V

    iget-object v0, p0, Lm1/b;->a:Lp1/h;

    iget-wide v1, p0, Lm1/b;->e:J

    iget-wide v3, p0, Lm1/b;->f:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lp1/h;->b(J)V

    :cond_37
    return-void

    :cond_38
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public final skip(J)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_34

    :goto_6
    cmp-long v2, v0, p1

    if-gez v2, :cond_33

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lm1/b;->b:[B

    const/4 v3, 0x0

    sub-long v4, p1, v0

    array-length v6, v2

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_21

    array-length v4, v2

    goto :goto_22

    :cond_21
    long-to-int v4, v4

    :goto_22
    invoke-virtual {p0, v2, v3, v4}, Lm1/b;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    return-wide v0

    :cond_2a
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_6

    :cond_2d
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_33
    return-wide v0

    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method