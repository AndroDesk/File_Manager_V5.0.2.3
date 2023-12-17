.class public Lcom/miui/maml/animation/interpolater/InterpolatorFactory;
.super Ljava/lang/Object;
.source "InterpolatorFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InterpolatorFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;[Lcom/miui/maml/data/Expression;)Landroid/view/animation/Interpolator;
    .registers 13

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz p1, :cond_11

    .line 13
    array-length v3, p1

    .line 14
    if-lez v3, :cond_11

    .line 16
    move v3, v2

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v3, v0

    .line 19
    :goto_12
    const/16 v4, 0x28

    .line 21
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 24
    move-result v4

    .line 25
    const/16 v5, 0x29

    .line 27
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    .line 30
    move-result v5

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, -0x1

    .line 33
    if-eq v4, v7, :cond_5a

    .line 35
    if-eq v5, v7, :cond_5a

    .line 37
    add-int/2addr v4, v2

    .line 38
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    const-string v5, ","

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 47
    move-result v5

    .line 48
    if-eq v5, v7, :cond_3d

    .line 50
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    add-int/2addr v5, v2

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    move-result-object v5

    .line 59
    move-object v7, v5

    .line 60
    move v5, v2

    .line 61
    goto :goto_42

    .line 62
    :cond_3d
    const-string v5, ""

    .line 64
    move-object v7, v5

    .line 65
    move v5, v0

    .line 66
    move-object v0, v4

    .line 67
    :goto_42
    :try_start_42
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 70
    move-result v0
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_46} :catch_4d

    .line 71
    if-eqz v5, :cond_55

    .line 73
    :try_start_48
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 76
    move-result v6
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_4c} :catch_4e

    .line 77
    goto :goto_55

    .line 78
    :catch_4d
    move v0, v6

    .line 79
    :catch_4e
    const-string v7, "parse error:"

    .line 81
    const-string v8, "InterpolatorFactory"

    .line 83
    invoke-static {v7, v4, v8}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_55
    :goto_55
    move v10, v6

    .line 87
    move v6, v0

    .line 88
    move v0, v2

    .line 89
    move v2, v10

    .line 90
    goto :goto_5c

    .line 91
    :cond_5a
    move v5, v0

    .line 92
    move v2, v6

    .line 93
    :goto_5c
    const-string v4, "BackEaseIn"

    .line 95
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_6a

    .line 101
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    .line 103
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 106
    return-object p0

    .line 107
    :cond_6a
    const-string v7, "BackEaseOut"

    .line 109
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_78

    .line 115
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    .line 117
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 120
    return-object p0

    .line 121
    :cond_78
    const-string v8, "BackEaseInOut"

    .line 123
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_86

    .line 129
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    .line 131
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 134
    return-object p0

    .line 135
    :cond_86
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 138
    move-result v8

    .line 139
    if-eqz v8, :cond_9c

    .line 141
    if-eqz v3, :cond_94

    .line 143
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 148
    return-object p0

    .line 149
    :cond_94
    if-eqz v0, :cond_2b6

    .line 151
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    .line 153
    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    .line 156
    return-object p0

    .line 157
    :cond_9c
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_b2

    .line 163
    if-eqz v3, :cond_aa

    .line 165
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    .line 167
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 170
    return-object p0

    .line 171
    :cond_aa
    if-eqz v0, :cond_2b6

    .line 173
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    .line 175
    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    .line 178
    return-object p0

    .line 179
    :cond_b2
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_c8

    .line 185
    if-eqz v3, :cond_c0

    .line 187
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    .line 189
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 192
    return-object p0

    .line 193
    :cond_c0
    if-eqz v0, :cond_2b6

    .line 195
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    .line 197
    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    .line 200
    return-object p0

    .line 201
    :cond_c8
    const-string v0, "BounceEaseIn"

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_d6

    .line 209
    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;

    .line 211
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    .line 214
    return-object p0

    .line 215
    :cond_d6
    const-string v0, "BounceEaseOut"

    .line 217
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_e4

    .line 223
    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;

    .line 225
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    .line 228
    return-object p0

    .line 229
    :cond_e4
    const-string v0, "BounceEaseInOut"

    .line 231
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_f2

    .line 237
    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    .line 239
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    .line 242
    return-object p0

    .line 243
    :cond_f2
    const-string v0, "CircEaseIn"

    .line 245
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_100

    .line 251
    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseInInterpolater;

    .line 253
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    .line 256
    return-object p0

    .line 257
    :cond_100
    const-string v0, "CircEaseOut"

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_10e

    .line 265
    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseOutInterpolater;

    .line 267
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    .line 270
    return-object p0

    .line 271
    :cond_10e
    const-string v0, "CircEaseInOut"

    .line 273
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_11c

    .line 279
    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;

    .line 281
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    .line 284
    return-object p0

    .line 285
    :cond_11c
    const-string v0, "CubicEaseIn"

    .line 287
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_12a

    .line 293
    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseInInterpolater;

    .line 295
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    .line 298
    return-object p0

    .line 299
    :cond_12a
    const-string v0, "CubicEaseOut"

    .line 301
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_138

    .line 307
    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 309
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    .line 312
    return-object p0

    .line 313
    :cond_138
    const-string v0, "CubicEaseInOut"

    .line 315
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_146

    .line 321
    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    .line 323
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    .line 326
    return-object p0

    .line 327
    :cond_146
    const-string v0, "ElasticEaseIn"

    .line 329
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 332
    move-result v4

    .line 333
    if-eqz v4, :cond_154

    .line 335
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    .line 337
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 340
    return-object p0

    .line 341
    :cond_154
    const-string v4, "ElasticEaseOut"

    .line 343
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 346
    move-result v7

    .line 347
    if-eqz v7, :cond_162

    .line 349
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 351
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 354
    return-object p0

    .line 355
    :cond_162
    const-string v7, "ElasticEaseInOut"

    .line 357
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 360
    move-result v8

    .line 361
    if-eqz v8, :cond_170

    .line 363
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    .line 365
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 368
    return-object p0

    .line 369
    :cond_170
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 372
    move-result v7

    .line 373
    if-eqz v7, :cond_186

    .line 375
    if-eqz v3, :cond_17e

    .line 377
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    .line 379
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 382
    return-object p0

    .line 383
    :cond_17e
    if-eqz v5, :cond_2b6

    .line 385
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    .line 387
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    .line 390
    return-object p0

    .line 391
    :cond_186
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 394
    move-result v0

    .line 395
    if-eqz v0, :cond_19c

    .line 397
    if-eqz v3, :cond_194

    .line 399
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    .line 401
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 404
    return-object p0

    .line 405
    :cond_194
    if-eqz v5, :cond_2b6

    .line 407
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    .line 409
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    .line 412
    return-object p0

    .line 413
    :cond_19c
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 416
    move-result v0

    .line 417
    if-eqz v0, :cond_1b2

    .line 419
    if-eqz v3, :cond_1aa

    .line 421
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 423
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 426
    return-object p0

    .line 427
    :cond_1aa
    if-eqz v5, :cond_2b6

    .line 429
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 431
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    .line 434
    return-object p0

    .line 435
    :cond_1b2
    const-string v0, "ExpoEaseIn"

    .line 437
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 440
    move-result v0

    .line 441
    if-eqz v0, :cond_1c0

    .line 443
    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseInInterpolater;

    .line 445
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    .line 448
    return-object p0

    .line 449
    :cond_1c0
    const-string v0, "ExpoEaseOut"

    .line 451
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 454
    move-result v0

    .line 455
    if-eqz v0, :cond_1ce

    .line 457
    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    .line 459
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    .line 462
    return-object p0

    .line 463
    :cond_1ce
    const-string v0, "ExpoEaseInOut"

    .line 465
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 468
    move-result v0

    .line 469
    if-eqz v0, :cond_1dc

    .line 471
    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    .line 473
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    .line 476
    return-object p0

    .line 477
    :cond_1dc
    const-string v0, "QuadEaseIn"

    .line 479
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_1ea

    .line 485
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseInInterpolater;

    .line 487
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    .line 490
    return-object p0

    .line 491
    :cond_1ea
    const-string v0, "QuadEaseOut"

    .line 493
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 496
    move-result v0

    .line 497
    if-eqz v0, :cond_1f8

    .line 499
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseOutInterpolater;

    .line 501
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    .line 504
    return-object p0

    .line 505
    :cond_1f8
    const-string v0, "QuadEaseInOut"

    .line 507
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 510
    move-result v0

    .line 511
    if-eqz v0, :cond_206

    .line 513
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    .line 515
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    .line 518
    return-object p0

    .line 519
    :cond_206
    const-string v0, "QuartEaseIn"

    .line 521
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_214

    .line 527
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;

    .line 529
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    .line 532
    return-object p0

    .line 533
    :cond_214
    const-string v0, "QuartEaseOut"

    .line 535
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 538
    move-result v0

    .line 539
    if-eqz v0, :cond_222

    .line 541
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    .line 543
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    .line 546
    return-object p0

    .line 547
    :cond_222
    const-string v0, "QuartEaseInOut"

    .line 549
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 552
    move-result v0

    .line 553
    if-eqz v0, :cond_230

    .line 555
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    .line 557
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    .line 560
    return-object p0

    .line 561
    :cond_230
    const-string v0, "QuintEaseIn"

    .line 563
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 566
    move-result v0

    .line 567
    if-eqz v0, :cond_23e

    .line 569
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseInInterpolater;

    .line 571
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    .line 574
    return-object p0

    .line 575
    :cond_23e
    const-string v0, "QuintEaseOut"

    .line 577
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 580
    move-result v0

    .line 581
    if-eqz v0, :cond_24c

    .line 583
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseOutInterpolater;

    .line 585
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    .line 588
    return-object p0

    .line 589
    :cond_24c
    const-string v0, "QuintEaseInOut"

    .line 591
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 594
    move-result v0

    .line 595
    if-eqz v0, :cond_25a

    .line 597
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    .line 599
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    .line 602
    return-object p0

    .line 603
    :cond_25a
    const-string v0, "SineEaseIn"

    .line 605
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 608
    move-result v0

    .line 609
    if-eqz v0, :cond_268

    .line 611
    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseInInterpolater;

    .line 613
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    .line 616
    return-object p0

    .line 617
    :cond_268
    const-string v0, "SineEaseOut"

    .line 619
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_276

    .line 625
    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseOutInterpolater;

    .line 627
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    .line 630
    return-object p0

    .line 631
    :cond_276
    const-string v0, "SineEaseInOut"

    .line 633
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 636
    move-result v0

    .line 637
    if-eqz v0, :cond_284

    .line 639
    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;

    .line 641
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    .line 644
    return-object p0

    .line 645
    :cond_284
    const-string v0, "Linear"

    .line 647
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 650
    move-result v0

    .line 651
    if-eqz v0, :cond_292

    .line 653
    new-instance p0, Lcom/miui/maml/animation/interpolater/LinearInterpolater;

    .line 655
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    .line 658
    return-object p0

    .line 659
    :cond_292
    const-string v0, "PhysicBased"

    .line 661
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 664
    move-result v4

    .line 665
    if-eqz v4, :cond_2a0

    .line 667
    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    .line 669
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 672
    return-object p0

    .line 673
    :cond_2a0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 676
    move-result p0

    .line 677
    if-eqz p0, :cond_2b6

    .line 679
    if-eqz v3, :cond_2ae

    .line 681
    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    .line 683
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 686
    return-object p0

    .line 687
    :cond_2ae
    if-eqz v5, :cond_2b6

    .line 689
    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    .line 691
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>(FF)V

    .line 694
    return-object p0

    .line 695
    :cond_2b6
    return-object v1
.end method
