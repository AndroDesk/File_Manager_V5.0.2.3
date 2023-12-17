.class public final Ly/e;
.super Ly/d;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/e$a;
    }
.end annotation


# instance fields
.field public d:I

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

.field public p:F

.field public q:F

.field public r:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ly/d;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ly/e;->d:I

    .line 7
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 9
    iput v0, p0, Ly/e;->e:F

    .line 11
    iput v0, p0, Ly/e;->f:F

    .line 13
    iput v0, p0, Ly/e;->g:F

    .line 15
    iput v0, p0, Ly/e;->h:F

    .line 17
    iput v0, p0, Ly/e;->i:F

    .line 19
    iput v0, p0, Ly/e;->j:F

    .line 21
    iput v0, p0, Ly/e;->k:F

    .line 23
    iput v0, p0, Ly/e;->l:F

    .line 25
    iput v0, p0, Ly/e;->m:F

    .line 27
    iput v0, p0, Ly/e;->n:F

    .line 29
    iput v0, p0, Ly/e;->o:F

    .line 31
    iput v0, p0, Ly/e;->p:F

    .line 33
    iput v0, p0, Ly/e;->q:F

    .line 35
    iput v0, p0, Ly/e;->r:F

    .line 37
    new-instance v0, Ljava/util/HashMap;

    .line 39
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    iput-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/c;",
            ">;)V"
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
    if-eqz v1, :cond_1e2

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
    check-cast v2, Lu/j;

    .line 27
    if-nez v2, :cond_1d

    .line 29
    goto :goto_8

    .line 30
    :cond_1d
    const-string v3, "CUSTOM"

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x7

    .line 37
    if-eqz v3, :cond_3e

    .line 39
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    iget-object v3, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 45
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 51
    if-eqz v1, :cond_8

    .line 53
    check-cast v2, Lx/c$b;

    .line 55
    iget v3, p0, Ly/d;->a:I

    .line 57
    iget-object v2, v2, Lx/c$b;->f:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 62
    goto :goto_8

    .line 63
    :cond_3e
    const/4 v3, -0x1

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 67
    move-result v5

    .line 68
    sparse-switch v5, :sswitch_data_1e4

    .line 71
    :goto_46
    move v4, v3

    .line 72
    goto/16 :goto_ef

    .line 74
    :sswitch_49
    const-string v4, "alpha"

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_52

    .line 82
    goto :goto_46

    .line 83
    :cond_52
    const/16 v4, 0xd

    .line 85
    goto/16 :goto_ef

    .line 87
    :sswitch_56
    const-string v4, "transitionPathRotate"

    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_5f

    .line 95
    goto :goto_46

    .line 96
    :cond_5f
    const/16 v4, 0xc

    .line 98
    goto/16 :goto_ef

    .line 100
    :sswitch_63
    const-string v4, "elevation"

    .line 102
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_6c

    .line 108
    goto :goto_46

    .line 109
    :cond_6c
    const/16 v4, 0xb

    .line 111
    goto/16 :goto_ef

    .line 113
    :sswitch_70
    const-string v4, "rotation"

    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_79

    .line 121
    goto :goto_46

    .line 122
    :cond_79
    const/16 v4, 0xa

    .line 124
    goto/16 :goto_ef

    .line 126
    :sswitch_7d
    const-string v4, "transformPivotY"

    .line 128
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_86

    .line 134
    goto :goto_46

    .line 135
    :cond_86
    const/16 v4, 0x9

    .line 137
    goto/16 :goto_ef

    .line 139
    :sswitch_8a
    const-string v4, "transformPivotX"

    .line 141
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_93

    .line 147
    goto :goto_46

    .line 148
    :cond_93
    const/16 v4, 0x8

    .line 150
    goto :goto_ef

    .line 151
    :sswitch_96
    const-string v5, "scaleY"

    .line 153
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_ef

    .line 159
    goto :goto_46

    .line 160
    :sswitch_9f
    const-string v4, "scaleX"

    .line 162
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_a8

    .line 168
    goto :goto_46

    .line 169
    :cond_a8
    const/4 v4, 0x6

    .line 170
    goto :goto_ef

    .line 171
    :sswitch_aa
    const-string v4, "progress"

    .line 173
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_b3

    .line 179
    goto :goto_46

    .line 180
    :cond_b3
    const/4 v4, 0x5

    .line 181
    goto :goto_ef

    .line 182
    :sswitch_b5
    const-string v4, "translationZ"

    .line 184
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_be

    .line 190
    goto :goto_46

    .line 191
    :cond_be
    const/4 v4, 0x4

    .line 192
    goto :goto_ef

    .line 193
    :sswitch_c0
    const-string v4, "translationY"

    .line 195
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_ca

    .line 201
    goto/16 :goto_46

    .line 203
    :cond_ca
    const/4 v4, 0x3

    .line 204
    goto :goto_ef

    .line 205
    :sswitch_cc
    const-string v4, "translationX"

    .line 207
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_d6

    .line 213
    goto/16 :goto_46

    .line 215
    :cond_d6
    const/4 v4, 0x2

    .line 216
    goto :goto_ef

    .line 217
    :sswitch_d8
    const-string v4, "rotationY"

    .line 219
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_e2

    .line 225
    goto/16 :goto_46

    .line 227
    :cond_e2
    const/4 v4, 0x1

    .line 228
    goto :goto_ef

    .line 229
    :sswitch_e4
    const-string v4, "rotationX"

    .line 231
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_ee

    .line 237
    goto/16 :goto_46

    .line 239
    :cond_ee
    const/4 v4, 0x0

    .line 240
    :cond_ef
    :goto_ef
    packed-switch v4, :pswitch_data_21e

    .line 243
    goto/16 :goto_8

    .line 245
    :pswitch_f4  #0xd
    iget v1, p0, Ly/e;->e:F

    .line 247
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_8

    .line 253
    iget v1, p0, Ly/d;->a:I

    .line 255
    iget v3, p0, Ly/e;->e:F

    .line 257
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 260
    goto/16 :goto_8

    .line 262
    :pswitch_105  #0xc
    iget v1, p0, Ly/e;->l:F

    .line 264
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 267
    move-result v1

    .line 268
    if-nez v1, :cond_8

    .line 270
    iget v1, p0, Ly/d;->a:I

    .line 272
    iget v3, p0, Ly/e;->l:F

    .line 274
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 277
    goto/16 :goto_8

    .line 279
    :pswitch_116  #0xb
    iget v1, p0, Ly/e;->f:F

    .line 281
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_8

    .line 287
    iget v1, p0, Ly/d;->a:I

    .line 289
    iget v3, p0, Ly/e;->f:F

    .line 291
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 294
    goto/16 :goto_8

    .line 296
    :pswitch_127  #0xa
    iget v1, p0, Ly/e;->g:F

    .line 298
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 301
    move-result v1

    .line 302
    if-nez v1, :cond_8

    .line 304
    iget v1, p0, Ly/d;->a:I

    .line 306
    iget v3, p0, Ly/e;->g:F

    .line 308
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 311
    goto/16 :goto_8

    .line 313
    :pswitch_138  #0x9
    iget v1, p0, Ly/e;->i:F

    .line 315
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 318
    move-result v1

    .line 319
    if-nez v1, :cond_8

    .line 321
    iget v1, p0, Ly/d;->a:I

    .line 323
    iget v3, p0, Ly/e;->k:F

    .line 325
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 328
    goto/16 :goto_8

    .line 330
    :pswitch_149  #0x8
    iget v1, p0, Ly/e;->h:F

    .line 332
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 335
    move-result v1

    .line 336
    if-nez v1, :cond_8

    .line 338
    iget v1, p0, Ly/d;->a:I

    .line 340
    iget v3, p0, Ly/e;->j:F

    .line 342
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 345
    goto/16 :goto_8

    .line 347
    :pswitch_15a  #0x7
    iget v1, p0, Ly/e;->n:F

    .line 349
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 352
    move-result v1

    .line 353
    if-nez v1, :cond_8

    .line 355
    iget v1, p0, Ly/d;->a:I

    .line 357
    iget v3, p0, Ly/e;->n:F

    .line 359
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 362
    goto/16 :goto_8

    .line 364
    :pswitch_16b  #0x6
    iget v1, p0, Ly/e;->m:F

    .line 366
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 369
    move-result v1

    .line 370
    if-nez v1, :cond_8

    .line 372
    iget v1, p0, Ly/d;->a:I

    .line 374
    iget v3, p0, Ly/e;->m:F

    .line 376
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 379
    goto/16 :goto_8

    .line 381
    :pswitch_17c  #0x5
    iget v1, p0, Ly/e;->r:F

    .line 383
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 386
    move-result v1

    .line 387
    if-nez v1, :cond_8

    .line 389
    iget v1, p0, Ly/d;->a:I

    .line 391
    iget v3, p0, Ly/e;->r:F

    .line 393
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 396
    goto/16 :goto_8

    .line 398
    :pswitch_18d  #0x4
    iget v1, p0, Ly/e;->q:F

    .line 400
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 403
    move-result v1

    .line 404
    if-nez v1, :cond_8

    .line 406
    iget v1, p0, Ly/d;->a:I

    .line 408
    iget v3, p0, Ly/e;->q:F

    .line 410
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 413
    goto/16 :goto_8

    .line 415
    :pswitch_19e  #0x3
    iget v1, p0, Ly/e;->p:F

    .line 417
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 420
    move-result v1

    .line 421
    if-nez v1, :cond_8

    .line 423
    iget v1, p0, Ly/d;->a:I

    .line 425
    iget v3, p0, Ly/e;->p:F

    .line 427
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 430
    goto/16 :goto_8

    .line 432
    :pswitch_1af  #0x2
    iget v1, p0, Ly/e;->o:F

    .line 434
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_8

    .line 440
    iget v1, p0, Ly/d;->a:I

    .line 442
    iget v3, p0, Ly/e;->o:F

    .line 444
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 447
    goto/16 :goto_8

    .line 449
    :pswitch_1c0  #0x1
    iget v1, p0, Ly/e;->i:F

    .line 451
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 454
    move-result v1

    .line 455
    if-nez v1, :cond_8

    .line 457
    iget v1, p0, Ly/d;->a:I

    .line 459
    iget v3, p0, Ly/e;->i:F

    .line 461
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 464
    goto/16 :goto_8

    .line 466
    :pswitch_1d1  #0x0
    iget v1, p0, Ly/e;->h:F

    .line 468
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 471
    move-result v1

    .line 472
    if-nez v1, :cond_8

    .line 474
    iget v1, p0, Ly/d;->a:I

    .line 476
    iget v3, p0, Ly/e;->h:F

    .line 478
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 481
    goto/16 :goto_8

    .line 483
    :cond_1e2
    return-void

    .line 484
    nop

    .line 485
    :sswitch_data_1e4
    .sparse-switch
        -0x4a771f66 -> :sswitch_e4
        -0x4a771f65 -> :sswitch_d8
        -0x490b9c39 -> :sswitch_cc
        -0x490b9c38 -> :sswitch_c0
        -0x490b9c37 -> :sswitch_b5
        -0x3bab3dd3 -> :sswitch_aa
        -0x3621dfb2 -> :sswitch_9f
        -0x3621dfb1 -> :sswitch_96
        -0x2d5a2d1e -> :sswitch_8a
        -0x2d5a2d1d -> :sswitch_7d
        -0x266f082 -> :sswitch_70
        -0x42d1a3 -> :sswitch_63
        0x2382115 -> :sswitch_56
        0x589b15e -> :sswitch_49
    .end sparse-switch

    .line 543
    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_1d1  #00000000
        :pswitch_1c0  #00000001
        :pswitch_1af  #00000002
        :pswitch_19e  #00000003
        :pswitch_18d  #00000004
        :pswitch_17c  #00000005
        :pswitch_16b  #00000006
        :pswitch_15a  #00000007
        :pswitch_149  #00000008
        :pswitch_138  #00000009
        :pswitch_127  #0000000a
        :pswitch_116  #0000000b
        :pswitch_105  #0000000c
        :pswitch_f4  #0000000d
    .end packed-switch
