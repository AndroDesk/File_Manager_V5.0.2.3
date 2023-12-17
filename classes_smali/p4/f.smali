.class public final Lp4/f;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lp4/b;


# instance fields
.field public final a:Lokio/a;

.field public final b:Lp4/i;

.field public c:Z


# direct methods
.method public constructor <init>(Lp4/c;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lokio/a;

    .line 6
    invoke-direct {v0}, Lokio/a;-><init>()V

    .line 9
    iput-object v0, p0, Lp4/f;->a:Lokio/a;

    .line 11
    iput-object p1, p0, Lp4/f;->b:Lp4/i;

    .line 13
    return-void
.end method


# virtual methods
.method public final b(Lokio/ByteString;)J
    .registers 12

    .line 1
    iget-boolean v0, p0, Lp4/f;->c:Z

    .line 3
    if-nez v0, :cond_33

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    :goto_6
    iget-object v2, p0, Lp4/f;->a:Lokio/a;

    .line 9
    invoke-virtual {v2, p1, v0, v1}, Lokio/a;->e(Lokio/ByteString;J)J

    .line 12
    move-result-wide v2

    .line 13
    const-wide/16 v4, -0x1

    .line 15
    cmp-long v6, v2, v4

    .line 17
    if-eqz v6, :cond_13

    .line 19
    goto :goto_24

    .line 20
    :cond_13
    iget-object v2, p0, Lp4/f;->a:Lokio/a;

    .line 22
    iget-wide v6, v2, Lokio/a;->b:J

    .line 24
    iget-object v3, p0, Lp4/f;->b:Lp4/i;

    .line 26
    const-wide/16 v8, 0x2000

    .line 28
    invoke-interface {v3, v2, v8, v9}, Lp4/i;->n(Lokio/a;J)J

    .line 31
    move-result-wide v2

    .line 32
    cmp-long v2, v2, v4

    .line 34
    if-nez v2, :cond_25

    .line 36
    move-wide v2, v4

    .line 37
    :goto_24
    return-wide v2

    .line 38
    :cond_25
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 41
    move-result v2

    .line 42
    int-to-long v2, v2

    .line 43
    sub-long/2addr v6, v2

    .line 44
    const-wide/16 v2, 0x1

    .line 46
    add-long/2addr v6, v2

    .line 47
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 50
    move-result-wide v0

    .line 51
    goto :goto_6

    .line 52
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    const-string v0, "closed"

    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1
.end method

.method public final c()Lokio/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    .line 3
    return-object v0
.end method

.method public final close()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lp4/f;->c:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp4/f;->c:Z

    .line 9
    iget-object v0, p0, Lp4/f;->b:Lp4/i;

    .line 11
    invoke-interface {v0}, Lp4/i;->close()V

    .line 14
    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    :try_start_12
    iget-wide v1, v0, Lokio/a;->b:J

    .line 21
    invoke-virtual {v0, v1, v2}, Lokio/a;->m(J)V
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_17} :catch_18

    .line 24
    return-void

    .line 25
    :catch_18
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/AssertionError;

    .line 28
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 31
    throw v1
.end method

.method public final d(Lokio/ByteString;)J
    .registers 12

    .line 1
    iget-boolean v0, p0, Lp4/f;->c:Z

    .line 3
    if-nez v0, :cond_2a

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    :goto_6
    iget-object v2, p0, Lp4/f;->a:Lokio/a;

    .line 9
    invoke-virtual {v2, p1, v0, v1}, Lokio/a;->g(Lokio/ByteString;J)J

    .line 12
    move-result-wide v2

    .line 13
    const-wide/16 v4, -0x1

    .line 15
    cmp-long v6, v2, v4

    .line 17
    if-eqz v6, :cond_13

    .line 19
    goto :goto_24

    .line 20
    :cond_13
    iget-object v2, p0, Lp4/f;->a:Lokio/a;

    .line 22
    iget-wide v6, v2, Lokio/a;->b:J

    .line 24
    iget-object v3, p0, Lp4/f;->b:Lp4/i;

    .line 26
    const-wide/16 v8, 0x2000

    .line 28
    invoke-interface {v3, v2, v8, v9}, Lp4/i;->n(Lokio/a;J)J

    .line 31
    move-result-wide v2

    .line 32
    cmp-long v2, v2, v4

    .line 34
    if-nez v2, :cond_25

    .line 36
    move-wide v2, v4

    .line 37
    :goto_24
    return-wide v2

    .line 38
    :cond_25
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 41
    move-result-wide v0

    .line 42
    goto :goto_6

    .line 43
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    const-string v0, "closed"

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method

