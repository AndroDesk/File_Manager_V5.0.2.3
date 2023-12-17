.class public Ljcifs/util/MD4;
.super Ljava/security/MessageDigest;
.source "MD4.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I = 0x40


# instance fields
.field private X:[I

.field private buffer:[B

.field private context:[I

.field private count:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "MD4"

    .line 1
    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Ljcifs/util/MD4;->X:[I

    .line 5
    invoke-virtual {p0}, Ljcifs/util/MD4;->engineReset()V

    return-void
.end method

.method private constructor <init>(Ljcifs/util/MD4;)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljcifs/util/MD4;-><init>()V

    .line 7
    iget-object v0, p1, Ljcifs/util/MD4;->context:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->context:[I

    .line 8
    iget-object v0, p1, Ljcifs/util/MD4;->buffer:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    .line 9
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

    .line 1
    move-object/from16 v7, p0

    .line 3
    const/4 v8, 0x0

    .line 4
    move/from16 v0, p2

    .line 6
    move v1, v8

    .line 7
    :goto_6
    const/16 v2, 0x10

    .line 9
    const/16 v9, 0x8

    .line 11
    if-lt v1, v2, :cond_355

    .line 13
    iget-object v0, v7, Ljcifs/util/MD4;->context:[I

    .line 15
    aget v1, v0, v8

    .line 17
    const/4 v10, 0x1

    .line 18
    aget v11, v0, v10

    .line 20
    const/4 v12, 0x2

    .line 21
    aget v13, v0, v12

    .line 23
    const/4 v14, 0x3

    .line 24
    aget v15, v0, v14

    .line 26
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 28
    aget v5, v0, v8

    .line 30
    const/4 v6, 0x3

    .line 31
    move-object/from16 v0, p0

    .line 33
    move v2, v11

    .line 34
    move v3, v13

    .line 35
    move v4, v15

    .line 36
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 39
    move-result v16

    .line 40
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 42
    aget v5, v0, v10

    .line 44
    const/4 v6, 0x7

    .line 45
    move-object/from16 v0, p0

    .line 47
    move v1, v15

    .line 48
    move/from16 v2, v16

    .line 50
    move v3, v11

    .line 51
    move v4, v13

    .line 52
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 55
    move-result v15

    .line 56
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 58
    aget v5, v0, v12

    .line 60
    const/16 v6, 0xb

    .line 62
    move-object/from16 v0, p0

    .line 64
    move v1, v13

    .line 65
    move v2, v15

    .line 66
    move/from16 v3, v16

    .line 68
    move v4, v11

    .line 69
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 72
    move-result v13

    .line 73
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 75
    aget v5, v0, v14

    .line 77
    const/16 v6, 0x13

    .line 79
    move-object/from16 v0, p0

    .line 81
    move v1, v11

    .line 82
    move v2, v13

    .line 83
    move v3, v15

    .line 84
    move/from16 v4, v16

    .line 86
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 89
    move-result v11

    .line 90
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 92
    const/16 v17, 0x4

    .line 94
    aget v5, v0, v17

    .line 96
    const/4 v6, 0x3

    .line 97
    move-object/from16 v0, p0

    .line 99
    move/from16 v1, v16

    .line 101
    move v2, v11

    .line 102
    move v3, v13

    .line 103
    move v4, v15

    .line 104
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 107
    move-result v16

    .line 108
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 110
    const/16 v18, 0x5

    .line 112
    aget v5, v0, v18

    .line 114
    const/4 v6, 0x7

    .line 115
    move-object/from16 v0, p0

    .line 117
    move v1, v15

    .line 118
    move/from16 v2, v16

    .line 120
    move v3, v11

    .line 121
    move v4, v13

    .line 122
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 125
    move-result v15

    .line 126
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 128
    const/16 v19, 0x6

    .line 130
    aget v5, v0, v19

    .line 132
    const/16 v6, 0xb

    .line 134
    move-object/from16 v0, p0

    .line 136
    move v1, v13

    .line 137
    move v2, v15

    .line 138
    move/from16 v3, v16

    .line 140
    move v4, v11

    .line 141
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 144
    move-result v13

    .line 145
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 147
    const/16 v20, 0x7

    .line 149
    aget v5, v0, v20

    .line 151
    const/16 v6, 0x13

    .line 153
    move-object/from16 v0, p0

    .line 155
    move v1, v11

    .line 156
    move v2, v13

    .line 157
    move v3, v15

    .line 158
    move/from16 v4, v16

    .line 160
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 163
    move-result v11

    .line 164
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 166
    aget v5, v0, v9

    .line 168
    const/4 v6, 0x3

    .line 169
    move-object/from16 v0, p0

    .line 171
    move/from16 v1, v16

    .line 173
    move v2, v11

    .line 174
    move v3, v13

    .line 175
    move v4, v15

    .line 176
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 179
    move-result v16

    .line 180
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 182
    const/16 v21, 0x9

    .line 184
    aget v5, v0, v21

    .line 186
    const/4 v6, 0x7

    .line 187
    move-object/from16 v0, p0

    .line 189
    move v1, v15

    .line 190
    move/from16 v2, v16

    .line 192
    move v3, v11

    .line 193
    move v4, v13

    .line 194
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 197
    move-result v15

    .line 198
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 200
    const/16 v22, 0xa

    .line 202
    aget v5, v0, v22

    .line 204
    const/16 v6, 0xb

    .line 206
    move-object/from16 v0, p0

    .line 208
    move v1, v13

    .line 209
    move v2, v15

    .line 210
    move/from16 v3, v16

    .line 212
    move v4, v11

    .line 213
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 216
    move-result v13

    .line 217
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 219
    const/16 v23, 0xb

    .line 221
    aget v5, v0, v23

    .line 223
    const/16 v6, 0x13

    .line 225
    move-object/from16 v0, p0

    .line 227
    move v1, v11

    .line 228
    move v2, v13

    .line 229
    move v3, v15

    .line 230
    move/from16 v4, v16

    .line 232
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 235
    move-result v11

    .line 236
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 238
    const/16 v24, 0xc

    .line 240
    aget v5, v0, v24

    .line 242
    const/4 v6, 0x3

    .line 243
    move-object/from16 v0, p0

    .line 245
    move/from16 v1, v16

    .line 247
    move v2, v11

    .line 248
    move v3, v13

    .line 249
    move v4, v15

    .line 250
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 253
    move-result v16

    .line 254
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 256
    const/16 v25, 0xd

    .line 258
    aget v5, v0, v25

    .line 260
    const/4 v6, 0x7

    .line 261
    move-object/from16 v0, p0

    .line 263
    move v1, v15

    .line 264
    move/from16 v2, v16

    .line 266
    move v3, v11

    .line 267
    move v4, v13

    .line 268
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 271
    move-result v15

    .line 272
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 274
    const/16 v26, 0xe

    .line 276
    aget v5, v0, v26

    .line 278
    const/16 v6, 0xb

    .line 280
    move-object/from16 v0, p0

    .line 282
    move v1, v13

    .line 283
    move v2, v15

    .line 284
    move/from16 v3, v16

    .line 286
    move v4, v11

    .line 287
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 290
    move-result v13

    .line 291
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 293
    const/16 v27, 0xf

    .line 295
    aget v5, v0, v27

    .line 297
    const/16 v6, 0x13

    .line 299
    move-object/from16 v0, p0

    .line 301
    move v1, v11

    .line 302
    move v2, v13

    .line 303
    move v3, v15

    .line 304
    move/from16 v4, v16

    .line 306
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    .line 309
    move-result v11

    .line 310
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 312
    aget v5, v0, v8

    .line 314
    const/4 v6, 0x3

    .line 315
    move-object/from16 v0, p0

    .line 317
    move/from16 v1, v16

    .line 319
    move v2, v11

    .line 320
    move v3, v13

    .line 321
    move v4, v15

    .line 322
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 325
    move-result v16

    .line 326
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 328
    aget v5, v0, v17

    .line 330
    const/4 v6, 0x5

    .line 331
    move-object/from16 v0, p0

    .line 333
    move v1, v15

    .line 334
    move/from16 v2, v16

    .line 336
    move v3, v11

    .line 337
    move v4, v13

    .line 338
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 341
    move-result v15

    .line 342
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 344
    aget v5, v0, v9

    .line 346
    const/16 v6, 0x9

    .line 348
    move-object/from16 v0, p0

    .line 350
    move v1, v13

    .line 351
    move v2, v15

    .line 352
    move/from16 v3, v16

    .line 354
    move v4, v11

    .line 355
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 358
    move-result v13

    .line 359
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 361
    aget v5, v0, v24

    .line 363
    const/16 v6, 0xd

    .line 365
    move-object/from16 v0, p0

    .line 367
    move v1, v11

    .line 368
    move v2, v13

    .line 369
    move v3, v15

    .line 370
    move/from16 v4, v16

    .line 372
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 375
    move-result v11

    .line 376
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 378
    aget v5, v0, v10

    .line 380
    const/4 v6, 0x3

    .line 381
    move-object/from16 v0, p0

    .line 383
    move/from16 v1, v16

    .line 385
    move v2, v11

    .line 386
    move v3, v13

    .line 387
    move v4, v15

    .line 388
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 391
    move-result v16

    .line 392
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 394
    aget v5, v0, v18

    .line 396
    const/4 v6, 0x5

    .line 397
    move-object/from16 v0, p0

    .line 399
    move v1, v15

    .line 400
    move/from16 v2, v16

    .line 402
    move v3, v11

    .line 403
    move v4, v13

    .line 404
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 407
    move-result v15

    .line 408
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 410
    aget v5, v0, v21

    .line 412
    const/16 v6, 0x9

    .line 414
    move-object/from16 v0, p0

    .line 416
    move v1, v13

    .line 417
    move v2, v15

    .line 418
    move/from16 v3, v16

    .line 420
    move v4, v11

    .line 421
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 424
    move-result v13

    .line 425
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 427
    aget v5, v0, v25

    .line 429
    const/16 v6, 0xd

    .line 431
    move-object/from16 v0, p0

    .line 433
    move v1, v11

    .line 434
    move v2, v13

    .line 435
    move v3, v15

    .line 436
    move/from16 v4, v16

    .line 438
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 441
    move-result v11

    .line 442
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 444
    aget v5, v0, v12

    .line 446
    const/4 v6, 0x3

    .line 447
    move-object/from16 v0, p0

    .line 449
    move/from16 v1, v16

    .line 451
    move v2, v11

    .line 452
    move v3, v13

    .line 453
    move v4, v15

    .line 454
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 457
    move-result v16

    .line 458
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 460
    aget v5, v0, v19

    .line 462
    const/4 v6, 0x5

    .line 463
    move-object/from16 v0, p0

    .line 465
    move v1, v15

    .line 466
    move/from16 v2, v16

    .line 468
    move v3, v11

    .line 469
    move v4, v13

    .line 470
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 473
    move-result v15

    .line 474
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 476
    aget v5, v0, v22

    .line 478
    const/16 v6, 0x9

    .line 480
    move-object/from16 v0, p0

    .line 482
    move v1, v13

    .line 483
    move v2, v15

    .line 484
    move/from16 v3, v16

    .line 486
    move v4, v11

    .line 487
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 490
    move-result v13

    .line 491
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 493
    aget v5, v0, v26

    .line 495
    const/16 v6, 0xd

    .line 497
    move-object/from16 v0, p0

    .line 499
    move v1, v11

    .line 500
    move v2, v13

    .line 501
    move v3, v15

    .line 502
    move/from16 v4, v16

    .line 504
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 507
    move-result v11

    .line 508
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 510
    aget v5, v0, v14

    .line 512
    const/4 v6, 0x3

    .line 513
    move-object/from16 v0, p0

    .line 515
    move/from16 v1, v16

    .line 517
    move v2, v11

    .line 518
    move v3, v13

    .line 519
    move v4, v15

    .line 520
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 523
    move-result v16

    .line 524
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 526
    aget v5, v0, v20

    .line 528
    const/4 v6, 0x5

    .line 529
    move-object/from16 v0, p0

    .line 531
    move v1, v15

    .line 532
    move/from16 v2, v16

    .line 534
    move v3, v11

    .line 535
    move v4, v13

    .line 536
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 539
    move-result v15

    .line 540
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 542
    aget v5, v0, v23

    .line 544
    const/16 v6, 0x9

    .line 546
    move-object/from16 v0, p0

    .line 548
    move v1, v13

    .line 549
    move v2, v15

    .line 550
    move/from16 v3, v16

    .line 552
    move v4, v11

    .line 553
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 556
    move-result v13

    .line 557
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 559
    aget v5, v0, v27

    .line 561
    const/16 v6, 0xd

    .line 563
    move-object/from16 v0, p0

    .line 565
    move v1, v11

    .line 566
    move v2, v13

    .line 567
    move v3, v15

    .line 568
    move/from16 v4, v16

    .line 570
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    .line 573
    move-result v11

    .line 574
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 576
    aget v5, v0, v8

    .line 578
    const/4 v6, 0x3

    .line 579
    move-object/from16 v0, p0

    .line 581
    move/from16 v1, v16

    .line 583
    move v2, v11

    .line 584
    move v3, v13

    .line 585
    move v4, v15

    .line 586
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 589
    move-result v16

    .line 590
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 592
    aget v5, v0, v9

    .line 594
    const/16 v6, 0x9

    .line 596
    move-object/from16 v0, p0

    .line 598
    move v1, v15

    .line 599
    move/from16 v2, v16

    .line 601
    move v3, v11

    .line 602
    move v4, v13

    .line 603
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 606
    move-result v9

    .line 607
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 609
    aget v5, v0, v17

    .line 611
    const/16 v6, 0xb

    .line 613
    move-object/from16 v0, p0

    .line 615
    move v1, v13

    .line 616
    move v2, v9

    .line 617
    move/from16 v3, v16

    .line 619
    move v4, v11

    .line 620
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 623
    move-result v13

    .line 624
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 626
    aget v5, v0, v24

    .line 628
    const/16 v6, 0xf

    .line 630
    move-object/from16 v0, p0

    .line 632
    move v1, v11

    .line 633
    move v2, v13

    .line 634
    move v3, v9

    .line 635
    move/from16 v4, v16

    .line 637
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 640
    move-result v11

    .line 641
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 643
    aget v5, v0, v12

    .line 645
    const/4 v6, 0x3

    .line 646
    move-object/from16 v0, p0

    .line 648
    move/from16 v1, v16

    .line 650
    move v2, v11

    .line 651
    move v3, v13

    .line 652
    move v4, v9

    .line 653
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 656
    move-result v15

    .line 657
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 659
    aget v5, v0, v22

    .line 661
    const/16 v6, 0x9

    .line 663
    move-object/from16 v0, p0

    .line 665
    move v1, v9

    .line 666
    move v2, v15

    .line 667
    move v3, v11

    .line 668
    move v4, v13

    .line 669
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 672
    move-result v9

    .line 673
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 675
    aget v5, v0, v19

    .line 677
    const/16 v6, 0xb

    .line 679
    move-object/from16 v0, p0

    .line 681
    move v1, v13

    .line 682
    move v2, v9

    .line 683
    move v3, v15

    .line 684
    move v4, v11

    .line 685
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 688
    move-result v13

    .line 689
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 691
    aget v5, v0, v26

    .line 693
    const/16 v6, 0xf

    .line 695
    move-object/from16 v0, p0

    .line 697
    move v1, v11

    .line 698
    move v2, v13

    .line 699
    move v3, v9

    .line 700
    move v4, v15

    .line 701
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 704
    move-result v11

    .line 705
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 707
    aget v5, v0, v10

    .line 709
    const/4 v6, 0x3

    .line 710
    move-object/from16 v0, p0

    .line 712
    move v1, v15

    .line 713
    move v2, v11

    .line 714
    move v3, v13

    .line 715
    move v4, v9

    .line 716
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 719
    move-result v15

    .line 720
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 722
    aget v5, v0, v21

    .line 724
    const/16 v6, 0x9

    .line 726
    move-object/from16 v0, p0

    .line 728
    move v1, v9

    .line 729
    move v2, v15

    .line 730
    move v3, v11

    .line 731
    move v4, v13

    .line 732
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 735
    move-result v9

    .line 736
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 738
    aget v5, v0, v18

    .line 740
    const/16 v6, 0xb

    .line 742
    move-object/from16 v0, p0

    .line 744
    move v1, v13

    .line 745
    move v2, v9

    .line 746
    move v3, v15

    .line 747
    move v4, v11

    .line 748
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 751
    move-result v13

    .line 752
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 754
    aget v5, v0, v25

    .line 756
    const/16 v6, 0xf

    .line 758
    move-object/from16 v0, p0

    .line 760
    move v1, v11

    .line 761
    move v2, v13

    .line 762
    move v3, v9

    .line 763
    move v4, v15

    .line 764
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 767
    move-result v11

    .line 768
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 770
    aget v5, v0, v14

    .line 772
    const/4 v6, 0x3

    .line 773
    move-object/from16 v0, p0

    .line 775
    move v1, v15

    .line 776
    move v2, v11

    .line 777
    move v3, v13

    .line 778
    move v4, v9

    .line 779
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 782
    move-result v15

    .line 783
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 785
    aget v5, v0, v23

    .line 787
    const/16 v6, 0x9

    .line 789
    move-object/from16 v0, p0

    .line 791
    move v1, v9

    .line 792
    move v2, v15

    .line 793
    move v3, v11

    .line 794
    move v4, v13

    .line 795
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 798
    move-result v9

    .line 799
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 801
    aget v5, v0, v20

    .line 803
    const/16 v6, 0xb

    .line 805
    move-object/from16 v0, p0

    .line 807
    move v1, v13

    .line 808
    move v2, v9

    .line 809
    move v3, v15

    .line 810
    move v4, v11

    .line 811
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 814
    move-result v13

    .line 815
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    .line 817
    aget v5, v0, v27

    .line 819
    const/16 v6, 0xf

    .line 821
    move-object/from16 v0, p0

    .line 823
    move v1, v11

    .line 824
    move v2, v13

    .line 825
    move v3, v9

    .line 826
    move v4, v15

    .line 827
    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    .line 830
    move-result v0

    .line 831
    iget-object v1, v7, Ljcifs/util/MD4;->context:[I

    .line 833
    aget v2, v1, v8

    .line 835
    add-int/2addr v2, v15

    .line 836
    aput v2, v1, v8

    .line 838
    aget v2, v1, v10

    .line 840
    add-int/2addr v2, v0

    .line 841
    aput v2, v1, v10

    .line 843
    aget v0, v1, v12

    .line 845
    add-int/2addr v0, v13

    .line 846
    aput v0, v1, v12

    .line 848
    aget v0, v1, v14

    .line 850
    add-int/2addr v0, v9

    .line 851
    aput v0, v1, v14

    .line 853
    return-void

    .line 854
    :cond_355
    iget-object v3, v7, Ljcifs/util/MD4;->X:[I

    .line 856
    add-int/lit8 v4, v0, 0x1

    .line 858
    aget-byte v0, p1, v0

    .line 860
    and-int/lit16 v0, v0, 0xff

    .line 862
    add-int/lit8 v5, v4, 0x1

    .line 864
    aget-byte v4, p1, v4

    .line 866
    and-int/lit16 v4, v4, 0xff

    .line 868
    shl-int/2addr v4, v9

    .line 869
    or-int/2addr v0, v4

    .line 870
    add-int/lit8 v4, v5, 0x1

    .line 872
    aget-byte v5, p1, v5

    .line 874
    and-int/lit16 v5, v5, 0xff

    .line 876
    shl-int/lit8 v2, v5, 0x10

    .line 878
    or-int/2addr v0, v2

    .line 879
    add-int/lit8 v2, v4, 0x1

    .line 881
    aget-byte v4, p1, v4

    .line 883
    and-int/lit16 v4, v4, 0xff

    .line 885
    shl-int/lit8 v4, v4, 0x18

    .line 887
    or-int/2addr v0, v4

    .line 888
    aput v0, v3, v1

    .line 890
    add-int/lit8 v1, v1, 0x1

    .line 892
    move v0, v2

    .line 893
    goto/16 :goto_6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Ljcifs/util/MD4;

    .line 3
    invoke-direct {v0, p0}, Ljcifs/util/MD4;-><init>(Ljcifs/util/MD4;)V

    .line 6
    return-object v0
.end method

.method public engineDigest()[B
    .registers 11

    .line 1
    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    .line 3
    const-wide/16 v2, 0x40

    .line 5
    rem-long/2addr v0, v2

    .line 6
    long-to-int v0, v0

    .line 7
    const/16 v1, 0x38

    .line 9
    if-ge v0, v1, :cond_c

    .line 11
    sub-int/2addr v1, v0

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    rsub-int/lit8 v1, v0, 0x78

    .line 15
    :goto_e
    add-int/lit8 v0, v1, 0x8

    .line 17
    new-array v2, v0, [B

    .line 19
    const/16 v3, -0x80

    .line 21
    const/4 v4, 0x0

    .line 22
    aput-byte v3, v2, v4

    .line 24
    move v3, v4

    .line 25
    :goto_18
    const/16 v5, 0x8

    .line 27
    if-lt v3, v5, :cond_41

    .line 29
    invoke-virtual {p0, v2, v4, v0}, Ljcifs/util/MD4;->engineUpdate([BII)V

    .line 32
    const/16 v0, 0x10

    .line 34
    new-array v5, v0, [B

    .line 36
    move v6, v4

    .line 37
    :goto_24
    const/4 v7, 0x4

    .line 38
    if-lt v6, v7, :cond_2b

    .line 40
    invoke-virtual {p0}, Ljcifs/util/MD4;->engineReset()V

    .line 43
    return-object v5

    .line 44
    :cond_2b
    move v0, v4

    .line 45
    :goto_2c
    if-lt v0, v7, :cond_31

    .line 47
    add-int/lit8 v6, v6, 0x1

    .line 49
    goto :goto_24

    .line 50
    :cond_31
    mul-int/lit8 v1, v6, 0x4

    .line 52
    add-int/2addr v1, v0

    .line 53
    iget-object v2, p0, Ljcifs/util/MD4;->context:[I

    .line 55
    aget v2, v2, v6

    .line 57
    mul-int/lit8 v3, v0, 0x8

    .line 59
    ushr-int/2addr v2, v3

    .line 60
    int-to-byte v2, v2

    .line 61
    aput-byte v2, v5, v1

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_2c

    .line 66
    :cond_41
    add-int v5, v1, v3

    .line 68
    iget-wide v6, p0, Ljcifs/util/MD4;->count:J

    .line 70
    const-wide/16 v8, 0x8

    .line 72
    mul-long/2addr v6, v8

    .line 73
    mul-int/lit8 v8, v3, 0x8

    .line 75
    ushr-long/2addr v6, v8

    .line 76
    long-to-int v6, v6

    .line 77
    int-to-byte v6, v6

    .line 78
    aput-byte v6, v2, v5

    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 82
    goto :goto_18
.end method

.method public engineReset()V
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/util/MD4;->context:[I

    .line 3
    const v1, 0x67452301

    .line 6
    const/4 v2, 0x0

    .line 7
    aput v1, v0, v2

    .line 9
    const v1, -0x10325477

    .line 12
    const/4 v3, 0x1

    .line 13
    aput v1, v0, v3

    .line 15
    const/4 v1, 0x2

    .line 16
    const v3, -0x67452302

    .line 19
    aput v3, v0, v1

    .line 21
    const/4 v1, 0x3

    .line 22
    const v3, 0x10325476

    .line 25
    aput v3, v0, v1

    .line 27
    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    .line 31
    move v0, v2

    .line 32
    :goto_1f
    const/16 v1, 0x40

    .line 34
    if-lt v0, v1, :cond_24

    .line 36
    return-void

    .line 37
    :cond_24
    iget-object v1, p0, Ljcifs/util/MD4;->buffer:[B

    .line 39
    aput-byte v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_1f
.end method

.method public engineUpdate(B)V
    .registers 7

    .line 1
    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long v2, v0, v2

    long-to-int v2, v2

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    .line 2
    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    .line 3
    iget-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    aput-byte p1, v0, v2

    const/16 p1, 0x3f

    if-ne v2, p1, :cond_18

    const/4 p1, 0x0

    .line 4
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

    .line 5
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3f

    .line 6
    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v4, 0x40

    rem-long v4, v0, v4

    long-to-int v4, v4

    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    rsub-int/lit8 v0, v4, 0x40

    const/4 v1, 0x0

    if-lt p3, v0, :cond_35

    .line 8
    iget-object v2, p0, Ljcifs/util/MD4;->buffer:[B

    invoke-static {p1, p2, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
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

    .line 10
    invoke-direct {p0, p1, v0}, Ljcifs/util/MD4;->transform([BI)V

    move v0, v2

    goto :goto_26

    :cond_35
    :goto_35
    if-ge v1, p3, :cond_3e

    add-int/2addr p2, v1

    .line 11
    iget-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    sub-int/2addr p3, v1

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3e
    return-void

    .line 12
    :cond_3f
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
