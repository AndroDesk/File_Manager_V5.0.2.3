.class public final Landroidx/constraintlayout/core/widgets/b;
.super Ljava/lang/Object;
.source "Chain.java"


# direct methods
.method public static a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/ArrayList;I)V
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/d;",
            "Landroidx/constraintlayout/core/c;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v10, p1

    .line 5
    move-object/from16 v11, p2

    .line 7
    const/4 v12, 0x2

    .line 8
    if-nez p3, :cond_12

    .line 10
    iget v1, v0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    .line 12
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/d;->E0:[Landroidx/constraintlayout/core/widgets/c;

    .line 14
    move v14, v1

    .line 15
    move-object v15, v2

    .line 16
    const/16 v16, 0x0

    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    iget v1, v0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    .line 21
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/d;->D0:[Landroidx/constraintlayout/core/widgets/c;

    .line 23
    move v14, v1

    .line 24
    move-object v15, v2

    .line 25
    move/from16 v16, v12

    .line 27
    :goto_1a
    const/4 v9, 0x0

    .line 28
    :goto_1b
    if-ge v9, v14, :cond_725

    .line 30
    aget-object v1, v15, v9

    .line 32
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->q:Z

    .line 34
    const/16 v17, 0x0

    .line 36
    const/16 v8, 0x8

    .line 38
    const/4 v4, 0x1

    .line 39
    if-nez v2, :cond_14c

    .line 41
    iget v2, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    .line 43
    mul-int/2addr v2, v12

    .line 44
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 46
    move-object v6, v5

    .line 47
    const/4 v7, 0x0

    .line 48
    :goto_2f
    if-nez v7, :cond_114

    .line 50
    iget v13, v1, Landroidx/constraintlayout/core/widgets/c;->i:I

    .line 52
    add-int/2addr v13, v4

    .line 53
    iput v13, v1, Landroidx/constraintlayout/core/widgets/c;->i:I

    .line 55
    iget-object v13, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 57
    iget v3, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    .line 59
    aput-object v17, v13, v3

    .line 61
    iget-object v13, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 63
    aput-object v17, v13, v3

    .line 65
    iget v13, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 67
    if-eq v13, v8, :cond_e1

    .line 69
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 72
    move-result-object v3

    .line 73
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 75
    if-eq v3, v13, :cond_4e

    .line 77
    iget v3, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    .line 79
    :cond_4e
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 81
    aget-object v3, v3, v2

    .line 83
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 86
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 88
    add-int/lit8 v19, v2, 0x1

    .line 90
    aget-object v3, v3, v19

    .line 92
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 95
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 97
    aget-object v3, v3, v2

    .line 99
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 102
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 104
    aget-object v3, v3, v19

    .line 106
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 109
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 111
    if-nez v3, :cond_72

    .line 113
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 115
    :cond_72
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 117
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 119
    iget v8, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    .line 121
    aget-object v3, v3, v8

    .line 123
    if-ne v3, v13, :cond_e1

    .line 125
    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    .line 127
    aget v4, v4, v8

    .line 129
    const/4 v12, 0x3

    .line 130
    if-eqz v4, :cond_88

    .line 132
    if-eq v4, v12, :cond_88

    .line 134
    const/4 v12, 0x2

    .line 135
    if-ne v4, v12, :cond_e1

    .line 137
    :cond_88
    iget v12, v1, Landroidx/constraintlayout/core/widgets/c;->j:I

    .line 139
    const/16 v20, 0x1

    .line 141
    add-int/lit8 v12, v12, 0x1

    .line 143
    iput v12, v1, Landroidx/constraintlayout/core/widgets/c;->j:I

    .line 145
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    .line 147
    aget v8, v12, v8

    .line 149
    const/4 v12, 0x0

    .line 150
    cmpl-float v23, v8, v12

    .line 152
    if-lez v23, :cond_9e

    .line 154
    iget v12, v1, Landroidx/constraintlayout/core/widgets/c;->k:F

    .line 156
    add-float/2addr v12, v8

    .line 157
    iput v12, v1, Landroidx/constraintlayout/core/widgets/c;->k:F

    .line 159
    :cond_9e
    iget v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 161
    move/from16 v23, v7

    .line 163
    const/16 v7, 0x8

    .line 165
    if-eq v12, v7, :cond_af

    .line 167
    if-ne v3, v13, :cond_af

    .line 169
    if-eqz v4, :cond_ad

    .line 171
    const/4 v3, 0x3

    .line 172
    if-ne v4, v3, :cond_af

    .line 174
    :cond_ad
    const/4 v3, 0x1

    .line 175
    goto :goto_b0

    .line 176
    :cond_af
    const/4 v3, 0x0

    .line 177
    :goto_b0
    if-eqz v3, :cond_ce

    .line 179
    const/4 v3, 0x0

    .line 180
    cmpg-float v4, v8, v3

    .line 182
    if-gez v4, :cond_bb

    .line 184
    const/4 v3, 0x1

    .line 185
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/c;->n:Z

    .line 187
    goto :goto_be

    .line 188
    :cond_bb
    const/4 v3, 0x1

    .line 189
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/c;->o:Z

    .line 191
    :goto_be
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->h:Ljava/util/ArrayList;

    .line 193
    if-nez v3, :cond_c9

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    .line 197
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->h:Ljava/util/ArrayList;

    .line 202
    :cond_c9
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->h:Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_ce
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 209
    if-nez v3, :cond_d4

    .line 211
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 213
    :cond_d4
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 215
    if-eqz v3, :cond_de

    .line 217
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 219
    iget v4, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    .line 221
    aput-object v5, v3, v4

    .line 223
    :cond_de
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 225
    goto :goto_e3

    .line 226
    :cond_e1
    move/from16 v23, v7

    .line 228
    :goto_e3
    if-eq v6, v5, :cond_eb

    .line 230
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 232
    iget v4, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    .line 234
    aput-object v5, v3, v4

    .line 236
    :cond_eb
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 238
    add-int/lit8 v4, v2, 0x1

    .line 240
    aget-object v3, v3, v4

    .line 242
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 244
    if-eqz v3, :cond_103

    .line 246
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 248
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 250
    aget-object v4, v4, v2

    .line 252
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 254
    if-eqz v4, :cond_103

    .line 256
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 258
    if-eq v4, v5, :cond_105

    .line 260
    :cond_103
    move-object/from16 v3, v17

    .line 262
    :cond_105
    if-eqz v3, :cond_10a

    .line 264
    move/from16 v7, v23

    .line 266
    goto :goto_10c

    .line 267
    :cond_10a
    move-object v3, v5

    .line 268
    const/4 v7, 0x1

    .line 269
    :goto_10c
    move-object v6, v5

    .line 270
    const/4 v4, 0x1

    .line 271
    const/16 v8, 0x8

    .line 273
    const/4 v12, 0x2

    .line 274
    move-object v5, v3

    .line 275
    goto/16 :goto_2f

    .line 277
    :cond_114
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 279
    if-eqz v3, :cond_11f

    .line 281
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 283
    aget-object v3, v3, v2

    .line 285
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 288
    :cond_11f
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/c;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 290
    if-eqz v3, :cond_12c

    .line 292
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 294
    add-int/lit8 v2, v2, 0x1

    .line 296
    aget-object v2, v3, v2

    .line 298
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 301
    :cond_12c
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 303
    iget v2, v1, Landroidx/constraintlayout/core/widgets/c;->l:I

    .line 305
    if-nez v2, :cond_139

    .line 307
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->m:Z

    .line 309
    if-eqz v2, :cond_139

    .line 311
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/c;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 313
    goto :goto_13d

    .line 314
    :cond_139
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/c;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 316
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/c;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 318
    :goto_13d
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->o:Z

    .line 320
    if-eqz v2, :cond_147

    .line 322
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->n:Z

    .line 324
    if-eqz v2, :cond_147

    .line 326
    const/4 v2, 0x1

    .line 327
    goto :goto_148

    .line 328
    :cond_147
    const/4 v2, 0x0

    .line 329
    :goto_148
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->p:Z

    .line 331
    const/4 v2, 0x1

    .line 332
    goto :goto_14d

    .line 333
    :cond_14c
    move v2, v4

    .line 334
    :goto_14d
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/c;->q:Z

    .line 336
    if-eqz v11, :cond_164

    .line 338
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/c;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 340
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 343
    move-result v2

    .line 344
    if-eqz v2, :cond_15a

    .line 346
    goto :goto_164

    .line 347
    :cond_15a
    move/from16 v26, v9

    .line 349
    move/from16 v30, v14

    .line 351
    move-object/from16 v28, v15

    .line 353
    const/16 v18, 0x2

    .line 355
    goto/16 :goto_717

    .line 357
    :cond_164
    :goto_164
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/c;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 359
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/c;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 361
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/c;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 363
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/c;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 365
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/c;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 367
    iget v3, v1, Landroidx/constraintlayout/core/widgets/c;->k:F

    .line 369
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 371
    aget-object v4, v4, p3

    .line 373
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 375
    if-ne v4, v5, :cond_17a

    .line 377
    const/4 v4, 0x1

    .line 378
    goto :goto_17b

    .line 379
    :cond_17a
    const/4 v4, 0x0

    .line 380
    :goto_17b
    if-nez p3, :cond_19b

    .line 382
    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:I

    .line 384
    const/4 v6, 0x1

    .line 385
    if-nez v5, :cond_185

    .line 387
    const/16 v20, 0x1

    .line 389
    goto :goto_187

    .line 390
    :cond_185
    const/16 v20, 0x0

    .line 392
    :goto_187
    if-ne v5, v6, :cond_18f

    .line 394
    move/from16 v21, v6

    .line 396
    move/from16 v22, v9

    .line 398
    const/4 v9, 0x2

    .line 399
    goto :goto_194

    .line 400
    :cond_18f
    move/from16 v22, v9

    .line 402
    const/4 v9, 0x2

    .line 403
    const/16 v21, 0x0

    .line 405
    :goto_194
    move/from16 v6, v21

    .line 407
    move/from16 v21, v20

    .line 409
    if-ne v5, v9, :cond_1b5

    .line 411
    goto :goto_1af

    .line 412
    :cond_19b
    move/from16 v22, v9

    .line 414
    const/4 v6, 0x1

    .line 415
    const/4 v9, 0x2

    .line 416
    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    .line 418
    if-nez v5, :cond_1a6

    .line 420
    move/from16 v21, v6

    .line 422
    goto :goto_1a8

    .line 423
    :cond_1a6
    const/16 v21, 0x0

    .line 425
    :goto_1a8
    if-ne v5, v6, :cond_1ac

    .line 427
    const/4 v6, 0x1

    .line 428
    goto :goto_1ad

    .line 429
    :cond_1ac
    const/4 v6, 0x0

    .line 430
    :goto_1ad
    if-ne v5, v9, :cond_1b5

    .line 432
    :goto_1af
    move/from16 v23, v21

    .line 434
    const/4 v5, 0x1

    .line 435
    :goto_1b2
    move/from16 v21, v6

    .line 437
    goto :goto_1b9

    .line 438
    :cond_1b5
    move/from16 v23, v21

    .line 440
    const/4 v5, 0x0

    .line 441
    goto :goto_1b2

    .line 442
    :goto_1b9
    move/from16 v25, v3

    .line 444
    move-object v9, v12

    .line 445
    const/4 v6, 0x0

    .line 446
    :goto_1bd
    if-nez v6, :cond_2a1

    .line 448
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 450
    aget-object v3, v3, v16

    .line 452
    if-eqz v5, :cond_1c8

    .line 454
    const/16 v27, 0x1

    .line 456
    goto :goto_1ca

    .line 457
    :cond_1c8
    const/16 v27, 0x4

    .line 459
    :goto_1ca
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 462
    move-result v28

    .line 463
    move/from16 v29, v6

    .line 465
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 467
    aget-object v6, v6, p3

    .line 469
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 471
    if-ne v6, v11, :cond_1e2

    .line 473
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    .line 475
    aget v6, v6, p3

    .line 477
    if-nez v6, :cond_1e2

    .line 479
    move/from16 v30, v14

    .line 481
    const/4 v6, 0x1

    .line 482
    goto :goto_1e5

    .line 483
    :cond_1e2
    move/from16 v30, v14

    .line 485
    const/4 v6, 0x0

    .line 486
    :goto_1e5
    iget-object v14, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 488
    if-eqz v14, :cond_1f1

    .line 490
    if-eq v9, v12, :cond_1f1

    .line 492
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 495
    move-result v14

    .line 496
    add-int v28, v14, v28

    .line 498
    :cond_1f1
    move/from16 v14, v28

    .line 500
    if-eqz v5, :cond_1fe

    .line 502
    if-eq v9, v12, :cond_1fe

    .line 504
    if-eq v9, v8, :cond_1fe

    .line 506
    move-object/from16 v28, v15

    .line 508
    const/16 v27, 0x8

    .line 510
    goto :goto_200

    .line 511
    :cond_1fe
    move-object/from16 v28, v15

    .line 513
    :goto_200
    iget-object v15, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 515
    if-eqz v15, :cond_23e

    .line 517
    if-ne v9, v8, :cond_213

    .line 519
    move-object/from16 v31, v2

    .line 521
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 523
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 525
    move-object/from16 v32, v12

    .line 527
    const/4 v12, 0x6

    .line 528
    invoke-virtual {v10, v2, v15, v14, v12}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 531
    goto :goto_220

    .line 532
    :cond_213
    move-object/from16 v31, v2

    .line 534
    move-object/from16 v32, v12

    .line 536
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 538
    iget-object v12, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 540
    const/16 v15, 0x8

    .line 542
    invoke-virtual {v10, v2, v12, v14, v15}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 545
    :goto_220
    if-eqz v6, :cond_226

    .line 547
    if-nez v5, :cond_226

    .line 549
    const/16 v27, 0x5

    .line 551
    :cond_226
    if-ne v9, v8, :cond_232

    .line 553
    if-eqz v5, :cond_232

    .line 555
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    .line 557
    aget-boolean v2, v2, p3

    .line 559
    if-eqz v2, :cond_232

    .line 561
    const/4 v2, 0x5

    .line 562
    goto :goto_234

    .line 563
    :cond_232
    move/from16 v2, v27

    .line 565
    :goto_234
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 567
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 569
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 571
    invoke-virtual {v10, v6, v3, v14, v2}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 574
    goto :goto_242

    .line 575
    :cond_23e
    move-object/from16 v31, v2

    .line 577
    move-object/from16 v32, v12

    .line 579
    :goto_242
    if-eqz v4, :cond_274

    .line 581
    iget v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 583
    const/16 v3, 0x8

    .line 585
    if-eq v2, v3, :cond_262

    .line 587
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 589
    aget-object v2, v2, p3

    .line 591
    if-ne v2, v11, :cond_262

    .line 593
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 595
    add-int/lit8 v3, v16, 0x1

    .line 597
    aget-object v3, v2, v3

    .line 599
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 601
    aget-object v2, v2, v16

    .line 603
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 605
    const/4 v6, 0x5

    .line 606
    const/4 v11, 0x0

    .line 607
    invoke-virtual {v10, v3, v2, v11, v6}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 610
    goto :goto_263

    .line 611
    :cond_262
    const/4 v11, 0x0

    .line 612
    :goto_263
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 614
    aget-object v2, v2, v16

    .line 616
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 618
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 620
    aget-object v3, v3, v16

    .line 622
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 624
    const/16 v6, 0x8

    .line 626
    invoke-virtual {v10, v2, v3, v11, v6}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 629
    :cond_274
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 631
    add-int/lit8 v3, v16, 0x1

    .line 633
    aget-object v2, v2, v3

    .line 635
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 637
    if-eqz v2, :cond_28c

    .line 639
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 641
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 643
    aget-object v3, v3, v16

    .line 645
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 647
    if-eqz v3, :cond_28c

    .line 649
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 651
    if-eq v3, v9, :cond_28e

    .line 653
    :cond_28c
    move-object/from16 v2, v17

    .line 655
    :cond_28e
    if-eqz v2, :cond_294

    .line 657
    move-object v9, v2

    .line 658
    move/from16 v6, v29

    .line 660
    goto :goto_295

    .line 661
    :cond_294
    const/4 v6, 0x1

    .line 662
    :goto_295
    move-object/from16 v11, p2

    .line 664
    move-object/from16 v15, v28

    .line 666
    move/from16 v14, v30

    .line 668
    move-object/from16 v2, v31

    .line 670
    move-object/from16 v12, v32

    .line 672
    goto/16 :goto_1bd

    .line 674
    :cond_2a1
    move-object/from16 v31, v2

    .line 676
    move-object/from16 v32, v12

    .line 678
    move/from16 v30, v14

    .line 680
    move-object/from16 v28, v15

    .line 682
    if-eqz v7, :cond_30c

    .line 684
    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 686
    add-int/lit8 v3, v16, 0x1

    .line 688
    aget-object v2, v2, v3

    .line 690
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 692
    if-eqz v2, :cond_30c

    .line 694
    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 696
    aget-object v2, v2, v3

    .line 698
    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 700
    aget-object v6, v6, p3

    .line 702
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 704
    if-ne v6, v9, :cond_2c9

    .line 706
    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    .line 708
    aget v6, v6, p3

    .line 710
    if-nez v6, :cond_2c9

    .line 712
    const/4 v6, 0x1

    .line 713
    goto :goto_2ca

    .line 714
    :cond_2c9
    const/4 v6, 0x0

    .line 715
    :goto_2ca
    if-eqz v6, :cond_2e2

    .line 717
    if-nez v5, :cond_2e2

    .line 719
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 721
    iget-object v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 723
    if-ne v9, v0, :cond_2e2

    .line 725
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 727
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 729
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 732
    move-result v11

    .line 733
    neg-int v11, v11

    .line 734
    const/4 v12, 0x5

    .line 735
    invoke-virtual {v10, v9, v6, v11, v12}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 738
    goto :goto_2f8

    .line 739
    :cond_2e2
    const/4 v12, 0x5

    .line 740
    if-eqz v5, :cond_2f8

    .line 742
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 744
    iget-object v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 746
    if-ne v9, v0, :cond_2f8

    .line 748
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 750
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 752
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 755
    move-result v11

    .line 756
    neg-int v11, v11

    .line 757
    const/4 v14, 0x4

    .line 758
    invoke-virtual {v10, v9, v6, v11, v14}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 761
    :cond_2f8
    :goto_2f8
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 763
    iget-object v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 765
    aget-object v3, v9, v3

    .line 767
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 769
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 771
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 774
    move-result v2

    .line 775
    neg-int v2, v2

    .line 776
    const/4 v9, 0x6

    .line 777
    invoke-virtual {v10, v6, v3, v2, v9}, Landroidx/constraintlayout/core/c;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 780
    goto :goto_30d

    .line 781
    :cond_30c
    const/4 v12, 0x5

    .line 782
    :goto_30d
    if-eqz v4, :cond_326

    .line 784
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 786
    add-int/lit8 v3, v16, 0x1

    .line 788
    aget-object v2, v2, v3

    .line 790
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 792
    iget-object v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 794
    aget-object v3, v4, v3

    .line 796
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 798
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 801
    move-result v3

    .line 802
    const/16 v6, 0x8

    .line 804
    invoke-virtual {v10, v2, v4, v3, v6}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 807
    :cond_326
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/c;->h:Ljava/util/ArrayList;

    .line 809
    if-eqz v2, :cond_43f

    .line 811
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 814
    move-result v3

    .line 815
    const/4 v4, 0x1

    .line 816
    if-le v3, v4, :cond_43f

    .line 818
    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/c;->n:Z

    .line 820
    if-eqz v6, :cond_33d

    .line 822
    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/c;->p:Z

    .line 824
    if-nez v6, :cond_33d

    .line 826
    iget v6, v1, Landroidx/constraintlayout/core/widgets/c;->j:I

    .line 828
    int-to-float v6, v6

    .line 829
    goto :goto_33f

    .line 830
    :cond_33d
    move/from16 v6, v25

    .line 832
    :goto_33f
    move-object/from16 v14, v17

    .line 834
    const/4 v9, 0x0

    .line 835
    const/4 v11, 0x0

    .line 836
    :goto_343
    if-ge v11, v3, :cond_43f

    .line 838
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 841
    move-result-object v15

    .line 842
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 844
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    .line 846
    aget v4, v4, p3

    .line 848
    const/16 v18, 0x0

    .line 850
    cmpg-float v25, v4, v18

    .line 852
    if-gez v25, :cond_36f

    .line 854
    iget-boolean v4, v1, Landroidx/constraintlayout/core/widgets/c;->p:Z

    .line 856
    if-eqz v4, :cond_36b

    .line 858
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 860
    add-int/lit8 v12, v16, 0x1

    .line 862
    aget-object v12, v4, v12

    .line 864
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 866
    aget-object v4, v4, v16

    .line 868
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 870
    const/4 v0, 0x0

    .line 871
    const/4 v15, 0x4

    .line 872
    invoke-virtual {v10, v12, v4, v0, v15}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 875
    goto :goto_388

    .line 876
    :cond_36b
    const/4 v0, 0x4

    .line 877
    const/high16 v4, 0x3f800000  # 1.0f

    .line 879
    goto :goto_370

    .line 880
    :cond_36f
    const/4 v0, 0x4

    .line 881
    :goto_370
    const/16 v18, 0x0

    .line 883
    cmpl-float v25, v4, v18

    .line 885
    if-nez v25, :cond_390

    .line 887
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 889
    add-int/lit8 v12, v16, 0x1

    .line 891
    aget-object v12, v4, v12

    .line 893
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 895
    aget-object v4, v4, v16

    .line 897
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 899
    const/4 v0, 0x0

    .line 900
    const/16 v15, 0x8

    .line 902
    invoke-virtual {v10, v12, v4, v0, v15}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 905
    :goto_388
    move-object/from16 v33, v2

    .line 907
    move/from16 v26, v3

    .line 909
    const/16 v18, 0x0

    .line 911
    goto/16 :goto_433

    .line 913
    :cond_390
    const/4 v0, 0x0

    .line 914
    if-eqz v14, :cond_425

    .line 916
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 918
    aget-object v0, v14, v16

    .line 920
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 922
    add-int/lit8 v26, v16, 0x1

    .line 924
    aget-object v14, v14, v26

    .line 926
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 928
    iget-object v12, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 930
    move-object/from16 v33, v2

    .line 932
    aget-object v2, v12, v16

    .line 934
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 936
    aget-object v12, v12, v26

    .line 938
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 940
    move/from16 v26, v3

    .line 942
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 945
    move-result-object v3

    .line 946
    move-object/from16 v34, v15

    .line 948
    const/4 v15, 0x0

    .line 949
    iput v15, v3, Landroidx/constraintlayout/core/b;->b:F

    .line 951
    cmpl-float v18, v6, v15

    .line 953
    const/high16 v15, -0x40800000  # -1.0f

    .line 955
    if-eqz v18, :cond_406

    .line 957
    cmpl-float v18, v9, v4

    .line 959
    if-nez v18, :cond_3c1

    .line 961
    goto :goto_406

    .line 962
    :cond_3c1
    const/16 v18, 0x0

    .line 964
    cmpl-float v35, v9, v18

    .line 966
    if-nez v35, :cond_3d4

    .line 968
    iget-object v2, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 970
    const/high16 v9, 0x3f800000  # 1.0f

    .line 972
    invoke-interface {v2, v0, v9}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 975
    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 977
    invoke-interface {v0, v14, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 980
    goto :goto_3e4

    .line 981
    :cond_3d4
    const/high16 v15, 0x3f800000  # 1.0f

    .line 983
    if-nez v25, :cond_3e7

    .line 985
    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 987
    invoke-interface {v0, v2, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 990
    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 992
    const/high16 v2, -0x40800000  # -1.0f

    .line 994
    invoke-interface {v0, v12, v2}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 997
    :goto_3e4
    move/from16 v25, v4

    .line 999
    goto :goto_421

    .line 1000
    :cond_3e7
    div-float/2addr v9, v6

    .line 1001
    div-float v25, v4, v6

    .line 1003
    div-float v9, v9, v25

    .line 1005
    move/from16 v25, v4

    .line 1007
    iget-object v4, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1009
    invoke-interface {v4, v0, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1012
    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1014
    const/high16 v4, -0x40800000  # -1.0f

    .line 1016
    invoke-interface {v0, v14, v4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1019
    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1021
    invoke-interface {v0, v12, v9}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1024
    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1026
    neg-float v4, v9

    .line 1027
    invoke-interface {v0, v2, v4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1030
    goto :goto_421

    .line 1031
    :cond_406
    :goto_406
    move/from16 v25, v4

    .line 1033
    move v4, v15

    .line 1034
    const/high16 v15, 0x3f800000  # 1.0f

    .line 1036
    const/16 v18, 0x0

    .line 1038
    iget-object v9, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1040
    invoke-interface {v9, v0, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1043
    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1045
    invoke-interface {v0, v14, v4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1048
    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1050
    invoke-interface {v0, v12, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1053
    iget-object v0, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1055
    invoke-interface {v0, v2, v4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1058
    :goto_421
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 1061
    goto :goto_42f

    .line 1062
    :cond_425
    move-object/from16 v33, v2

    .line 1064
    move/from16 v26, v3

    .line 1066
    move/from16 v25, v4

    .line 1068
    move-object/from16 v34, v15

    .line 1070
    const/16 v18, 0x0

    .line 1072
    :goto_42f
    move/from16 v9, v25

    .line 1074
    move-object/from16 v14, v34

    .line 1076
    :goto_433
    add-int/lit8 v11, v11, 0x1

    .line 1078
    move/from16 v3, v26

    .line 1080
    move-object/from16 v2, v33

    .line 1082
    const/4 v4, 0x1

    .line 1083
    const/4 v12, 0x5

    .line 1084
    move-object/from16 v0, p0

    .line 1086
    goto/16 :goto_343

    .line 1088
    :cond_43f
    if-eqz v8, :cond_4a5

    .line 1090
    if-eq v8, v7, :cond_445

    .line 1092
    if-eqz v5, :cond_4a5

    .line 1094
    :cond_445
    move-object/from16 v0, v32

    .line 1096
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1098
    aget-object v0, v0, v16

    .line 1100
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1102
    add-int/lit8 v2, v16, 0x1

    .line 1104
    aget-object v1, v1, v2

    .line 1106
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1108
    if-eqz v0, :cond_459

    .line 1110
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1112
    move-object v3, v0

    .line 1113
    goto :goto_45b

    .line 1114
    :cond_459
    move-object/from16 v3, v17

    .line 1116
    :goto_45b
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1118
    if-eqz v0, :cond_463

    .line 1120
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1122
    move-object v6, v0

    .line 1123
    goto :goto_465

    .line 1124
    :cond_463
    move-object/from16 v6, v17

    .line 1126
    :goto_465
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1128
    aget-object v0, v0, v16

    .line 1130
    if-eqz v7, :cond_46f

    .line 1132
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1134
    aget-object v1, v1, v2

    .line 1136
    :cond_46f
    if-eqz v3, :cond_49b

    .line 1138
    if-eqz v6, :cond_49b

    .line 1140
    if-nez p3, :cond_47a

    .line 1142
    move-object/from16 v2, v31

    .line 1144
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 1146
    goto :goto_47e

    .line 1147
    :cond_47a
    move-object/from16 v2, v31

    .line 1149
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 1151
    :goto_47e
    move v5, v2

    .line 1152
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1155
    move-result v4

    .line 1156
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1159
    move-result v9

    .line 1160
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1162
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1164
    const/4 v11, 0x7

    .line 1165
    move-object/from16 v1, p1

    .line 1167
    move-object v12, v7

    .line 1168
    move-object v7, v0

    .line 1169
    move-object v14, v8

    .line 1170
    move v8, v9

    .line 1171
    move/from16 v15, v22

    .line 1173
    const/16 v18, 0x2

    .line 1175
    move v9, v11

    .line 1176
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1179
    goto :goto_4a1

    .line 1180
    :cond_49b
    move-object v12, v7

    .line 1181
    move-object v14, v8

    .line 1182
    move/from16 v15, v22

    .line 1184
    const/16 v18, 0x2

    .line 1186
    :cond_4a1
    :goto_4a1
    move/from16 v26, v15

    .line 1188
    goto/16 :goto_6b9

    .line 1190
    :cond_4a5
    move-object v12, v7

    .line 1191
    move-object v14, v8

    .line 1192
    move/from16 v15, v22

    .line 1194
    move-object/from16 v0, v32

    .line 1196
    const/16 v18, 0x2

    .line 1198
    if-eqz v23, :cond_5a5

    .line 1200
    if-eqz v14, :cond_5a5

    .line 1202
    iget v2, v1, Landroidx/constraintlayout/core/widgets/c;->j:I

    .line 1204
    if-lez v2, :cond_4bc

    .line 1206
    iget v1, v1, Landroidx/constraintlayout/core/widgets/c;->i:I

    .line 1208
    if-ne v1, v2, :cond_4bc

    .line 1210
    const/16 v20, 0x1

    .line 1212
    goto :goto_4be

    .line 1213
    :cond_4bc
    const/16 v20, 0x0

    .line 1215
    :goto_4be
    move-object v9, v14

    .line 1216
    move-object v11, v9

    .line 1217
    :goto_4c0
    if-eqz v11, :cond_4a1

    .line 1219
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1221
    aget-object v1, v1, p3

    .line 1223
    move-object v8, v1

    .line 1224
    :goto_4c7
    if-eqz v8, :cond_4d4

    .line 1226
    iget v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 1228
    const/16 v7, 0x8

    .line 1230
    if-ne v1, v7, :cond_4d6

    .line 1232
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1234
    aget-object v8, v1, p3

    .line 1236
    goto :goto_4c7

    .line 1237
    :cond_4d4
    const/16 v7, 0x8

    .line 1239
    :cond_4d6
    if-nez v8, :cond_4e4

    .line 1241
    if-ne v11, v12, :cond_4db

    .line 1243
    goto :goto_4e4

    .line 1244
    :cond_4db
    move-object/from16 v19, v8

    .line 1246
    move-object/from16 v22, v9

    .line 1248
    move/from16 v26, v15

    .line 1250
    move v15, v7

    .line 1251
    goto/16 :goto_597

    .line 1253
    :cond_4e4
    :goto_4e4
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1255
    aget-object v1, v1, v16

    .line 1257
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1259
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1261
    if-eqz v3, :cond_4f1

    .line 1263
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1265
    goto :goto_4f3

    .line 1266
    :cond_4f1
    move-object/from16 v3, v17

    .line 1268
    :goto_4f3
    if-eq v9, v11, :cond_4fe

    .line 1270
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1272
    add-int/lit8 v4, v16, 0x1

    .line 1274
    aget-object v3, v3, v4

    .line 1276
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1278
    goto :goto_50d

    .line 1279
    :cond_4fe
    if-ne v11, v14, :cond_50d

    .line 1281
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1283
    aget-object v3, v3, v16

    .line 1285
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1287
    if-eqz v3, :cond_50b

    .line 1289
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1291
    goto :goto_50d

    .line 1292
    :cond_50b
    move-object/from16 v3, v17

    .line 1294
    :cond_50d
    :goto_50d
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1297
    move-result v1

    .line 1298
    iget-object v4, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1300
    add-int/lit8 v5, v16, 0x1

    .line 1302
    aget-object v4, v4, v5

    .line 1304
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1307
    move-result v4

    .line 1308
    if-eqz v8, :cond_524

    .line 1310
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1312
    aget-object v6, v6, v16

    .line 1314
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1316
    goto :goto_52e

    .line 1317
    :cond_524
    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1319
    aget-object v6, v6, v5

    .line 1321
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1323
    if-eqz v6, :cond_531

    .line 1325
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1327
    :goto_52e
    move-object/from16 v22, v8

    .line 1329
    goto :goto_535

    .line 1330
    :cond_531
    move-object/from16 v22, v8

    .line 1332
    move-object/from16 v7, v17

    .line 1334
    :goto_535
    iget-object v8, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1336
    aget-object v8, v8, v5

    .line 1338
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1340
    if-eqz v6, :cond_542

    .line 1342
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1345
    move-result v6

    .line 1346
    add-int/2addr v4, v6

    .line 1347
    :cond_542
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1349
    aget-object v6, v6, v5

    .line 1351
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1354
    move-result v6

    .line 1355
    add-int/2addr v6, v1

    .line 1356
    if-eqz v2, :cond_58f

    .line 1358
    if-eqz v3, :cond_58f

    .line 1360
    if-eqz v7, :cond_58f

    .line 1362
    if-eqz v8, :cond_58f

    .line 1364
    if-ne v11, v14, :cond_55e

    .line 1366
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1368
    aget-object v1, v1, v16

    .line 1370
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1373
    move-result v1

    .line 1374
    move v6, v1

    .line 1375
    :cond_55e
    if-ne v11, v12, :cond_56b

    .line 1377
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1379
    aget-object v1, v1, v5

    .line 1381
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1384
    move-result v1

    .line 1385
    move/from16 v24, v1

    .line 1387
    goto :goto_56d

    .line 1388
    :cond_56b
    move/from16 v24, v4

    .line 1390
    :goto_56d
    if-eqz v20, :cond_572

    .line 1392
    const/16 v25, 0x8

    .line 1394
    goto :goto_574

    .line 1395
    :cond_572
    const/16 v25, 0x5

    .line 1397
    :goto_574
    const/high16 v5, 0x3f000000  # 0.5f

    .line 1399
    move-object/from16 v1, p1

    .line 1401
    const/4 v4, 0x5

    .line 1402
    move/from16 v26, v15

    .line 1404
    move v15, v4

    .line 1405
    move v4, v6

    .line 1406
    move-object v6, v7

    .line 1407
    const/16 v19, 0x8

    .line 1409
    move-object v7, v8

    .line 1410
    move/from16 v15, v19

    .line 1412
    move-object/from16 v19, v22

    .line 1414
    move/from16 v8, v24

    .line 1416
    move-object/from16 v22, v9

    .line 1418
    move/from16 v9, v25

    .line 1420
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1423
    goto :goto_597

    .line 1424
    :cond_58f
    move/from16 v26, v15

    .line 1426
    move-object/from16 v19, v22

    .line 1428
    const/16 v15, 0x8

    .line 1430
    move-object/from16 v22, v9

    .line 1432
    :goto_597
    iget v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 1434
    if-eq v1, v15, :cond_59d

    .line 1436
    move-object v9, v11

    .line 1437
    goto :goto_59f

    .line 1438
    :cond_59d
    move-object/from16 v9, v22

    .line 1440
    :goto_59f
    move-object/from16 v11, v19

    .line 1442
    move/from16 v15, v26

    .line 1444
    goto/16 :goto_4c0

    .line 1446
    :cond_5a5
    move/from16 v26, v15

    .line 1448
    const/16 v15, 0x8

    .line 1450
    if-eqz v21, :cond_6b9

    .line 1452
    if-eqz v14, :cond_6b9

    .line 1454
    iget v2, v1, Landroidx/constraintlayout/core/widgets/c;->j:I

    .line 1456
    if-lez v2, :cond_5b8

    .line 1458
    iget v1, v1, Landroidx/constraintlayout/core/widgets/c;->i:I

    .line 1460
    if-ne v1, v2, :cond_5b8

    .line 1462
    const/16 v20, 0x1

    .line 1464
    goto :goto_5ba

    .line 1465
    :cond_5b8
    const/16 v20, 0x0

    .line 1467
    :goto_5ba
    move-object v9, v14

    .line 1468
    move-object v11, v9

    .line 1469
    :goto_5bc
    if-eqz v11, :cond_667

    .line 1471
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1473
    aget-object v1, v1, p3

    .line 1475
    :goto_5c2
    if-eqz v1, :cond_5cd

    .line 1477
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 1479
    if-ne v2, v15, :cond_5cd

    .line 1481
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1483
    aget-object v1, v1, p3

    .line 1485
    goto :goto_5c2

    .line 1486
    :cond_5cd
    if-eq v11, v14, :cond_654

    .line 1488
    if-eq v11, v12, :cond_654

    .line 1490
    if-eqz v1, :cond_654

    .line 1492
    if-ne v1, v12, :cond_5d8

    .line 1494
    move-object/from16 v8, v17

    .line 1496
    goto :goto_5d9

    .line 1497
    :cond_5d8
    move-object v8, v1

    .line 1498
    :goto_5d9
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1500
    aget-object v1, v1, v16

    .line 1502
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1504
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1506
    add-int/lit8 v4, v16, 0x1

    .line 1508
    aget-object v3, v3, v4

    .line 1510
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1512
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1515
    move-result v1

    .line 1516
    iget-object v5, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1518
    aget-object v5, v5, v4

    .line 1520
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1523
    move-result v5

    .line 1524
    if-eqz v8, :cond_605

    .line 1526
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1528
    aget-object v6, v6, v16

    .line 1530
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1532
    iget-object v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1534
    if-eqz v15, :cond_602

    .line 1536
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1538
    goto :goto_616

    .line 1539
    :cond_602
    move-object/from16 v15, v17

    .line 1541
    goto :goto_616

    .line 1542
    :cond_605
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1544
    aget-object v6, v6, v16

    .line 1546
    if-eqz v6, :cond_60e

    .line 1548
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1550
    goto :goto_610

    .line 1551
    :cond_60e
    move-object/from16 v7, v17

    .line 1553
    :goto_610
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1555
    aget-object v15, v15, v4

    .line 1557
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1559
    :goto_616
    if-eqz v6, :cond_620

    .line 1561
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1564
    move-result v6

    .line 1565
    add-int/2addr v6, v5

    .line 1566
    move/from16 v22, v6

    .line 1568
    goto :goto_622

    .line 1569
    :cond_620
    move/from16 v22, v5

    .line 1571
    :goto_622
    iget-object v5, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1573
    aget-object v4, v5, v4

    .line 1575
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1578
    move-result v4

    .line 1579
    add-int/2addr v4, v1

    .line 1580
    if-eqz v20, :cond_630

    .line 1582
    const/16 v24, 0x8

    .line 1584
    goto :goto_632

    .line 1585
    :cond_630
    const/16 v24, 0x4

    .line 1587
    :goto_632
    if-eqz v2, :cond_64d

    .line 1589
    if-eqz v3, :cond_64d

    .line 1591
    if-eqz v7, :cond_64d

    .line 1593
    if-eqz v15, :cond_64d

    .line 1595
    const/high16 v5, 0x3f000000  # 0.5f

    .line 1597
    move-object/from16 v1, p1

    .line 1599
    const/16 v25, 0x4

    .line 1601
    move-object v6, v7

    .line 1602
    move-object v7, v15

    .line 1603
    move-object v15, v8

    .line 1604
    move/from16 v8, v22

    .line 1606
    move-object/from16 v22, v9

    .line 1608
    move/from16 v9, v24

    .line 1610
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1613
    goto :goto_652

    .line 1614
    :cond_64d
    move-object v15, v8

    .line 1615
    move-object/from16 v22, v9

    .line 1617
    const/16 v25, 0x4

    .line 1619
    :goto_652
    move-object v8, v15

    .line 1620
    goto :goto_659

    .line 1621
    :cond_654
    move-object/from16 v22, v9

    .line 1623
    const/16 v25, 0x4

    .line 1625
    move-object v8, v1

    .line 1626
    :goto_659
    iget v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 1628
    const/16 v2, 0x8

    .line 1630
    if-eq v1, v2, :cond_661

    .line 1632
    move-object v9, v11

    .line 1633
    goto :goto_663

    .line 1634
    :cond_661
    move-object/from16 v9, v22

    .line 1636
    :goto_663
    move v15, v2

    .line 1637
    move-object v11, v8

    .line 1638
    goto/16 :goto_5bc

    .line 1640
    :cond_667
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1642
    aget-object v1, v1, v16

    .line 1644
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1646
    aget-object v0, v0, v16

    .line 1648
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1650
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1652
    add-int/lit8 v3, v16, 0x1

    .line 1654
    aget-object v11, v2, v3

    .line 1656
    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1658
    aget-object v2, v2, v3

    .line 1660
    iget-object v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1662
    if-eqz v0, :cond_6a8

    .line 1664
    if-eq v14, v12, :cond_68e

    .line 1666
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1668
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1670
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1673
    move-result v1

    .line 1674
    const/4 v3, 0x5

    .line 1675
    invoke-virtual {v10, v2, v0, v1, v3}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1678
    goto :goto_6a8

    .line 1679
    :cond_68e
    if-eqz v15, :cond_6a8

    .line 1681
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1683
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1685
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1688
    move-result v4

    .line 1689
    const/high16 v5, 0x3f000000  # 0.5f

    .line 1691
    iget-object v6, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1693
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1695
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1698
    move-result v8

    .line 1699
    const/4 v9, 0x5

    .line 1700
    move-object/from16 v1, p1

    .line 1702
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1705
    :cond_6a8
    :goto_6a8
    if-eqz v15, :cond_6b9

    .line 1707
    if-eq v14, v12, :cond_6b9

    .line 1709
    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1711
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1713
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1716
    move-result v2

    .line 1717
    neg-int v2, v2

    .line 1718
    const/4 v3, 0x5

    .line 1719
    invoke-virtual {v10, v0, v1, v2, v3}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1722
    :cond_6b9
    :goto_6b9
    if-nez v23, :cond_6bd

    .line 1724
    if-eqz v21, :cond_717

    .line 1726
    :cond_6bd
    if-eqz v14, :cond_717

    .line 1728
    if-eq v14, v12, :cond_717

    .line 1730
    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1732
    aget-object v1, v0, v16

    .line 1734
    if-nez v12, :cond_6c9

    .line 1736
    move-object v8, v14

    .line 1737
    goto :goto_6ca

    .line 1738
    :cond_6c9
    move-object v8, v12

    .line 1739
    :goto_6ca
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1741
    add-int/lit8 v3, v16, 0x1

    .line 1743
    aget-object v2, v2, v3

    .line 1745
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1747
    if-eqz v4, :cond_6d7

    .line 1749
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1751
    goto :goto_6d9

    .line 1752
    :cond_6d7
    move-object/from16 v4, v17

    .line 1754
    :goto_6d9
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1756
    if-eqz v5, :cond_6e0

    .line 1758
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1760
    goto :goto_6e2

    .line 1761
    :cond_6e0
    move-object/from16 v5, v17

    .line 1763
    :goto_6e2
    if-eq v13, v8, :cond_6f3

    .line 1765
    iget-object v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1767
    aget-object v5, v5, v3

    .line 1769
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1771
    if-eqz v5, :cond_6f0

    .line 1773
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1775
    move-object/from16 v17, v5

    .line 1777
    :cond_6f0
    move-object/from16 v6, v17

    .line 1779
    goto :goto_6f4

    .line 1780
    :cond_6f3
    move-object v6, v5

    .line 1781
    :goto_6f4
    if-ne v14, v8, :cond_6f8

    .line 1783
    aget-object v2, v0, v3

    .line 1785
    :cond_6f8
    if-eqz v4, :cond_717

    .line 1787
    if-eqz v6, :cond_717

    .line 1789
    const/high16 v5, 0x3f000000  # 0.5f

    .line 1791
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1794
    move-result v0

    .line 1795
    iget-object v7, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1797
    aget-object v3, v7, v3

    .line 1799
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1802
    move-result v8

    .line 1803
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1805
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 1807
    const/4 v9, 0x5

    .line 1808
    move-object/from16 v1, p1

    .line 1810
    move-object v2, v3

    .line 1811
    move-object v3, v4

    .line 1812
    move v4, v0

    .line 1813
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1816
    :cond_717
    :goto_717
    add-int/lit8 v9, v26, 0x1

    .line 1818
    move-object/from16 v0, p0

    .line 1820
    move-object/from16 v11, p2

    .line 1822
    move/from16 v12, v18

    .line 1824
    move-object/from16 v15, v28

    .line 1826
    move/from16 v14, v30

    .line 1828
    goto/16 :goto_1b

    .line 1830
    :cond_725
    return-void
.end method
