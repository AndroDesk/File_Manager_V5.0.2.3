.class public final Lp4/e;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final a:[Lokio/ByteString;

.field public final b:[I


# direct methods
.method public constructor <init>([Lokio/ByteString;[I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 4
    iput-object p1, p0, Lp4/e;->a:[Lokio/ByteString;

    .line 6
    iput-object p2, p0, Lp4/e;->b:[I

    .line 8
    return-void
.end method

.method public static a(JLokio/a;ILjava/util/ArrayList;IILjava/util/ArrayList;)V
    .registers 27

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p4

    move/from16 v2, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    if-ge v2, v11, :cond_1bf

    move v3, v2

    :goto_f
    if-ge v3, v11, :cond_26

    .line 1
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    if-lt v4, v1, :cond_20

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_26
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    add-int/lit8 v4, v11, -0x1

    .line 3
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    .line 4
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v1, v5, :cond_53

    .line 5
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    move v6, v2

    move-object/from16 v18, v5

    move v5, v3

    move-object/from16 v3, v18

    goto :goto_55

    :cond_53
    const/4 v5, -0x1

    move v6, v2

    .line 7
    :goto_55
    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v7

    const-wide/16 v8, 0x2

    const-wide/16 v15, 0x4

    if-eq v2, v7, :cond_12f

    add-int/lit8 v2, v6, 0x1

    const/4 v3, 0x1

    :goto_66
    if-ge v2, v11, :cond_85

    add-int/lit8 v4, v2, -0x1

    .line 8
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    .line 9
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    invoke-virtual {v7, v1}, Lokio/ByteString;->getByte(I)B

    move-result v7

    if-eq v4, v7, :cond_82

    add-int/lit8 v3, v3, 0x1

    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 10
    :cond_85
    iget-wide v13, v0, Lokio/a;->b:J

    .line 11
    div-long/2addr v13, v15

    long-to-int v2, v13

    int-to-long v13, v2

    add-long v13, p0, v13

    add-long/2addr v13, v8

    mul-int/lit8 v2, v3, 0x2

    int-to-long v7, v2

    add-long/2addr v13, v7

    .line 12
    invoke-virtual {v0, v3}, Lokio/a;->r(I)V

    .line 13
    invoke-virtual {v0, v5}, Lokio/a;->r(I)V

    move v2, v6

    :goto_98
    if-ge v2, v11, :cond_bc

    .line 14
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v6, :cond_b4

    add-int/lit8 v4, v2, -0x1

    .line 15
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_b9

    :cond_b4
    and-int/lit16 v3, v3, 0xff

    .line 16
    invoke-virtual {v0, v3}, Lokio/a;->r(I)V

    :cond_b9
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 17
    :cond_bc
    new-instance v9, Lokio/a;

    invoke-direct {v9}, Lokio/a;-><init>()V

    move v7, v6

    :goto_c2
    if-ge v7, v11, :cond_127

    .line 18
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    add-int/lit8 v3, v7, 0x1

    move v4, v3

    :goto_d1
    if-ge v4, v11, :cond_e4

    .line 19
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v2, v5, :cond_e1

    move v8, v4

    goto :goto_e5

    :cond_e1
    add-int/lit8 v4, v4, 0x1

    goto :goto_d1

    :cond_e4
    move v8, v11

    :goto_e5
    if-ne v3, v8, :cond_106

    add-int/lit8 v2, v1, 0x1

    .line 20
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v2, v3, :cond_106

    .line 21
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lokio/a;->r(I)V

    move/from16 v17, v8

    move-object v15, v9

    goto :goto_121

    .line 22
    :cond_106
    iget-wide v2, v9, Lokio/a;->b:J

    .line 23
    div-long/2addr v2, v15

    long-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v13

    const-wide/16 v4, -0x1

    mul-long/2addr v2, v4

    long-to-int v2, v2

    .line 24
    invoke-virtual {v0, v2}, Lokio/a;->r(I)V

    add-int/lit8 v5, v1, 0x1

    move-wide v2, v13

    move-object v4, v9

    move-object/from16 v6, p4

    move/from16 v17, v8

    move-object v15, v9

    move-object/from16 v9, p7

    .line 25
    invoke-static/range {v2 .. v9}, Lp4/e;->a(JLokio/a;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    :goto_121
    move-object v9, v15

    move/from16 v7, v17

    const-wide/16 v15, 0x4

    goto :goto_c2

    :cond_127
    move-object v15, v9

    .line 26
    iget-wide v1, v15, Lokio/a;->b:J

    .line 27
    invoke-virtual {v0, v15, v1, v2}, Lokio/a;->p(Lokio/a;J)V

    goto/16 :goto_1be

    :cond_12f
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v7

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v13, v1

    :goto_13d
    if-ge v13, v7, :cond_14e

    .line 29
    invoke-virtual {v3, v13}, Lokio/ByteString;->getByte(I)B

    move-result v14

    invoke-virtual {v4, v13}, Lokio/ByteString;->getByte(I)B

    move-result v15

    if-ne v14, v15, :cond_14e

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_13d

    .line 30
    :cond_14e
    iget-wide v13, v0, Lokio/a;->b:J

    const-wide/16 v15, 0x4

    .line 31
    div-long/2addr v13, v15

    long-to-int v4, v13

    int-to-long v13, v4

    add-long v13, p0, v13

    add-long/2addr v13, v8

    int-to-long v7, v2

    add-long/2addr v13, v7

    const-wide/16 v7, 0x1

    add-long/2addr v7, v13

    neg-int v4, v2

    .line 32
    invoke-virtual {v0, v4}, Lokio/a;->r(I)V

    .line 33
    invoke-virtual {v0, v5}, Lokio/a;->r(I)V

    move v4, v1

    :goto_165
    add-int v5, v1, v2

    if-ge v4, v5, :cond_175

    .line 34
    invoke-virtual {v3, v4}, Lokio/ByteString;->getByte(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v0, v5}, Lokio/a;->r(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_165

    :cond_175
    add-int/lit8 v1, v6, 0x1

    if-ne v1, v11, :cond_199

    .line 35
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    if-ne v5, v1, :cond_193

    .line 36
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokio/a;->r(I)V

    goto :goto_1be

    .line 37
    :cond_193
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_199
    new-instance v9, Lokio/a;

    invoke-direct {v9}, Lokio/a;-><init>()V

    .line 39
    iget-wide v1, v9, Lokio/a;->b:J

    const-wide/16 v3, 0x4

    .line 40
    div-long/2addr v1, v3

    long-to-int v1, v1

    int-to-long v1, v1

    add-long/2addr v1, v7

    const-wide/16 v3, -0x1

    mul-long/2addr v1, v3

    long-to-int v1, v1

    .line 41
    invoke-virtual {v0, v1}, Lokio/a;->r(I)V

    move-wide v1, v7

    move-object v3, v9

    move v4, v5

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 42
    invoke-static/range {v1 .. v8}, Lp4/e;->a(JLokio/a;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 43
    iget-wide v1, v9, Lokio/a;->b:J

    .line 44
    invoke-virtual {v0, v9, v1, v2}, Lokio/a;->p(Lokio/a;J)V

    :goto_1be
    return-void

    .line 45
    :cond_1bf
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static varargs b([Lokio/ByteString;)Lp4/e;
    .registers 16

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_12

    .line 5
    new-instance p0, Lp4/e;

    .line 7
    new-array v0, v1, [Lokio/ByteString;

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [I

    .line 12
    fill-array-data v1, :array_182

    .line 15
    invoke-direct {p0, v0, v1}, Lp4/e;-><init>([Lokio/ByteString;[I)V

    .line 18
    return-object p0

    .line 19
    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    .line 21
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 31
    new-instance v9, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 36
    move v0, v1

    .line 37
    :goto_24
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v2

    .line 41
    if-ge v0, v2, :cond_35

    .line 43
    const/4 v2, -0x1

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_24

    .line 54
    :cond_35
    move v0, v1

    .line 55
    :goto_36
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result v2

    .line 59
    if-ge v0, v2, :cond_4c

    .line 61
    aget-object v2, p0, v0

    .line 63
    invoke-static {v6, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 66
    move-result v2

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v9, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_36

    .line 77
    :cond_4c
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lokio/ByteString;

    .line 83
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_179

    .line 89
    move v0, v1

    .line 90
    :goto_59
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result v2

    .line 94
    if-ge v0, v2, :cond_be

    .line 96
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lokio/ByteString;

    .line 102
    add-int/lit8 v3, v0, 0x1

    .line 104
    move v4, v3

    .line 105
    :goto_68
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 108
    move-result v5

    .line 109
    if-ge v4, v5, :cond_bc

    .line 111
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Lokio/ByteString;

    .line 117
    invoke-virtual {v5, v2}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    .line 120
    move-result v7

    .line 121
    if-nez v7, :cond_7b

    .line 123
    goto :goto_bc

    .line 124
    :cond_7b
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    .line 127
    move-result v7

    .line 128
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    .line 131
    move-result v8

    .line 132
    if-eq v7, v8, :cond_a5

    .line 134
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Ljava/lang/Integer;

    .line 140
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 143
    move-result v5

    .line 144
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    move-result-object v7

    .line 148
    check-cast v7, Ljava/lang/Integer;

    .line 150
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 153
    move-result v7

    .line 154
    if-le v5, v7, :cond_a2

    .line 156
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 162
    goto :goto_68

    .line 163
    :cond_a2
    add-int/lit8 v4, v4, 0x1

    .line 165
    goto :goto_68

    .line 166
    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    const-string v1, "duplicate option: "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    throw p0

    .line 189
    :cond_bc
    :goto_bc
    move v0, v3

    .line 190
    goto :goto_59

    .line 191
    :cond_be
    new-instance v0, Lokio/a;

    .line 193
    invoke-direct {v0}, Lokio/a;-><init>()V

    .line 196
    const-wide/16 v2, 0x0

    .line 198
    const/4 v5, 0x0

    .line 199
    const/4 v7, 0x0

    .line 200
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 203
    move-result v8

    .line 204
    move-object v4, v0

    .line 205
    invoke-static/range {v2 .. v9}, Lp4/e;->a(JLokio/a;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 208
    iget-wide v2, v0, Lokio/a;->b:J

    .line 210
    const-wide/16 v4, 0x4

    .line 212
    div-long/2addr v2, v4

    .line 213
    long-to-int v2, v2

    .line 214
    new-array v3, v2, [I

    .line 216
    move v6, v1

    .line 217
    :goto_d8
    if-ge v6, v2, :cond_15c

    .line 219
    iget-wide v7, v0, Lokio/a;->b:J

    .line 221
    cmp-long v9, v7, v4

    .line 223
    if-ltz v9, :cond_147

    .line 225
    iget-object v9, v0, Lokio/a;->a:Lp4/g;

    .line 227
    iget v10, v9, Lp4/g;->b:I

    .line 229
    iget v11, v9, Lp4/g;->c:I

    .line 231
    sub-int v12, v11, v10

    .line 233
    const/4 v13, 0x4

    .line 234
    if-ge v12, v13, :cond_10d

    .line 236
    invoke-virtual {v0}, Lokio/a;->h()B

    .line 239
    move-result v7

    .line 240
    and-int/lit16 v7, v7, 0xff

    .line 242
    shl-int/lit8 v7, v7, 0x18

    .line 244
    invoke-virtual {v0}, Lokio/a;->h()B

    .line 247
    move-result v8

    .line 248
    and-int/lit16 v8, v8, 0xff

    .line 250
    shl-int/lit8 v8, v8, 0x10

    .line 252
    or-int/2addr v7, v8

    .line 253
    invoke-virtual {v0}, Lokio/a;->h()B

    .line 256
    move-result v8

    .line 257
    and-int/lit16 v8, v8, 0xff

    .line 259
    shl-int/lit8 v8, v8, 0x8

    .line 261
    or-int/2addr v7, v8

    .line 262
    invoke-virtual {v0}, Lokio/a;->h()B

    .line 265
    move-result v8

    .line 266
    and-int/lit16 v8, v8, 0xff

    .line 268
    or-int/2addr v7, v8

    .line 269
    goto :goto_142

    .line 270
    :cond_10d
    iget-object v12, v9, Lp4/g;->a:[B

    .line 272
    add-int/lit8 v13, v10, 0x1

    .line 274
    aget-byte v10, v12, v10

    .line 276
    and-int/lit16 v10, v10, 0xff

    .line 278
    shl-int/lit8 v10, v10, 0x18

    .line 280
    add-int/lit8 v14, v13, 0x1

    .line 282
    aget-byte v13, v12, v13

    .line 284
    and-int/lit16 v13, v13, 0xff

    .line 286
    shl-int/lit8 v13, v13, 0x10

    .line 288
    or-int/2addr v10, v13

    .line 289
    add-int/lit8 v13, v14, 0x1

    .line 291
    aget-byte v14, v12, v14

    .line 293
    and-int/lit16 v14, v14, 0xff

    .line 295
    shl-int/lit8 v14, v14, 0x8

    .line 297
    or-int/2addr v10, v14

    .line 298
    add-int/lit8 v14, v13, 0x1

    .line 300
    aget-byte v12, v12, v13

    .line 302
    and-int/lit16 v12, v12, 0xff

    .line 304
    or-int/2addr v10, v12

    .line 305
    sub-long/2addr v7, v4

    .line 306
    iput-wide v7, v0, Lokio/a;->b:J

    .line 308
    if-ne v14, v11, :cond_13f

    .line 310
    invoke-virtual {v9}, Lp4/g;->a()Lp4/g;

    .line 313
    move-result-object v7

    .line 314
    iput-object v7, v0, Lokio/a;->a:Lp4/g;

    .line 316
    invoke-static {v9}, Lp4/h;->a(Lp4/g;)V

    .line 319
    goto :goto_141

    .line 320
    :cond_13f
    iput v14, v9, Lp4/g;->b:I

    .line 322
    :goto_141
    move v7, v10

    .line 323
    :goto_142
    aput v7, v3, v6

    .line 325
    add-int/lit8 v6, v6, 0x1

    .line 327
    goto :goto_d8

    .line 328
    :cond_147
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 330
    const-string v1, "size < 4: "

    .line 332
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    move-result-object v1

    .line 336
    iget-wide v2, v0, Lokio/a;->b:J

    .line 338
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    move-result-object v0

    .line 345
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 348
    throw p0

    .line 349
    :cond_15c
    iget-wide v4, v0, Lokio/a;->b:J

    .line 351
    const-wide/16 v6, 0x0

    .line 353
    cmp-long v0, v4, v6

    .line 355
    if-nez v0, :cond_165

    .line 357
    const/4 v1, 0x1

    .line 358
    :cond_165
    if-eqz v1, :cond_173

    .line 360
    new-instance v0, Lp4/e;

    .line 362
    invoke-virtual {p0}, [Lokio/ByteString;->clone()Ljava/lang/Object;

    .line 365
    move-result-object p0

    .line 366
    check-cast p0, [Lokio/ByteString;

    .line 368
    invoke-direct {v0, p0, v3}, Lp4/e;-><init>([Lokio/ByteString;[I)V

    .line 371
    return-object v0

    .line 372
    :cond_173
    new-instance p0, Ljava/lang/AssertionError;

    .line 374
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 377
    throw p0

    .line 378
    :cond_179
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 380
    const-string v0, "the empty byte string is not a supported option"

    .line 382
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 385
    throw p0

    .line 386
    nop

    .line 387
    :array_182
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lp4/e;->a:[Lokio/ByteString;

    .line 3
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lp4/e;->a:[Lokio/ByteString;

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method
