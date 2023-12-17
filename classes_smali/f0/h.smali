.class public final Lf0/h;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/h$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a([Lf0/h$a;[Lf0/h$a;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    if-nez p1, :cond_6

    goto :goto_28

    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_b

    return v0

    :cond_b
    move v1, v0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_26

    aget-object v2, p0, v1

    iget-char v3, v2, Lf0/h$a;->a:C

    aget-object v4, p1, v1

    iget-char v5, v4, Lf0/h$a;->a:C

    if-ne v3, v5, :cond_25

    iget-object v2, v2, Lf0/h$a;->b:[F

    array-length v2, v2

    iget-object v3, v4, Lf0/h$a;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_25
    :goto_25
    return v0

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    return v0
.end method

.method public static b([FI)[F
    .registers 4

    if-ltz p1, :cond_18

    array-length v0, p0

    if-ltz v0, :cond_12

    const/4 v1, 0x0

    sub-int/2addr p1, v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array p1, p1, [F

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static c(Ljava/lang/String;)[Lf0/h$a;
    .registers 18

    move-object/from16 v0, p0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    :goto_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_e3

    :goto_15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x45

    const/16 v7, 0x65

    if-ge v4, v5, :cond_39

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v8, v5, -0x41

    add-int/lit8 v9, v5, -0x5a

    mul-int/2addr v9, v8

    if-lez v9, :cond_31

    add-int/lit8 v8, v5, -0x61

    add-int/lit8 v9, v5, -0x7a

    mul-int/2addr v9, v8

    if-gtz v9, :cond_36

    :cond_31
    if-eq v5, v7, :cond_36

    if-eq v5, v6, :cond_36

    goto :goto_39

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_39
    :goto_39
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d9

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x7a

    if-eq v5, v8, :cond_cb

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5a

    if-ne v5, v8, :cond_59

    goto/16 :goto_cb

    :cond_59
    :try_start_59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [F

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    move v10, v9

    move v9, v3

    :goto_66
    if-ge v10, v8, :cond_b1

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v10

    :goto_6c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_9a

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v7, 0x20

    if-eq v15, v7, :cond_90

    const/16 v7, 0x65

    if-eq v15, v6, :cond_8e

    if-eq v15, v7, :cond_8e

    packed-switch v15, :pswitch_data_10a

    goto :goto_93

    :pswitch_84  #0x2e
    if-nez v12, :cond_8c

    const/4 v12, 0x1

    goto :goto_93

    :pswitch_88  #0x2d
    if-eq v14, v10, :cond_93

    if-nez v13, :cond_93

    :cond_8c
    const/4 v11, 0x1

    goto :goto_92

    :cond_8e
    const/4 v13, 0x1

    goto :goto_94

    :cond_90
    const/16 v7, 0x65

    :goto_92
    :pswitch_92  #0x2c
    const/4 v9, 0x1

    :cond_93
    :goto_93
    const/4 v13, 0x0

    :goto_94
    if-eqz v9, :cond_97

    goto :goto_9a

    :cond_97
    add-int/lit8 v14, v14, 0x1

    goto :goto_6c

    :cond_9a
    :goto_9a
    if-ge v10, v14, :cond_a9

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v2, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    aput v10, v5, v3

    move v3, v9

    :cond_a9
    if-eqz v11, :cond_ac

    goto :goto_ae

    :cond_ac
    add-int/lit8 v14, v14, 0x1

    :goto_ae
    move v10, v14

    const/4 v9, 0x0

    goto :goto_66

    :cond_b1
    invoke-static {v5, v3}, Lf0/h;->b([FI)[F

    move-result-object v3
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_b5} :catch_bc

    const/4 v5, 0x0

    move/from16 v16, v5

    move-object v5, v3

    move/from16 v3, v16

    goto :goto_cd

    :catch_bc
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "error in parsing \""

    const-string v4, "\""

    invoke-static {v3, v2, v4}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_cb
    :goto_cb
    new-array v5, v3, [F

    :goto_cd
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    new-instance v3, Lf0/h$a;

    invoke-direct {v3, v2, v5}, Lf0/h$a;-><init>(C[F)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d9
    add-int/lit8 v2, v4, 0x1

    const/4 v3, 0x0

    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    goto/16 :goto_f

    :cond_e3
    sub-int/2addr v4, v2

    const/4 v3, 0x1

    if-ne v4, v3, :cond_fc

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_fc

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    new-array v2, v2, [F

    new-instance v3, Lf0/h$a;

    invoke-direct {v3, v0, v2}, Lf0/h$a;-><init>(C[F)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fc
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lf0/h$a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf0/h$a;

    return-object v0

    nop

    :pswitch_data_10a
    .packed-switch 0x2c
        :pswitch_92  #0000002c
        :pswitch_88  #0000002d
        :pswitch_84  #0000002e
    .end packed-switch
.end method

.method public static d([Lf0/h$a;)[Lf0/h$a;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [Lf0/h$a;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_17

    new-instance v2, Lf0/h$a;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lf0/h$a;-><init>(Lf0/h$a;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    return-object v0
.end method
