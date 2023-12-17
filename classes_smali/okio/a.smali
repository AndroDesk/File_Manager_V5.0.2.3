.class public final Lokio/a;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lp4/b;
.implements Lp4/a;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public a:Lp4/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:J


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


# virtual methods
.method public final a(J)B
    .registers 9

    iget-wide v0, p0, Lokio/a;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lp4/j;->b(JJJ)V

    iget-wide v0, p0, Lokio/a;->b:J

    sub-long v2, v0, p1

    cmp-long v2, v2, p1

    if-lez v2, :cond_27

    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    :goto_12
    iget v1, v0, Lp4/g;->c:I

    iget v2, v0, Lp4/g;->b:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    cmp-long v1, p1, v3

    if-gez v1, :cond_23

    iget-object v0, v0, Lp4/g;->a:[B

    long-to-int p1, p1

    add-int/2addr v2, p1

    aget-byte p1, v0, v2

    return p1

    :cond_23
    sub-long/2addr p1, v3

    iget-object v0, v0, Lp4/g;->f:Lp4/g;

    goto :goto_12

    :cond_27
    sub-long/2addr p1, v0

    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    :cond_2a
    iget-object v0, v0, Lp4/g;->g:Lp4/g;

    iget v1, v0, Lp4/g;->c:I

    iget v2, v0, Lp4/g;->b:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    add-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-ltz v1, :cond_2a

    iget-object v0, v0, Lp4/g;->a:[B

    long-to-int p1, p1

    add-int/2addr v2, p1

    aget-byte p1, v0, v2

    return p1
.end method

.method public final b(Lokio/ByteString;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/a;->e(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Lokio/a;
    .registers 1

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 6

    new-instance v0, Lokio/a;

    invoke-direct {v0}, Lokio/a;-><init>()V

    iget-wide v1, p0, Lokio/a;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    goto :goto_32

    :cond_e
    iget-object v1, p0, Lokio/a;->a:Lp4/g;

    invoke-virtual {v1}, Lp4/g;->c()Lp4/g;

    move-result-object v1

    iput-object v1, v0, Lokio/a;->a:Lp4/g;

    iput-object v1, v1, Lp4/g;->g:Lp4/g;

    iput-object v1, v1, Lp4/g;->f:Lp4/g;

    iget-object v1, p0, Lokio/a;->a:Lp4/g;

    :goto_1c
    iget-object v1, v1, Lp4/g;->f:Lp4/g;

    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    if-eq v1, v2, :cond_2e

    iget-object v2, v0, Lokio/a;->a:Lp4/g;

    iget-object v2, v2, Lp4/g;->g:Lp4/g;

    invoke-virtual {v1}, Lp4/g;->c()Lp4/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lp4/g;->b(Lp4/g;)V

    goto :goto_1c

    :cond_2e
    iget-wide v1, p0, Lokio/a;->b:J

    iput-wide v1, v0, Lokio/a;->b:J

    :goto_32
    return-object v0
.end method

.method public final close()V
    .registers 1

    return-void
.end method

.method public final d(Lokio/ByteString;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/a;->g(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(Lokio/ByteString;J)J
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v2

    if-eqz v2, :cond_da

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_d2

    iget-object v4, v0, Lokio/a;->a:Lp4/g;

    const-wide/16 v5, -0x1

    if-nez v4, :cond_17

    return-wide v5

    :cond_17
    iget-wide v7, v0, Lokio/a;->b:J

    sub-long v9, v7, p2

    cmp-long v9, v9, p2

    if-gez v9, :cond_2d

    :goto_1f
    cmp-long v2, v7, p2

    if-lez v2, :cond_3d

    iget-object v4, v4, Lp4/g;->g:Lp4/g;

    iget v2, v4, Lp4/g;->c:I

    iget v3, v4, Lp4/g;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v7, v2

    goto :goto_1f

    :cond_2d
    :goto_2d
    iget v7, v4, Lp4/g;->c:I

    iget v8, v4, Lp4/g;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v2

    cmp-long v9, v7, p2

    if-gez v9, :cond_3c

    iget-object v4, v4, Lp4/g;->f:Lp4/g;

    move-wide v2, v7

    goto :goto_2d

    :cond_3c
    move-wide v7, v2

    :cond_3d
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v9

    iget-wide v10, v0, Lokio/a;->b:J

    int-to-long v12, v9

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-wide v12, v7

    move-wide/from16 v7, p2

    :goto_50
    cmp-long v14, v12, v10

    if-gez v14, :cond_d0

    iget-object v14, v4, Lp4/g;->a:[B

    iget v15, v4, Lp4/g;->c:I

    int-to-long v5, v15

    iget v15, v4, Lp4/g;->b:I

    move/from16 v16, v3

    int-to-long v2, v15

    add-long/2addr v2, v10

    sub-long/2addr v2, v12

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, v4, Lp4/g;->b:I

    int-to-long v5, v3

    add-long/2addr v5, v7

    sub-long/2addr v5, v12

    long-to-int v3, v5

    :goto_6b
    if-ge v3, v2, :cond_bd

    aget-byte v5, v14, v3

    move/from16 v6, v16

    if-ne v5, v6, :cond_b2

    add-int/lit8 v5, v3, 0x1

    iget v7, v4, Lp4/g;->c:I

    iget-object v8, v4, Lp4/g;->a:[B

    move-object v0, v4

    const/4 v15, 0x1

    :goto_7b
    if-ge v15, v9, :cond_a7

    if-ne v5, v7, :cond_90

    iget-object v0, v0, Lp4/g;->f:Lp4/g;

    iget-object v5, v0, Lp4/g;->a:[B

    iget v7, v0, Lp4/g;->b:I

    iget v8, v0, Lp4/g;->c:I

    move-object/from16 p3, v0

    move/from16 v17, v8

    move-object v8, v5

    move v5, v7

    move/from16 v7, v17

    goto :goto_92

    :cond_90
    move-object/from16 p3, v0

    :goto_92
    aget-byte v0, v8, v5

    move/from16 v16, v2

    invoke-virtual {v1, v15}, Lokio/ByteString;->getByte(I)B

    move-result v2

    if-eq v0, v2, :cond_9e

    const/4 v15, 0x0

    goto :goto_aa

    :cond_9e
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p3

    move/from16 v2, v16

    goto :goto_7b

    :cond_a7
    move/from16 v16, v2

    const/4 v15, 0x1

    :goto_aa
    if-eqz v15, :cond_b4

    iget v0, v4, Lp4/g;->b:I

    sub-int/2addr v3, v0

    int-to-long v0, v3

    add-long/2addr v0, v12

    return-wide v0

    :cond_b2
    move/from16 v16, v2

    :cond_b4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v16, v6

    goto :goto_6b

    :cond_bd
    move/from16 v6, v16

    iget v0, v4, Lp4/g;->c:I

    iget v2, v4, Lp4/g;->b:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    add-long/2addr v12, v2

    iget-object v4, v4, Lp4/g;->f:Lp4/g;

    move-object/from16 v0, p0

    move v3, v6

    move-wide v7, v12

    const/4 v2, 0x0

    const-wide/16 v5, -0x1

    goto :goto_50

    :cond_d0
    move-wide v2, v5

    return-wide v2

    :cond_d2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_da
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lokio/a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lokio/a;

    iget-wide v3, p0, Lokio/a;->b:J

    iget-wide v5, p1, Lokio/a;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    iget-object v1, p0, Lokio/a;->a:Lp4/g;

    iget-object p1, p1, Lokio/a;->a:Lp4/g;

    iget v3, v1, Lp4/g;->b:I

    iget v4, p1, Lp4/g;->b:I

    :goto_24
    iget-wide v7, p0, Lokio/a;->b:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_61

    iget v7, v1, Lp4/g;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Lp4/g;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v2

    :goto_36
    int-to-long v10, v9

    cmp-long v10, v10, v7

    if-gez v10, :cond_4f

    iget-object v10, v1, Lp4/g;->a:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Lp4/g;->a:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_36

    :cond_4f
    iget v9, v1, Lp4/g;->c:I

    if-ne v3, v9, :cond_57

    iget-object v1, v1, Lp4/g;->f:Lp4/g;

    iget v3, v1, Lp4/g;->b:I

    :cond_57
    iget v9, p1, Lp4/g;->c:I

    if-ne v4, v9, :cond_5f

    iget-object p1, p1, Lp4/g;->f:Lp4/g;

    iget v4, p1, Lp4/g;->b:I

    :cond_5f
    add-long/2addr v5, v7

    goto :goto_24

    :cond_61
    return v0
.end method

.method public final f(Lp4/e;)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/a;->l(Lp4/e;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    return v1

    :cond_9
    iget-object p1, p1, Lp4/e;->a:[Lokio/ByteString;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v1, p1

    :try_start_12
    invoke-virtual {p0, v1, v2}, Lokio/a;->m(J)V
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_15} :catch_16

    return v0

    :catch_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final flush()V
    .registers 1

    return-void
.end method

.method public final g(Lokio/ByteString;J)J
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_a6

    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_d

    return-wide v3

    :cond_d
    iget-wide v5, p0, Lokio/a;->b:J

    sub-long v7, v5, p2

    cmp-long v7, v7, p2

    if-gez v7, :cond_23

    :goto_15
    cmp-long v0, v5, p2

    if-lez v0, :cond_33

    iget-object v2, v2, Lp4/g;->g:Lp4/g;

    iget v0, v2, Lp4/g;->c:I

    iget v1, v2, Lp4/g;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_15

    :cond_23
    :goto_23
    iget v5, v2, Lp4/g;->c:I

    iget v6, v2, Lp4/g;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gez v7, :cond_32

    iget-object v2, v2, Lp4/g;->f:Lp4/g;

    move-wide v0, v5

    goto :goto_23

    :cond_32
    move-wide v5, v0

    :cond_33
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v7, 0x0

    if-ne v0, v1, :cond_71

    invoke-virtual {p1, v7}, Lokio/ByteString;->getByte(I)B

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    move-result p1

    :goto_44
    iget-wide v7, p0, Lokio/a;->b:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_a5

    iget-object v1, v2, Lp4/g;->a:[B

    iget v7, v2, Lp4/g;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v5

    long-to-int p2, v7

    iget p3, v2, Lp4/g;->c:I

    :goto_54
    if-ge p2, p3, :cond_66

    aget-byte v7, v1, p2

    if-eq v7, v0, :cond_60

    if-ne v7, p1, :cond_5d

    goto :goto_60

    :cond_5d
    add-int/lit8 p2, p2, 0x1

    goto :goto_54

    :cond_60
    :goto_60
    iget p1, v2, Lp4/g;->b:I

    :goto_62
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v5

    return-wide p1

    :cond_66
    iget p2, v2, Lp4/g;->c:I

    iget p3, v2, Lp4/g;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    iget-object v2, v2, Lp4/g;->f:Lp4/g;

    move-wide p2, v5

    goto :goto_44

    :cond_71
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object p1

    :goto_75
    iget-wide v0, p0, Lokio/a;->b:J

    cmp-long v0, v5, v0

    if-gez v0, :cond_a5

    iget-object v0, v2, Lp4/g;->a:[B

    iget v1, v2, Lp4/g;->b:I

    int-to-long v8, v1

    add-long/2addr v8, p2

    sub-long/2addr v8, v5

    long-to-int p2, v8

    iget p3, v2, Lp4/g;->c:I

    :goto_85
    if-ge p2, p3, :cond_9a

    aget-byte v1, v0, p2

    array-length v8, p1

    move v9, v7

    :goto_8b
    if-ge v9, v8, :cond_97

    aget-byte v10, p1, v9

    if-ne v1, v10, :cond_94

    iget p1, v2, Lp4/g;->b:I

    goto :goto_62

    :cond_94
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    :cond_97
    add-int/lit8 p2, p2, 0x1

    goto :goto_85

    :cond_9a
    iget p2, v2, Lp4/g;->c:I

    iget p3, v2, Lp4/g;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    iget-object v2, v2, Lp4/g;->f:Lp4/g;

    move-wide p2, v5

    goto :goto_75

    :cond_a5
    return-wide v3

    :cond_a6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()B
    .registers 10

    iget-wide v0, p0, Lokio/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    iget v3, v2, Lp4/g;->b:I

    iget v4, v2, Lp4/g;->c:I

    iget-object v5, v2, Lp4/g;->a:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lokio/a;->b:J

    if-ne v6, v4, :cond_25

    invoke-virtual {v2}, Lp4/g;->a()Lp4/g;

    move-result-object v0

    iput-object v0, p0, Lokio/a;->a:Lp4/g;

    invoke-static {v2}, Lp4/h;->a(Lp4/g;)V

    goto :goto_27

    :cond_25
    iput v6, v2, Lp4/g;->b:I

    :goto_27
    return v3

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 6

    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iget v2, v0, Lp4/g;->b:I

    iget v3, v0, Lp4/g;->c:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lp4/g;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    iget-object v0, v0, Lp4/g;->f:Lp4/g;

    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public final i(J)[B
    .registers 12

    iget-wide v0, p0, Lokio/a;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lp4/j;->b(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_57

    long-to-int p1, p1

    new-array p2, p1, [B

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p1, :cond_56

    sub-int v1, p1, v0

    int-to-long v2, p1

    int-to-long v4, v0

    int-to-long v6, v1

    invoke-static/range {v2 .. v7}, Lp4/j;->b(JJJ)V

    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    const/4 v3, -0x1

    if-nez v2, :cond_24

    move v1, v3

    goto :goto_4c

    :cond_24
    iget v4, v2, Lp4/g;->c:I

    iget v5, v2, Lp4/g;->b:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v4, v2, Lp4/g;->a:[B

    iget v5, v2, Lp4/g;->b:I

    invoke-static {v4, v5, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v2, Lp4/g;->b:I

    add-int/2addr v4, v1

    iput v4, v2, Lp4/g;->b:I

    iget-wide v5, p0, Lokio/a;->b:J

    int-to-long v7, v1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lokio/a;->b:J

    iget v5, v2, Lp4/g;->c:I

    if-ne v4, v5, :cond_4c

    invoke-virtual {v2}, Lp4/g;->a()Lp4/g;

    move-result-object v4

    iput-object v4, p0, Lokio/a;->a:Lp4/g;

    invoke-static {v2}, Lp4/h;->a(Lp4/g;)V

    :cond_4c
    :goto_4c
    if-eq v1, v3, :cond_50

    add-int/2addr v0, v1

    goto :goto_13

    :cond_50
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_56
    return-object p2

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isOpen()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10

    iget-wide v0, p0, Lokio/a;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lp4/j;->b(JJJ)V

    if-eqz p3, :cond_6a

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_53

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1a

    const-string p1, ""

    return-object p1

    :cond_1a
    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    iget v1, v0, Lp4/g;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lp4/g;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_31

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/a;->i(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_31
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lp4/g;->a:[B

    long-to-int v4, p1

    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lp4/g;->b:I

    int-to-long v3, p3

    add-long/2addr v3, p1

    long-to-int p3, v3

    iput p3, v0, Lp4/g;->b:I

    iget-wide v3, p0, Lokio/a;->b:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lokio/a;->b:J

    iget p1, v0, Lp4/g;->c:I

    if-ne p3, p1, :cond_52

    invoke-virtual {v0}, Lp4/g;->a()Lp4/g;

    move-result-object p1

    iput-object p1, p0, Lokio/a;->a:Lp4/g;

    invoke-static {v0}, Lp4/h;->a(Lp4/g;)V

    :cond_52
    return-object v2

    :cond_53
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(J)Ljava/lang/String;
    .registers 4

    sget-object v0, Lp4/j;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/a;->j(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lp4/e;Z)I
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lokio/a;->a:Lp4/g;

    const/4 v3, -0x2

    if-nez v2, :cond_13

    if-eqz p2, :cond_c

    return v3

    :cond_c
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_13
    iget-object v4, v2, Lp4/g;->a:[B

    iget v5, v2, Lp4/g;->b:I

    iget v6, v2, Lp4/g;->c:I

    iget-object v0, v0, Lp4/e;->b:[I

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v10, v2

    move v9, v7

    move v11, v8

    :goto_20
    add-int/lit8 v12, v9, 0x1

    aget v9, v0, v9

    add-int/lit8 v13, v12, 0x1

    aget v12, v0, v12

    if-eq v12, v8, :cond_2b

    move v11, v12

    :cond_2b
    if-nez v10, :cond_2e

    goto :goto_55

    :cond_2e
    const/4 v12, 0x0

    if-gez v9, :cond_75

    mul-int/lit8 v9, v9, -0x1

    add-int v14, v9, v13

    :goto_35
    add-int/lit8 v9, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v15, v13, 0x1

    aget v13, v0, v13

    if-eq v5, v13, :cond_42

    return v11

    :cond_42
    if-ne v15, v14, :cond_46

    const/4 v5, 0x1

    goto :goto_47

    :cond_46
    move v5, v7

    :goto_47
    if-ne v9, v6, :cond_62

    iget-object v4, v10, Lp4/g;->f:Lp4/g;

    iget v6, v4, Lp4/g;->b:I

    iget-object v9, v4, Lp4/g;->a:[B

    iget v10, v4, Lp4/g;->c:I

    if-ne v4, v2, :cond_5c

    if-nez v5, :cond_59

    :goto_55
    if-eqz p2, :cond_58

    return v3

    :cond_58
    return v11

    :cond_59
    move-object v4, v9

    move-object v9, v12

    goto :goto_68

    :cond_5c
    move-object/from16 v16, v9

    move-object v9, v4

    move-object/from16 v4, v16

    goto :goto_68

    :cond_62
    move-object/from16 v16, v10

    move v10, v6

    move v6, v9

    move-object/from16 v9, v16

    :goto_68
    if-eqz v5, :cond_70

    aget v5, v0, v15

    move v3, v6

    move v6, v10

    move-object v10, v9

    goto :goto_96

    :cond_70
    move v5, v6

    move v6, v10

    move v13, v15

    move-object v10, v9

    goto :goto_35

    :cond_75
    add-int/lit8 v14, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int v15, v13, v9

    :goto_7d
    if-ne v13, v15, :cond_80

    return v11

    :cond_80
    aget v3, v0, v13

    if-ne v5, v3, :cond_9d

    add-int/2addr v13, v9

    aget v5, v0, v13

    if-ne v14, v6, :cond_95

    iget-object v10, v10, Lp4/g;->f:Lp4/g;

    iget v3, v10, Lp4/g;->b:I

    iget-object v4, v10, Lp4/g;->a:[B

    iget v6, v10, Lp4/g;->c:I

    if-ne v10, v2, :cond_96

    move-object v10, v12

    goto :goto_96

    :cond_95
    move v3, v14

    :cond_96
    :goto_96
    if-ltz v5, :cond_99

    return v5

    :cond_99
    neg-int v9, v5

    move v5, v3

    const/4 v3, -0x2

    goto :goto_20

    :cond_9d
    add-int/lit8 v13, v13, 0x1

    const/4 v3, -0x2

    goto :goto_7d
.end method

.method public final m(J)V
    .registers 8

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_37

    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    if-eqz v0, :cond_31

    iget v1, v0, Lp4/g;->c:I

    iget v0, v0, Lp4/g;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v1, p0, Lokio/a;->b:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokio/a;->b:J

    sub-long/2addr p1, v3

    iget-object v1, p0, Lokio/a;->a:Lp4/g;

    iget v2, v1, Lp4/g;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lp4/g;->b:I

    iget v0, v1, Lp4/g;->c:I

    if-ne v2, v0, :cond_0

    invoke-virtual {v1}, Lp4/g;->a()Lp4/g;

    move-result-object v0

    iput-object v0, p0, Lokio/a;->a:Lp4/g;

    invoke-static {v1}, Lp4/h;->a(Lp4/g;)V

    goto :goto_0

    :cond_31
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_37
    return-void
.end method

.method public final n(Lokio/a;J)J
    .registers 8

    if-eqz p1, :cond_31

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1a

    iget-wide v2, p0, Lokio/a;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_16

    move-wide p2, v2

    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Lokio/a;->p(Lokio/a;J)V

    return-wide p2

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(I)Lp4/g;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2a

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2a

    iget-object v1, p0, Lokio/a;->a:Lp4/g;

    if-nez v1, :cond_16

    invoke-static {}, Lp4/h;->b()Lp4/g;

    move-result-object p1

    iput-object p1, p0, Lokio/a;->a:Lp4/g;

    iput-object p1, p1, Lp4/g;->g:Lp4/g;

    iput-object p1, p1, Lp4/g;->f:Lp4/g;

    return-object p1

    :cond_16
    iget-object v1, v1, Lp4/g;->g:Lp4/g;

    iget v2, v1, Lp4/g;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_21

    iget-boolean p1, v1, Lp4/g;->e:Z

    if-nez p1, :cond_29

    :cond_21
    invoke-static {}, Lp4/h;->b()Lp4/g;

    move-result-object p1

    invoke-virtual {v1, p1}, Lp4/g;->b(Lp4/g;)V

    move-object v1, p1

    :cond_29
    return-object v1

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final p(Lokio/a;J)V
    .registers 12

    if-eqz p1, :cond_e3

    if-eq p1, p0, :cond_db

    iget-wide v0, p1, Lokio/a;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lp4/j;->b(JJJ)V

    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_da

    iget-object v0, p1, Lokio/a;->a:Lp4/g;

    iget v1, v0, Lp4/g;->c:I

    iget v2, v0, Lp4/g;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v2, p2, v2

    const/4 v3, 0x0

    if-gez v2, :cond_83

    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    if-eqz v2, :cond_26

    iget-object v2, v2, Lp4/g;->g:Lp4/g;

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    if-eqz v2, :cond_50

    iget-boolean v4, v2, Lp4/g;->e:Z

    if-eqz v4, :cond_50

    iget v4, v2, Lp4/g;->c:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    iget-boolean v6, v2, Lp4/g;->d:Z

    if-eqz v6, :cond_37

    move v6, v3

    goto :goto_39

    :cond_37
    iget v6, v2, Lp4/g;->b:I

    :goto_39
    int-to-long v6, v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_50

    long-to-int v1, p2

    invoke-virtual {v0, v2, v1}, Lp4/g;->d(Lp4/g;I)V

    iget-wide v0, p1, Lokio/a;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/a;->b:J

    iget-wide v0, p0, Lokio/a;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/a;->b:J

    return-void

    :cond_50
    long-to-int v2, p2

    if-lez v2, :cond_7d

    if-gt v2, v1, :cond_7d

    const/16 v1, 0x400

    if-lt v2, v1, :cond_5e

    invoke-virtual {v0}, Lp4/g;->c()Lp4/g;

    move-result-object v1

    goto :goto_6b

    :cond_5e
    invoke-static {}, Lp4/h;->b()Lp4/g;

    move-result-object v1

    iget-object v4, v0, Lp4/g;->a:[B

    iget v5, v0, Lp4/g;->b:I

    iget-object v6, v1, Lp4/g;->a:[B

    invoke-static {v4, v5, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6b
    iget v4, v1, Lp4/g;->b:I

    add-int/2addr v4, v2

    iput v4, v1, Lp4/g;->c:I

    iget v4, v0, Lp4/g;->b:I

    add-int/2addr v4, v2

    iput v4, v0, Lp4/g;->b:I

    iget-object v0, v0, Lp4/g;->g:Lp4/g;

    invoke-virtual {v0, v1}, Lp4/g;->b(Lp4/g;)V

    iput-object v1, p1, Lokio/a;->a:Lp4/g;

    goto :goto_83

    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_83
    :goto_83
    iget-object v0, p1, Lokio/a;->a:Lp4/g;

    iget v1, v0, Lp4/g;->c:I

    iget v2, v0, Lp4/g;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0}, Lp4/g;->a()Lp4/g;

    move-result-object v4

    iput-object v4, p1, Lokio/a;->a:Lp4/g;

    iget-object v4, p0, Lokio/a;->a:Lp4/g;

    if-nez v4, :cond_9c

    iput-object v0, p0, Lokio/a;->a:Lp4/g;

    iput-object v0, v0, Lp4/g;->g:Lp4/g;

    iput-object v0, v0, Lp4/g;->f:Lp4/g;

    goto :goto_c7

    :cond_9c
    iget-object v4, v4, Lp4/g;->g:Lp4/g;

    invoke-virtual {v4, v0}, Lp4/g;->b(Lp4/g;)V

    iget-object v4, v0, Lp4/g;->g:Lp4/g;

    if-eq v4, v0, :cond_d4

    iget-boolean v5, v4, Lp4/g;->e:Z

    if-nez v5, :cond_aa

    goto :goto_c7

    :cond_aa
    iget v5, v0, Lp4/g;->c:I

    iget v6, v0, Lp4/g;->b:I

    sub-int/2addr v5, v6

    iget v6, v4, Lp4/g;->c:I

    rsub-int v6, v6, 0x2000

    iget-boolean v7, v4, Lp4/g;->d:Z

    if-eqz v7, :cond_b8

    goto :goto_ba

    :cond_b8
    iget v3, v4, Lp4/g;->b:I

    :goto_ba
    add-int/2addr v6, v3

    if-le v5, v6, :cond_be

    goto :goto_c7

    :cond_be
    invoke-virtual {v0, v4, v5}, Lp4/g;->d(Lp4/g;I)V

    invoke-virtual {v0}, Lp4/g;->a()Lp4/g;

    invoke-static {v0}, Lp4/h;->a(Lp4/g;)V

    :goto_c7
    iget-wide v3, p1, Lokio/a;->b:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lokio/a;->b:J

    iget-wide v3, p0, Lokio/a;->b:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lokio/a;->b:J

    sub-long/2addr p2, v1

    goto/16 :goto_c

    :cond_d4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_da
    return-void

    :cond_db
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(I)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/a;->o(I)Lp4/g;

    move-result-object v0

    iget-object v1, v0, Lp4/g;->a:[B

    iget v2, v0, Lp4/g;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lp4/g;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Lokio/a;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/a;->b:J

    return-void
.end method

.method public final r(I)V
    .registers 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lokio/a;->o(I)Lp4/g;

    move-result-object v0

    iget-object v1, v0, Lp4/g;->a:[B

    iget v2, v0, Lp4/g;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iput v2, v0, Lp4/g;->c:I

    iget-wide v0, p0, Lokio/a;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/a;->b:J

    return-void
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .registers 8

    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lp4/g;->c:I

    iget v3, v0, Lp4/g;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lp4/g;->a:[B

    iget v3, v0, Lp4/g;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Lp4/g;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lp4/g;->b:I

    iget-wide v2, p0, Lokio/a;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/a;->b:J

    iget v2, v0, Lp4/g;->c:I

    if-ne p1, v2, :cond_32

    invoke-virtual {v0}, Lp4/g;->a()Lp4/g;

    move-result-object p1

    iput-object p1, p0, Lokio/a;->a:Lp4/g;

    invoke-static {v0}, Lp4/h;->a(Lp4/g;)V

    :cond_32
    return v1
.end method

.method public final request(J)Z
    .registers 5

    iget-wide v0, p0, Lokio/a;->b:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public final s(IILjava/lang/String;)V
    .registers 11

    if-eqz p3, :cond_110

    if-ltz p1, :cond_104

    if-lt p2, p1, :cond_e5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_cc

    :goto_c
    if-ge p1, p2, :cond_cb

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4b

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/a;->o(I)Lp4/g;

    move-result-object v2

    iget-object v3, v2, Lp4/g;->a:[B

    iget v4, v2, Lp4/g;->c:I

    sub-int/2addr v4, p1

    rsub-int v5, v4, 0x2000

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p1, 0x1

    add-int/2addr p1, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p1

    :goto_2c
    move p1, v6

    if-ge p1, v5, :cond_3d

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v1, :cond_36

    goto :goto_3d

    :cond_36
    add-int/lit8 v6, p1, 0x1

    add-int/2addr p1, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p1

    goto :goto_2c

    :cond_3d
    :goto_3d
    add-int/2addr v4, p1

    iget v0, v2, Lp4/g;->c:I

    sub-int/2addr v4, v0

    add-int/2addr v0, v4

    iput v0, v2, Lp4/g;->c:I

    iget-wide v0, p0, Lokio/a;->b:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/a;->b:J

    goto :goto_c

    :cond_4b
    const/16 v2, 0x800

    if-ge v0, v2, :cond_5d

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokio/a;->q(I)V

    goto :goto_c7

    :cond_5d
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_b3

    const v2, 0xdfff

    if-le v0, v2, :cond_6a

    goto :goto_b3

    :cond_6a
    add-int/lit8 v4, p1, 0x1

    if-ge v4, p2, :cond_73

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_74

    :cond_73
    const/4 v5, 0x0

    :goto_74
    const v6, 0xdbff

    if-gt v0, v6, :cond_ad

    const v6, 0xdc00

    if-lt v5, v6, :cond_ad

    if-le v5, v2, :cond_81

    goto :goto_ad

    :cond_81
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokio/a;->q(I)V

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_c

    :cond_ad
    :goto_ad
    invoke-virtual {p0, v3}, Lokio/a;->q(I)V

    move p1, v4

    goto/16 :goto_c

    :cond_b3
    :goto_b3
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokio/a;->q(I)V

    :goto_c7
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_c

    :cond_cb
    return-void

    :cond_cc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "endIndex > string.length: "

    const-string v1, " > "

    invoke-static {v0, p2, v1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e5
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_104
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "beginIndex < 0: "

    invoke-static {p3, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_110
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-wide v0, p0, Lokio/a;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1a

    long-to-int v0, v0

    if-nez v0, :cond_f

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_15

    :cond_f
    new-instance v1, Lokio/SegmentedByteString;

    invoke-direct {v1, p0, v0}, Lokio/SegmentedByteString;-><init>(Lokio/a;I)V

    move-object v0, v1

    :goto_15
    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size > Integer.MAX_VALUE: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/a;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .registers 8

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_7
    if-lez v1, :cond_24

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/a;->o(I)Lp4/g;

    move-result-object v2

    iget v3, v2, Lp4/g;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lp4/g;->a:[B

    iget v5, v2, Lp4/g;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Lp4/g;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lp4/g;->c:I

    goto :goto_7

    :cond_24
    iget-wide v1, p0, Lokio/a;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokio/a;->b:J

    return v0

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
