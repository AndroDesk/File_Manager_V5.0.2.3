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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(J)B
    .registers 9

    .line 1
    iget-wide v0, p0, Lokio/a;->b:J

    .line 3
    const-wide/16 v4, 0x1

    .line 5
    move-wide v2, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lp4/j;->b(JJJ)V

    .line 9
    iget-wide v0, p0, Lokio/a;->b:J

    .line 11
    sub-long v2, v0, p1

    .line 13
    cmp-long v2, v2, p1

    .line 15
    if-lez v2, :cond_27

    .line 17
    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    .line 19
    :goto_12
    iget v1, v0, Lp4/g;->c:I

    .line 21
    iget v2, v0, Lp4/g;->b:I

    .line 23
    sub-int/2addr v1, v2

    .line 24
    int-to-long v3, v1

    .line 25
    cmp-long v1, p1, v3

    .line 27
    if-gez v1, :cond_23

    .line 29
    iget-object v0, v0, Lp4/g;->a:[B

    .line 31
    long-to-int p1, p1

    .line 32
    add-int/2addr v2, p1

    .line 33
    aget-byte p1, v0, v2

    .line 35
    return p1

    .line 36
    :cond_23
    sub-long/2addr p1, v3

    .line 37
    iget-object v0, v0, Lp4/g;->f:Lp4/g;

    .line 39
    goto :goto_12

    .line 40
    :cond_27
    sub-long/2addr p1, v0

    .line 41
    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    .line 43
    :cond_2a
    iget-object v0, v0, Lp4/g;->g:Lp4/g;

    .line 45
    iget v1, v0, Lp4/g;->c:I

    .line 47
    iget v2, v0, Lp4/g;->b:I

    .line 49
    sub-int/2addr v1, v2

    .line 50
    int-to-long v3, v1

    .line 51
    add-long/2addr p1, v3

    .line 52
    const-wide/16 v3, 0x0

    .line 54
    cmp-long v1, p1, v3

    .line 56
    if-ltz v1, :cond_2a

    .line 58
    iget-object v0, v0, Lp4/g;->a:[B

    .line 60
    long-to-int p1, p1

    .line 61
    add-int/2addr v2, p1

    .line 62
    aget-byte p1, v0, v2

    .line 64
    return p1
.end method

.method public final b(Lokio/ByteString;)J
    .registers 4

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lokio/a;->e(Lokio/ByteString;J)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final c()Lokio/a;
    .registers 1

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 6

    .line 1
    new-instance v0, Lokio/a;

    .line 3
    invoke-direct {v0}, Lokio/a;-><init>()V

    .line 6
    iget-wide v1, p0, Lokio/a;->b:J

    .line 8
    const-wide/16 v3, 0x0

    .line 10
    cmp-long v1, v1, v3

    .line 12
    if-nez v1, :cond_e

    .line 14
    goto :goto_32

    .line 15
    :cond_e
    iget-object v1, p0, Lokio/a;->a:Lp4/g;

    .line 17
    invoke-virtual {v1}, Lp4/g;->c()Lp4/g;

    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lokio/a;->a:Lp4/g;

    .line 23
    iput-object v1, v1, Lp4/g;->g:Lp4/g;

    .line 25
    iput-object v1, v1, Lp4/g;->f:Lp4/g;

    .line 27
    iget-object v1, p0, Lokio/a;->a:Lp4/g;

    .line 29
    :goto_1c
    iget-object v1, v1, Lp4/g;->f:Lp4/g;

    .line 31
    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    .line 33
    if-eq v1, v2, :cond_2e

    .line 35
    iget-object v2, v0, Lokio/a;->a:Lp4/g;

    .line 37
    iget-object v2, v2, Lp4/g;->g:Lp4/g;

    .line 39
    invoke-virtual {v1}, Lp4/g;->c()Lp4/g;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Lp4/g;->b(Lp4/g;)V

    .line 46
    goto :goto_1c

    .line 47
    :cond_2e
    iget-wide v1, p0, Lokio/a;->b:J

    .line 49
    iput-wide v1, v0, Lokio/a;->b:J

    .line 51
    :goto_32
    return-object v0
.end method

.method public final close()V
    .registers 1

    return-void
.end method

.method public final d(Lokio/ByteString;)J
    .registers 4

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lokio/a;->g(Lokio/ByteString;J)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final e(Lokio/ByteString;J)J
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_da

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    cmp-long v4, p2, v2

    .line 15
    if-ltz v4, :cond_d2

    .line 17
    iget-object v4, v0, Lokio/a;->a:Lp4/g;

    .line 19
    const-wide/16 v5, -0x1

    .line 21
    if-nez v4, :cond_17

    .line 23
    return-wide v5

    .line 24
    :cond_17
    iget-wide v7, v0, Lokio/a;->b:J

    .line 26
    sub-long v9, v7, p2

    .line 28
    cmp-long v9, v9, p2

    .line 30
    if-gez v9, :cond_2d

    .line 32
    :goto_1f
    cmp-long v2, v7, p2

    .line 34
    if-lez v2, :cond_3d

    .line 36
    iget-object v4, v4, Lp4/g;->g:Lp4/g;

    .line 38
    iget v2, v4, Lp4/g;->c:I

    .line 40
    iget v3, v4, Lp4/g;->b:I

    .line 42
    sub-int/2addr v2, v3

    .line 43
    int-to-long v2, v2

    .line 44
    sub-long/2addr v7, v2

    .line 45
    goto :goto_1f

    .line 46
    :cond_2d
    :goto_2d
    iget v7, v4, Lp4/g;->c:I

    .line 48
    iget v8, v4, Lp4/g;->b:I

    .line 50
    sub-int/2addr v7, v8

    .line 51
    int-to-long v7, v7

    .line 52
    add-long/2addr v7, v2

    .line 53
    cmp-long v9, v7, p2

    .line 55
    if-gez v9, :cond_3c

    .line 57
    iget-object v4, v4, Lp4/g;->f:Lp4/g;

    .line 59
    move-wide v2, v7

    .line 60
    goto :goto_2d

    .line 61
    :cond_3c
    move-wide v7, v2

    .line 62
    :cond_3d
    const/4 v2, 0x0

    .line 63
    invoke-virtual {v1, v2}, Lokio/ByteString;->getByte(I)B

    .line 66
    move-result v3

    .line 67
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    .line 70
    move-result v9

    .line 71
    iget-wide v10, v0, Lokio/a;->b:J

    .line 73
    int-to-long v12, v9

    .line 74
    sub-long/2addr v10, v12

    .line 75
    const-wide/16 v12, 0x1

    .line 77
    add-long/2addr v10, v12

    .line 78
    move-wide v12, v7

    .line 79
    move-wide/from16 v7, p2

    .line 81
    :goto_50
    cmp-long v14, v12, v10

    .line 83
    if-gez v14, :cond_d0

    .line 85
    iget-object v14, v4, Lp4/g;->a:[B

    .line 87
    iget v15, v4, Lp4/g;->c:I

    .line 89
    int-to-long v5, v15

    .line 90
    iget v15, v4, Lp4/g;->b:I

    .line 92
    move/from16 v16, v3

    .line 94
    int-to-long v2, v15

    .line 95
    add-long/2addr v2, v10

    .line 96
    sub-long/2addr v2, v12

    .line 97
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 100
    move-result-wide v2

    .line 101
    long-to-int v2, v2

    .line 102
    iget v3, v4, Lp4/g;->b:I

    .line 104
    int-to-long v5, v3

    .line 105
    add-long/2addr v5, v7

    .line 106
    sub-long/2addr v5, v12

    .line 107
    long-to-int v3, v5

    .line 108
    :goto_6b
    if-ge v3, v2, :cond_bd

    .line 110
    aget-byte v5, v14, v3

    .line 112
    move/from16 v6, v16

    .line 114
    if-ne v5, v6, :cond_b2

    .line 116
    add-int/lit8 v5, v3, 0x1

    .line 118
    iget v7, v4, Lp4/g;->c:I

    .line 120
    iget-object v8, v4, Lp4/g;->a:[B

    .line 122
    move-object v0, v4

    .line 123
    const/4 v15, 0x1

    .line 124
    :goto_7b
    if-ge v15, v9, :cond_a7

    .line 126
    if-ne v5, v7, :cond_90

    .line 128
    iget-object v0, v0, Lp4/g;->f:Lp4/g;

    .line 130
    iget-object v5, v0, Lp4/g;->a:[B

    .line 132
    iget v7, v0, Lp4/g;->b:I

    .line 134
    iget v8, v0, Lp4/g;->c:I

    .line 136
    move-object/from16 p3, v0

    .line 138
    move/from16 v17, v8

    .line 140
    move-object v8, v5

    .line 141
    move v5, v7

    .line 142
    move/from16 v7, v17

    .line 144
    goto :goto_92

    .line 145
    :cond_90
    move-object/from16 p3, v0

    .line 147
    :goto_92
    aget-byte v0, v8, v5

    .line 149
    move/from16 v16, v2

    .line 151
    invoke-virtual {v1, v15}, Lokio/ByteString;->getByte(I)B

    .line 154
    move-result v2

    .line 155
    if-eq v0, v2, :cond_9e

    .line 157
    const/4 v15, 0x0

    .line 158
    goto :goto_aa

    .line 159
    :cond_9e
    add-int/lit8 v5, v5, 0x1

    .line 161
    add-int/lit8 v15, v15, 0x1

    .line 163
    move-object/from16 v0, p3

    .line 165
    move/from16 v2, v16

    .line 167
    goto :goto_7b

    .line 168
    :cond_a7
    move/from16 v16, v2

    .line 170
    const/4 v15, 0x1

    .line 171
    :goto_aa
    if-eqz v15, :cond_b4

    .line 173
    iget v0, v4, Lp4/g;->b:I

    .line 175
    sub-int/2addr v3, v0

    .line 176
    int-to-long v0, v3

    .line 177
    add-long/2addr v0, v12

    .line 178
    return-wide v0

    .line 179
    :cond_b2
    move/from16 v16, v2

    .line 181
    :cond_b4
    add-int/lit8 v3, v3, 0x1

    .line 183
    move-object/from16 v0, p0

    .line 185
    move/from16 v2, v16

    .line 187
    move/from16 v16, v6

    .line 189
    goto :goto_6b

    .line 190
    :cond_bd
    move/from16 v6, v16

    .line 192
    iget v0, v4, Lp4/g;->c:I

    .line 194
    iget v2, v4, Lp4/g;->b:I

    .line 196
    sub-int/2addr v0, v2

    .line 197
    int-to-long v2, v0

    .line 198
    add-long/2addr v12, v2

    .line 199
    iget-object v4, v4, Lp4/g;->f:Lp4/g;

    .line 201
    move-object/from16 v0, p0

    .line 203
    move v3, v6

    .line 204
    move-wide v7, v12

    .line 205
    const/4 v2, 0x0

    .line 206
    const-wide/16 v5, -0x1

    .line 208
    goto :goto_50

    .line 209
    :cond_d0
    move-wide v2, v5

    .line 210
    return-wide v2

    .line 211
    :cond_d2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 213
    const-string v1, "fromIndex < 0"

    .line 215
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    throw v0

    .line 219
    :cond_da
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 221
    const-string v1, "bytes is empty"

    .line 223
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 226
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 15

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lokio/a;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lokio/a;

    .line 13
    iget-wide v3, p0, Lokio/a;->b:J

    .line 15
    iget-wide v5, p1, Lokio/a;->b:J

    .line 17
    cmp-long v1, v3, v5

    .line 19
    if-eqz v1, :cond_15

    .line 21
    return v2

    .line 22
    :cond_15
    const-wide/16 v5, 0x0

    .line 24
    cmp-long v1, v3, v5

    .line 26
    if-nez v1, :cond_1c

    .line 28
    return v0

    .line 29
    :cond_1c
    iget-object v1, p0, Lokio/a;->a:Lp4/g;

    .line 31
    iget-object p1, p1, Lokio/a;->a:Lp4/g;

    .line 33
    iget v3, v1, Lp4/g;->b:I

    .line 35
    iget v4, p1, Lp4/g;->b:I

    .line 37
    :goto_24
    iget-wide v7, p0, Lokio/a;->b:J

    .line 39
    cmp-long v7, v5, v7

    .line 41
    if-gez v7, :cond_61

    .line 43
    iget v7, v1, Lp4/g;->c:I

    .line 45
    sub-int/2addr v7, v3

    .line 46
    iget v8, p1, Lp4/g;->c:I

    .line 48
    sub-int/2addr v8, v4

    .line 49
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 52
    move-result v7

    .line 53
    int-to-long v7, v7

    .line 54
    move v9, v2

    .line 55
    :goto_36
    int-to-long v10, v9

    .line 56
    cmp-long v10, v10, v7

    .line 58
    if-gez v10, :cond_4f

    .line 60
    iget-object v10, v1, Lp4/g;->a:[B

    .line 62
    add-int/lit8 v11, v3, 0x1

    .line 64
    aget-byte v3, v10, v3

    .line 66
    iget-object v10, p1, Lp4/g;->a:[B

    .line 68
    add-int/lit8 v12, v4, 0x1

    .line 70
    aget-byte v4, v10, v4

    .line 72
    if-eq v3, v4, :cond_4a

    .line 74
    return v2

    .line 75
    :cond_4a
    add-int/lit8 v9, v9, 0x1

    .line 77
    move v3, v11

    .line 78
    move v4, v12

    .line 79
    goto :goto_36

    .line 80
    :cond_4f
    iget v9, v1, Lp4/g;->c:I

    .line 82
    if-ne v3, v9, :cond_57

    .line 84
    iget-object v1, v1, Lp4/g;->f:Lp4/g;

    .line 86
    iget v3, v1, Lp4/g;->b:I

    .line 88
    :cond_57
    iget v9, p1, Lp4/g;->c:I

    .line 90
    if-ne v4, v9, :cond_5f

    .line 92
    iget-object p1, p1, Lp4/g;->f:Lp4/g;

    .line 94
    iget v4, p1, Lp4/g;->b:I

    .line 96
    :cond_5f
    add-long/2addr v5, v7

    .line 97
    goto :goto_24

    .line 98
    :cond_61
    return v0
.end method

.method public final f(Lp4/e;)I
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lokio/a;->l(Lp4/e;Z)I

    .line 5
    move-result v0

    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    return v1

    .line 10
    :cond_9
    iget-object p1, p1, Lp4/e;->a:[Lokio/ByteString;

    .line 12
    aget-object p1, p1, v0

    .line 14
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 17
    move-result p1

    .line 18
    int-to-long v1, p1

    .line 19
    :try_start_12
    invoke-virtual {p0, v1, v2}, Lokio/a;->m(J)V
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_15} :catch_16

    .line 22
    return v0

    .line 23
    :catch_16
    new-instance p1, Ljava/lang/AssertionError;

    .line 25
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 28
    throw p1
.end method

.method public final flush()V
    .registers 1

    return-void
.end method

.method public final g(Lokio/ByteString;J)J
    .registers 15

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p2, v0

    .line 5
    if-ltz v2, :cond_a6

    .line 7
    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    .line 9
    const-wide/16 v3, -0x1

    .line 11
    if-nez v2, :cond_d

    .line 13
    return-wide v3

    .line 14
    :cond_d
    iget-wide v5, p0, Lokio/a;->b:J

    .line 16
    sub-long v7, v5, p2

    .line 18
    cmp-long v7, v7, p2

    .line 20
    if-gez v7, :cond_23

    .line 22
    :goto_15
    cmp-long v0, v5, p2

    .line 24
    if-lez v0, :cond_33

    .line 26
    iget-object v2, v2, Lp4/g;->g:Lp4/g;

    .line 28
    iget v0, v2, Lp4/g;->c:I

    .line 30
    iget v1, v2, Lp4/g;->b:I

    .line 32
    sub-int/2addr v0, v1

    .line 33
    int-to-long v0, v0

    .line 34
    sub-long/2addr v5, v0

    .line 35
    goto :goto_15

    .line 36
    :cond_23
    :goto_23
    iget v5, v2, Lp4/g;->c:I

    .line 38
    iget v6, v2, Lp4/g;->b:I

    .line 40
    sub-int/2addr v5, v6

    .line 41
    int-to-long v5, v5

    .line 42
    add-long/2addr v5, v0

    .line 43
    cmp-long v7, v5, p2

    .line 45
    if-gez v7, :cond_32

    .line 47
    iget-object v2, v2, Lp4/g;->f:Lp4/g;

    .line 49
    move-wide v0, v5

    .line 50
    goto :goto_23

    .line 51
    :cond_32
    move-wide v5, v0

    .line 52
    :cond_33
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x2

    .line 57
    const/4 v7, 0x0

    .line 58
    if-ne v0, v1, :cond_71

    .line 60
    invoke-virtual {p1, v7}, Lokio/ByteString;->getByte(I)B

    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    .line 68
    move-result p1

    .line 69
    :goto_44
    iget-wide v7, p0, Lokio/a;->b:J

    .line 71
    cmp-long v1, v5, v7

    .line 73
    if-gez v1, :cond_a5

    .line 75
    iget-object v1, v2, Lp4/g;->a:[B

    .line 77
    iget v7, v2, Lp4/g;->b:I

    .line 79
    int-to-long v7, v7

    .line 80
    add-long/2addr v7, p2

    .line 81
    sub-long/2addr v7, v5

    .line 82
    long-to-int p2, v7

    .line 83
    iget p3, v2, Lp4/g;->c:I

    .line 85
    :goto_54
    if-ge p2, p3, :cond_66

    .line 87
    aget-byte v7, v1, p2

    .line 89
    if-eq v7, v0, :cond_60

    .line 91
    if-ne v7, p1, :cond_5d

    .line 93
    goto :goto_60

    .line 94
    :cond_5d
    add-int/lit8 p2, p2, 0x1

    .line 96
    goto :goto_54

    .line 97
    :cond_60
    :goto_60
    iget p1, v2, Lp4/g;->b:I

    .line 99
    :goto_62
    sub-int/2addr p2, p1

    .line 100
    int-to-long p1, p2

    .line 101
    add-long/2addr p1, v5

    .line 102
    return-wide p1

    .line 103
    :cond_66
    iget p2, v2, Lp4/g;->c:I

    .line 105
    iget p3, v2, Lp4/g;->b:I

    .line 107
    sub-int/2addr p2, p3

    .line 108
    int-to-long p2, p2

    .line 109
    add-long/2addr v5, p2

    .line 110
    iget-object v2, v2, Lp4/g;->f:Lp4/g;

    .line 112
    move-wide p2, v5

    .line 113
    goto :goto_44

    .line 114
    :cond_71
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    .line 117
    move-result-object p1

    .line 118
    :goto_75
    iget-wide v0, p0, Lokio/a;->b:J

    .line 120
    cmp-long v0, v5, v0

    .line 122
    if-gez v0, :cond_a5

    .line 124
    iget-object v0, v2, Lp4/g;->a:[B

    .line 126
    iget v1, v2, Lp4/g;->b:I

    .line 128
    int-to-long v8, v1

    .line 129
    add-long/2addr v8, p2

    .line 130
    sub-long/2addr v8, v5

    .line 131
    long-to-int p2, v8

    .line 132
    iget p3, v2, Lp4/g;->c:I

    .line 134
    :goto_85
    if-ge p2, p3, :cond_9a

    .line 136
    aget-byte v1, v0, p2

    .line 138
    array-length v8, p1

    .line 139
    move v9, v7

    .line 140
    :goto_8b
    if-ge v9, v8, :cond_97

    .line 142
    aget-byte v10, p1, v9

    .line 144
    if-ne v1, v10, :cond_94

    .line 146
    iget p1, v2, Lp4/g;->b:I

    .line 148
    goto :goto_62

    .line 149
    :cond_94
    add-int/lit8 v9, v9, 0x1

    .line 151
    goto :goto_8b

    .line 152
    :cond_97
    add-int/lit8 p2, p2, 0x1

    .line 154
    goto :goto_85

    .line 155
    :cond_9a
    iget p2, v2, Lp4/g;->c:I

    .line 157
    iget p3, v2, Lp4/g;->b:I

    .line 159
    sub-int/2addr p2, p3

    .line 160
    int-to-long p2, p2

    .line 161
    add-long/2addr v5, p2

    .line 162
    iget-object v2, v2, Lp4/g;->f:Lp4/g;

    .line 164
    move-wide p2, v5

    .line 165
    goto :goto_75

    .line 166
    :cond_a5
    return-wide v3

    .line 167
    :cond_a6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    const-string p2, "fromIndex < 0"

    .line 171
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    throw p1
.end method

.method public final h()B
    .registers 10

    .line 1
    iget-wide v0, p0, Lokio/a;->b:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v2, v0, v2

    .line 7
    if-eqz v2, :cond_28

    .line 9
    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    .line 11
    iget v3, v2, Lp4/g;->b:I

    .line 13
    iget v4, v2, Lp4/g;->c:I

    .line 15
    iget-object v5, v2, Lp4/g;->a:[B

    .line 17
    add-int/lit8 v6, v3, 0x1

    .line 19
    aget-byte v3, v5, v3

    .line 21
    const-wide/16 v7, 0x1

    .line 23
    sub-long/2addr v0, v7

    .line 24
    iput-wide v0, p0, Lokio/a;->b:J

    .line 26
    if-ne v6, v4, :cond_25

    .line 28
    invoke-virtual {v2}, Lp4/g;->a()Lp4/g;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lokio/a;->a:Lp4/g;

    .line 34
    invoke-static {v2}, Lp4/h;->a(Lp4/g;)V

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    iput v6, v2, Lp4/g;->b:I

    .line 40
    :goto_27
    return v3

    .line 41
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    const-string v1, "size == 0"

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method

.method public final hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v1, 0x1

    .line 8
    :cond_7
    iget v2, v0, Lp4/g;->b:I

    .line 10
    iget v3, v0, Lp4/g;->c:I

    .line 12
    :goto_b
    if-ge v2, v3, :cond_17

    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 16
    iget-object v4, v0, Lp4/g;->a:[B

    .line 18
    aget-byte v4, v4, v2

    .line 20
    add-int/2addr v1, v4

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_b

    .line 24
    :cond_17
    iget-object v0, v0, Lp4/g;->f:Lp4/g;

    .line 26
    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    .line 28
    if-ne v0, v2, :cond_7

    .line 30
    return v1
.end method

.method public final i(J)[B
    .registers 12

    .line 1
    iget-wide v0, p0, Lokio/a;->b:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    move-wide v4, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lp4/j;->b(JJJ)V

    .line 9
    const-wide/32 v0, 0x7fffffff

    .line 12
    cmp-long v0, p1, v0

    .line 14
    if-gtz v0, :cond_57

    .line 16
    long-to-int p1, p1

    .line 17
    new-array p2, p1, [B

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_13
    if-ge v0, p1, :cond_56

    .line 22
    sub-int v1, p1, v0

    .line 24
    int-to-long v2, p1

    .line 25
    int-to-long v4, v0

    .line 26
    int-to-long v6, v1

    .line 27
    invoke-static/range {v2 .. v7}, Lp4/j;->b(JJJ)V

    .line 30
    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    .line 32
    const/4 v3, -0x1

    .line 33
    if-nez v2, :cond_24

    .line 35
    move v1, v3

    .line 36
    goto :goto_4c

    .line 37
    :cond_24
    iget v4, v2, Lp4/g;->c:I

    .line 39
    iget v5, v2, Lp4/g;->b:I

    .line 41
    sub-int/2addr v4, v5

    .line 42
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 45
    move-result v1

    .line 46
    iget-object v4, v2, Lp4/g;->a:[B

    .line 48
    iget v5, v2, Lp4/g;->b:I

    .line 50
    invoke-static {v4, v5, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget v4, v2, Lp4/g;->b:I

    .line 55
    add-int/2addr v4, v1

    .line 56
    iput v4, v2, Lp4/g;->b:I

    .line 58
    iget-wide v5, p0, Lokio/a;->b:J

    .line 60
    int-to-long v7, v1

    .line 61
    sub-long/2addr v5, v7

    .line 62
    iput-wide v5, p0, Lokio/a;->b:J

    .line 64
    iget v5, v2, Lp4/g;->c:I

    .line 66
    if-ne v4, v5, :cond_4c

    .line 68
    invoke-virtual {v2}, Lp4/g;->a()Lp4/g;

    .line 71
    move-result-object v4

    .line 72
    iput-object v4, p0, Lokio/a;->a:Lp4/g;

    .line 74
    invoke-static {v2}, Lp4/h;->a(Lp4/g;)V

    .line 77
    :cond_4c
    :goto_4c
    if-eq v1, v3, :cond_50

    .line 79
    add-int/2addr v0, v1

    .line 80
    goto :goto_13

    .line 81
    :cond_50
    new-instance p1, Ljava/io/EOFException;

    .line 83
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 86
    throw p1

    .line 87
    :cond_56
    return-object p2

    .line 88
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v2, "byteCount > Integer.MAX_VALUE: "

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    throw v0
.end method

.method public final isOpen()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10

    .line 1
    iget-wide v0, p0, Lokio/a;->b:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    move-wide v4, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lp4/j;->b(JJJ)V

    .line 9
    if-eqz p3, :cond_6a

    .line 11
    const-wide/32 v0, 0x7fffffff

    .line 14
    cmp-long v0, p1, v0

    .line 16
    if-gtz v0, :cond_53

    .line 18
    const-wide/16 v0, 0x0

    .line 20
    cmp-long v0, p1, v0

    .line 22
    if-nez v0, :cond_1a

    .line 24
    const-string p1, ""

    .line 26
    return-object p1

    .line 27
    :cond_1a
    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    .line 29
    iget v1, v0, Lp4/g;->b:I

    .line 31
    int-to-long v2, v1

    .line 32
    add-long/2addr v2, p1

    .line 33
    iget v4, v0, Lp4/g;->c:I

    .line 35
    int-to-long v4, v4

    .line 36
    cmp-long v2, v2, v4

    .line 38
    if-lez v2, :cond_31

    .line 40
    new-instance v0, Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1, p2}, Lokio/a;->i(J)[B

    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 49
    return-object v0

    .line 50
    :cond_31
    new-instance v2, Ljava/lang/String;

    .line 52
    iget-object v3, v0, Lp4/g;->a:[B

    .line 54
    long-to-int v4, p1

    .line 55
    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 58
    iget p3, v0, Lp4/g;->b:I

    .line 60
    int-to-long v3, p3

    .line 61
    add-long/2addr v3, p1

    .line 62
    long-to-int p3, v3

    .line 63
    iput p3, v0, Lp4/g;->b:I

    .line 65
    iget-wide v3, p0, Lokio/a;->b:J

    .line 67
    sub-long/2addr v3, p1

    .line 68
    iput-wide v3, p0, Lokio/a;->b:J

    .line 70
    iget p1, v0, Lp4/g;->c:I

    .line 72
    if-ne p3, p1, :cond_52

    .line 74
    invoke-virtual {v0}, Lp4/g;->a()Lp4/g;

    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lokio/a;->a:Lp4/g;

    .line 80
    invoke-static {v0}, Lp4/h;->a(Lp4/g;)V

    .line 83
    :cond_52
    return-object v2

    .line 84
    :cond_53
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string v1, "byteCount > Integer.MAX_VALUE: "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p3

    .line 107
    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 109
    const-string p2, "charset == null"

    .line 111
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    throw p1
.end method

.method public final k(J)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lp4/j;->a:Ljava/nio/charset/Charset;

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lokio/a;->j(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final l(Lp4/e;Z)I
    .registers 20

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-object/from16 v1, p0

    .line 5
    iget-object v2, v1, Lokio/a;->a:Lp4/g;

    .line 7
    const/4 v3, -0x2

    .line 8
    if-nez v2, :cond_13

    .line 10
    if-eqz p2, :cond_c

    .line 12
    return v3

    .line 13
    :cond_c
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_13
    iget-object v4, v2, Lp4/g;->a:[B

    .line 22
    iget v5, v2, Lp4/g;->b:I

    .line 24
    iget v6, v2, Lp4/g;->c:I

    .line 26
    iget-object v0, v0, Lp4/e;->b:[I

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, -0x1

    .line 30
    move-object v10, v2

    .line 31
    move v9, v7

    .line 32
    move v11, v8

    .line 33
    :goto_20
    add-int/lit8 v12, v9, 0x1

    .line 35
    aget v9, v0, v9

    .line 37
    add-int/lit8 v13, v12, 0x1

    .line 39
    aget v12, v0, v12

    .line 41
    if-eq v12, v8, :cond_2b

    .line 43
    move v11, v12

    .line 44
    :cond_2b
    if-nez v10, :cond_2e

    .line 46
    goto :goto_55

    .line 47
    :cond_2e
    const/4 v12, 0x0

    .line 48
    if-gez v9, :cond_75

    .line 50
    mul-int/lit8 v9, v9, -0x1

    .line 52
    add-int v14, v9, v13

    .line 54
    :goto_35
    add-int/lit8 v9, v5, 0x1

    .line 56
    aget-byte v5, v4, v5

    .line 58
    and-int/lit16 v5, v5, 0xff

    .line 60
    add-int/lit8 v15, v13, 0x1

    .line 62
    aget v13, v0, v13

    .line 64
    if-eq v5, v13, :cond_42

    .line 66
    return v11

    .line 67
    :cond_42
    if-ne v15, v14, :cond_46

    .line 69
    const/4 v5, 0x1

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v5, v7

    .line 72
    :goto_47
    if-ne v9, v6, :cond_62

    .line 74
    iget-object v4, v10, Lp4/g;->f:Lp4/g;

    .line 76
    iget v6, v4, Lp4/g;->b:I

    .line 78
    iget-object v9, v4, Lp4/g;->a:[B

    .line 80
    iget v10, v4, Lp4/g;->c:I

    .line 82
    if-ne v4, v2, :cond_5c

    .line 84
    if-nez v5, :cond_59

    .line 86
    :goto_55
    if-eqz p2, :cond_58

    .line 88
    return v3

    .line 89
    :cond_58
    return v11

    .line 90
    :cond_59
    move-object v4, v9

    .line 91
    move-object v9, v12

    .line 92
    goto :goto_68

    .line 93
    :cond_5c
    move-object/from16 v16, v9

    .line 95
    move-object v9, v4

    .line 96
    move-object/from16 v4, v16

    .line 98
    goto :goto_68

    .line 99
    :cond_62
    move-object/from16 v16, v10

    .line 101
    move v10, v6

    .line 102
    move v6, v9

    .line 103
    move-object/from16 v9, v16

    .line 105
    :goto_68
    if-eqz v5, :cond_70

    .line 107
    aget v5, v0, v15

    .line 109
    move v3, v6

    .line 110
    move v6, v10

    .line 111
    move-object v10, v9

    .line 112
    goto :goto_96

    .line 113
    :cond_70
    move v5, v6

    .line 114
    move v6, v10

    .line 115
    move v13, v15

    .line 116
    move-object v10, v9

    .line 117
    goto :goto_35

    .line 118
    :cond_75
    add-int/lit8 v14, v5, 0x1

    .line 120
    aget-byte v5, v4, v5

    .line 122
    and-int/lit16 v5, v5, 0xff

    .line 124
    add-int v15, v13, v9

    .line 126
    :goto_7d
    if-ne v13, v15, :cond_80

    .line 128
    return v11

    .line 129
    :cond_80
    aget v3, v0, v13

    .line 131
    if-ne v5, v3, :cond_9d

    .line 133
    add-int/2addr v13, v9

    .line 134
    aget v5, v0, v13

    .line 136
    if-ne v14, v6, :cond_95

    .line 138
    iget-object v10, v10, Lp4/g;->f:Lp4/g;

    .line 140
    iget v3, v10, Lp4/g;->b:I

    .line 142
    iget-object v4, v10, Lp4/g;->a:[B

    .line 144
    iget v6, v10, Lp4/g;->c:I

    .line 146
    if-ne v10, v2, :cond_96

    .line 148
    move-object v10, v12

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    move v3, v14

    .line 151
    :cond_96
    :goto_96
    if-ltz v5, :cond_99

    .line 153
    return v5

    .line 154
    :cond_99
    neg-int v9, v5

    .line 155
    move v5, v3

    .line 156
    const/4 v3, -0x2

    .line 157
    goto :goto_20

    .line 158
    :cond_9d
    add-int/lit8 v13, v13, 0x1

    .line 160
    const/4 v3, -0x2

    .line 161
    goto :goto_7d
.end method

.method public final m(J)V
    .registers 8

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-lez v0, :cond_37

    .line 7
    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    .line 9
    if-eqz v0, :cond_31

    .line 11
    iget v1, v0, Lp4/g;->c:I

    .line 13
    iget v0, v0, Lp4/g;->b:I

    .line 15
    sub-int/2addr v1, v0

    .line 16
    int-to-long v0, v1

    .line 17
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 20
    move-result-wide v0

    .line 21
    long-to-int v0, v0

    .line 22
    iget-wide v1, p0, Lokio/a;->b:J

    .line 24
    int-to-long v3, v0

    .line 25
    sub-long/2addr v1, v3

    .line 26
    iput-wide v1, p0, Lokio/a;->b:J

    .line 28
    sub-long/2addr p1, v3

    .line 29
    iget-object v1, p0, Lokio/a;->a:Lp4/g;

    .line 31
    iget v2, v1, Lp4/g;->b:I

    .line 33
    add-int/2addr v2, v0

    .line 34
    iput v2, v1, Lp4/g;->b:I

    .line 36
    iget v0, v1, Lp4/g;->c:I

    .line 38
    if-ne v2, v0, :cond_0

    .line 40
    invoke-virtual {v1}, Lp4/g;->a()Lp4/g;

    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lokio/a;->a:Lp4/g;

    .line 46
    invoke-static {v1}, Lp4/h;->a(Lp4/g;)V

    .line 49
    goto :goto_0

    .line 50
    :cond_31
    new-instance p1, Ljava/io/EOFException;

    .line 52
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 55
    throw p1

    .line 56
    :cond_37
    return-void
.end method

.method public final n(Lokio/a;J)J
    .registers 8

    .line 1
    if-eqz p1, :cond_31

    .line 3
    const-wide/16 v0, 0x0

    .line 5
    cmp-long v2, p2, v0

    .line 7
    if-ltz v2, :cond_1a

    .line 9
    iget-wide v2, p0, Lokio/a;->b:J

    .line 11
    cmp-long v0, v2, v0

    .line 13
    if-nez v0, :cond_11

    .line 15
    const-wide/16 p1, -0x1

    .line 17
    return-wide p1

    .line 18
    :cond_11
    cmp-long v0, p2, v2

    .line 20
    if-lez v0, :cond_16

    .line 22
    move-wide p2, v2

    .line 23
    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Lokio/a;->p(Lokio/a;J)V

    .line 26
    return-wide p2

    .line 27
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v1, "byteCount < 0: "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    const-string p2, "sink == null"

    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1
.end method

.method public final o(I)Lp4/g;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_2a

    .line 4
    const/16 v0, 0x2000

    .line 6
    if-gt p1, v0, :cond_2a

    .line 8
    iget-object v1, p0, Lokio/a;->a:Lp4/g;

    .line 10
    if-nez v1, :cond_16

    .line 12
    invoke-static {}, Lp4/h;->b()Lp4/g;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lokio/a;->a:Lp4/g;

    .line 18
    iput-object p1, p1, Lp4/g;->g:Lp4/g;

    .line 20
    iput-object p1, p1, Lp4/g;->f:Lp4/g;

    .line 22
    return-object p1

    .line 23
    :cond_16
    iget-object v1, v1, Lp4/g;->g:Lp4/g;

    .line 25
    iget v2, v1, Lp4/g;->c:I

    .line 27
    add-int/2addr v2, p1

    .line 28
    if-gt v2, v0, :cond_21

    .line 30
    iget-boolean p1, v1, Lp4/g;->e:Z

    .line 32
    if-nez p1, :cond_29

    .line 34
    :cond_21
    invoke-static {}, Lp4/h;->b()Lp4/g;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Lp4/g;->b(Lp4/g;)V

    .line 41
    move-object v1, p1

    .line 42
    :cond_29
    return-object v1

    .line 43
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 48
    throw p1
.end method

.method public final p(Lokio/a;J)V
    .registers 12

    .line 1
    if-eqz p1, :cond_e3

    .line 3
    if-eq p1, p0, :cond_db

    .line 5
    iget-wide v0, p1, Lokio/a;->b:J

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    move-wide v4, p2

    .line 10
    invoke-static/range {v0 .. v5}, Lp4/j;->b(JJJ)V

    .line 13
    :goto_c
    const-wide/16 v0, 0x0

    .line 15
    cmp-long v0, p2, v0

    .line 17
    if-lez v0, :cond_da

    .line 19
    iget-object v0, p1, Lokio/a;->a:Lp4/g;

    .line 21
    iget v1, v0, Lp4/g;->c:I

    .line 23
    iget v2, v0, Lp4/g;->b:I

    .line 25
    sub-int/2addr v1, v2

    .line 26
    int-to-long v2, v1

    .line 27
    cmp-long v2, p2, v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-gez v2, :cond_83

    .line 32
    iget-object v2, p0, Lokio/a;->a:Lp4/g;

    .line 34
    if-eqz v2, :cond_26

    .line 36
    iget-object v2, v2, Lp4/g;->g:Lp4/g;

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 v2, 0x0

    .line 40
    :goto_27
    if-eqz v2, :cond_50

    .line 42
    iget-boolean v4, v2, Lp4/g;->e:Z

    .line 44
    if-eqz v4, :cond_50

    .line 46
    iget v4, v2, Lp4/g;->c:I

    .line 48
    int-to-long v4, v4

    .line 49
    add-long/2addr v4, p2

    .line 50
    iget-boolean v6, v2, Lp4/g;->d:Z

    .line 52
    if-eqz v6, :cond_37

    .line 54
    move v6, v3

    .line 55
    goto :goto_39

    .line 56
    :cond_37
    iget v6, v2, Lp4/g;->b:I

    .line 58
    :goto_39
    int-to-long v6, v6

    .line 59
    sub-long/2addr v4, v6

    .line 60
    const-wide/16 v6, 0x2000

    .line 62
    cmp-long v4, v4, v6

    .line 64
    if-gtz v4, :cond_50

    .line 66
    long-to-int v1, p2

    .line 67
    invoke-virtual {v0, v2, v1}, Lp4/g;->d(Lp4/g;I)V

    .line 70
    iget-wide v0, p1, Lokio/a;->b:J

    .line 72
    sub-long/2addr v0, p2

    .line 73
    iput-wide v0, p1, Lokio/a;->b:J

    .line 75
    iget-wide v0, p0, Lokio/a;->b:J

    .line 77
    add-long/2addr v0, p2

    .line 78
    iput-wide v0, p0, Lokio/a;->b:J

    .line 80
    return-void

    .line 81
    :cond_50
    long-to-int v2, p2

    .line 82
    if-lez v2, :cond_7d

    .line 84
    if-gt v2, v1, :cond_7d

    .line 86
    const/16 v1, 0x400

    .line 88
    if-lt v2, v1, :cond_5e

    .line 90
    invoke-virtual {v0}, Lp4/g;->c()Lp4/g;

    .line 93
    move-result-object v1

    .line 94
    goto :goto_6b

    .line 95
    :cond_5e
    invoke-static {}, Lp4/h;->b()Lp4/g;

    .line 98
    move-result-object v1

    .line 99
    iget-object v4, v0, Lp4/g;->a:[B

    .line 101
    iget v5, v0, Lp4/g;->b:I

    .line 103
    iget-object v6, v1, Lp4/g;->a:[B

    .line 105
    invoke-static {v4, v5, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    :goto_6b
    iget v4, v1, Lp4/g;->b:I

    .line 110
    add-int/2addr v4, v2

    .line 111
    iput v4, v1, Lp4/g;->c:I

    .line 113
    iget v4, v0, Lp4/g;->b:I

    .line 115
    add-int/2addr v4, v2

    .line 116
    iput v4, v0, Lp4/g;->b:I

    .line 118
    iget-object v0, v0, Lp4/g;->g:Lp4/g;

    .line 120
    invoke-virtual {v0, v1}, Lp4/g;->b(Lp4/g;)V

    .line 123
    iput-object v1, p1, Lokio/a;->a:Lp4/g;

    .line 125
    goto :goto_83

    .line 126
    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 131
    throw p1

    .line 132
    :cond_83
    :goto_83
    iget-object v0, p1, Lokio/a;->a:Lp4/g;

    .line 134
    iget v1, v0, Lp4/g;->c:I

    .line 136
    iget v2, v0, Lp4/g;->b:I

    .line 138
    sub-int/2addr v1, v2

    .line 139
    int-to-long v1, v1

    .line 140
    invoke-virtual {v0}, Lp4/g;->a()Lp4/g;

    .line 143
    move-result-object v4

    .line 144
    iput-object v4, p1, Lokio/a;->a:Lp4/g;

    .line 146
    iget-object v4, p0, Lokio/a;->a:Lp4/g;

    .line 148
    if-nez v4, :cond_9c

    .line 150
    iput-object v0, p0, Lokio/a;->a:Lp4/g;

    .line 152
    iput-object v0, v0, Lp4/g;->g:Lp4/g;

    .line 154
    iput-object v0, v0, Lp4/g;->f:Lp4/g;

    .line 156
    goto :goto_c7

    .line 157
    :cond_9c
    iget-object v4, v4, Lp4/g;->g:Lp4/g;

    .line 159
    invoke-virtual {v4, v0}, Lp4/g;->b(Lp4/g;)V

    .line 162
    iget-object v4, v0, Lp4/g;->g:Lp4/g;

    .line 164
    if-eq v4, v0, :cond_d4

    .line 166
    iget-boolean v5, v4, Lp4/g;->e:Z

    .line 168
    if-nez v5, :cond_aa

    .line 170
    goto :goto_c7

    .line 171
    :cond_aa
    iget v5, v0, Lp4/g;->c:I

    .line 173
    iget v6, v0, Lp4/g;->b:I

    .line 175
    sub-int/2addr v5, v6

    .line 176
    iget v6, v4, Lp4/g;->c:I

    .line 178
    rsub-int v6, v6, 0x2000

    .line 180
    iget-boolean v7, v4, Lp4/g;->d:Z

    .line 182
    if-eqz v7, :cond_b8

    .line 184
    goto :goto_ba

    .line 185
    :cond_b8
    iget v3, v4, Lp4/g;->b:I

    .line 187
    :goto_ba
    add-int/2addr v6, v3

    .line 188
    if-le v5, v6, :cond_be

    .line 190
    goto :goto_c7

    .line 191
    :cond_be
    invoke-virtual {v0, v4, v5}, Lp4/g;->d(Lp4/g;I)V

    .line 194
    invoke-virtual {v0}, Lp4/g;->a()Lp4/g;

    .line 197
    invoke-static {v0}, Lp4/h;->a(Lp4/g;)V

    .line 200
    :goto_c7
    iget-wide v3, p1, Lokio/a;->b:J

    .line 202
    sub-long/2addr v3, v1

    .line 203
    iput-wide v3, p1, Lokio/a;->b:J

    .line 205
    iget-wide v3, p0, Lokio/a;->b:J

    .line 207
    add-long/2addr v3, v1

    .line 208
    iput-wide v3, p0, Lokio/a;->b:J

    .line 210
    sub-long/2addr p2, v1

    .line 211
    goto/16 :goto_c

    .line 213
    :cond_d4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 215
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 218
    throw p1

    .line 219
    :cond_da
    return-void

    .line 220
    :cond_db
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 222
    const-string p2, "source == this"

    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    throw p1

    .line 228
    :cond_e3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 230
    const-string p2, "source == null"

    .line 232
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 235
    throw p1
.end method

.method public final q(I)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lokio/a;->o(I)Lp4/g;

    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Lp4/g;->a:[B

    .line 8
    iget v2, v0, Lp4/g;->c:I

    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 12
    iput v3, v0, Lp4/g;->c:I

    .line 14
    int-to-byte p1, p1

    .line 15
    aput-byte p1, v1, v2

    .line 17
    iget-wide v0, p0, Lokio/a;->b:J

    .line 19
    const-wide/16 v2, 0x1

    .line 21
    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lokio/a;->b:J

    .line 24
    return-void
.end method

.method public final r(I)V
    .registers 7

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lokio/a;->o(I)Lp4/g;

    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Lp4/g;->a:[B

    .line 8
    iget v2, v0, Lp4/g;->c:I

    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 12
    ushr-int/lit8 v4, p1, 0x18

    .line 14
    and-int/lit16 v4, v4, 0xff

    .line 16
    int-to-byte v4, v4

    .line 17
    aput-byte v4, v1, v2

    .line 19
    add-int/lit8 v2, v3, 0x1

    .line 21
    ushr-int/lit8 v4, p1, 0x10

    .line 23
    and-int/lit16 v4, v4, 0xff

    .line 25
    int-to-byte v4, v4

    .line 26
    aput-byte v4, v1, v3

    .line 28
    add-int/lit8 v3, v2, 0x1

    .line 30
    ushr-int/lit8 v4, p1, 0x8

    .line 32
    and-int/lit16 v4, v4, 0xff

    .line 34
    int-to-byte v4, v4

    .line 35
    aput-byte v4, v1, v2

    .line 37
    add-int/lit8 v2, v3, 0x1

    .line 39
    and-int/lit16 p1, p1, 0xff

    .line 41
    int-to-byte p1, p1

    .line 42
    aput-byte p1, v1, v3

    .line 44
    iput v2, v0, Lp4/g;->c:I

    .line 46
    iget-wide v0, p0, Lokio/a;->b:J

    .line 48
    const-wide/16 v2, 0x4

    .line 50
    add-long/2addr v0, v2

    .line 51
    iput-wide v0, p0, Lokio/a;->b:J

    .line 53
    return-void
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .registers 8

    .line 1
    iget-object v0, p0, Lokio/a;->a:Lp4/g;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_6
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 10
    move-result v1

    .line 11
    iget v2, v0, Lp4/g;->c:I

    .line 13
    iget v3, v0, Lp4/g;->b:I

    .line 15
    sub-int/2addr v2, v3

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    move-result v1

    .line 20
    iget-object v2, v0, Lp4/g;->a:[B

    .line 22
    iget v3, v0, Lp4/g;->b:I

    .line 24
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 27
    iget p1, v0, Lp4/g;->b:I

    .line 29
    add-int/2addr p1, v1

    .line 30
    iput p1, v0, Lp4/g;->b:I

    .line 32
    iget-wide v2, p0, Lokio/a;->b:J

    .line 34
    int-to-long v4, v1

    .line 35
    sub-long/2addr v2, v4

    .line 36
    iput-wide v2, p0, Lokio/a;->b:J

    .line 38
    iget v2, v0, Lp4/g;->c:I

    .line 40
    if-ne p1, v2, :cond_32

    .line 42
    invoke-virtual {v0}, Lp4/g;->a()Lp4/g;

    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lokio/a;->a:Lp4/g;

    .line 48
    invoke-static {v0}, Lp4/h;->a(Lp4/g;)V

    .line 51
    :cond_32
    return v1
.end method

.method public final request(J)Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lokio/a;->b:J

    .line 3
    cmp-long p1, v0, p1

    .line 5
    if-ltz p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    return p1
.end method

.method public final s(IILjava/lang/String;)V
    .registers 11

    .line 1
    if-eqz p3, :cond_110

    .line 3
    if-ltz p1, :cond_104

    .line 5
    if-lt p2, p1, :cond_e5

    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    if-gt p2, v0, :cond_cc

    .line 13
    :goto_c
    if-ge p1, p2, :cond_cb

    .line 15
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x80

    .line 21
    if-ge v0, v1, :cond_4b

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p0, v2}, Lokio/a;->o(I)Lp4/g;

    .line 27
    move-result-object v2

    .line 28
    iget-object v3, v2, Lp4/g;->a:[B

    .line 30
    iget v4, v2, Lp4/g;->c:I

    .line 32
    sub-int/2addr v4, p1

    .line 33
    rsub-int v5, v4, 0x2000

    .line 35
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    .line 38
    move-result v5

    .line 39
    add-int/lit8 v6, p1, 0x1

    .line 41
    add-int/2addr p1, v4

    .line 42
    int-to-byte v0, v0

    .line 43
    aput-byte v0, v3, p1

    .line 45
    :goto_2c
    move p1, v6

    .line 46
    if-ge p1, v5, :cond_3d

    .line 48
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 51
    move-result v0

    .line 52
    if-lt v0, v1, :cond_36

    .line 54
    goto :goto_3d

    .line 55
    :cond_36
    add-int/lit8 v6, p1, 0x1

    .line 57
    add-int/2addr p1, v4

    .line 58
    int-to-byte v0, v0

    .line 59
    aput-byte v0, v3, p1

    .line 61
    goto :goto_2c

    .line 62
    :cond_3d
    :goto_3d
    add-int/2addr v4, p1

    .line 63
    iget v0, v2, Lp4/g;->c:I

    .line 65
    sub-int/2addr v4, v0

    .line 66
    add-int/2addr v0, v4

    .line 67
    iput v0, v2, Lp4/g;->c:I

    .line 69
    iget-wide v0, p0, Lokio/a;->b:J

    .line 71
    int-to-long v2, v4

    .line 72
    add-long/2addr v0, v2

    .line 73
    iput-wide v0, p0, Lokio/a;->b:J

    .line 75
    goto :goto_c

    .line 76
    :cond_4b
    const/16 v2, 0x800

    .line 78
    if-ge v0, v2, :cond_5d

    .line 80
    shr-int/lit8 v2, v0, 0x6

    .line 82
    or-int/lit16 v2, v2, 0xc0

    .line 84
    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    .line 87
    and-int/lit8 v0, v0, 0x3f

    .line 89
    or-int/2addr v0, v1

    .line 90
    invoke-virtual {p0, v0}, Lokio/a;->q(I)V

    .line 93
    goto :goto_c7

    .line 94
    :cond_5d
    const v2, 0xd800

    .line 97
    const/16 v3, 0x3f

    .line 99
    if-lt v0, v2, :cond_b3

    .line 101
    const v2, 0xdfff

    .line 104
    if-le v0, v2, :cond_6a

    .line 106
    goto :goto_b3

    .line 107
    :cond_6a
    add-int/lit8 v4, p1, 0x1

    .line 109
    if-ge v4, p2, :cond_73

    .line 111
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    .line 114
    move-result v5

    .line 115
    goto :goto_74

    .line 116
    :cond_73
    const/4 v5, 0x0

    .line 117
    :goto_74
    const v6, 0xdbff

    .line 120
    if-gt v0, v6, :cond_ad

    .line 122
    const v6, 0xdc00

    .line 125
    if-lt v5, v6, :cond_ad

    .line 127
    if-le v5, v2, :cond_81

    .line 129
    goto :goto_ad

    .line 130
    :cond_81
    const/high16 v2, 0x10000

    .line 132
    const v4, -0xd801

    .line 135
    and-int/2addr v0, v4

    .line 136
    shl-int/lit8 v0, v0, 0xa

    .line 138
    const v4, -0xdc01

    .line 141
    and-int/2addr v4, v5

    .line 142
    or-int/2addr v0, v4

    .line 143
    add-int/2addr v0, v2

    .line 144
    shr-int/lit8 v2, v0, 0x12

    .line 146
    or-int/lit16 v2, v2, 0xf0

    .line 148
    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    .line 151
    shr-int/lit8 v2, v0, 0xc

    .line 153
    and-int/2addr v2, v3

    .line 154
    or-int/2addr v2, v1

    .line 155
    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    .line 158
    shr-int/lit8 v2, v0, 0x6

    .line 160
    and-int/2addr v2, v3

    .line 161
    or-int/2addr v2, v1

    .line 162
    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    .line 165
    and-int/2addr v0, v3

    .line 166
    or-int/2addr v0, v1

    .line 167
    invoke-virtual {p0, v0}, Lokio/a;->q(I)V

    .line 170
    add-int/lit8 p1, p1, 0x2

    .line 172
    goto/16 :goto_c

    .line 174
    :cond_ad
    :goto_ad
    invoke-virtual {p0, v3}, Lokio/a;->q(I)V

    .line 177
    move p1, v4

    .line 178
    goto/16 :goto_c

    .line 180
    :cond_b3
    :goto_b3
    shr-int/lit8 v2, v0, 0xc

    .line 182
    or-int/lit16 v2, v2, 0xe0

    .line 184
    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    .line 187
    shr-int/lit8 v2, v0, 0x6

    .line 189
    and-int/2addr v2, v3

    .line 190
    or-int/2addr v2, v1

    .line 191
    invoke-virtual {p0, v2}, Lokio/a;->q(I)V

    .line 194
    and-int/lit8 v0, v0, 0x3f

    .line 196
    or-int/2addr v0, v1

    .line 197
    invoke-virtual {p0, v0}, Lokio/a;->q(I)V

    .line 200
    :goto_c7
    add-int/lit8 p1, p1, 0x1

    .line 202
    goto/16 :goto_c

    .line 204
    :cond_cb
    return-void

    .line 205
    :cond_cc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 207
    const-string v0, "endIndex > string.length: "

    .line 209
    const-string v1, " > "

    .line 211
    invoke-static {v0, p2, v1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    move-result-object p2

    .line 215
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 218
    move-result p3

    .line 219
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object p2

    .line 226
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    throw p1

    .line 230
    :cond_e5
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    const-string v1, "endIndex < beginIndex: "

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string p2, " < "

    .line 247
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object p1

    .line 257
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 260
    throw p3

    .line 261
    :cond_104
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 263
    const-string p3, "beginIndex < 0: "

    .line 265
    invoke-static {p3, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 268
    move-result-object p1

    .line 269
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 272
    throw p2

    .line 273
    :cond_110
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 275
    const-string p2, "string == null"

    .line 277
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 280
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-wide v0, p0, Lokio/a;->b:J

    .line 3
    const-wide/32 v2, 0x7fffffff

    .line 6
    cmp-long v2, v0, v2

    .line 8
    if-gtz v2, :cond_1a

    .line 10
    long-to-int v0, v0

    .line 11
    if-nez v0, :cond_f

    .line 13
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 15
    goto :goto_15

    .line 16
    :cond_f
    new-instance v1, Lokio/SegmentedByteString;

    .line 18
    invoke-direct {v1, p0, v0}, Lokio/SegmentedByteString;-><init>(Lokio/a;I)V

    .line 21
    move-object v0, v1

    .line 22
    :goto_15
    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    const-string v1, "size > Integer.MAX_VALUE: "

    .line 31
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v1

    .line 35
    iget-wide v2, p0, Lokio/a;->b:J

    .line 37
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .registers 8

    .line 1
    if-eqz p1, :cond_2b

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 6
    move-result v0

    .line 7
    move v1, v0

    .line 8
    :goto_7
    if-lez v1, :cond_24

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {p0, v2}, Lokio/a;->o(I)Lp4/g;

    .line 14
    move-result-object v2

    .line 15
    iget v3, v2, Lp4/g;->c:I

    .line 17
    rsub-int v3, v3, 0x2000

    .line 19
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 22
    move-result v3

    .line 23
    iget-object v4, v2, Lp4/g;->a:[B

    .line 25
    iget v5, v2, Lp4/g;->c:I

    .line 27
    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 30
    sub-int/2addr v1, v3

    .line 31
    iget v4, v2, Lp4/g;->c:I

    .line 33
    add-int/2addr v4, v3

    .line 34
    iput v4, v2, Lp4/g;->c:I

    .line 36
    goto :goto_7

    .line 37
    :cond_24
    iget-wide v1, p0, Lokio/a;->b:J

    .line 39
    int-to-long v3, v0

    .line 40
    add-long/2addr v1, v3

    .line 41
    iput-wide v1, p0, Lokio/a;->b:J

    .line 43
    return v0

    .line 44
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    const-string v0, "source == null"

    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1
.end method