.end method

.method public final b()Ly/d;
    .registers 3

    .line 1
    new-instance v0, Ly/e;

    .line 3
    invoke-direct {v0}, Ly/e;-><init>()V

    .line 6
    invoke-super {v0, p0}, Ly/d;->c(Ly/d;)Ly/d;

    .line 9
    iget v1, p0, Ly/e;->d:I

    .line 11
    iput v1, v0, Ly/e;->d:I

    .line 13
    iget v1, p0, Ly/e;->e:F

    .line 15
    iput v1, v0, Ly/e;->e:F

    .line 17
    iget v1, p0, Ly/e;->f:F

    .line 19
    iput v1, v0, Ly/e;->f:F

    .line 21
    iget v1, p0, Ly/e;->g:F

    .line 23
    iput v1, v0, Ly/e;->g:F

    .line 25
    iget v1, p0, Ly/e;->h:F

    .line 27
    iput v1, v0, Ly/e;->h:F

    .line 29
    iget v1, p0, Ly/e;->i:F

    .line 31
    iput v1, v0, Ly/e;->i:F

    .line 33
    iget v1, p0, Ly/e;->j:F

    .line 35
    iput v1, v0, Ly/e;->j:F

    .line 37
    iget v1, p0, Ly/e;->k:F

    .line 39
    iput v1, v0, Ly/e;->k:F

    .line 41
    iget v1, p0, Ly/e;->l:F

    .line 43
    iput v1, v0, Ly/e;->l:F

    .line 45
    iget v1, p0, Ly/e;->m:F

    .line 47
    iput v1, v0, Ly/e;->m:F

    .line 49
    iget v1, p0, Ly/e;->n:F

    .line 51
    iput v1, v0, Ly/e;->n:F

    .line 53
    iget v1, p0, Ly/e;->o:F

    .line 55
    iput v1, v0, Ly/e;->o:F

    .line 57
    iget v1, p0, Ly/e;->p:F

    .line 59
    iput v1, v0, Ly/e;->p:F

    .line 61
    iget v1, p0, Ly/e;->q:F

    .line 63
    iput v1, v0, Ly/e;->q:F

    .line 65
    iget v1, p0, Ly/e;->r:F

    .line 67
    iput v1, v0, Ly/e;->r:F

    .line 69
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly/e;->b()Ly/d;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Ly/e;->e:F

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    const-string v0, "alpha"

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    iget v0, p0, Ly/e;->f:F

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1a

    .line 22
    const-string v0, "elevation"

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1a
    iget v0, p0, Ly/e;->g:F

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_27

    .line 35
    const-string v0, "rotation"

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_27
    iget v0, p0, Ly/e;->h:F

    .line 42
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_34

    .line 48
    const-string v0, "rotationX"

    .line 50
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_34
    iget v0, p0, Ly/e;->i:F

    .line 55
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_41

    .line 61
    const-string v0, "rotationY"

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_41
    iget v0, p0, Ly/e;->j:F

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4e

    .line 74
    const-string v0, "transformPivotX"

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_4e
    iget v0, p0, Ly/e;->k:F

    .line 81
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_5b

    .line 87
    const-string v0, "transformPivotY"

    .line 89
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_5b
    iget v0, p0, Ly/e;->o:F

    .line 94
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_68

    .line 100
    const-string v0, "translationX"

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_68
    iget v0, p0, Ly/e;->p:F

    .line 107
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_75

    .line 113
    const-string v0, "translationY"

    .line 115
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_75
    iget v0, p0, Ly/e;->q:F

    .line 120
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_82

    .line 126
    const-string v0, "translationZ"

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_82
    iget v0, p0, Ly/e;->l:F

    .line 133
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_8f

    .line 139
    const-string v0, "transitionPathRotate"

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_8f
    iget v0, p0, Ly/e;->m:F

    .line 146
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_9c

    .line 152
    const-string v0, "scaleX"

    .line 154
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_9c
    iget v0, p0, Ly/e;->n:F

    .line 159
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_a9

    .line 165
    const-string v0, "scaleY"

    .line 167
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_a9
    iget v0, p0, Ly/e;->r:F

    .line 172
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_b6

    .line 178
    const-string v0, "progress"

    .line 180
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_b6
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 185
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 188
    move-result v0

    .line 189
    if-lez v0, :cond_e9

    .line 191
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 193
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 196
    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 200
    move-result-object v0

    .line 201
    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_e9

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Ljava/lang/String;

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    const-string v3, "CUSTOM,"

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    goto :goto_c8

    .line 234
    :cond_e9
    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 1
    sget-object v0, Lz/d;->KeyAttribute:[I

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Ly/e$a;->a:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-ge v0, p2, :cond_f8

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 19
    move-result v1

    .line 20
    sget-object v2, Ly/e$a;->a:Landroid/util/SparseIntArray;

    .line 22
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 25
    move-result v2

    .line 26
    packed-switch v2, :pswitch_data_fa

    .line 29
    :pswitch_1c  #0x3, 0xb
    const-string v2, "unused attribute 0x"

    .line 31
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "   "

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    sget-object v3, Ly/e$a;->a:Landroid/util/SparseIntArray;

    .line 49
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 52
    move-result v1

    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    const-string v2, "KeyAttribute"

    .line 62
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    goto/16 :goto_f4

    .line 67
    :pswitch_42  #0x14
    iget v2, p0, Ly/e;->k:F

    .line 69
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 72
    move-result v1

    .line 73
    iput v1, p0, Ly/e;->k:F

    .line 75
    goto/16 :goto_f4

    .line 77
    :pswitch_4c  #0x13
    iget v2, p0, Ly/e;->j:F

    .line 79
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 82
    move-result v1

    .line 83
    iput v1, p0, Ly/e;->j:F

    .line 85
    goto/16 :goto_f4

    .line 87
    :pswitch_56  #0x12
    iget v2, p0, Ly/e;->r:F

    .line 89
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 92
    move-result v1

    .line 93
    iput v1, p0, Ly/e;->r:F

    .line 95
    goto/16 :goto_f4

    .line 97
    :pswitch_60  #0x11
    iget v2, p0, Ly/e;->q:F

    .line 99
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 102
    move-result v1

    .line 103
    iput v1, p0, Ly/e;->q:F

    .line 105
    goto/16 :goto_f4

    .line 107
    :pswitch_6a  #0x10
    iget v2, p0, Ly/e;->p:F

    .line 109
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 112
    move-result v1

    .line 113
    iput v1, p0, Ly/e;->p:F

    .line 115
    goto/16 :goto_f4

    .line 117
    :pswitch_74  #0xf
    iget v2, p0, Ly/e;->o:F

    .line 119
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 122
    move-result v1

    .line 123
    iput v1, p0, Ly/e;->o:F

    .line 125
    goto/16 :goto_f4

    .line 127
    :pswitch_7e  #0xe
    iget v2, p0, Ly/e;->n:F

    .line 129
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 132
    move-result v1

    .line 133
    iput v1, p0, Ly/e;->n:F

    .line 135
    goto/16 :goto_f4

    .line 137
    :pswitch_88  #0xd
    iget v2, p0, Ly/e;->d:I

    .line 139
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 142
    move-result v1

    .line 143
    iput v1, p0, Ly/e;->d:I

    .line 145
    goto :goto_f4

    .line 146
    :pswitch_91  #0xc
    iget v2, p0, Ly/d;->a:I

    .line 148
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 151
    move-result v1

    .line 152
    iput v1, p0, Ly/d;->a:I

    .line 154
    goto :goto_f4

    .line 155
    :pswitch_9a  #0xa
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    .line 157
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 160
    move-result-object v2

    .line 161
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 163
    const/4 v3, 0x3

    .line 164
    if-ne v2, v3, :cond_a9

    .line 166
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 169
    goto :goto_f4

    .line 170
    :cond_a9
    iget v2, p0, Ly/d;->b:I

    .line 172
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 175
    move-result v1

    .line 176
    iput v1, p0, Ly/d;->b:I

    .line 178
    goto :goto_f4

    .line 179
    :pswitch_b2  #0x9
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 182
    goto :goto_f4

    .line 183
    :pswitch_b6  #0x8
    iget v2, p0, Ly/e;->l:F

    .line 185
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 188
    move-result v1

    .line 189
    iput v1, p0, Ly/e;->l:F

    .line 191
    goto :goto_f4

    .line 192
    :pswitch_bf  #0x7
    iget v2, p0, Ly/e;->m:F

    .line 194
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 197
    move-result v1

    .line 198
    iput v1, p0, Ly/e;->m:F

    .line 200
    goto :goto_f4

    .line 201
    :pswitch_c8  #0x6
    iget v2, p0, Ly/e;->i:F

    .line 203
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 206
    move-result v1

    .line 207
    iput v1, p0, Ly/e;->i:F

    .line 209
    goto :goto_f4

    .line 210
    :pswitch_d1  #0x5
    iget v2, p0, Ly/e;->h:F

    .line 212
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 215
    move-result v1

    .line 216
    iput v1, p0, Ly/e;->h:F

    .line 218
    goto :goto_f4

    .line 219
    :pswitch_da  #0x4
    iget v2, p0, Ly/e;->g:F

    .line 221
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 224
    move-result v1

    .line 225
    iput v1, p0, Ly/e;->g:F

    .line 227
    goto :goto_f4

    .line 228
    :pswitch_e3  #0x2
    iget v2, p0, Ly/e;->f:F

    .line 230
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 233
    move-result v1

    .line 234
    iput v1, p0, Ly/e;->f:F

    .line 236
    goto :goto_f4

    .line 237
    :pswitch_ec  #0x1
    iget v2, p0, Ly/e;->e:F

    .line 239
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 242
    move-result v1

    .line 243
    iput v1, p0, Ly/e;->e:F

    .line 245
    :goto_f4
    add-int/lit8 v0, v0, 0x1

    .line 247
    goto/16 :goto_d

    .line 249
    :cond_f8
    return-void

    .line 250
    nop

    .line 251
    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_ec  #00000001
        :pswitch_e3  #00000002
        :pswitch_1c  #00000003
        :pswitch_da  #00000004
        :pswitch_d1  #00000005
        :pswitch_c8  #00000006
        :pswitch_bf  #00000007
        :pswitch_b6  #00000008
        :pswitch_b2  #00000009
        :pswitch_9a  #0000000a
        :pswitch_1c  #0000000b
        :pswitch_91  #0000000c
        :pswitch_88  #0000000d
        :pswitch_7e  #0000000e
        :pswitch_74  #0000000f
        :pswitch_6a  #00000010
        :pswitch_60  #00000011
        :pswitch_56  #00000012
        :pswitch_4c  #00000013
        :pswitch_42  #00000014
    .end packed-switch
.end method

.method public final f(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Ly/e;->d:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget v0, p0, Ly/e;->e:F

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_19

    .line 15
    iget v0, p0, Ly/e;->d:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "alpha"

    .line 23
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_19
    iget v0, p0, Ly/e;->f:F

    .line 28
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2c

    .line 34
    iget v0, p0, Ly/e;->d:I

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "elevation"

    .line 42
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_2c
    iget v0, p0, Ly/e;->g:F

    .line 47
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3f

    .line 53
    iget v0, p0, Ly/e;->d:I

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    const-string v1, "rotation"

    .line 61
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_3f
    iget v0, p0, Ly/e;->h:F

    .line 66
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_52

    .line 72
    iget v0, p0, Ly/e;->d:I

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v0

    .line 78
    const-string v1, "rotationX"

    .line 80
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_52
    iget v0, p0, Ly/e;->i:F

    .line 85
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_65

    .line 91
    iget v0, p0, Ly/e;->d:I

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v0

    .line 97
    const-string v1, "rotationY"

    .line 99
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_65
    iget v0, p0, Ly/e;->j:F

    .line 104
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_78

    .line 110
    iget v0, p0, Ly/e;->d:I

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v0

    .line 116
    const-string v1, "transformPivotX"

    .line 118
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_78
    iget v0, p0, Ly/e;->k:F

    .line 123
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_8b

    .line 129
    iget v0, p0, Ly/e;->d:I

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v0

    .line 135
    const-string v1, "transformPivotY"

    .line 137
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_8b
    iget v0, p0, Ly/e;->o:F

    .line 142
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_9e

    .line 148
    iget v0, p0, Ly/e;->d:I

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v0

    .line 154
    const-string v1, "translationX"

    .line 156
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_9e
    iget v0, p0, Ly/e;->p:F

    .line 161
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_b1

    .line 167
    iget v0, p0, Ly/e;->d:I

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v0

    .line 173
    const-string v1, "translationY"

    .line 175
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_b1
    iget v0, p0, Ly/e;->q:F

    .line 180
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_c4

    .line 186
    iget v0, p0, Ly/e;->d:I

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object v0

    .line 192
    const-string v1, "translationZ"

    .line 194
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_c4
    iget v0, p0, Ly/e;->l:F

    .line 199
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_d7

    .line 205
    iget v0, p0, Ly/e;->d:I

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    move-result-object v0

    .line 211
    const-string v1, "transitionPathRotate"

    .line 213
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_d7
    iget v0, p0, Ly/e;->m:F

    .line 218
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_ea

    .line 224
    iget v0, p0, Ly/e;->d:I

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    move-result-object v0

    .line 230
    const-string v1, "scaleX"

    .line 232
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_ea
    iget v0, p0, Ly/e;->n:F

    .line 237
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_fd

    .line 243
    iget v0, p0, Ly/e;->d:I

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    move-result-object v0

    .line 249
    const-string v1, "scaleY"

    .line 251
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_fd
    iget v0, p0, Ly/e;->r:F

    .line 256
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 259
    move-result v0

    .line 260
    if-nez v0, :cond_110

    .line 262
    iget v0, p0, Ly/e;->d:I

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    move-result-object v0

    .line 268
    const-string v1, "progress"

    .line 270
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_110
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 275
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 278
    move-result v0

    .line 279
    if-lez v0, :cond_13e

    .line 281
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 283
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 286
    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 290
    move-result-object v0

    .line 291
    :goto_122
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_13e

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    move-result-object v1

    .line 301
    check-cast v1, Ljava/lang/String;

    .line 303
    const-string v2, "CUSTOM,"

    .line 305
    invoke-static {v2, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    move-result-object v1

    .line 309
    iget v2, p0, Ly/e;->d:I

    .line 311
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    goto :goto_122

    .line 319
    :cond_13e
    return-void
.end method
