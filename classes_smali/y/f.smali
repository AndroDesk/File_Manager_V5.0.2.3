.class public final Ly/f;
.super Ly/d;
.source "KeyCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/f$a;
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ly/d;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ly/f;->d:I

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Ly/f;->e:I

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Ly/f;->f:Ljava/lang/String;

    .line 13
    const/high16 v1, 0x7fc00000  # Float.NaN

    .line 15
    iput v1, p0, Ly/f;->g:F

    .line 17
    const/4 v2, 0x0

    .line 18
    iput v2, p0, Ly/f;->h:F

    .line 20
    iput v2, p0, Ly/f;->i:F

    .line 22
    iput v1, p0, Ly/f;->j:F

    .line 24
    iput v0, p0, Ly/f;->k:I

    .line 26
    iput v1, p0, Ly/f;->l:F

    .line 28
    iput v1, p0, Ly/f;->m:F

    .line 30
    iput v1, p0, Ly/f;->n:F

    .line 32
    iput v1, p0, Ly/f;->o:F

    .line 34
    iput v1, p0, Ly/f;->p:F

    .line 36
    iput v1, p0, Ly/f;->q:F

    .line 38
    iput v1, p0, Ly/f;->r:F

    .line 40
    iput v1, p0, Ly/f;->s:F

    .line 42
    iput v1, p0, Ly/f;->t:F

    .line 44
    iput v1, p0, Ly/f;->u:F

    .line 46
    iput v1, p0, Ly/f;->v:F

    .line 48
    new-instance v0, Ljava/util/HashMap;

    .line 50
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    iput-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .registers 10
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
    const-string v0, "add "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " values"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/Throwable;

    .line 25
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 31
    move-result-object v1

    .line 32
    array-length v2, v1

    .line 33
    const/4 v3, 0x1

    .line 34
    sub-int/2addr v2, v3

    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 39
    move-result v2

    .line 40
    const-string v4, " "

    .line 42
    move-object v5, v4

    .line 43
    :goto_2a
    if-gt v3, v2, :cond_7e

    .line 45
    aget-object v6, v1, v3

    .line 47
    const-string v6, ".("

    .line 49
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v6

    .line 53
    aget-object v7, v1, v3

    .line 55
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v7, ":"

    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    aget-object v7, v1, v3

    .line 69
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 72
    move-result v7

    .line 73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v7, ") "

    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    aget-object v7, v1, v3

    .line 83
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v6

    .line 94
    invoke-static {v5, v4}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v5

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v6

    .line 119
    const-string v7, "KeyCycle"

    .line 121
    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    add-int/lit8 v3, v3, 0x1

    .line 126
    goto :goto_2a

    .line 127
    :cond_7e
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v0

    .line 135
    :cond_86
    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_1f7

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Ljava/lang/String;

    .line 147
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lu/j;

    .line 153
    if-nez v2, :cond_9b

    .line 155
    goto :goto_86

    .line 156
    :cond_9b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 162
    const/4 v3, -0x1

    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 166
    move-result v4

    .line 167
    sparse-switch v4, :sswitch_data_1f8

    .line 170
    goto/16 :goto_156

    .line 172
    :sswitch_ab
    const-string v4, "wavePhase"

    .line 174
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_b5

    .line 180
    goto/16 :goto_156

    .line 182
    :cond_b5
    const/16 v3, 0xd

    .line 184
    goto/16 :goto_156

    .line 186
    :sswitch_b9
    const-string v4, "waveOffset"

    .line 188
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v4

    .line 192
    if-nez v4, :cond_c3

    .line 194
    goto/16 :goto_156

    .line 196
    :cond_c3
    const/16 v3, 0xc

    .line 198
    goto/16 :goto_156

    .line 200
    :sswitch_c7
    const-string v4, "alpha"

    .line 202
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result v4

    .line 206
    if-nez v4, :cond_d1

    .line 208
    goto/16 :goto_156

    .line 210
    :cond_d1
    const/16 v3, 0xb

    .line 212
    goto/16 :goto_156

    .line 214
    :sswitch_d5
    const-string v4, "transitionPathRotate"

    .line 216
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result v4

    .line 220
    if-nez v4, :cond_df

    .line 222
    goto/16 :goto_156

    .line 224
    :cond_df
    const/16 v3, 0xa

    .line 226
    goto/16 :goto_156

    .line 228
    :sswitch_e3
    const-string v4, "elevation"

    .line 230
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    move-result v4

    .line 234
    if-nez v4, :cond_ed

    .line 236
    goto/16 :goto_156

    .line 238
    :cond_ed
    const/16 v3, 0x9

    .line 240
    goto/16 :goto_156

    .line 242
    :sswitch_f1
    const-string v4, "rotation"

    .line 244
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v4

    .line 248
    if-nez v4, :cond_fb

    .line 250
    goto/16 :goto_156

    .line 252
    :cond_fb
    const/16 v3, 0x8

    .line 254
    goto/16 :goto_156

    .line 256
    :sswitch_ff
    const-string v4, "scaleY"

    .line 258
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    move-result v4

    .line 262
    if-nez v4, :cond_108

    .line 264
    goto :goto_156

    .line 265
    :cond_108
    const/4 v3, 0x7

    .line 266
    goto :goto_156

    .line 267
    :sswitch_10a
    const-string v4, "scaleX"

    .line 269
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    move-result v4

    .line 273
    if-nez v4, :cond_113

    .line 275
    goto :goto_156

    .line 276
    :cond_113
    const/4 v3, 0x6

    .line 277
    goto :goto_156

    .line 278
    :sswitch_115
    const-string v4, "progress"

    .line 280
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    move-result v4

    .line 284
    if-nez v4, :cond_11e

    .line 286
    goto :goto_156

    .line 287
    :cond_11e
    const/4 v3, 0x5

    .line 288
    goto :goto_156

    .line 289
    :sswitch_120
    const-string v4, "translationZ"

    .line 291
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    move-result v4

    .line 295
    if-nez v4, :cond_129

    .line 297
    goto :goto_156

    .line 298
    :cond_129
    const/4 v3, 0x4

    .line 299
    goto :goto_156

    .line 300
    :sswitch_12b
    const-string v4, "translationY"

    .line 302
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    move-result v4

    .line 306
    if-nez v4, :cond_134

    .line 308
    goto :goto_156

    .line 309
    :cond_134
    const/4 v3, 0x3

    .line 310
    goto :goto_156

    .line 311
    :sswitch_136
    const-string v4, "translationX"

    .line 313
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    move-result v4

    .line 317
    if-nez v4, :cond_13f

    .line 319
    goto :goto_156

    .line 320
    :cond_13f
    const/4 v3, 0x2

    .line 321
    goto :goto_156

    .line 322
    :sswitch_141
    const-string v4, "rotationY"

    .line 324
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    move-result v4

    .line 328
    if-nez v4, :cond_14a

    .line 330
    goto :goto_156

    .line 331
    :cond_14a
    const/4 v3, 0x1

    .line 332
    goto :goto_156

    .line 333
    :sswitch_14c
    const-string v4, "rotationX"

    .line 335
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    move-result v4

    .line 339
    if-nez v4, :cond_155

    .line 341
    goto :goto_156

    .line 342
    :cond_155
    const/4 v3, 0x0

    .line 343
    :goto_156
    packed-switch v3, :pswitch_data_232

    .line 346
    const-string v2, "CUSTOM"

    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 351
    move-result v2

    .line 352
    if-nez v2, :cond_86

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    .line 356
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    const-string v3, "  UNKNOWN  "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    move-result-object v1

    .line 371
    const-string v2, "WARNING KeyCycle"

    .line 373
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    goto/16 :goto_86

    .line 378
    :pswitch_179  #0xd
    iget v1, p0, Ly/d;->a:I

    .line 380
    iget v3, p0, Ly/f;->i:F

    .line 382
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 385
    goto/16 :goto_86

    .line 387
    :pswitch_182  #0xc
    iget v1, p0, Ly/d;->a:I

    .line 389
    iget v3, p0, Ly/f;->h:F

    .line 391
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 394
    goto/16 :goto_86

    .line 396
    :pswitch_18b  #0xb
    iget v1, p0, Ly/d;->a:I

    .line 398
    iget v3, p0, Ly/f;->l:F

    .line 400
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 403
    goto/16 :goto_86

    .line 405
    :pswitch_194  #0xa
    iget v1, p0, Ly/d;->a:I

    .line 407
    iget v3, p0, Ly/f;->o:F

    .line 409
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 412
    goto/16 :goto_86

    .line 414
    :pswitch_19d  #0x9
    iget v1, p0, Ly/d;->a:I

    .line 416
    iget v3, p0, Ly/f;->m:F

    .line 418
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 421
    goto/16 :goto_86

    .line 423
    :pswitch_1a6  #0x8
    iget v1, p0, Ly/d;->a:I

    .line 425
    iget v3, p0, Ly/f;->n:F

    .line 427
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 430
    goto/16 :goto_86

    .line 432
    :pswitch_1af  #0x7
    iget v1, p0, Ly/d;->a:I

    .line 434
    iget v3, p0, Ly/f;->s:F

    .line 436
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 439
    goto/16 :goto_86

    .line 441
    :pswitch_1b8  #0x6
    iget v1, p0, Ly/d;->a:I

    .line 443
    iget v3, p0, Ly/f;->r:F

    .line 445
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 448
    goto/16 :goto_86

    .line 450
    :pswitch_1c1  #0x5
    iget v1, p0, Ly/d;->a:I

    .line 452
    iget v3, p0, Ly/f;->j:F

    .line 454
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 457
    goto/16 :goto_86

    .line 459
    :pswitch_1ca  #0x4
    iget v1, p0, Ly/d;->a:I

    .line 461
    iget v3, p0, Ly/f;->v:F

    .line 463
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 466
    goto/16 :goto_86

    .line 468
    :pswitch_1d3  #0x3
    iget v1, p0, Ly/d;->a:I

    .line 470
    iget v3, p0, Ly/f;->u:F

    .line 472
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 475
    goto/16 :goto_86

    .line 477
    :pswitch_1dc  #0x2
    iget v1, p0, Ly/d;->a:I

    .line 479
    iget v3, p0, Ly/f;->t:F

    .line 481
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 484
    goto/16 :goto_86

    .line 486
    :pswitch_1e5  #0x1
    iget v1, p0, Ly/d;->a:I

    .line 488
    iget v3, p0, Ly/f;->q:F

    .line 490
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 493
    goto/16 :goto_86

    .line 495
    :pswitch_1ee  #0x0
    iget v1, p0, Ly/d;->a:I

    .line 497
    iget v3, p0, Ly/f;->p:F

    .line 499
    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    .line 502
    goto/16 :goto_86

    .line 504
    :cond_1f7
    return-void

    .line 505
    :sswitch_data_1f8
    .sparse-switch
        -0x4a771f66 -> :sswitch_14c
        -0x4a771f65 -> :sswitch_141
        -0x490b9c39 -> :sswitch_136
        -0x490b9c38 -> :sswitch_12b
        -0x490b9c37 -> :sswitch_120
        -0x3bab3dd3 -> :sswitch_115
        -0x3621dfb2 -> :sswitch_10a
        -0x3621dfb1 -> :sswitch_ff
        -0x266f082 -> :sswitch_f1
        -0x42d1a3 -> :sswitch_e3
        0x2382115 -> :sswitch_d5
        0x589b15e -> :sswitch_c7
        0x94e04ec -> :sswitch_b9
        0x5b327a02 -> :sswitch_ab
    .end sparse-switch

    .line 563
    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_1ee  #00000000
        :pswitch_1e5  #00000001
        :pswitch_1dc  #00000002
        :pswitch_1d3  #00000003
        :pswitch_1ca  #00000004
        :pswitch_1c1  #00000005
        :pswitch_1b8  #00000006
        :pswitch_1af  #00000007
        :pswitch_1a6  #00000008
        :pswitch_19d  #00000009
        :pswitch_194  #0000000a
        :pswitch_18b  #0000000b
        :pswitch_182  #0000000c
        :pswitch_179  #0000000d
    .end packed-switch