.method public final f(Lp4/e;)I
    .registers 8

    .line 1
    iget-boolean v0, p0, Lp4/f;->c:Z

    .line 3
    if-nez v0, :cond_32

    .line 5
    :cond_4
    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, v1}, Lokio/a;->l(Lp4/e;Z)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_f

    .line 15
    return v1

    .line 16
    :cond_f
    const/4 v2, -0x2

    .line 17
    if-ne v0, v2, :cond_23

    .line 19
    iget-object v0, p0, Lp4/f;->b:Lp4/i;

    .line 21
    iget-object v2, p0, Lp4/f;->a:Lokio/a;

    .line 23
    const-wide/16 v3, 0x2000

    .line 25
    invoke-interface {v0, v2, v3, v4}, Lp4/i;->n(Lokio/a;J)J

    .line 28
    move-result-wide v2

    .line 29
    const-wide/16 v4, -0x1

    .line 31
    cmp-long v0, v2, v4

    .line 33
    if-nez v0, :cond_4

    .line 35
    return v1

    .line 36
    :cond_23
    iget-object p1, p1, Lp4/e;->a:[Lokio/ByteString;

    .line 38
    aget-object p1, p1, v0

    .line 40
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 43
    move-result p1

    .line 44
    iget-object v1, p0, Lp4/f;->a:Lokio/a;

    .line 46
    int-to-long v2, p1

    .line 47
    invoke-virtual {v1, v2, v3}, Lokio/a;->m(J)V

    .line 50
    return v0

    .line 51
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    const-string v0, "closed"

    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1
.end method

.method public final isOpen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lp4/f;->c:Z

    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 5
    return v0
.end method

.method public final n(Lokio/a;J)J
    .registers 9

    .line 1
    if-eqz p1, :cond_36

    .line 3
    const-wide/16 p2, 0x0

    .line 5
    iget-boolean v0, p0, Lp4/f;->c:Z

    .line 7
    if-nez v0, :cond_2e

    .line 9
    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    .line 11
    iget-wide v1, v0, Lokio/a;->b:J

    .line 13
    cmp-long p2, v1, p2

    .line 15
    const-wide/16 v1, 0x2000

    .line 17
    if-nez p2, :cond_1f

    .line 19
    iget-object p2, p0, Lp4/f;->b:Lp4/i;

    .line 21
    invoke-interface {p2, v0, v1, v2}, Lp4/i;->n(Lokio/a;J)J

    .line 24
    move-result-wide p2

    .line 25
    const-wide/16 v3, -0x1

    .line 27
    cmp-long p2, p2, v3

    .line 29
    if-nez p2, :cond_1f

    .line 31
    return-wide v3

    .line 32
    :cond_1f
    iget-object p2, p0, Lp4/f;->a:Lokio/a;

    .line 34
    iget-wide p2, p2, Lokio/a;->b:J

    .line 36
    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 39
    move-result-wide p2

    .line 40
    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    .line 42
    invoke-virtual {v0, p1, p2, p3}, Lokio/a;->n(Lokio/a;J)J

    .line 45
    move-result-wide p1

    .line 46
    return-wide p1

    .line 47
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    const-string p2, "closed"

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1

    .line 55
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    const-string p2, "sink == null"

    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .registers 7

    .line 1
    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    .line 3
    iget-wide v1, v0, Lokio/a;->b:J

    .line 5
    const-wide/16 v3, 0x0

    .line 7
    cmp-long v1, v1, v3

    .line 9
    if-nez v1, :cond_1a

    .line 11
    iget-object v1, p0, Lp4/f;->b:Lp4/i;

    .line 13
    const-wide/16 v2, 0x2000

    .line 15
    invoke-interface {v1, v0, v2, v3}, Lp4/i;->n(Lokio/a;J)J

    .line 18
    move-result-wide v0

    .line 19
    const-wide/16 v2, -0x1

    .line 21
    cmp-long v0, v0, v2

    .line 23
    if-nez v0, :cond_1a

    .line 25
    const/4 p1, -0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    .line 29
    invoke-virtual {v0, p1}, Lokio/a;->read(Ljava/nio/ByteBuffer;)I

    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final request(J)Z
    .registers 7

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-ltz v0, :cond_2c

    .line 7
    iget-boolean v0, p0, Lp4/f;->c:Z

    .line 9
    if-nez v0, :cond_24

    .line 11
    :cond_a
    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    .line 13
    iget-wide v1, v0, Lokio/a;->b:J

    .line 15
    cmp-long v1, v1, p1

    .line 17
    if-gez v1, :cond_22

    .line 19
    iget-object v1, p0, Lp4/f;->b:Lp4/i;

    .line 21
    const-wide/16 v2, 0x2000

    .line 23
    invoke-interface {v1, v0, v2, v3}, Lp4/i;->n(Lokio/a;J)J

    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, -0x1

    .line 29
    cmp-long v0, v0, v2

    .line 31
    if-nez v0, :cond_a

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_22
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    const-string p2, "closed"

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v2, "byteCount < 0: "

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "buffer("

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lp4/f;->b:Lp4/i;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
