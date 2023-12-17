.class public Ljcifs/util/MD4;
.super Ljava/security/MessageDigest;
.source "MD4.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I


# instance fields
.field private X:[I

.field private buffer:[B

.field private context:[I

.field private count:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92dd6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/util/MD4;->BLOCK_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "MD4"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->X:[I

    invoke-virtual {p0}, Ljcifs/util/MD4;->engineReset()V

    return-void
.end method

.method private constructor <init>(Ljcifs/util/MD4;)V
    .registers 4

    invoke-direct {p0}, Ljcifs/util/MD4;-><init>()V

    iget-object v0, p1, Ljcifs/util/MD4;->context:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->context:[I

    iget-object v0, p1, Ljcifs/util/MD4;->buffer:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    iget-wide v0, p1, Ljcifs/util/MD4;->count:J

    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    return-void
.end method

.method private FF(IIIIII)I
    .registers 7

    and-int/2addr p3, p2

    not-int p2, p2

    and-int/2addr p2, p4

    or-int/2addr p2, p3

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    shl-int p2, p1, p6

    rsub-int/lit8 p3, p6, 0x20

    ushr-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private GG(IIIIII)I
    .registers 8

    or-int v0, p3, p4

    and-int/2addr p2, v0

    and-int/2addr p3, p4

    or-int/2addr p2, p3

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x5a827999

    add-int/2addr p1, p2

    shl-int p2, p1, p6

    rsub-int/lit8 p3, p6, 0x20

    ushr-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private HH(IIIIII)I
    .registers 7

    xor-int/2addr p2, p3

    xor-int/2addr p2, p4

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x6ed9eba1

    add-int/2addr p1, p2

    shl-int p2, p1, p6

    rsub-int/lit8 p3, p6, 0x20

    ushr-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private transform([BI)V
    .registers 31

    move-object/from16 v7, p0

    const/4 v8, 0x0

    move/from16 v0, p2

    move v1, v8

    :goto_6
    const/16 v2, 0x10

    const/16 v9, 0x8

    if-lt v1, v2, :cond_355

    iget-object v0, v7, Ljcifs/util/MD4;->context:[I

    aget v1, v0, v8

    const/4 v10, 0x1

    aget v11, v0, v10

    const/4 v12, 0x2

    aget v13, v0, v12

    const/4 v14, 0x3

    aget v15, v0, v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v10

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v12

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v14

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v11

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v17, 0x4

    aget v5, v0, v17

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v18, 0x5

    aget v5, v0, v18

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v19, 0x6

    aget v5, v0, v19

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v20, 0x7

    aget v5, v0, v20

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v11

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v9

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v21, 0x9

    aget v5, v0, v21

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v22, 0xa

    aget v5, v0, v22

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v23, 0xb

    aget v5, v0, v23

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v11

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v24, 0xc

    aget v5, v0, v24

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v25, 0xd

    aget v5, v0, v25

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v26, 0xe

    aget v5, v0, v26

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v27, 0xf

    aget v5, v0, v27

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v11

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v17

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v9

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v11

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v10

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v18

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v11

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v12

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v19

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v11

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v14

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v20

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v27

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v11

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v9

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v17

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move v2, v9

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v9

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v11

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v12

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v9

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v19

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move v2, v9

    move v3, v15

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v9

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v11

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v10

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v15

    move v2, v11

    move v3, v13

    move v4, v9

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move v2, v9

    move v3, v15

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v9

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v11

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v14

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v15

    move v2, v11

    move v3, v13

    move v4, v9

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v20

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move v2, v9

    move v3, v15

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v13

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v27

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v9

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v0

    iget-object v1, v7, Ljcifs/util/MD4;->context:[I

    aget v2, v1, v8

    add-int/2addr v2, v15

    aput v2, v1, v8

    aget v2, v1, v10

    add-int/2addr v2, v0

    aput v2, v1, v10

    aget v0, v1, v12

    add-int/2addr v0, v13

    aput v0, v1, v12

    aget v0, v1, v14

    add-int/2addr v0, v9

    aput v0, v1, v14

    return-void

    :cond_355
    iget-object v3, v7, Ljcifs/util/MD4;->X:[I

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v2, v5, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto/16 :goto_6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljcifs/util/MD4;

    invoke-direct {v0, p0}, Ljcifs/util/MD4;-><init>(Ljcifs/util/MD4;)V

    return-object v0
.end method

.method public engineDigest()[B
    .registers 11

    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_c

    sub-int/2addr v1, v0

    goto :goto_e

    :cond_c
    rsub-int/lit8 v1, v0, 0x78

    :goto_e
    add-int/lit8 v0, v1, 0x8

    new-array v2, v0, [B

    const/16 v3, -0x80

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    move v3, v4

    :goto_18
    const/16 v5, 0x8

    if-lt v3, v5, :cond_41

    invoke-virtual {p0, v2, v4, v0}, Ljcifs/util/MD4;->engineUpdate([BII)V

    const/16 v0, 0x10

    new-array v5, v0, [B

    move v6, v4

    :goto_24
    const/4 v7, 0x4

    if-lt v6, v7, :cond_2b

    invoke-virtual {p0}, Ljcifs/util/MD4;->engineReset()V

    return-object v5

    :cond_2b
    move v0, v4

    :goto_2c
    if-lt v0, v7, :cond_31

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_31
    mul-int/lit8 v1, v6, 0x4

    add-int/2addr v1, v0

    iget-object v2, p0, Ljcifs/util/MD4;->context:[I

    aget v2, v2, v6

    mul-int/lit8 v3, v0, 0x8

    ushr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_41
    add-int v5, v1, v3

    iget-wide v6, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    mul-int/lit8 v8, v3, 0x8

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_18
.end method

.method public engineReset()V
    .registers 5

    iget-object v0, p0, Ljcifs/util/MD4;->context:[I

    const v1, 0x67452301

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, -0x10325477

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const v3, -0x67452302

    aput v3, v0, v1

    const/4 v1, 0x3

    const v3, 0x10325476

    aput v3, v0, v1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    move v0, v2

    :goto_1f
    const/16 v1, 0x40

    if-lt v0, v1, :cond_24

    return-void

    :cond_24
    iget-object v1, p0, Ljcifs/util/MD4;->buffer:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method public engineUpdate(B)V
    .registers 7

    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long v2, v0, v2

    long-to-int v2, v2

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    iget-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    aput-byte p1, v0, v2

    const/16 p1, 0x3f

    if-ne v2, p1, :cond_18

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Ljcifs/util/MD4;->transform([BI)V

    :cond_18
    return-void
.end method

.method public engineUpdate([BII)V
    .registers 10

    if-ltz p2, :cond_3f

    if-ltz p3, :cond_3f

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v4, p1

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3f

    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v4, 0x40

    rem-long v4, v0, v4

    long-to-int v4, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    rsub-int/lit8 v0, v4, 0x40

    const/4 v1, 0x0

    if-lt p3, v0, :cond_35

    iget-object v2, p0, Ljcifs/util/MD4;->buffer:[B

    invoke-static {p1, p2, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ljcifs/util/MD4;->buffer:[B

    invoke-direct {p0, v2, v1}, Ljcifs/util/MD4;->transform([BI)V

    :goto_26
    add-int/lit8 v2, v0, 0x40

    add-int/lit8 v3, v2, -0x1

    if-lt v3, p3, :cond_2f

    move v4, v1

    move v1, v0

    goto :goto_35

    :cond_2f
    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Ljcifs/util/MD4;->transform([BI)V

    move v0, v2

    goto :goto_26

    :cond_35
    :goto_35
    if-ge v1, p3, :cond_3e

    add-int/2addr p2, v1

    iget-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    sub-int/2addr p3, v1

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3e
    return-void

    :cond_3f
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