.end method

.method public final b()Ly/d;
    .registers 3

    .line 1
    new-instance v0, Ly/f;

    .line 3
    invoke-direct {v0}, Ly/f;-><init>()V

    .line 6
    invoke-super {v0, p0}, Ly/d;->c(Ly/d;)Ly/d;

    .line 9
    iget v1, p0, Ly/f;->d:I

    .line 11
    iput v1, v0, Ly/f;->d:I

    .line 13
    iget v1, p0, Ly/f;->e:I

    .line 15
    iput v1, v0, Ly/f;->e:I

    .line 17
    iget-object v1, p0, Ly/f;->f:Ljava/lang/String;

    .line 19
    iput-object v1, v0, Ly/f;->f:Ljava/lang/String;

    .line 21
    iget v1, p0, Ly/f;->g:F

    .line 23
    iput v1, v0, Ly/f;->g:F

    .line 25
    iget v1, p0, Ly/f;->h:F

    .line 27
    iput v1, v0, Ly/f;->h:F

    .line 29
    iget v1, p0, Ly/f;->i:F

    .line 31
    iput v1, v0, Ly/f;->i:F

    .line 33
    iget v1, p0, Ly/f;->j:F

    .line 35
    iput v1, v0, Ly/f;->j:F

    .line 37
    iget v1, p0, Ly/f;->k:I

    .line 39
    iput v1, v0, Ly/f;->k:I

    .line 41
    iget v1, p0, Ly/f;->l:F

    .line 43
    iput v1, v0, Ly/f;->l:F

    .line 45
    iget v1, p0, Ly/f;->m:F

    .line 47
    iput v1, v0, Ly/f;->m:F

    .line 49
    iget v1, p0, Ly/f;->n:F

    .line 51
    iput v1, v0, Ly/f;->n:F

    .line 53
    iget v1, p0, Ly/f;->o:F

    .line 55
    iput v1, v0, Ly/f;->o:F

    .line 57
    iget v1, p0, Ly/f;->p:F

    .line 59
    iput v1, v0, Ly/f;->p:F

    .line 61
    iget v1, p0, Ly/f;->q:F

    .line 63
    iput v1, v0, Ly/f;->q:F

    .line 65
    iget v1, p0, Ly/f;->r:F

    .line 67
    iput v1, v0, Ly/f;->r:F

    .line 69
    iget v1, p0, Ly/f;->s:F

    .line 71
    iput v1, v0, Ly/f;->s:F

    .line 73
    iget v1, p0, Ly/f;->t:F

    .line 75
    iput v1, v0, Ly/f;->t:F

    .line 77
    iget v1, p0, Ly/f;->u:F

    .line 79
    iput v1, v0, Ly/f;->u:F

    .line 81
    iget v1, p0, Ly/f;->v:F

    .line 83
    iput v1, v0, Ly/f;->v:F

    .line 85
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly/f;->b()Ly/d;

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
    iget v0, p0, Ly/f;->l:F

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
    iget v0, p0, Ly/f;->m:F

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
    iget v0, p0, Ly/f;->n:F

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
    iget v0, p0, Ly/f;->p:F

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
    iget v0, p0, Ly/f;->q:F

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
    iget v0, p0, Ly/f;->r:F

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4e

    .line 74
    const-string v0, "scaleX"

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_4e
    iget v0, p0, Ly/f;->s:F

    .line 81
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_5b

    .line 87
    const-string v0, "scaleY"

    .line 89
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_5b
    iget v0, p0, Ly/f;->o:F

    .line 94
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_68

    .line 100
    const-string v0, "transitionPathRotate"

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_68
    iget v0, p0, Ly/f;->t:F

    .line 107
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_75

    .line 113
    const-string v0, "translationX"

    .line 115
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_75
    iget v0, p0, Ly/f;->u:F

    .line 120
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_82

    .line 126
    const-string v0, "translationY"

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_82
    iget v0, p0, Ly/f;->v:F

    .line 133
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_8f

    .line 139
    const-string v0, "translationZ"

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_8f
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 146
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 149
    move-result v0

    .line 150
    if-lez v0, :cond_c2

    .line 152
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 154
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 157
    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 161
    move-result-object v0

    .line 162
    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_c2

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Ljava/lang/String;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    const-string v3, "CUSTOM,"

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    goto :goto_a1

    .line 195
    :cond_c2
    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 1
    sget-object v0, Lz/d;->KeyCycle:[I

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-ge v0, p2, :cond_141

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 19
    move-result v1

    .line 20
    sget-object v2, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 22
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x3

    .line 27
    packed-switch v2, :pswitch_data_142

    .line 30
    const-string v2, "unused attribute 0x"

    .line 32
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, "   "

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget-object v3, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 50
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    const-string v2, "KeyCycle"

    .line 63
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    goto/16 :goto_13d

    .line 68
    :pswitch_43  #0x15
    iget v2, p0, Ly/f;->i:F

    .line 70
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 73
    move-result v1

    .line 74
    const/high16 v2, 0x43b40000  # 360.0f

    .line 76
    div-float/2addr v1, v2

    .line 77
    iput v1, p0, Ly/f;->i:F

    .line 79
    goto/16 :goto_13d

    .line 81
    :pswitch_50  #0x14
    iget v2, p0, Ly/f;->j:F

    .line 83
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 86
    move-result v1

    .line 87
    iput v1, p0, Ly/f;->j:F

    .line 89
    goto/16 :goto_13d

    .line 91
    :pswitch_5a  #0x13
    iget v2, p0, Ly/f;->v:F

    .line 93
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 96
    move-result v1

    .line 97
    iput v1, p0, Ly/f;->v:F

    .line 99
    goto/16 :goto_13d

    .line 101
    :pswitch_64  #0x12
    iget v2, p0, Ly/f;->u:F

    .line 103
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 106
    move-result v1

    .line 107
    iput v1, p0, Ly/f;->u:F

    .line 109
    goto/16 :goto_13d

    .line 111
    :pswitch_6e  #0x11
    iget v2, p0, Ly/f;->t:F

    .line 113
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 116
    move-result v1

    .line 117
    iput v1, p0, Ly/f;->t:F

    .line 119
    goto/16 :goto_13d

    .line 121
    :pswitch_78  #0x10
    iget v2, p0, Ly/f;->s:F

    .line 123
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 126
    move-result v1

    .line 127
    iput v1, p0, Ly/f;->s:F

    .line 129
    goto/16 :goto_13d

    .line 131
    :pswitch_82  #0xf
    iget v2, p0, Ly/f;->r:F

    .line 133
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 136
    move-result v1

    .line 137
    iput v1, p0, Ly/f;->r:F

    .line 139
    goto/16 :goto_13d

    .line 141
    :pswitch_8c  #0xe
    iget v2, p0, Ly/f;->o:F

    .line 143
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 146
    move-result v1

    .line 147
    iput v1, p0, Ly/f;->o:F

    .line 149
    goto/16 :goto_13d

    .line 151
    :pswitch_96  #0xd
    iget v2, p0, Ly/f;->q:F

    .line 153
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 156
    move-result v1

    .line 157
    iput v1, p0, Ly/f;->q:F

    .line 159
    goto/16 :goto_13d

    .line 161
    :pswitch_a0  #0xc
    iget v2, p0, Ly/f;->p:F

    .line 163
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 166
    move-result v1

    .line 167
    iput v1, p0, Ly/f;->p:F

    .line 169
    goto/16 :goto_13d

    .line 171
    :pswitch_aa  #0xb
    iget v2, p0, Ly/f;->n:F

    .line 173
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 176
    move-result v1

    .line 177
    iput v1, p0, Ly/f;->n:F

    .line 179
    goto/16 :goto_13d

    .line 181
    :pswitch_b4  #0xa
    iget v2, p0, Ly/f;->m:F

    .line 183
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 186
    move-result v1

    .line 187
    iput v1, p0, Ly/f;->m:F

    .line 189
    goto/16 :goto_13d

    .line 191
    :pswitch_be  #0x9
    iget v2, p0, Ly/f;->l:F

    .line 193
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 196
    move-result v1

    .line 197
    iput v1, p0, Ly/f;->l:F

    .line 199
    goto/16 :goto_13d

    .line 201
    :pswitch_c8  #0x8
    iget v2, p0, Ly/f;->k:I

    .line 203
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 206
    move-result v1

    .line 207
    iput v1, p0, Ly/f;->k:I

    .line 209
    goto/16 :goto_13d

    .line 211
    :pswitch_d2  #0x7
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 214
    move-result-object v2

    .line 215
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 217
    const/4 v3, 0x5

    .line 218
    if-ne v2, v3, :cond_e4

    .line 220
    iget v2, p0, Ly/f;->h:F

    .line 222
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 225
    move-result v1

    .line 226
    iput v1, p0, Ly/f;->h:F

    .line 228
    goto :goto_13d

    .line 229
    :cond_e4
    iget v2, p0, Ly/f;->h:F

    .line 231
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 234
    move-result v1

    .line 235
    iput v1, p0, Ly/f;->h:F

    .line 237
    goto :goto_13d

    .line 238
    :pswitch_ed  #0x6
    iget v2, p0, Ly/f;->g:F

    .line 240
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 243
    move-result v1

    .line 244
    iput v1, p0, Ly/f;->g:F

    .line 246
    goto :goto_13d

    .line 247
    :pswitch_f6  #0x5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 250
    move-result-object v2

    .line 251
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 253
    if-ne v2, v3, :cond_108

    .line 255
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 258
    move-result-object v1

    .line 259
    iput-object v1, p0, Ly/f;->f:Ljava/lang/String;

    .line 261
    const/4 v1, 0x7

    .line 262
    iput v1, p0, Ly/f;->e:I

    .line 264
    goto :goto_13d

    .line 265
    :cond_108
    iget v2, p0, Ly/f;->e:I

    .line 267
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 270
    move-result v1

    .line 271
    iput v1, p0, Ly/f;->e:I

    .line 273
    goto :goto_13d

    .line 274
    :pswitch_111  #0x4
    iget v2, p0, Ly/f;->d:I

    .line 276
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 279
    move-result v1

    .line 280
    iput v1, p0, Ly/f;->d:I

    .line 282
    goto :goto_13d

    .line 283
    :pswitch_11a  #0x3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 286
    goto :goto_13d

    .line 287
    :pswitch_11e  #0x2
    iget v2, p0, Ly/d;->a:I

    .line 289
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 292
    move-result v1

    .line 293
    iput v1, p0, Ly/d;->a:I

    .line 295
    goto :goto_13d

    .line 296
    :pswitch_127  #0x1
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    .line 298
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 301
    move-result-object v2

    .line 302
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 304
    if-ne v2, v3, :cond_135

    .line 306
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 309
    goto :goto_13d

    .line 310
    :cond_135
    iget v2, p0, Ly/d;->b:I

    .line 312
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 315
    move-result v1

    .line 316
    iput v1, p0, Ly/d;->b:I

    .line 318
    :goto_13d
    add-int/lit8 v0, v0, 0x1

    .line 320
    goto/16 :goto_d

    .line 322
    :cond_141
    return-void

    .line 323
    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_127  #00000001
        :pswitch_11e  #00000002
        :pswitch_11a  #00000003
        :pswitch_111  #00000004
        :pswitch_f6  #00000005
        :pswitch_ed  #00000006
        :pswitch_d2  #00000007
        :pswitch_c8  #00000008
        :pswitch_be  #00000009
        :pswitch_b4  #0000000a
        :pswitch_aa  #0000000b
        :pswitch_a0  #0000000c
        :pswitch_96  #0000000d
        :pswitch_8c  #0000000e
        :pswitch_82  #0000000f
        :pswitch_78  #00000010
        :pswitch_6e  #00000011
        :pswitch_64  #00000012
        :pswitch_5a  #00000013
        :pswitch_50  #00000014
        :pswitch_43  #00000015
    .end packed-switch
.end method
