.class public final Ly/l;
.super Ljava/lang/Object;
.source "MotionConstrainedPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ly/l;",
        ">;"
    }
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x3f800000  # 1.0f

    .line 6
    iput v0, p0, Ly/l;->a:F

    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Ly/l;->c:F

    .line 11
    iput v1, p0, Ly/l;->d:F

    .line 13
    iput v1, p0, Ly/l;->e:F

    .line 15
    iput v1, p0, Ly/l;->f:F

    .line 17
    iput v0, p0, Ly/l;->g:F

    .line 19
    iput v0, p0, Ly/l;->h:F

    .line 21
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 23
    iput v0, p0, Ly/l;->i:F

    .line 25
    iput v0, p0, Ly/l;->j:F

    .line 27
    iput v1, p0, Ly/l;->k:F

    .line 29
    iput v1, p0, Ly/l;->l:F

    .line 31
    iput v1, p0, Ly/l;->m:F

    .line 33
    iput v0, p0, Ly/l;->n:F

    .line 35
    iput v0, p0, Ly/l;->o:F

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 39
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    iput-object v0, p0, Ly/l;->p:Ljava/util/LinkedHashMap;

    .line 44
    return-void
.end method

.method public static b(FF)Z
    .registers 5

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_1e

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_1e

    .line 16
    :cond_f
    sub-float/2addr p0, p1

    .line 17
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 20
    move-result p0

    .line 21
    const p1, 0x358637bd  # 1.0E-6f

    .line 24
    cmpl-float p0, p0, p1

    .line 26
    if-lez p0, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v1, v2

    .line 30
    :goto_1d
    return v1

    .line 31
    :cond_1e
    :goto_1e
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 34
    move-result p0

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    move-result p1

    .line 39
    if-eq p0, p1, :cond_29

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v1, v2

    .line 43
    :goto_2a
    return v1
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_228

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lx/c;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const/4 v3, -0x1

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x1

    .line 36
    sparse-switch v4, :sswitch_data_22a

    .line 39
    goto/16 :goto_d3

    .line 41
    :sswitch_28
    const-string v4, "alpha"

    .line 43
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_32

    .line 49
    goto/16 :goto_d3

    .line 51
    :cond_32
    const/16 v3, 0xd

    .line 53
    goto/16 :goto_d3

    .line 55
    :sswitch_36
    const-string v4, "transitionPathRotate"

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_40

    .line 63
    goto/16 :goto_d3

    .line 65
    :cond_40
    const/16 v3, 0xc

    .line 67
    goto/16 :goto_d3

    .line 69
    :sswitch_44
    const-string v4, "elevation"

    .line 71
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_4e

    .line 77
    goto/16 :goto_d3

    .line 79
    :cond_4e
    const/16 v3, 0xb

    .line 81
    goto/16 :goto_d3

    .line 83
    :sswitch_52
    const-string v4, "rotation"

    .line 85
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_5c

    .line 91
    goto/16 :goto_d3

    .line 93
    :cond_5c
    const/16 v3, 0xa

    .line 95
    goto/16 :goto_d3

    .line 97
    :sswitch_60
    const-string v4, "transformPivotY"

    .line 99
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_6a

    .line 105
    goto/16 :goto_d3

    .line 107
    :cond_6a
    const/16 v3, 0x9

    .line 109
    goto/16 :goto_d3

    .line 111
    :sswitch_6e
    const-string v4, "transformPivotX"

    .line 113
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_78

    .line 119
    goto/16 :goto_d3

    .line 121
    :cond_78
    const/16 v3, 0x8

    .line 123
    goto/16 :goto_d3

    .line 125
    :sswitch_7c
    const-string v4, "scaleY"

    .line 127
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v4

    .line 131
    if-nez v4, :cond_85

    .line 133
    goto :goto_d3

    .line 134
    :cond_85
    const/4 v3, 0x7

    .line 135
    goto :goto_d3

    .line 136
    :sswitch_87
    const-string v4, "scaleX"

    .line 138
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_90

    .line 144
    goto :goto_d3

    .line 145
    :cond_90
    const/4 v3, 0x6

    .line 146
    goto :goto_d3

    .line 147
    :sswitch_92
    const-string v4, "progress"

    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v4

    .line 153
    if-nez v4, :cond_9b

    .line 155
    goto :goto_d3

    .line 156
    :cond_9b
    const/4 v3, 0x5

    .line 157
    goto :goto_d3

    .line 158
    :sswitch_9d
    const-string v4, "translationZ"

    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    move-result v4

    .line 164
    if-nez v4, :cond_a6

    .line 166
    goto :goto_d3

    .line 167
    :cond_a6
    const/4 v3, 0x4

    .line 168
    goto :goto_d3

    .line 169
    :sswitch_a8
    const-string v4, "translationY"

    .line 171
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v4

    .line 175
    if-nez v4, :cond_b1

    .line 177
    goto :goto_d3

    .line 178
    :cond_b1
    const/4 v3, 0x3

    .line 179
    goto :goto_d3

    .line 180
    :sswitch_b3
    const-string v4, "translationX"

    .line 182
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v4

    .line 186
    if-nez v4, :cond_bc

    .line 188
    goto :goto_d3

    .line 189
    :cond_bc
    const/4 v3, 0x2

    .line 190
    goto :goto_d3

    .line 191
    :sswitch_be
    const-string v4, "rotationY"

    .line 193
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v4

    .line 197
    if-nez v4, :cond_c7

    .line 199
    goto :goto_d3

    .line 200
    :cond_c7
    move v3, v5

    .line 201
    goto :goto_d3

    .line 202
    :sswitch_c9
    const-string v4, "rotationX"

    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v4

    .line 208
    if-nez v4, :cond_d2

    .line 210
    goto :goto_d3

    .line 211
    :cond_d2
    const/4 v3, 0x0

    .line 212
    :goto_d3
    const/high16 v4, 0x3f800000  # 1.0f

    .line 214
    const/4 v6, 0x0

    .line 215
    packed-switch v3, :pswitch_data_264

    .line 218
    const-string v3, "CUSTOM"

    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 223
    move-result v3

    .line 224
    const-string v4, "MotionPaths"

    .line 226
    if-eqz v3, :cond_212

    .line 228
    const-string v3, ","

    .line 230
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 233
    move-result-object v3

    .line 234
    aget-object v3, v3, v5

    .line 236
    iget-object v5, p0, Ly/l;->p:Ljava/util/LinkedHashMap;

    .line 238
    invoke-virtual {v5, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 241
    move-result v5

    .line 242
    if-eqz v5, :cond_8

    .line 244
    iget-object v5, p0, Ly/l;->p:Ljava/util/LinkedHashMap;

    .line 246
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move-result-object v3

    .line 250
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 252
    instance-of v5, v2, Lx/c$b;

    .line 254
    if-eqz v5, :cond_1ea

    .line 256
    check-cast v2, Lx/c$b;

    .line 258
    goto/16 :goto_1e3

    .line 260
    :pswitch_103  #0xd
    iget v1, p0, Ly/l;->a:F

    .line 262
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_10c

    .line 268
    goto :goto_10e

    .line 269
    :cond_10c
    iget v4, p0, Ly/l;->a:F

    .line 271
    :goto_10e
    invoke-virtual {v2, v4, p2}, Lu/j;->b(FI)V

    .line 274
    goto/16 :goto_8

    .line 276
    :pswitch_113  #0xc
    iget v1, p0, Ly/l;->n:F

    .line 278
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_11c

    .line 284
    goto :goto_11e

    .line 285
    :cond_11c
    iget v6, p0, Ly/l;->n:F

    .line 287
    :goto_11e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    .line 290
    goto/16 :goto_8

    .line 292
    :pswitch_123  #0xb
    iget v1, p0, Ly/l;->c:F

    .line 294
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_12c

    .line 300
    goto :goto_12e

    .line 301
    :cond_12c
    iget v6, p0, Ly/l;->c:F

    .line 303
    :goto_12e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    .line 306
    goto/16 :goto_8

    .line 308
    :pswitch_133  #0xa
    iget v1, p0, Ly/l;->d:F

    .line 310
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_13c

    .line 316
    goto :goto_13e

    .line 317
    :cond_13c
    iget v6, p0, Ly/l;->d:F

    .line 319
    :goto_13e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    .line 322
    goto/16 :goto_8

    .line 324
    :pswitch_143  #0x9
    iget v1, p0, Ly/l;->j:F

    .line 326
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_14c

    .line 332
    goto :goto_14e

    .line 333
    :cond_14c
    iget v6, p0, Ly/l;->j:F

    .line 335
    :goto_14e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    .line 338
    goto/16 :goto_8

    .line 340
    :pswitch_153  #0x8
    iget v1, p0, Ly/l;->i:F

    .line 342
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_15c

    .line 348
    goto :goto_15e

    .line 349
    :cond_15c
    iget v6, p0, Ly/l;->i:F

    .line 351
    :goto_15e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    .line 354
    goto/16 :goto_8

    .line 356
    :pswitch_163  #0x7
    iget v1, p0, Ly/l;->h:F

    .line 358
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_16c

    .line 364
    goto :goto_16e

    .line 365
    :cond_16c
    iget v4, p0, Ly/l;->h:F

    .line 367
    :goto_16e
    invoke-virtual {v2, v4, p2}, Lu/j;->b(FI)V

    .line 370
    goto/16 :goto_8

    .line 372
    :pswitch_173  #0x6
    iget v1, p0, Ly/l;->g:F

    .line 374
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_17c

    .line 380
    goto :goto_17e

    .line 381
    :cond_17c
    iget v4, p0, Ly/l;->g:F

    .line 383
    :goto_17e
    invoke-virtual {v2, v4, p2}, Lu/j;->b(FI)V

    .line 386
    goto/16 :goto_8

    .line 388
    :pswitch_183  #0x5
    iget v1, p0, Ly/l;->o:F

    .line 390
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 393
    move-result v1

    .line 394
    if-eqz v1, :cond_18c

    .line 396
    goto :goto_18e

    .line 397
    :cond_18c
    iget v6, p0, Ly/l;->o:F

    .line 399
    :goto_18e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    .line 402
    goto/16 :goto_8

    .line 404
    :pswitch_193  #0x4
    iget v1, p0, Ly/l;->m:F

    .line 406
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 409
    move-result v1

    .line 410
    if-eqz v1, :cond_19c

    .line 412
    goto :goto_19e

    .line 413
    :cond_19c
    iget v6, p0, Ly/l;->m:F

    .line 415
    :goto_19e
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    .line 418
    goto/16 :goto_8

    .line 420
    :pswitch_1a3  #0x3
    iget v1, p0, Ly/l;->l:F

    .line 422
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 425
    move-result v1

    .line 426
    if-eqz v1, :cond_1ac

    .line 428
    goto :goto_1ae

    .line 429
    :cond_1ac
    iget v6, p0, Ly/l;->l:F

    .line 431
    :goto_1ae
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    .line 434
    goto/16 :goto_8

    .line 436
    :pswitch_1b3  #0x2
    iget v1, p0, Ly/l;->k:F

    .line 438
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 441
    move-result v1

    .line 442
    if-eqz v1, :cond_1bc

    .line 444
    goto :goto_1be

    .line 445
    :cond_1bc
    iget v6, p0, Ly/l;->k:F

    .line 447
    :goto_1be
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    .line 450
    goto/16 :goto_8

    .line 452
    :pswitch_1c3  #0x1
    iget v1, p0, Ly/l;->f:F

    .line 454
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 457
    move-result v1

    .line 458
    if-eqz v1, :cond_1cc

    .line 460
    goto :goto_1ce

    .line 461
    :cond_1cc
    iget v6, p0, Ly/l;->f:F

    .line 463
    :goto_1ce
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    .line 466
    goto/16 :goto_8

    .line 468
    :pswitch_1d3  #0x0
    iget v1, p0, Ly/l;->e:F

    .line 470
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 473
    move-result v1

    .line 474
    if-eqz v1, :cond_1dc

    .line 476
    goto :goto_1de

    .line 477
    :cond_1dc
    iget v6, p0, Ly/l;->e:F

    .line 479
    :goto_1de
    invoke-virtual {v2, v6, p2}, Lu/j;->b(FI)V

    .line 482
    goto/16 :goto_8

    .line 484
    :goto_1e3
    iget-object v1, v2, Lx/c$b;->f:Landroid/util/SparseArray;

    .line 486
    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 489
    goto/16 :goto_8

    .line 491
    :cond_1ea
    new-instance v5, Ljava/lang/StringBuilder;

    .line 493
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v1, " ViewSpline not a CustomSet frame = "

    .line 501
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, ", value"

    .line 509
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->a()F

    .line 515
    move-result v1

    .line 516
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    move-result-object v1

    .line 526
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    goto/16 :goto_8

    .line 531
    :cond_212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 533
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    const-string v3, "UNKNOWN spline "

    .line 538
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    move-result-object v1

    .line 548
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    goto/16 :goto_8

    .line 553
    :cond_228
    return-void

    .line 554
    nop

    .line 555
    :sswitch_data_22a
    .sparse-switch
        -0x4a771f66 -> :sswitch_c9
        -0x4a771f65 -> :sswitch_be
        -0x490b9c39 -> :sswitch_b3
        -0x490b9c38 -> :sswitch_a8
        -0x490b9c37 -> :sswitch_9d
        -0x3bab3dd3 -> :sswitch_92
        -0x3621dfb2 -> :sswitch_87
        -0x3621dfb1 -> :sswitch_7c
        -0x2d5a2d1e -> :sswitch_6e
        -0x2d5a2d1d -> :sswitch_60
        -0x266f082 -> :sswitch_52
        -0x42d1a3 -> :sswitch_44
        0x2382115 -> :sswitch_36
        0x589b15e -> :sswitch_28
    .end sparse-switch

    .line 613
    :pswitch_data_264
    .packed-switch 0x0
        :pswitch_1d3  #00000000
        :pswitch_1c3  #00000001
        :pswitch_1b3  #00000002
        :pswitch_1a3  #00000003
        :pswitch_193  #00000004
        :pswitch_183  #00000005
        :pswitch_173  #00000006
        :pswitch_163  #00000007
        :pswitch_153  #00000008
        :pswitch_143  #00000009
        :pswitch_133  #0000000a
        :pswitch_123  #0000000b
        :pswitch_113  #0000000c
        :pswitch_103  #0000000d
    .end packed-switch
.end method

.method public final c(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Ly/l;->b:I

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1a

    .line 25
    const/4 v0, 0x0

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 30
    move-result v0

    .line 31
    :goto_1e
    iput v0, p0, Ly/l;->a:F

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    .line 36
    move-result v0

    .line 37
    iput v0, p0, Ly/l;->c:F

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    .line 42
    move-result v0

    .line 43
    iput v0, p0, Ly/l;->d:F

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    .line 48
    move-result v0

    .line 49
    iput v0, p0, Ly/l;->e:F

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    .line 54
    move-result v0

    .line 55
    iput v0, p0, Ly/l;->f:F

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 60
    move-result v0

    .line 61
    iput v0, p0, Ly/l;->g:F

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    .line 66
    move-result v0

    .line 67
    iput v0, p0, Ly/l;->h:F

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    .line 72
    move-result v0

    .line 73
    iput v0, p0, Ly/l;->i:F

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    .line 78
    move-result v0

    .line 79
    iput v0, p0, Ly/l;->j:F

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 84
    move-result v0

    .line 85
    iput v0, p0, Ly/l;->k:F

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 90
    move-result v0

    .line 91
    iput v0, p0, Ly/l;->l:F

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    .line 96
    move-result p1

    .line 97
    iput p1, p0, Ly/l;->m:F

    .line 99
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Ly/l;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method
