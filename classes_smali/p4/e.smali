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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([Lokio/ByteString;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lp4/e;->a:[Lokio/ByteString;

    iput-object p2, p0, Lp4/e;->b:[I

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

    :cond_26
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v1, v5, :cond_53

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

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

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

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

    :cond_85
    iget-wide v13, v0, Lokio/a;->b:J

    div-long/2addr v13, v15

    long-to-int v2, v13

    int-to-long v13, v2

    add-long v13, p0, v13

    add-long/2addr v13, v8

    mul-int/lit8 v2, v3, 0x2

    int-to-long v7, v2

    add-long/2addr v13, v7

    invoke-virtual {v0, v3}, Lokio/a;->r(I)V

    invoke-virtual {v0, v5}, Lokio/a;->r(I)V

    move v2, v6

    :goto_98
    if-ge v2, v11, :cond_bc

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v6, :cond_b4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_b9

    :cond_b4
    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Lokio/a;->r(I)V

    :cond_b9
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    :cond_bc
    new-instance v9, Lokio/a;

    invoke-direct {v9}, Lokio/a;-><init>()V

    move v7, v6

    :goto_c2
    if-ge v7, v11, :cond_127

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    add-int/lit8 v3, v7, 0x1

    move v4, v3

    :goto_d1
    if-ge v4, v11, :cond_e4

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

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v2, v3, :cond_106

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lokio/a;->r(I)V

    move/from16 v17, v8

    move-object v15, v9

    goto :goto_121

    :cond_106
    iget-wide v2, v9, Lokio/a;->b:J

    div-long/2addr v2, v15

    long-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v13

    const-wide/16 v4, -0x1

    mul-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lokio/a;->r(I)V

    add-int/lit8 v5, v1, 0x1

    move-wide v2, v13

    move-object v4, v9

    move-object/from16 v6, p4

    move/from16 v17, v8

    move-object v15, v9

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lp4/e;->a(JLokio/a;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    :goto_121
    move-object v9, v15

    move/from16 v7, v17

    const-wide/16 v15, 0x4

    goto :goto_c2

    :cond_127
    move-object v15, v9

    iget-wide v1, v15, Lokio/a;->b:J

    invoke-virtual {v0, v15, v1, v2}, Lokio/a;->p(Lokio/a;J)V

    goto/16 :goto_1be

    :cond_12f
    const/4 v2, 0x0

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v7

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v13, v1

    :goto_13d
    if-ge v13, v7, :cond_14e

    invoke-virtual {v3, v13}, Lokio/ByteString;->getByte(I)B

    move-result v14

    invoke-virtual {v4, v13}, Lokio/ByteString;->getByte(I)B

    move-result v15

    if-ne v14, v15, :cond_14e

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_13d

    :cond_14e
    iget-wide v13, v0, Lokio/a;->b:J

    const-wide/16 v15, 0x4

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

    invoke-virtual {v0, v4}, Lokio/a;->r(I)V

    invoke-virtual {v0, v5}, Lokio/a;->r(I)V

    move v4, v1

    :goto_165
    add-int v5, v1, v2

    if-ge v4, v5, :cond_175

    invoke-virtual {v3, v4}, Lokio/ByteString;->getByte(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v0, v5}, Lokio/a;->r(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_165

    :cond_175
    add-int/lit8 v1, v6, 0x1

    if-ne v1, v11, :cond_199

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    if-ne v5, v1, :cond_193

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokio/a;->r(I)V

    goto :goto_1be

    :cond_193
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_199
    new-instance v9, Lokio/a;

    invoke-direct {v9}, Lokio/a;-><init>()V

    iget-wide v1, v9, Lokio/a;->b:J

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    long-to-int v1, v1

    int-to-long v1, v1

    add-long/2addr v1, v7

    const-wide/16 v3, -0x1

    mul-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lokio/a;->r(I)V

    move-wide v1, v7

    move-object v3, v9

    move v4, v5

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lp4/e;->a(JLokio/a;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    iget-wide v1, v9, Lokio/a;->b:J

    invoke-virtual {v0, v9, v1, v2}, Lokio/a;->p(Lokio/a;J)V

    :goto_1be
    return-void

    :cond_1bf
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static varargs b([Lokio/ByteString;)Lp4/e;
    .registers 16

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    new-instance p0, Lp4/e;

    new-array v0, v1, [Lokio/ByteString;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_182

    invoke-direct {p0, v0, v1}, Lp4/e;-><init>([Lokio/ByteString;[I)V

    return-object p0

    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_24
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_35
    move v0, v1

    :goto_36
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4c

    aget-object v2, p0, v0

    invoke-static {v6, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4c
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_179

    move v0, v1

    :goto_59
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_be

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    add-int/lit8 v3, v0, 0x1

    move v4, v3

    :goto_68
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_bc

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5, v2}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v7

    if-nez v7, :cond_7b

    goto :goto_bc

    :cond_7b
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v7

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v8

    if-eq v7, v8, :cond_a5

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v5, v7, :cond_a2

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_68

    :cond_a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bc
    :goto_bc
    move v0, v3

    goto :goto_59

    :cond_be
    new-instance v0, Lokio/a;

    invoke-direct {v0}, Lokio/a;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object v4, v0

    invoke-static/range {v2 .. v9}, Lp4/e;->a(JLokio/a;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    iget-wide v2, v0, Lokio/a;->b:J

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    long-to-int v2, v2

    new-array v3, v2, [I

    move v6, v1

    :goto_d8
    if-ge v6, v2, :cond_15c

    iget-wide v7, v0, Lokio/a;->b:J

    cmp-long v9, v7, v4

    if-ltz v9, :cond_147

    iget-object v9, v0, Lokio/a;->a:Lp4/g;

    iget v10, v9, Lp4/g;->b:I

    iget v11, v9, Lp4/g;->c:I

    sub-int v12, v11, v10

    const/4 v13, 0x4

    if-ge v12, v13, :cond_10d

    invoke-virtual {v0}, Lokio/a;->h()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    invoke-virtual {v0}, Lokio/a;->h()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    invoke-virtual {v0}, Lokio/a;->h()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    invoke-virtual {v0}, Lokio/a;->h()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    goto :goto_142

    :cond_10d
    iget-object v12, v9, Lp4/g;->a:[B

    add-int/lit8 v13, v10, 0x1

    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    add-int/lit8 v14, v13, 0x1

    aget-byte v13, v12, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v10, v13

    add-int/lit8 v13, v14, 0x1

    aget-byte v14, v12, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v10, v14

    add-int/lit8 v14, v13, 0x1

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v10, v12

    sub-long/2addr v7, v4

    iput-wide v7, v0, Lokio/a;->b:J

    if-ne v14, v11, :cond_13f

    invoke-virtual {v9}, Lp4/g;->a()Lp4/g;

    move-result-object v7

    iput-object v7, v0, Lokio/a;->a:Lp4/g;

    invoke-static {v9}, Lp4/h;->a(Lp4/g;)V

    goto :goto_141

    :cond_13f
    iput v14, v9, Lp4/g;->b:I

    :goto_141
    move v7, v10

    :goto_142
    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d8

    :cond_147
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "size < 4: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lokio/a;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15c
    iget-wide v4, v0, Lokio/a;->b:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_165

    const/4 v1, 0x1

    :cond_165
    if-eqz v1, :cond_173

    new-instance v0, Lp4/e;

    invoke-virtual {p0}, [Lokio/ByteString;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lokio/ByteString;

    invoke-direct {v0, p0, v3}, Lp4/e;-><init>([Lokio/ByteString;[I)V

    return-object v0

    :cond_173
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_179
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "the empty byte string is not a supported option"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_182
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lp4/e;->a:[Lokio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lp4/e;->a:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method
