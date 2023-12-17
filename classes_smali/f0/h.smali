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
.method public static a([Lf0/h$a;[Lf0/h$a;)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_28

    .line 4
    if-nez p1, :cond_6

    .line 6
    goto :goto_28

    .line 7
    :cond_6
    array-length v1, p0

    .line 8
    array-length v2, p1

    .line 9
    if-eq v1, v2, :cond_b

    .line 11
    return v0

    .line 12
    :cond_b
    move v1, v0

    .line 13
    :goto_c
    array-length v2, p0

    .line 14
    if-ge v1, v2, :cond_26

    .line 16
    aget-object v2, p0, v1

    .line 18
    iget-char v3, v2, Lf0/h$a;->a:C

    .line 20
    aget-object v4, p1, v1

    .line 22
    iget-char v5, v4, Lf0/h$a;->a:C

    .line 24
    if-ne v3, v5, :cond_25

    .line 26
    iget-object v2, v2, Lf0/h$a;->b:[F

    .line 28
    array-length v2, v2

    .line 29
    iget-object v3, v4, Lf0/h$a;->b:[F

    .line 31
    array-length v3, v3

    .line 32
    if-eq v2, v3, :cond_22

    .line 34
    goto :goto_25

    .line 35
    :cond_22
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_c

    .line 38
    :cond_25
    :goto_25
    return v0

    .line 39
    :cond_26
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_28
    :goto_28
    return v0
.end method

.method public static b([FI)[F
    .registers 4

    .line 1
    if-ltz p1, :cond_18

    .line 3
    array-length v0, p0

    .line 4
    if-ltz v0, :cond_12

    .line 6
    const/4 v1, 0x0

    .line 7
    sub-int/2addr p1, v1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result v0

    .line 13
    new-array p1, p1, [F

    .line 15
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    return-object p1

    .line 19
    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 21
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 24
    throw p0

    .line 25
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 30
    throw p0
.end method

.method public static c(Ljava/lang/String;)[Lf0/h$a;
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    move v4, v3

    .line 15
    move v3, v2

    .line 16
    :goto_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 19
    move-result v5

    .line 20
    if-ge v4, v5, :cond_e3

    .line 22
    :goto_15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 25
    move-result v5

    .line 26
    const/16 v6, 0x45

    .line 28
    const/16 v7, 0x65

    .line 30
    if-ge v4, v5, :cond_39

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v5

    .line 36
    add-int/lit8 v8, v5, -0x41

    .line 38
    add-int/lit8 v9, v5, -0x5a

    .line 40
    mul-int/2addr v9, v8

    .line 41
    if-lez v9, :cond_31

    .line 43
    add-int/lit8 v8, v5, -0x61

    .line 45
    add-int/lit8 v9, v5, -0x7a

    .line 47
    mul-int/2addr v9, v8

    .line 48
    if-gtz v9, :cond_36

    .line 50
    :cond_31
    if-eq v5, v7, :cond_36

    .line 52
    if-eq v5, v6, :cond_36

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    add-int/lit8 v4, v4, 0x1

    .line 57
    goto :goto_15

    .line 58
    :cond_39
    :goto_39
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 69
    move-result v5

    .line 70
    if-lez v5, :cond_d9

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 75
    move-result v5

    .line 76
    const/16 v8, 0x7a

    .line 78
    if-eq v5, v8, :cond_cb

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 83
    move-result v5

    .line 84
    const/16 v8, 0x5a

    .line 86
    if-ne v5, v8, :cond_59

    .line 88
    goto/16 :goto_cb

    .line 90
    :cond_59
    :try_start_59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 93
    move-result v5

    .line 94
    new-array v5, v5, [F

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 99
    move-result v8

    .line 100
    const/4 v9, 0x1

    .line 101
    move v10, v9

    .line 102
    move v9, v3

    .line 103
    :goto_66
    if-ge v10, v8, :cond_b1

    .line 105
    move v11, v9

    .line 106
    move v12, v11

    .line 107
    move v13, v12

    .line 108
    move v14, v10

    .line 109
    :goto_6c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 112
    move-result v15

    .line 113
    if-ge v14, v15, :cond_9a

    .line 115
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    .line 118
    move-result v15

    .line 119
    const/16 v7, 0x20

    .line 121
    if-eq v15, v7, :cond_90

    .line 123
    const/16 v7, 0x65

    .line 125
    if-eq v15, v6, :cond_8e

    .line 127
    if-eq v15, v7, :cond_8e

    .line 129
    packed-switch v15, :pswitch_data_10a

    .line 132
    goto :goto_93

    .line 133
    :pswitch_84  #0x2e
    if-nez v12, :cond_8c

    .line 135
    const/4 v12, 0x1

    .line 136
    goto :goto_93

    .line 137
    :pswitch_88  #0x2d
    if-eq v14, v10, :cond_93

    .line 139
    if-nez v13, :cond_93

    .line 141
    :cond_8c
    const/4 v11, 0x1

    .line 142
    goto :goto_92

    .line 143
    :cond_8e
    const/4 v13, 0x1

    .line 144
    goto :goto_94

    .line 145
    :cond_90
    const/16 v7, 0x65

    .line 147
    :goto_92
    :pswitch_92  #0x2c
    const/4 v9, 0x1

    .line 148
    :cond_93
    :goto_93
    const/4 v13, 0x0

    .line 149
    :goto_94
    if-eqz v9, :cond_97

    .line 151
    goto :goto_9a

    .line 152
    :cond_97
    add-int/lit8 v14, v14, 0x1

    .line 154
    goto :goto_6c

    .line 155
    :cond_9a
    :goto_9a
    if-ge v10, v14, :cond_a9

    .line 157
    add-int/lit8 v9, v3, 0x1

    .line 159
    invoke-virtual {v2, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 162
    move-result-object v10

    .line 163
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 166
    move-result v10

    .line 167
    aput v10, v5, v3

    .line 169
    move v3, v9

    .line 170
    :cond_a9
    if-eqz v11, :cond_ac

    .line 172
    goto :goto_ae

    .line 173
    :cond_ac
    add-int/lit8 v14, v14, 0x1

    .line 175
    :goto_ae
    move v10, v14

    .line 176
    const/4 v9, 0x0

    .line 177
    goto :goto_66

    .line 178
    :cond_b1
    invoke-static {v5, v3}, Lf0/h;->b([FI)[F

    .line 181
    move-result-object v3
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_b5} :catch_bc

    .line 182
    const/4 v5, 0x0

    .line 183
    move/from16 v16, v5

    .line 185
    move-object v5, v3

    .line 186
    move/from16 v3, v16

    .line 188
    goto :goto_cd

    .line 189
    :catch_bc
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    .line 192
    const-string v3, "error in parsing \""

    .line 194
    const-string v4, "\""

    .line 196
    invoke-static {v3, v2, v4}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object v2

    .line 200
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    throw v1

    .line 204
    :cond_cb
    :goto_cb
    new-array v5, v3, [F

    .line 206
    :goto_cd
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 209
    move-result v2

    .line 210
    new-instance v3, Lf0/h$a;

    .line 212
    invoke-direct {v3, v2, v5}, Lf0/h$a;-><init>(C[F)V

    .line 215
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_d9
    add-int/lit8 v2, v4, 0x1

    .line 220
    const/4 v3, 0x0

    .line 221
    move/from16 v16, v4

    .line 223
    move v4, v2

    .line 224
    move/from16 v2, v16

    .line 226
    goto/16 :goto_f

    .line 228
    :cond_e3
    sub-int/2addr v4, v2

    .line 229
    const/4 v3, 0x1

    .line 230
    if-ne v4, v3, :cond_fc

    .line 232
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 235
    move-result v3

    .line 236
    if-ge v2, v3, :cond_fc

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 241
    move-result v0

    .line 242
    const/4 v2, 0x0

    .line 243
    new-array v2, v2, [F

    .line 245
    new-instance v3, Lf0/h$a;

    .line 247
    invoke-direct {v3, v0, v2}, Lf0/h$a;-><init>(C[F)V

    .line 250
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_fc
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 256
    move-result v0

    .line 257
    new-array v0, v0, [Lf0/h$a;

    .line 259
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 262
    move-result-object v0

    .line 263
    check-cast v0, [Lf0/h$a;

    .line 265
    return-object v0

    .line 266
    nop

    .line 267
    :pswitch_data_10a
    .packed-switch 0x2c
        :pswitch_92  #0000002c
        :pswitch_88  #0000002d
        :pswitch_84  #0000002e
    .end packed-switch
.end method

.method public static d([Lf0/h$a;)[Lf0/h$a;
    .registers 5

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    array-length v0, p0

    .line 6
    new-array v0, v0, [Lf0/h$a;

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_17

    .line 12
    new-instance v2, Lf0/h$a;

    .line 14
    aget-object v3, p0, v1

    .line 16
    invoke-direct {v2, v3}, Lf0/h$a;-><init>(Lf0/h$a;)V

    .line 19
    aput-object v2, v0, v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_8

    .line 24
    :cond_17
    return-object v0
.end method
