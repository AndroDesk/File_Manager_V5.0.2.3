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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lp4/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/a;

    invoke-direct {v0}, Lokio/a;-><init>()V

    iput-object v0, p0, Lp4/f;->a:Lokio/a;

    iput-object p1, p0, Lp4/f;->b:Lp4/i;

    return-void
.end method


# virtual methods
.method public final b(Lokio/ByteString;)J
    .registers 12

    iget-boolean v0, p0, Lp4/f;->c:Z

    if-nez v0, :cond_33

    const-wide/16 v0, 0x0

    :goto_6
    iget-object v2, p0, Lp4/f;->a:Lokio/a;

    invoke-virtual {v2, p1, v0, v1}, Lokio/a;->e(Lokio/ByteString;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_13

    goto :goto_24

    :cond_13
    iget-object v2, p0, Lp4/f;->a:Lokio/a;

    iget-wide v6, v2, Lokio/a;->b:J

    iget-object v3, p0, Lp4/f;->b:Lp4/i;

    const-wide/16 v8, 0x2000

    invoke-interface {v3, v2, v8, v9}, Lp4/i;->n(Lokio/a;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    move-wide v2, v4

    :goto_24
    return-wide v2

    :cond_25
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v6, v2

    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_6

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Lokio/a;
    .registers 2

    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    return-object v0
.end method

.method public final close()V
    .registers 4

    iget-boolean v0, p0, Lp4/f;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp4/f;->c:Z

    iget-object v0, p0, Lp4/f;->b:Lp4/i;

    invoke-interface {v0}, Lp4/i;->close()V

    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_12
    iget-wide v1, v0, Lokio/a;->b:J

    invoke-virtual {v0, v1, v2}, Lokio/a;->m(J)V
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final d(Lokio/ByteString;)J
    .registers 12

    iget-boolean v0, p0, Lp4/f;->c:Z

    if-nez v0, :cond_2a

    const-wide/16 v0, 0x0

    :goto_6
    iget-object v2, p0, Lp4/f;->a:Lokio/a;

    invoke-virtual {v2, p1, v0, v1}, Lokio/a;->g(Lokio/ByteString;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_13

    goto :goto_24

    :cond_13
    iget-object v2, p0, Lp4/f;->a:Lokio/a;

    iget-wide v6, v2, Lokio/a;->b:J

    iget-object v3, p0, Lp4/f;->b:Lp4/i;

    const-wide/16 v8, 0x2000

    invoke-interface {v3, v2, v8, v9}, Lp4/i;->n(Lokio/a;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    move-wide v2, v4

    :goto_24
    return-wide v2

    :cond_25
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_6

    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lp4/e;)I
    .registers 8

    iget-boolean v0, p0, Lp4/f;->c:Z

    if-nez v0, :cond_32

    :cond_4
    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lokio/a;->l(Lp4/e;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    return v1

    :cond_f
    const/4 v2, -0x2

    if-ne v0, v2, :cond_23

    iget-object v0, p0, Lp4/f;->b:Lp4/i;

    iget-object v2, p0, Lp4/f;->a:Lokio/a;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lp4/i;->n(Lokio/a;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    return v1

    :cond_23
    iget-object p1, p1, Lp4/e;->a:[Lokio/ByteString;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    iget-object v1, p0, Lp4/f;->a:Lokio/a;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lokio/a;->m(J)V

    return v0

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isOpen()Z
    .registers 2

    iget-boolean v0, p0, Lp4/f;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final n(Lokio/a;J)J
    .registers 9

    if-eqz p1, :cond_36

    const-wide/16 p2, 0x0

    iget-boolean v0, p0, Lp4/f;->c:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    iget-wide v1, v0, Lokio/a;->b:J

    cmp-long p2, v1, p2

    const-wide/16 v1, 0x2000

    if-nez p2, :cond_1f

    iget-object p2, p0, Lp4/f;->b:Lp4/i;

    invoke-interface {p2, v0, v1, v2}, Lp4/i;->n(Lokio/a;J)J

    move-result-wide p2

    const-wide/16 v3, -0x1

    cmp-long p2, p2, v3

    if-nez p2, :cond_1f

    return-wide v3

    :cond_1f
    iget-object p2, p0, Lp4/f;->a:Lokio/a;

    iget-wide p2, p2, Lokio/a;->b:J

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    invoke-virtual {v0, p1, p2, p3}, Lokio/a;->n(Lokio/a;J)J

    move-result-wide p1

    return-wide p1

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .registers 7

    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    iget-wide v1, v0, Lokio/a;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1a

    iget-object v1, p0, Lp4/f;->b:Lp4/i;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lp4/i;->n(Lokio/a;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    const/4 p1, -0x1

    return p1

    :cond_1a
    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    invoke-virtual {v0, p1}, Lokio/a;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final request(J)Z
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2c

    iget-boolean v0, p0, Lp4/f;->c:Z

    if-nez v0, :cond_24

    :cond_a
    iget-object v0, p0, Lp4/f;->a:Lokio/a;

    iget-wide v1, v0, Lokio/a;->b:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_22

    iget-object v1, p0, Lp4/f;->b:Lp4/i;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lp4/i;->n(Lokio/a;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_22
    const/4 p1, 0x1

    return p1

    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "buffer("

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp4/f;->b:Lp4/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
