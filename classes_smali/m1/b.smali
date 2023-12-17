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
.method public constructor <init>(Ljava/io/InputStream;Lp1/h;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lm1/b;->e:J

    .line 8
    if-eqz p1, :cond_29

    .line 10
    if-eqz p2, :cond_29

    .line 12
    iput-object p2, p0, Lm1/b;->a:Lp1/h;

    .line 14
    const/16 p1, 0x2000

    .line 16
    new-array p1, p1, [B

    .line 18
    iput-object p1, p0, Lm1/b;->b:[B

    .line 20
    iget-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 22
    instance-of p1, p1, Ls1/l;

    .line 24
    if-eqz p1, :cond_24

    .line 26
    iget-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 28
    check-cast p1, Ls1/l;

    .line 30
    invoke-virtual {p1}, Ls1/l;->a()J

    .line 33
    move-result-wide p1

    .line 34
    iput-wide p1, p0, Lm1/b;->f:J

    .line 36
    goto :goto_28

    .line 37
    :cond_24
    const-wide/16 p1, 0x0

    .line 39
    iput-wide p1, p0, Lm1/b;->f:J

    .line 41
    :goto_28
    return-void

    .line 42
    :cond_29
    const/4 p1, 0x0

    .line 43
    throw p1
.end method


# virtual methods
.method public final a(I[BI)I
    .registers 13

    .line 1
    iget-boolean v0, p0, Lm1/b;->c:Z

    .line 3
    if-nez v0, :cond_3f

    .line 5
    iget-boolean v0, p0, Lm1/b;->d:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_39

    .line 21
    move v2, p1

    .line 22
    move v0, p3

    .line 23
    :goto_16
    if-lez v0, :cond_23

    .line 25
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 27
    invoke-virtual {v1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    .line 30
    move-result v1

    .line 31
    if-ltz v1, :cond_23

    .line 33
    add-int/2addr v2, v1

    .line 34
    sub-int/2addr v0, v1

    .line 35
    goto :goto_16

    .line 36
    :cond_23
    if-ge v0, p3, :cond_32

    .line 38
    iget-object v2, p0, Lm1/b;->a:Lp1/h;

    .line 40
    sub-int v6, p3, v0

    .line 42
    iget-object v3, v2, Lp1/h;->b:Ls1/j;

    .line 44
    move-object v4, p2

    .line 45
    move v5, p1

    .line 46
    move-object v7, p2

    .line 47
    move v8, p1

    .line 48
    invoke-virtual/range {v3 .. v8}, Ls1/j;->a([BII[BI)V

    .line 51
    :cond_32
    if-gez v1, :cond_37

    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lm1/b;->d:Z

    .line 56
    :cond_37
    sub-int/2addr p3, v0

    .line 57
    return p3

    .line 58
    :cond_39
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 60
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 63
    throw p1

    .line 64
    :cond_3f
    new-instance p1, Ljava/io/IOException;

    .line 66
    const-string p2, "Stream is closed"

    .line 68
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1
.end method

.method public final available()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lm1/b;->c:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-boolean v0, p0, Lm1/b;->d:Z

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 15
    const-string v1, "Stream is closed"

    .line 17
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm1/b;->c:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lm1/b;->c:Z

    .line 8
    iput-boolean v0, p0, Lm1/b;->d:Z

    .line 10
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 13
    :cond_c
    return-void
.end method

.method public final mark(I)V
    .registers 4

    .line 1
    iget-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    instance-of p1, p1, Ls1/l;

    .line 5
    if-eqz p1, :cond_10

    .line 7
    iget-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 9
    check-cast p1, Ls1/l;

    .line 11
    invoke-virtual {p1}, Ls1/l;->a()J

    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lm1/b;->e:J

    .line 17
    :cond_10
    return-void
.end method

.method public final markSupported()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    instance-of v0, v0, Ls1/l;

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lm1/b;->a:Lp1/h;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return v0
.end method

.method public final read()I
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
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

    .line 2
    iget-boolean v0, p0, Lm1/b;->c:Z

    if-nez v0, :cond_64

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_5e

    if-ltz p3, :cond_5e

    add-int v0, p2, p3

    .line 4
    array-length v1, p1

    if-gt v0, v1, :cond_5e

    if-nez p3, :cond_14

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_14
    array-length v0, p1

    if-gt p2, v0, :cond_58

    if-ltz p3, :cond_58

    if-ltz p2, :cond_58

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_58

    .line 6
    :try_start_1f
    invoke-virtual {p0, p2, p1, p3}, Lm1/b;->a(I[BI)I

    move-result p1

    if-lez p1, :cond_26

    return p1

    .line 7
    :cond_26
    iget-boolean p1, p0, Lm1/b;->d:Z

    if-eqz p1, :cond_31

    iget-object p1, p0, Lm1/b;->a:Lp1/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, -0x1

    return p1

    :cond_31
    if-eqz p1, :cond_39

    .line 8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 9
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

    .line 10
    iget-boolean p2, p0, Lm1/b;->d:Z

    if-eqz p2, :cond_57

    .line 11
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 12
    :cond_57
    throw p1

    .line 13
    :cond_58
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 14
    :cond_5e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 15
    :cond_64
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final reset()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lm1/b;->markSupported()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_38

    .line 7
    iget-wide v0, p0, Lm1/b;->e:J

    .line 9
    const-wide/16 v2, 0x0

    .line 11
    cmp-long v0, v0, v2

    .line 13
    if-ltz v0, :cond_37

    .line 15
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 17
    check-cast v0, Ls1/l;

    .line 19
    invoke-virtual {v0}, Ls1/l;->a()J

    .line 22
    move-result-wide v0

    .line 23
    iget-wide v2, p0, Lm1/b;->e:J

    .line 25
    cmp-long v0, v0, v2

    .line 27
    if-lez v0, :cond_1f

    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lm1/b;->d:Z

    .line 32
    :cond_1f
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 34
    check-cast v0, Ls1/l;

    .line 36
    iget-wide v1, p0, Lm1/b;->e:J

    .line 38
    invoke-virtual {v0, v1, v2}, Ls1/l;->e(J)V

    .line 41
    iget-object v0, p0, Lm1/b;->a:Lp1/h;

    .line 43
    invoke-virtual {v0}, Lp1/h;->a()V

    .line 46
    iget-object v0, p0, Lm1/b;->a:Lp1/h;

    .line 48
    iget-wide v1, p0, Lm1/b;->e:J

    .line 50
    iget-wide v3, p0, Lm1/b;->f:J

    .line 52
    sub-long/2addr v1, v3

    .line 53
    invoke-virtual {v0, v1, v2}, Lp1/h;->b(J)V

    .line 56
    :cond_37
    return-void

    .line 57
    :cond_38
    new-instance v0, Ljava/io/IOException;

    .line 59
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 62
    throw v0
.end method

.method public final skip(J)J
    .registers 11

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p1, v0

    .line 5
    if-ltz v2, :cond_34

    .line 7
    :goto_6
    cmp-long v2, v0, p1

    .line 9
    if-gez v2, :cond_33

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2d

    .line 21
    iget-object v2, p0, Lm1/b;->b:[B

    .line 23
    const/4 v3, 0x0

    .line 24
    sub-long v4, p1, v0

    .line 26
    array-length v6, v2

    .line 27
    int-to-long v6, v6

    .line 28
    cmp-long v6, v4, v6

    .line 30
    if-lez v6, :cond_21

    .line 32
    array-length v4, v2

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    long-to-int v4, v4

    .line 35
    :goto_22
    invoke-virtual {p0, v2, v3, v4}, Lm1/b;->read([BII)I

    .line 38
    move-result v2

    .line 39
    const/4 v3, -0x1

    .line 40
    if-ne v2, v3, :cond_2a

    .line 42
    return-wide v0

    .line 43
    :cond_2a
    int-to-long v2, v2

    .line 44
    add-long/2addr v0, v2

    .line 45
    goto :goto_6

    .line 46
    :cond_2d
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 48
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 51
    throw p1

    .line 52
    :cond_33
    return-wide v0

    .line 53
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 58
    throw p1
.end method
