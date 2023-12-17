.class public final Lx/a;
.super Ljava/lang/Object;
.source "CustomSupport.java"


# direct methods
.method public static a(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x1f

    not-int v0, v0

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, -0xff

    shr-int/lit8 v0, p0, 0x1f

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static b(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "\""

    .line 7
    const-string v3, " on View \""

    .line 9
    const-string v4, "CustomSupport"

    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v5

    .line 15
    const-string v6, "set"

    .line 17
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v6

    .line 21
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v6

    .line 30
    :try_start_1d
    sget-object v7, Lx/a$a;->a:[I

    .line 32
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 34
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v8

    .line 38
    aget v7, v7, v8

    .line 40
    const/4 v8, 0x3

    .line 41
    const/4 v9, 0x2

    .line 42
    const-wide v10, 0x3fdd1745d1745d17L  # 0.45454545454545453

    .line 47
    const/high16 v12, 0x437f0000  # 255.0f

    .line 49
    const/4 v13, 0x1

    .line 50
    const/4 v14, 0x0

    .line 51
    packed-switch v7, :pswitch_data_1a8

    .line 54
    goto/16 :goto_1a7

    .line 56
    :pswitch_37  #0x7
    new-array v0, v13, [Ljava/lang/Class;

    .line 58
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 60
    aput-object v7, v0, v14

    .line 62
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    move-result-object v0

    .line 66
    new-array v5, v13, [Ljava/lang/Object;

    .line 68
    aget v7, p2, v14

    .line 70
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    move-result-object v7

    .line 74
    aput-object v7, v5, v14

    .line 76
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    goto/16 :goto_1a7

    .line 81
    :pswitch_50  #0x6
    new-array v0, v13, [Ljava/lang/Class;

    .line 83
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 85
    aput-object v7, v0, v14

    .line 87
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    move-result-object v0

    .line 91
    new-array v5, v13, [Ljava/lang/Object;

    .line 93
    aget v7, p2, v14

    .line 95
    const/high16 v8, 0x3f000000  # 0.5f

    .line 97
    cmpl-float v7, v7, v8

    .line 99
    if-lez v7, :cond_65

    .line 101
    goto :goto_66

    .line 102
    :cond_65
    move v13, v14

    .line 103
    :goto_66
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    move-result-object v7

    .line 107
    aput-object v7, v5, v14

    .line 109
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    goto/16 :goto_1a7

    .line 114
    :pswitch_71  #0x5
    new-instance v5, Ljava/lang/RuntimeException;

    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v8, "unable to interpolate strings "

    .line 123
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->b:Ljava/lang/String;

    .line 128
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 138
    throw v5

    .line 139
    :pswitch_8a  #0x4
    new-array v0, v13, [Ljava/lang/Class;

    .line 141
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 143
    aput-object v7, v0, v14

    .line 145
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 148
    move-result-object v0

    .line 149
    aget v5, p2, v14

    .line 151
    float-to-double v14, v5

    .line 152
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 155
    move-result-wide v14

    .line 156
    double-to-float v5, v14

    .line 157
    mul-float/2addr v5, v12

    .line 158
    float-to-int v5, v5

    .line 159
    invoke-static {v5}, Lx/a;->a(I)I

    .line 162
    move-result v5

    .line 163
    aget v7, p2, v13

    .line 165
    float-to-double v13, v7

    .line 166
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 169
    move-result-wide v13

    .line 170
    double-to-float v7, v13

    .line 171
    mul-float/2addr v7, v12

    .line 172
    float-to-int v7, v7

    .line 173
    invoke-static {v7}, Lx/a;->a(I)I

    .line 176
    move-result v7

    .line 177
    aget v9, p2, v9

    .line 179
    float-to-double v13, v9

    .line 180
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 183
    move-result-wide v9

    .line 184
    double-to-float v9, v9

    .line 185
    mul-float/2addr v9, v12

    .line 186
    float-to-int v9, v9

    .line 187
    invoke-static {v9}, Lx/a;->a(I)I

    .line 190
    move-result v9

    .line 191
    aget v8, p2, v8

    .line 193
    mul-float/2addr v8, v12

    .line 194
    float-to-int v8, v8

    .line 195
    invoke-static {v8}, Lx/a;->a(I)I

    .line 198
    move-result v8

    .line 199
    shl-int/lit8 v8, v8, 0x18

    .line 201
    shl-int/lit8 v5, v5, 0x10

    .line 203
    or-int/2addr v5, v8

    .line 204
    shl-int/lit8 v7, v7, 0x8

    .line 206
    or-int/2addr v5, v7

    .line 207
    or-int/2addr v5, v9

    .line 208
    const/4 v7, 0x1

    .line 209
    new-array v7, v7, [Ljava/lang/Object;

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    move-result-object v5

    .line 215
    const/4 v8, 0x0

    .line 216
    aput-object v5, v7, v8

    .line 218
    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    goto/16 :goto_1a7

    .line 223
    :pswitch_de  #0x3
    new-array v0, v13, [Ljava/lang/Class;

    .line 225
    const-class v7, Landroid/graphics/drawable/Drawable;

    .line 227
    const/4 v8, 0x0

    .line 228
    aput-object v7, v0, v8

    .line 230
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 233
    move-result-object v0

    .line 234
    aget v5, p2, v8

    .line 236
    float-to-double v7, v5

    .line 237
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 240
    move-result-wide v7

    .line 241
    double-to-float v5, v7

    .line 242
    mul-float/2addr v5, v12

    .line 243
    float-to-int v5, v5

    .line 244
    invoke-static {v5}, Lx/a;->a(I)I

    .line 247
    move-result v5

    .line 248
    const/4 v7, 0x1

    .line 249
    aget v7, p2, v7

    .line 251
    float-to-double v7, v7

    .line 252
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 255
    move-result-wide v7

    .line 256
    double-to-float v7, v7

    .line 257
    mul-float/2addr v7, v12

    .line 258
    float-to-int v7, v7

    .line 259
    invoke-static {v7}, Lx/a;->a(I)I

    .line 262
    move-result v7

    .line 263
    aget v8, p2, v9

    .line 265
    float-to-double v8, v8

    .line 266
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 269
    move-result-wide v8

    .line 270
    double-to-float v8, v8

    .line 271
    mul-float/2addr v8, v12

    .line 272
    float-to-int v8, v8

    .line 273
    invoke-static {v8}, Lx/a;->a(I)I

    .line 276
    move-result v8

    .line 277
    const/4 v9, 0x3

    .line 278
    aget v9, p2, v9

    .line 280
    mul-float/2addr v9, v12

    .line 281
    float-to-int v9, v9

    .line 282
    invoke-static {v9}, Lx/a;->a(I)I

    .line 285
    move-result v9

    .line 286
    shl-int/lit8 v9, v9, 0x18

    .line 288
    shl-int/lit8 v5, v5, 0x10

    .line 290
    or-int/2addr v5, v9

    .line 291
    shl-int/lit8 v7, v7, 0x8

    .line 293
    or-int/2addr v5, v7

    .line 294
    or-int/2addr v5, v8

    .line 295
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 297
    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 300
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 303
    const/4 v5, 0x1

    .line 304
    new-array v5, v5, [Ljava/lang/Object;

    .line 306
    const/4 v8, 0x0

    .line 307
    aput-object v7, v5, v8

    .line 309
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    goto :goto_1a7

    .line 313
    :pswitch_138  #0x2
    new-array v0, v13, [Ljava/lang/Class;

    .line 315
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 317
    const/4 v8, 0x0

    .line 318
    aput-object v7, v0, v8

    .line 320
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 323
    move-result-object v0

    .line 324
    new-array v5, v13, [Ljava/lang/Object;

    .line 326
    aget v7, p2, v8

    .line 328
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 331
    move-result-object v7

    .line 332
    aput-object v7, v5, v8

    .line 334
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    goto :goto_1a7

    .line 338
    :pswitch_151  #0x1
    new-array v0, v13, [Ljava/lang/Class;

    .line 340
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 342
    const/4 v8, 0x0

    .line 343
    aput-object v7, v0, v8

    .line 345
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 348
    move-result-object v0

    .line 349
    new-array v5, v13, [Ljava/lang/Object;

    .line 351
    aget v7, p2, v8

    .line 353
    float-to-int v7, v7

    .line 354
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    move-result-object v7

    .line 358
    aput-object v7, v5, v8

    .line 360
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_16a} :catch_18c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_16a} :catch_170
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_16a} :catch_16b

    .line 363
    goto :goto_1a7

    .line 364
    :catch_16b
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 368
    goto :goto_1a7

    .line 369
    :catch_170
    move-exception v0

    .line 370
    const-string v5, "cannot access method "

    .line 372
    invoke-static {v5, v6, v3}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    move-result-object v3

    .line 376
    invoke-static/range {p1 .. p1}, Ly/a;->c(Landroid/view/View;)Ljava/lang/String;

    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    move-result-object v1

    .line 390
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 396
    goto :goto_1a7

    .line 397
    :catch_18c
    move-exception v0

    .line 398
    const-string v5, "no method "

    .line 400
    invoke-static {v5, v6, v3}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    move-result-object v3

    .line 404
    invoke-static/range {p1 .. p1}, Ly/a;->c(Landroid/view/View;)Ljava/lang/String;

    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    move-result-object v1

    .line 418
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 424
    :goto_1a7
    return-void

    .line 425
    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_151  #00000001
        :pswitch_138  #00000002
        :pswitch_de  #00000003
        :pswitch_8a  #00000004
        :pswitch_71  #00000005
        :pswitch_50  #00000006
        :pswitch_37  #00000007
    .end packed-switch
.end method
