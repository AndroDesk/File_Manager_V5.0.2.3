.class public final Ls1/b;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/b$c;,
        Ls1/b$b;,
        Ls1/b$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(ILjava/lang/String;)[B
    .registers 18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x3

    const/4 v3, 0x4

    div-int/2addr v2, v3

    new-array v4, v2, [B

    and-int/lit8 v5, p0, 0x8

    if-nez v5, :cond_12

    sget-object v5, Ls1/b$b;->b:[I

    goto :goto_14

    :cond_12
    sget-object v5, Ls1/b$b;->c:[I

    :goto_14
    const/4 v6, 0x0

    add-int/2addr v1, v6

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_1a
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v7, v1, :cond_e6

    if-nez v8, :cond_67

    :goto_21
    add-int/lit8 v14, v7, 0x4

    if-gt v14, v1, :cond_63

    aget-byte v9, v0, v7

    and-int/lit16 v9, v9, 0xff

    aget v9, v5, v9

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v15, v7, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v5, v15

    shl-int/lit8 v15, v15, 0xc

    or-int/2addr v9, v15

    add-int/lit8 v15, v7, 0x2

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v5, v15

    shl-int/lit8 v15, v15, 0x6

    or-int/2addr v9, v15

    add-int/lit8 v15, v7, 0x3

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v5, v15

    or-int/2addr v9, v15

    if-ltz v9, :cond_63

    add-int/lit8 v7, v10, 0x2

    int-to-byte v15, v9

    aput-byte v15, v4, v7

    add-int/lit8 v7, v10, 0x1

    shr-int/lit8 v15, v9, 0x8

    int-to-byte v15, v15

    aput-byte v15, v4, v7

    shr-int/lit8 v7, v9, 0x10

    int-to-byte v7, v7

    aput-byte v7, v4, v10

    add-int/lit8 v10, v10, 0x3

    move v7, v14

    goto :goto_21

    :cond_63
    if-lt v7, v1, :cond_67

    goto/16 :goto_e6

    :cond_67
    add-int/lit8 v14, v7, 0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v5, v7

    const/4 v15, 0x5

    const/4 v6, -0x1

    if-eqz v8, :cond_d9

    if-eq v8, v13, :cond_d0

    const/4 v13, -0x2

    if-eq v8, v12, :cond_be

    if-eq v8, v11, :cond_8e

    if-eq v8, v3, :cond_84

    if-eq v8, v15, :cond_80

    goto/16 :goto_e2

    :cond_80
    if-eq v7, v6, :cond_e2

    goto/16 :goto_107

    :cond_84
    if-ne v7, v13, :cond_8a

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e2

    :cond_8a
    if-eq v7, v6, :cond_e2

    goto/16 :goto_107

    :cond_8e
    if-ltz v7, :cond_a9

    shl-int/lit8 v6, v9, 0x6

    or-int/2addr v6, v7

    add-int/lit8 v7, v10, 0x2

    int-to-byte v8, v6

    aput-byte v8, v4, v7

    add-int/lit8 v7, v10, 0x1

    shr-int/lit8 v8, v6, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    aput-byte v7, v4, v10

    add-int/lit8 v10, v10, 0x3

    move v9, v6

    const/4 v8, 0x0

    goto :goto_e2

    :cond_a9
    if-ne v7, v13, :cond_bb

    add-int/lit8 v6, v10, 0x1

    shr-int/lit8 v7, v9, 0x2

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    shr-int/lit8 v6, v9, 0xa

    int-to-byte v6, v6

    aput-byte v6, v4, v10

    add-int/lit8 v10, v10, 0x2

    move v8, v15

    goto :goto_e2

    :cond_bb
    if-eq v7, v6, :cond_e2

    goto :goto_107

    :cond_be
    if-ltz v7, :cond_c1

    goto :goto_d2

    :cond_c1
    if-ne v7, v13, :cond_cd

    add-int/lit8 v6, v10, 0x1

    shr-int/lit8 v7, v9, 0x4

    int-to-byte v7, v7

    aput-byte v7, v4, v10

    move v8, v3

    move v10, v6

    goto :goto_e2

    :cond_cd
    if-eq v7, v6, :cond_e2

    goto :goto_107

    :cond_d0
    if-ltz v7, :cond_d6

    :goto_d2
    shl-int/lit8 v6, v9, 0x6

    or-int/2addr v7, v6

    goto :goto_db

    :cond_d6
    if-eq v7, v6, :cond_e2

    goto :goto_107

    :cond_d9
    if-ltz v7, :cond_df

    :goto_db
    add-int/lit8 v8, v8, 0x1

    move v9, v7

    goto :goto_e2

    :cond_df
    if-eq v7, v6, :cond_e2

    goto :goto_107

    :cond_e2
    :goto_e2
    move v7, v14

    const/4 v6, 0x0

    goto/16 :goto_1a

    :cond_e6
    :goto_e6
    if-eq v8, v13, :cond_107

    if-eq v8, v12, :cond_fe

    if-eq v8, v11, :cond_ef

    if-eq v8, v3, :cond_107

    goto :goto_109

    :cond_ef
    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, v9, 0xa

    int-to-byte v1, v1

    aput-byte v1, v4, v10

    add-int/lit8 v10, v0, 0x1

    shr-int/lit8 v1, v9, 0x2

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    goto :goto_109

    :cond_fe
    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, v9, 0x4

    int-to-byte v1, v1

    aput-byte v1, v4, v10

    move v10, v0

    goto :goto_109

    :cond_107
    :goto_107
    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_109
    if-eqz v13, :cond_116

    if-ne v10, v2, :cond_10e

    goto :goto_115

    :cond_10e
    new-array v0, v10, [B

    const/4 v1, 0x0

    invoke-static {v4, v1, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    :goto_115
    return-object v4

    :cond_116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(I[B)[B
    .registers 19

    move-object/from16 v0, p1

    array-length v1, v0

    new-instance v2, Ls1/b$c;

    move/from16 v3, p0

    invoke-direct {v2, v3}, Ls1/b$c;-><init>(I)V

    div-int/lit8 v3, v1, 0x3

    const/4 v4, 0x4

    mul-int/2addr v3, v4

    iget-boolean v5, v2, Ls1/b$c;->e:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_1b

    rem-int/lit8 v5, v1, 0x3

    if-lez v5, :cond_27

    add-int/lit8 v3, v3, 0x4

    goto :goto_27

    :cond_1b
    rem-int/lit8 v5, v1, 0x3

    if-eq v5, v7, :cond_25

    if-eq v5, v6, :cond_22

    goto :goto_27

    :cond_22
    add-int/lit8 v3, v3, 0x3

    goto :goto_27

    :cond_25
    add-int/lit8 v3, v3, 0x2

    :cond_27
    :goto_27
    iget-boolean v5, v2, Ls1/b$c;->f:Z

    if-eqz v5, :cond_3b

    if-lez v1, :cond_3b

    add-int/lit8 v5, v1, -0x1

    div-int/lit8 v5, v5, 0x39

    add-int/2addr v5, v7

    iget-boolean v8, v2, Ls1/b$c;->g:Z

    if-eqz v8, :cond_38

    move v8, v6

    goto :goto_39

    :cond_38
    move v8, v7

    :goto_39
    mul-int/2addr v5, v8

    add-int/2addr v3, v5

    :cond_3b
    new-array v3, v3, [B

    iput-object v3, v2, Ls1/b$a;->a:[B

    iget-object v5, v2, Ls1/b$c;->h:[B

    iget v8, v2, Ls1/b$c;->d:I

    const/4 v9, 0x0

    add-int/2addr v1, v9

    iget v10, v2, Ls1/b$c;->c:I

    const/4 v11, -0x1

    if-eq v10, v7, :cond_67

    if-eq v10, v6, :cond_4d

    goto :goto_81

    :cond_4d
    if-gt v7, v1, :cond_81

    iget-object v10, v2, Ls1/b$c;->b:[B

    aget-byte v12, v10, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    aget-byte v10, v10, v7

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v12

    aget-byte v12, v0, v9

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v10, v12

    iput v9, v2, Ls1/b$c;->c:I

    move v12, v7

    goto :goto_83

    :cond_67
    if-gt v6, v1, :cond_81

    iget-object v10, v2, Ls1/b$c;->b:[B

    aget-byte v10, v10, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    aget-byte v12, v0, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v10, v12

    aget-byte v12, v0, v7

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v10, v12

    iput v9, v2, Ls1/b$c;->c:I

    move v12, v6

    goto :goto_83

    :cond_81
    :goto_81
    move v12, v9

    move v10, v11

    :goto_83
    const/16 v14, 0xa

    const/16 v15, 0xd

    if-eq v10, v11, :cond_c0

    shr-int/lit8 v11, v10, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v5, v11

    aput-byte v11, v3, v9

    shr-int/lit8 v11, v10, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v5, v11

    aput-byte v11, v3, v7

    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v5, v11

    aput-byte v11, v3, v6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v5, v10

    const/4 v11, 0x3

    aput-byte v10, v3, v11

    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_be

    iget-boolean v8, v2, Ls1/b$c;->g:Z

    if-eqz v8, :cond_b4

    const/4 v8, 0x5

    aput-byte v15, v3, v4

    goto :goto_b5

    :cond_b4
    move v8, v4

    :goto_b5
    add-int/lit8 v10, v8, 0x1

    aput-byte v14, v3, v8

    move-object v8, v5

    move v11, v10

    move-object v5, v3

    move-object v3, v2

    goto :goto_119

    :cond_be
    move v10, v4

    goto :goto_c1

    :cond_c0
    move v10, v9

    :goto_c1
    move v11, v10

    move v10, v8

    move-object v8, v5

    move-object v5, v3

    move-object v3, v2

    :goto_c6
    add-int/lit8 v13, v12, 0x3

    if-gt v13, v1, :cond_122

    aget-byte v7, v0, v12

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v16, v12, 0x1

    aget-byte v6, v0, v16

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v12, v12, 0x2

    aget-byte v7, v0, v12

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    shr-int/lit8 v7, v6, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v8, v7

    aput-byte v7, v5, v11

    add-int/lit8 v7, v11, 0x1

    shr-int/lit8 v12, v6, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v8, v12

    aput-byte v12, v5, v7

    add-int/lit8 v7, v11, 0x2

    shr-int/lit8 v12, v6, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v8, v12

    aput-byte v12, v5, v7

    add-int/lit8 v7, v11, 0x3

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v8, v6

    aput-byte v6, v5, v7

    add-int/lit8 v11, v11, 0x4

    add-int/lit8 v10, v10, -0x1

    if-nez v10, :cond_11e

    iget-boolean v6, v2, Ls1/b$c;->g:Z

    if-eqz v6, :cond_113

    add-int/lit8 v6, v11, 0x1

    aput-byte v15, v5, v11

    move v11, v6

    :cond_113
    add-int/lit8 v10, v11, 0x1

    aput-byte v14, v5, v11

    move v11, v10

    move v12, v13

    :goto_119
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v10, 0x13

    goto :goto_c6

    :cond_11e
    move v12, v13

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto :goto_c6

    :cond_122
    iget v6, v2, Ls1/b$c;->c:I

    sub-int v7, v12, v6

    add-int/lit8 v13, v1, -0x1

    const/16 v16, 0x3d

    if-ne v7, v13, :cond_16c

    if-lez v6, :cond_134

    iget-object v0, v2, Ls1/b$c;->b:[B

    aget-byte v0, v0, v9

    const/4 v7, 0x1

    goto :goto_137

    :cond_134
    aget-byte v0, v0, v12

    move v7, v9

    :goto_137
    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    sub-int/2addr v6, v7

    iput v6, v2, Ls1/b$c;->c:I

    add-int/lit8 v1, v11, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v5, v11

    add-int/lit8 v4, v1, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v8, v0

    aput-byte v0, v5, v1

    iget-boolean v0, v2, Ls1/b$c;->e:Z

    if-eqz v0, :cond_15b

    add-int/lit8 v0, v4, 0x1

    aput-byte v16, v5, v4

    add-int/lit8 v4, v0, 0x1

    aput-byte v16, v5, v0

    :cond_15b
    iget-boolean v0, v2, Ls1/b$c;->f:Z

    if-eqz v0, :cond_1e0

    iget-boolean v0, v2, Ls1/b$c;->g:Z

    if-eqz v0, :cond_168

    add-int/lit8 v0, v4, 0x1

    aput-byte v15, v5, v4

    move v4, v0

    :cond_168
    aput-byte v14, v5, v4

    goto/16 :goto_1e0

    :cond_16c
    const/4 v4, 0x2

    sub-int/2addr v1, v4

    if-ne v7, v1, :cond_1cb

    const/4 v1, 0x1

    if-le v6, v1, :cond_179

    iget-object v4, v2, Ls1/b$c;->b:[B

    aget-byte v4, v4, v9

    move v7, v1

    goto :goto_17f

    :cond_179
    add-int/lit8 v1, v12, 0x1

    aget-byte v4, v0, v12

    move v12, v1

    move v7, v9

    :goto_17f
    and-int/lit16 v1, v4, 0xff

    shl-int/2addr v1, v14

    if-lez v6, :cond_18c

    iget-object v0, v2, Ls1/b$c;->b:[B

    add-int/lit8 v4, v7, 0x1

    aget-byte v0, v0, v7

    move v7, v4

    goto :goto_18e

    :cond_18c
    aget-byte v0, v0, v12

    :goto_18e
    and-int/lit16 v0, v0, 0xff

    const/4 v4, 0x2

    shl-int/2addr v0, v4

    or-int/2addr v0, v1

    sub-int/2addr v6, v7

    iput v6, v2, Ls1/b$c;->c:I

    add-int/lit8 v1, v11, 0x1

    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v5, v11

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v8, v6

    aput-byte v6, v5, v1

    add-int/lit8 v1, v4, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v8, v0

    aput-byte v0, v5, v4

    iget-boolean v0, v2, Ls1/b$c;->e:Z

    if-eqz v0, :cond_1bb

    add-int/lit8 v0, v1, 0x1

    aput-byte v16, v5, v1

    move v1, v0

    :cond_1bb
    iget-boolean v0, v2, Ls1/b$c;->f:Z

    if-eqz v0, :cond_1e0

    iget-boolean v0, v2, Ls1/b$c;->g:Z

    if-eqz v0, :cond_1c8

    add-int/lit8 v0, v1, 0x1

    aput-byte v15, v5, v1

    move v1, v0

    :cond_1c8
    aput-byte v14, v5, v1

    goto :goto_1e0

    :cond_1cb
    iget-boolean v0, v2, Ls1/b$c;->f:Z

    if-eqz v0, :cond_1e0

    if-lez v11, :cond_1e0

    const/16 v0, 0x13

    if-eq v10, v0, :cond_1e0

    iget-boolean v0, v2, Ls1/b$c;->g:Z

    if-eqz v0, :cond_1de

    add-int/lit8 v0, v11, 0x1

    aput-byte v15, v5, v11

    move v11, v0

    :cond_1de
    aput-byte v14, v5, v11

    :cond_1e0
    :goto_1e0
    iput v10, v2, Ls1/b$c;->d:I

    iget-object v0, v3, Ls1/b$a;->a:[B

    return-object v0
.end method
