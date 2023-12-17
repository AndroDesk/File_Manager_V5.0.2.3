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
.method public static a(ILjava/lang/String;)[B
    .registers 18

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    mul-int/lit8 v2, v1, 0x3

    .line 8
    const/4 v3, 0x4

    .line 9
    div-int/2addr v2, v3

    .line 10
    new-array v4, v2, [B

    .line 12
    and-int/lit8 v5, p0, 0x8

    .line 14
    if-nez v5, :cond_12

    .line 16
    sget-object v5, Ls1/b$b;->b:[I

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    sget-object v5, Ls1/b$b;->c:[I

    .line 21
    :goto_14
    const/4 v6, 0x0

    .line 22
    add-int/2addr v1, v6

    .line 23
    move v7, v6

    .line 24
    move v8, v7

    .line 25
    move v9, v8

    .line 26
    move v10, v9

    .line 27
    :goto_1a
    const/4 v11, 0x3

    .line 28
    const/4 v12, 0x2

    .line 29
    const/4 v13, 0x1

    .line 30
    if-ge v7, v1, :cond_e6

    .line 32
    if-nez v8, :cond_67

    .line 34
    :goto_21
    add-int/lit8 v14, v7, 0x4

    .line 36
    if-gt v14, v1, :cond_63

    .line 38
    aget-byte v9, v0, v7

    .line 40
    and-int/lit16 v9, v9, 0xff

    .line 42
    aget v9, v5, v9

    .line 44
    shl-int/lit8 v9, v9, 0x12

    .line 46
    add-int/lit8 v15, v7, 0x1

    .line 48
    aget-byte v15, v0, v15

    .line 50
    and-int/lit16 v15, v15, 0xff

    .line 52
    aget v15, v5, v15

    .line 54
    shl-int/lit8 v15, v15, 0xc

    .line 56
    or-int/2addr v9, v15

    .line 57
    add-int/lit8 v15, v7, 0x2

    .line 59
    aget-byte v15, v0, v15

    .line 61
    and-int/lit16 v15, v15, 0xff

    .line 63
    aget v15, v5, v15

    .line 65
    shl-int/lit8 v15, v15, 0x6

    .line 67
    or-int/2addr v9, v15

    .line 68
    add-int/lit8 v15, v7, 0x3

    .line 70
    aget-byte v15, v0, v15

    .line 72
    and-int/lit16 v15, v15, 0xff

    .line 74
    aget v15, v5, v15

    .line 76
    or-int/2addr v9, v15

    .line 77
    if-ltz v9, :cond_63

    .line 79
    add-int/lit8 v7, v10, 0x2

    .line 81
    int-to-byte v15, v9

    .line 82
    aput-byte v15, v4, v7

    .line 84
    add-int/lit8 v7, v10, 0x1

    .line 86
    shr-int/lit8 v15, v9, 0x8

    .line 88
    int-to-byte v15, v15

    .line 89
    aput-byte v15, v4, v7

    .line 91
    shr-int/lit8 v7, v9, 0x10

    .line 93
    int-to-byte v7, v7

    .line 94
    aput-byte v7, v4, v10

    .line 96
    add-int/lit8 v10, v10, 0x3

    .line 98
    move v7, v14

    .line 99
    goto :goto_21

    .line 100
    :cond_63
    if-lt v7, v1, :cond_67

    .line 102
    goto/16 :goto_e6

    .line 104
    :cond_67
    add-int/lit8 v14, v7, 0x1

    .line 106
    aget-byte v7, v0, v7

    .line 108
    and-int/lit16 v7, v7, 0xff

    .line 110
    aget v7, v5, v7

    .line 112
    const/4 v15, 0x5

    .line 113
    const/4 v6, -0x1

    .line 114
    if-eqz v8, :cond_d9

    .line 116
    if-eq v8, v13, :cond_d0

    .line 118
    const/4 v13, -0x2

    .line 119
    if-eq v8, v12, :cond_be

    .line 121
    if-eq v8, v11, :cond_8e

    .line 123
    if-eq v8, v3, :cond_84

    .line 125
    if-eq v8, v15, :cond_80

    .line 127
    goto/16 :goto_e2

    .line 129
    :cond_80
    if-eq v7, v6, :cond_e2

    .line 131
    goto/16 :goto_107

    .line 133
    :cond_84
    if-ne v7, v13, :cond_8a

    .line 135
    add-int/lit8 v8, v8, 0x1

    .line 137
    goto/16 :goto_e2

    .line 139
    :cond_8a
    if-eq v7, v6, :cond_e2

    .line 141
    goto/16 :goto_107

    .line 143
    :cond_8e
    if-ltz v7, :cond_a9

    .line 145
    shl-int/lit8 v6, v9, 0x6

    .line 147
    or-int/2addr v6, v7

    .line 148
    add-int/lit8 v7, v10, 0x2

    .line 150
    int-to-byte v8, v6

    .line 151
    aput-byte v8, v4, v7

    .line 153
    add-int/lit8 v7, v10, 0x1

    .line 155
    shr-int/lit8 v8, v6, 0x8

    .line 157
    int-to-byte v8, v8

    .line 158
    aput-byte v8, v4, v7

    .line 160
    shr-int/lit8 v7, v6, 0x10

    .line 162
    int-to-byte v7, v7

    .line 163
    aput-byte v7, v4, v10

    .line 165
    add-int/lit8 v10, v10, 0x3

    .line 167
    move v9, v6

    .line 168
    const/4 v8, 0x0

    .line 169
    goto :goto_e2

    .line 170
    :cond_a9
    if-ne v7, v13, :cond_bb

    .line 172
    add-int/lit8 v6, v10, 0x1

    .line 174
    shr-int/lit8 v7, v9, 0x2

    .line 176
    int-to-byte v7, v7

    .line 177
    aput-byte v7, v4, v6

    .line 179
    shr-int/lit8 v6, v9, 0xa

    .line 181
    int-to-byte v6, v6

    .line 182
    aput-byte v6, v4, v10

    .line 184
    add-int/lit8 v10, v10, 0x2

    .line 186
    move v8, v15

    .line 187
    goto :goto_e2

    .line 188
    :cond_bb
    if-eq v7, v6, :cond_e2

    .line 190
    goto :goto_107

    .line 191
    :cond_be
    if-ltz v7, :cond_c1

    .line 193
    goto :goto_d2

    .line 194
    :cond_c1
    if-ne v7, v13, :cond_cd

    .line 196
    add-int/lit8 v6, v10, 0x1

    .line 198
    shr-int/lit8 v7, v9, 0x4

    .line 200
    int-to-byte v7, v7

    .line 201
    aput-byte v7, v4, v10

    .line 203
    move v8, v3

    .line 204
    move v10, v6

    .line 205
    goto :goto_e2

    .line 206
    :cond_cd
    if-eq v7, v6, :cond_e2

    .line 208
    goto :goto_107

    .line 209
    :cond_d0
    if-ltz v7, :cond_d6

    .line 211
    :goto_d2
    shl-int/lit8 v6, v9, 0x6

    .line 213
    or-int/2addr v7, v6

    .line 214
    goto :goto_db

    .line 215
    :cond_d6
    if-eq v7, v6, :cond_e2

    .line 217
    goto :goto_107

    .line 218
    :cond_d9
    if-ltz v7, :cond_df

    .line 220
    :goto_db
    add-int/lit8 v8, v8, 0x1

    .line 222
    move v9, v7

    .line 223
    goto :goto_e2

    .line 224
    :cond_df
    if-eq v7, v6, :cond_e2

    .line 226
    goto :goto_107

    .line 227
    :cond_e2
    :goto_e2
    move v7, v14

    .line 228
    const/4 v6, 0x0

    .line 229
    goto/16 :goto_1a

    .line 231
    :cond_e6
    :goto_e6
    if-eq v8, v13, :cond_107

    .line 233
    if-eq v8, v12, :cond_fe

    .line 235
    if-eq v8, v11, :cond_ef

    .line 237
    if-eq v8, v3, :cond_107

    .line 239
    goto :goto_109

    .line 240
    :cond_ef
    add-int/lit8 v0, v10, 0x1

    .line 242
    shr-int/lit8 v1, v9, 0xa

    .line 244
    int-to-byte v1, v1

    .line 245
    aput-byte v1, v4, v10

    .line 247
    add-int/lit8 v10, v0, 0x1

    .line 249
    shr-int/lit8 v1, v9, 0x2

    .line 251
    int-to-byte v1, v1

    .line 252
    aput-byte v1, v4, v0

    .line 254
    goto :goto_109

    .line 255
    :cond_fe
    add-int/lit8 v0, v10, 0x1

    .line 257
    shr-int/lit8 v1, v9, 0x4

    .line 259
    int-to-byte v1, v1

    .line 260
    aput-byte v1, v4, v10

    .line 262
    move v10, v0

    .line 263
    goto :goto_109

    .line 264
    :cond_107
    :goto_107
    const/4 v10, 0x0

    .line 265
    const/4 v13, 0x0

    .line 266
    :goto_109
    if-eqz v13, :cond_116

    .line 268
    if-ne v10, v2, :cond_10e

    .line 270
    goto :goto_115

    .line 271
    :cond_10e
    new-array v0, v10, [B

    .line 273
    const/4 v1, 0x0

    .line 274
    invoke-static {v4, v1, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    move-object v4, v0

    .line 278
    :goto_115
    return-object v4

    .line 279
    :cond_116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 281
    const-string v1, "bad base-64"

    .line 283
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 286
    throw v0
.end method

.method public static b(I[B)[B
    .registers 19

    .line 1
    move-object/from16 v0, p1

    .line 3
    array-length v1, v0

    .line 4
    new-instance v2, Ls1/b$c;

    .line 6
    move/from16 v3, p0

    .line 8
    invoke-direct {v2, v3}, Ls1/b$c;-><init>(I)V

    .line 11
    div-int/lit8 v3, v1, 0x3

    .line 13
    const/4 v4, 0x4

    .line 14
    mul-int/2addr v3, v4

    .line 15
    iget-boolean v5, v2, Ls1/b$c;->e:Z

    .line 17
    const/4 v6, 0x2

    .line 18
    const/4 v7, 0x1

    .line 19
    if-eqz v5, :cond_1b

    .line 21
    rem-int/lit8 v5, v1, 0x3

    .line 23
    if-lez v5, :cond_27

    .line 25
    add-int/lit8 v3, v3, 0x4

    .line 27
    goto :goto_27

    .line 28
    :cond_1b
    rem-int/lit8 v5, v1, 0x3

    .line 30
    if-eq v5, v7, :cond_25

    .line 32
    if-eq v5, v6, :cond_22

    .line 34
    goto :goto_27

    .line 35
    :cond_22
    add-int/lit8 v3, v3, 0x3

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    add-int/lit8 v3, v3, 0x2

    .line 40
    :cond_27
    :goto_27
    iget-boolean v5, v2, Ls1/b$c;->f:Z

    .line 42
    if-eqz v5, :cond_3b

    .line 44
    if-lez v1, :cond_3b

    .line 46
    add-int/lit8 v5, v1, -0x1

    .line 48
    div-int/lit8 v5, v5, 0x39

    .line 50
    add-int/2addr v5, v7

    .line 51
    iget-boolean v8, v2, Ls1/b$c;->g:Z

    .line 53
    if-eqz v8, :cond_38

    .line 55
    move v8, v6

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v8, v7

    .line 58
    :goto_39
    mul-int/2addr v5, v8

    .line 59
    add-int/2addr v3, v5

    .line 60
    :cond_3b
    new-array v3, v3, [B

    .line 62
    iput-object v3, v2, Ls1/b$a;->a:[B

    .line 64
    iget-object v5, v2, Ls1/b$c;->h:[B

    .line 66
    iget v8, v2, Ls1/b$c;->d:I

    .line 68
    const/4 v9, 0x0

    .line 69
    add-int/2addr v1, v9

    .line 70
    iget v10, v2, Ls1/b$c;->c:I

    .line 72
    const/4 v11, -0x1

    .line 73
    if-eq v10, v7, :cond_67

    .line 75
    if-eq v10, v6, :cond_4d

    .line 77
    goto :goto_81

    .line 78
    :cond_4d
    if-gt v7, v1, :cond_81

    .line 80
    iget-object v10, v2, Ls1/b$c;->b:[B

    .line 82
    aget-byte v12, v10, v9

    .line 84
    and-int/lit16 v12, v12, 0xff

    .line 86
    shl-int/lit8 v12, v12, 0x10

    .line 88
    aget-byte v10, v10, v7

    .line 90
    and-int/lit16 v10, v10, 0xff

    .line 92
    shl-int/lit8 v10, v10, 0x8

    .line 94
    or-int/2addr v10, v12

    .line 95
    aget-byte v12, v0, v9

    .line 97
    and-int/lit16 v12, v12, 0xff

    .line 99
    or-int/2addr v10, v12

    .line 100
    iput v9, v2, Ls1/b$c;->c:I

    .line 102
    move v12, v7

    .line 103
    goto :goto_83

    .line 104
    :cond_67
    if-gt v6, v1, :cond_81

    .line 106
    iget-object v10, v2, Ls1/b$c;->b:[B

    .line 108
    aget-byte v10, v10, v9

    .line 110
    and-int/lit16 v10, v10, 0xff

    .line 112
    shl-int/lit8 v10, v10, 0x10

    .line 114
    aget-byte v12, v0, v9

    .line 116
    and-int/lit16 v12, v12, 0xff

    .line 118
    shl-int/lit8 v12, v12, 0x8

    .line 120
    or-int/2addr v10, v12

    .line 121
    aget-byte v12, v0, v7

    .line 123
    and-int/lit16 v12, v12, 0xff

    .line 125
    or-int/2addr v10, v12

    .line 126
    iput v9, v2, Ls1/b$c;->c:I

    .line 128
    move v12, v6

    .line 129
    goto :goto_83

    .line 130
    :cond_81
    :goto_81
    move v12, v9

    .line 131
    move v10, v11

    .line 132
    :goto_83
    const/16 v14, 0xa

    .line 134
    const/16 v15, 0xd

    .line 136
    if-eq v10, v11, :cond_c0

    .line 138
    shr-int/lit8 v11, v10, 0x12

    .line 140
    and-int/lit8 v11, v11, 0x3f

    .line 142
    aget-byte v11, v5, v11

    .line 144
    aput-byte v11, v3, v9

    .line 146
    shr-int/lit8 v11, v10, 0xc

    .line 148
    and-int/lit8 v11, v11, 0x3f

    .line 150
    aget-byte v11, v5, v11

    .line 152
    aput-byte v11, v3, v7

    .line 154
    shr-int/lit8 v11, v10, 0x6

    .line 156
    and-int/lit8 v11, v11, 0x3f

    .line 158
    aget-byte v11, v5, v11

    .line 160
    aput-byte v11, v3, v6

    .line 162
    and-int/lit8 v10, v10, 0x3f

    .line 164
    aget-byte v10, v5, v10

    .line 166
    const/4 v11, 0x3

    .line 167
    aput-byte v10, v3, v11

    .line 169
    add-int/lit8 v8, v8, -0x1

    .line 171
    if-nez v8, :cond_be

    .line 173
    iget-boolean v8, v2, Ls1/b$c;->g:Z

    .line 175
    if-eqz v8, :cond_b4

    .line 177
    const/4 v8, 0x5

    .line 178
    aput-byte v15, v3, v4

    .line 180
    goto :goto_b5

    .line 181
    :cond_b4
    move v8, v4

    .line 182
    :goto_b5
    add-int/lit8 v10, v8, 0x1

    .line 184
    aput-byte v14, v3, v8

    .line 186
    move-object v8, v5

    .line 187
    move v11, v10

    .line 188
    move-object v5, v3

    .line 189
    move-object v3, v2

    .line 190
    goto :goto_119

    .line 191
    :cond_be
    move v10, v4

    .line 192
    goto :goto_c1

    .line 193
    :cond_c0
    move v10, v9

    .line 194
    :goto_c1
    move v11, v10

    .line 195
    move v10, v8

    .line 196
    move-object v8, v5

    .line 197
    move-object v5, v3

    .line 198
    move-object v3, v2

    .line 199
    :goto_c6
    add-int/lit8 v13, v12, 0x3

    .line 201
    if-gt v13, v1, :cond_122

    .line 203
    aget-byte v7, v0, v12

    .line 205
    and-int/lit16 v7, v7, 0xff

    .line 207
    shl-int/lit8 v7, v7, 0x10

    .line 209
    add-int/lit8 v16, v12, 0x1

    .line 211
    aget-byte v6, v0, v16

    .line 213
    and-int/lit16 v6, v6, 0xff

    .line 215
    shl-int/lit8 v6, v6, 0x8

    .line 217
    or-int/2addr v6, v7

    .line 218
    add-int/lit8 v12, v12, 0x2

    .line 220
    aget-byte v7, v0, v12

    .line 222
    and-int/lit16 v7, v7, 0xff

    .line 224
    or-int/2addr v6, v7

    .line 225
    shr-int/lit8 v7, v6, 0x12

    .line 227
    and-int/lit8 v7, v7, 0x3f

    .line 229
    aget-byte v7, v8, v7

    .line 231
    aput-byte v7, v5, v11

    .line 233
    add-int/lit8 v7, v11, 0x1

    .line 235
    shr-int/lit8 v12, v6, 0xc

    .line 237
    and-int/lit8 v12, v12, 0x3f

    .line 239
    aget-byte v12, v8, v12

    .line 241
    aput-byte v12, v5, v7

    .line 243
    add-int/lit8 v7, v11, 0x2

    .line 245
    shr-int/lit8 v12, v6, 0x6

    .line 247
    and-int/lit8 v12, v12, 0x3f

    .line 249
    aget-byte v12, v8, v12

    .line 251
    aput-byte v12, v5, v7

    .line 253
    add-int/lit8 v7, v11, 0x3

    .line 255
    and-int/lit8 v6, v6, 0x3f

    .line 257
    aget-byte v6, v8, v6

    .line 259
    aput-byte v6, v5, v7

    .line 261
    add-int/lit8 v11, v11, 0x4

    .line 263
    add-int/lit8 v10, v10, -0x1

    .line 265
    if-nez v10, :cond_11e

    .line 267
    iget-boolean v6, v2, Ls1/b$c;->g:Z

    .line 269
    if-eqz v6, :cond_113

    .line 271
    add-int/lit8 v6, v11, 0x1

    .line 273
    aput-byte v15, v5, v11

    .line 275
    move v11, v6

    .line 276
    :cond_113
    add-int/lit8 v10, v11, 0x1

    .line 278
    aput-byte v14, v5, v11

    .line 280
    move v11, v10

    .line 281
    move v12, v13

    .line 282
    :goto_119
    const/4 v6, 0x2

    .line 283
    const/4 v7, 0x1

    .line 284
    const/16 v10, 0x13

    .line 286
    goto :goto_c6

    .line 287
    :cond_11e
    move v12, v13

    .line 288
    const/4 v6, 0x2

    .line 289
    const/4 v7, 0x1

    .line 290
    goto :goto_c6

    .line 291
    :cond_122
    iget v6, v2, Ls1/b$c;->c:I

    .line 293
    sub-int v7, v12, v6

    .line 295
    add-int/lit8 v13, v1, -0x1

    .line 297
    const/16 v16, 0x3d

    .line 299
    if-ne v7, v13, :cond_16c

    .line 301
    if-lez v6, :cond_134

    .line 303
    iget-object v0, v2, Ls1/b$c;->b:[B

    .line 305
    aget-byte v0, v0, v9

    .line 307
    const/4 v7, 0x1

    .line 308
    goto :goto_137

    .line 309
    :cond_134
    aget-byte v0, v0, v12

    .line 311
    move v7, v9

    .line 312
    :goto_137
    and-int/lit16 v0, v0, 0xff

    .line 314
    shl-int/2addr v0, v4

    .line 315
    sub-int/2addr v6, v7

    .line 316
    iput v6, v2, Ls1/b$c;->c:I

    .line 318
    add-int/lit8 v1, v11, 0x1

    .line 320
    shr-int/lit8 v4, v0, 0x6

    .line 322
    and-int/lit8 v4, v4, 0x3f

    .line 324
    aget-byte v4, v8, v4

    .line 326
    aput-byte v4, v5, v11

    .line 328
    add-int/lit8 v4, v1, 0x1

    .line 330
    and-int/lit8 v0, v0, 0x3f

    .line 332
    aget-byte v0, v8, v0

    .line 334
    aput-byte v0, v5, v1

    .line 336
    iget-boolean v0, v2, Ls1/b$c;->e:Z

    .line 338
    if-eqz v0, :cond_15b

    .line 340
    add-int/lit8 v0, v4, 0x1

    .line 342
    aput-byte v16, v5, v4

    .line 344
    add-int/lit8 v4, v0, 0x1

    .line 346
    aput-byte v16, v5, v0

    .line 348
    :cond_15b
    iget-boolean v0, v2, Ls1/b$c;->f:Z

    .line 350
    if-eqz v0, :cond_1e0

    .line 352
    iget-boolean v0, v2, Ls1/b$c;->g:Z

    .line 354
    if-eqz v0, :cond_168

    .line 356
    add-int/lit8 v0, v4, 0x1

    .line 358
    aput-byte v15, v5, v4

    .line 360
    move v4, v0

    .line 361
    :cond_168
    aput-byte v14, v5, v4

    .line 363
    goto/16 :goto_1e0

    .line 365
    :cond_16c
    const/4 v4, 0x2

    .line 366
    sub-int/2addr v1, v4

    .line 367
    if-ne v7, v1, :cond_1cb

    .line 369
    const/4 v1, 0x1

    .line 370
    if-le v6, v1, :cond_179

    .line 372
    iget-object v4, v2, Ls1/b$c;->b:[B

    .line 374
    aget-byte v4, v4, v9

    .line 376
    move v7, v1

    .line 377
    goto :goto_17f

    .line 378
    :cond_179
    add-int/lit8 v1, v12, 0x1

    .line 380
    aget-byte v4, v0, v12

    .line 382
    move v12, v1

    .line 383
    move v7, v9

    .line 384
    :goto_17f
    and-int/lit16 v1, v4, 0xff

    .line 386
    shl-int/2addr v1, v14

    .line 387
    if-lez v6, :cond_18c

    .line 389
    iget-object v0, v2, Ls1/b$c;->b:[B

    .line 391
    add-int/lit8 v4, v7, 0x1

    .line 393
    aget-byte v0, v0, v7

    .line 395
    move v7, v4

    .line 396
    goto :goto_18e

    .line 397
    :cond_18c
    aget-byte v0, v0, v12

    .line 399
    :goto_18e
    and-int/lit16 v0, v0, 0xff

    .line 401
    const/4 v4, 0x2

    .line 402
    shl-int/2addr v0, v4

    .line 403
    or-int/2addr v0, v1

    .line 404
    sub-int/2addr v6, v7

    .line 405
    iput v6, v2, Ls1/b$c;->c:I

    .line 407
    add-int/lit8 v1, v11, 0x1

    .line 409
    shr-int/lit8 v4, v0, 0xc

    .line 411
    and-int/lit8 v4, v4, 0x3f

    .line 413
    aget-byte v4, v8, v4

    .line 415
    aput-byte v4, v5, v11

    .line 417
    add-int/lit8 v4, v1, 0x1

    .line 419
    shr-int/lit8 v6, v0, 0x6

    .line 421
    and-int/lit8 v6, v6, 0x3f

    .line 423
    aget-byte v6, v8, v6

    .line 425
    aput-byte v6, v5, v1

    .line 427
    add-int/lit8 v1, v4, 0x1

    .line 429
    and-int/lit8 v0, v0, 0x3f

    .line 431
    aget-byte v0, v8, v0

    .line 433
    aput-byte v0, v5, v4

    .line 435
    iget-boolean v0, v2, Ls1/b$c;->e:Z

    .line 437
    if-eqz v0, :cond_1bb

    .line 439
    add-int/lit8 v0, v1, 0x1

    .line 441
    aput-byte v16, v5, v1

    .line 443
    move v1, v0

    .line 444
    :cond_1bb
    iget-boolean v0, v2, Ls1/b$c;->f:Z

    .line 446
    if-eqz v0, :cond_1e0

    .line 448
    iget-boolean v0, v2, Ls1/b$c;->g:Z

    .line 450
    if-eqz v0, :cond_1c8

    .line 452
    add-int/lit8 v0, v1, 0x1

    .line 454
    aput-byte v15, v5, v1

    .line 456
    move v1, v0

    .line 457
    :cond_1c8
    aput-byte v14, v5, v1

    .line 459
    goto :goto_1e0

    .line 460
    :cond_1cb
    iget-boolean v0, v2, Ls1/b$c;->f:Z

    .line 462
    if-eqz v0, :cond_1e0

    .line 464
    if-lez v11, :cond_1e0

    .line 466
    const/16 v0, 0x13

    .line 468
    if-eq v10, v0, :cond_1e0

    .line 470
    iget-boolean v0, v2, Ls1/b$c;->g:Z

    .line 472
    if-eqz v0, :cond_1de

    .line 474
    add-int/lit8 v0, v11, 0x1

    .line 476
    aput-byte v15, v5, v11

    .line 478
    move v11, v0

    .line 479
    :cond_1de
    aput-byte v14, v5, v11

    .line 481
    :cond_1e0
    :goto_1e0
    iput v10, v2, Ls1/b$c;->d:I

    .line 483
    iget-object v0, v3, Ls1/b$a;->a:[B

    .line 485
    return-object v0
.end method
