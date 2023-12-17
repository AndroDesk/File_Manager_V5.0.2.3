.class public final Landroidx/constraintlayout/widget/ConstraintLayout$c;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Lw/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    return-void
.end method

.method public static a(III)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v1

    .line 9
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 15
    move-result p0

    .line 16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 19
    move-result p1

    .line 20
    const/high16 v2, 0x40000000  # 2.0f

    .line 22
    if-ne p0, v2, :cond_20

    .line 24
    const/high16 p0, -0x80000000

    .line 26
    if-eq v1, p0, :cond_1d

    .line 28
    if-nez v1, :cond_20

    .line 30
    :cond_1d
    if-ne p2, p1, :cond_20

    .line 32
    return v0

    .line 33
    :cond_20
    const/4 p0, 0x0

    .line 34
    return p0
.end method


# virtual methods
.method public final b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$a;)V
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    if-nez v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 12
    const/16 v4, 0x8

    .line 14
    const/4 v5, 0x0

    .line 15
    if-ne v3, v4, :cond_1b

    .line 17
    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G:Z

    .line 19
    if-nez v3, :cond_1b

    .line 21
    iput v5, v2, Lw/b$a;->e:I

    .line 23
    iput v5, v2, Lw/b$a;->f:I

    .line 25
    iput v5, v2, Lw/b$a;->g:I

    .line 27
    return-void

    .line 28
    :cond_1b
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    if-nez v3, :cond_20

    .line 32
    return-void

    .line 33
    :cond_20
    iget-object v3, v2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 35
    iget-object v4, v2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 37
    iget v6, v2, Lw/b$a;->c:I

    .line 39
    iget v7, v2, Lw/b$a;->d:I

    .line 41
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b:I

    .line 43
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c:I

    .line 45
    add-int/2addr v8, v9

    .line 46
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    .line 48
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/Object;

    .line 50
    check-cast v10, Landroid/view/View;

    .line 52
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    .line 54
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 57
    move-result v12

    .line 58
    aget v12, v11, v12

    .line 60
    const/4 v13, 0x3

    .line 61
    const/4 v14, 0x2

    .line 62
    const/4 v15, 0x4

    .line 63
    const/4 v5, 0x1

    .line 64
    if-eq v12, v5, :cond_b2

    .line 66
    if-eq v12, v14, :cond_aa

    .line 68
    if-eq v12, v13, :cond_90

    .line 70
    if-eq v12, v15, :cond_4a

    .line 72
    const/4 v6, 0x0

    .line 73
    goto/16 :goto_b8

    .line 75
    :cond_4a
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    .line 77
    const/4 v12, -0x2

    .line 78
    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 81
    move-result v6

    .line 82
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 84
    if-ne v9, v5, :cond_57

    .line 86
    move v9, v5

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    const/4 v9, 0x0

    .line 89
    :goto_58
    iget v12, v2, Lw/b$a;->j:I

    .line 91
    if-eq v12, v5, :cond_5e

    .line 93
    if-ne v12, v14, :cond_b8

    .line 95
    :cond_5e
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 98
    move-result v12

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 102
    move-result v15

    .line 103
    if-ne v12, v15, :cond_6a

    .line 105
    move v12, v5

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    const/4 v12, 0x0

    .line 108
    :goto_6b
    iget v15, v2, Lw/b$a;->j:I

    .line 110
    if-eq v15, v14, :cond_82

    .line 112
    if-eqz v9, :cond_82

    .line 114
    if-eqz v9, :cond_75

    .line 116
    if-nez v12, :cond_82

    .line 118
    :cond_75
    instance-of v9, v10, Landroidx/constraintlayout/widget/f;

    .line 120
    if-nez v9, :cond_82

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_80

    .line 128
    goto :goto_82

    .line 129
    :cond_80
    const/4 v9, 0x0

    .line 130
    goto :goto_83

    .line 131
    :cond_82
    :goto_82
    move v9, v5

    .line 132
    :goto_83
    if-eqz v9, :cond_b8

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 137
    move-result v6

    .line 138
    const/high16 v9, 0x40000000  # 2.0f

    .line 140
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 143
    move-result v6

    .line 144
    goto :goto_b8

    .line 145
    :cond_90
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    .line 147
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 149
    if-eqz v12, :cond_9b

    .line 151
    iget v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 153
    const/4 v15, 0x0

    .line 154
    add-int/2addr v12, v15

    .line 155
    goto :goto_9c

    .line 156
    :cond_9b
    const/4 v12, 0x0

    .line 157
    :goto_9c
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 159
    if-eqz v15, :cond_a3

    .line 161
    iget v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 163
    add-int/2addr v12, v15

    .line 164
    :cond_a3
    add-int/2addr v9, v12

    .line 165
    const/4 v12, -0x1

    .line 166
    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 169
    move-result v6

    .line 170
    goto :goto_b8

    .line 171
    :cond_aa
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    .line 173
    const/4 v12, -0x2

    .line 174
    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 177
    move-result v6

    .line 178
    goto :goto_b8

    .line 179
    :cond_b2
    const/high16 v9, 0x40000000  # 2.0f

    .line 181
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 184
    move-result v6

    .line 185
    :cond_b8
    :goto_b8
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 188
    move-result v9

    .line 189
    aget v9, v11, v9

    .line 191
    if-eq v9, v5, :cond_136

    .line 193
    if-eq v9, v14, :cond_12e

    .line 195
    if-eq v9, v13, :cond_110

    .line 197
    const/4 v7, 0x4

    .line 198
    if-eq v9, v7, :cond_ca

    .line 200
    const/4 v7, 0x0

    .line 201
    goto/16 :goto_13c

    .line 203
    :cond_ca
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    .line 205
    const/4 v9, -0x2

    .line 206
    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 209
    move-result v7

    .line 210
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 212
    if-ne v8, v5, :cond_d7

    .line 214
    move v8, v5

    .line 215
    goto :goto_d8

    .line 216
    :cond_d7
    const/4 v8, 0x0

    .line 217
    :goto_d8
    iget v9, v2, Lw/b$a;->j:I

    .line 219
    if-eq v9, v5, :cond_de

    .line 221
    if-ne v9, v14, :cond_13c

    .line 223
    :cond_de
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 226
    move-result v9

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 230
    move-result v11

    .line 231
    if-ne v9, v11, :cond_ea

    .line 233
    move v9, v5

    .line 234
    goto :goto_eb

    .line 235
    :cond_ea
    const/4 v9, 0x0

    .line 236
    :goto_eb
    iget v11, v2, Lw/b$a;->j:I

    .line 238
    if-eq v11, v14, :cond_102

    .line 240
    if-eqz v8, :cond_102

    .line 242
    if-eqz v8, :cond_f5

    .line 244
    if-nez v9, :cond_102

    .line 246
    :cond_f5
    instance-of v8, v10, Landroidx/constraintlayout/widget/f;

    .line 248
    if-nez v8, :cond_102

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    .line 253
    move-result v8

    .line 254
    if-eqz v8, :cond_100

    .line 256
    goto :goto_102

    .line 257
    :cond_100
    const/4 v8, 0x0

    .line 258
    goto :goto_103

    .line 259
    :cond_102
    :goto_102
    move v8, v5

    .line 260
    :goto_103
    if-eqz v8, :cond_13c

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 265
    move-result v7

    .line 266
    const/high16 v8, 0x40000000  # 2.0f

    .line 268
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 271
    move-result v7

    .line 272
    goto :goto_13c

    .line 273
    :cond_110
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    .line 275
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 277
    if-eqz v9, :cond_11d

    .line 279
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 281
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 283
    const/4 v11, 0x0

    .line 284
    add-int/2addr v9, v11

    .line 285
    goto :goto_11e

    .line 286
    :cond_11d
    const/4 v9, 0x0

    .line 287
    :goto_11e
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 289
    if-eqz v11, :cond_127

    .line 291
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 293
    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 295
    add-int/2addr v9, v11

    .line 296
    :cond_127
    add-int/2addr v8, v9

    .line 297
    const/4 v9, -0x1

    .line 298
    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 301
    move-result v7

    .line 302
    goto :goto_13c

    .line 303
    :cond_12e
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    .line 305
    const/4 v9, -0x2

    .line 306
    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 309
    move-result v7

    .line 310
    goto :goto_13c

    .line 311
    :cond_136
    const/high16 v8, 0x40000000  # 2.0f

    .line 313
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 316
    move-result v7

    .line 317
    :cond_13c
    :goto_13c
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 319
    check-cast v8, Landroidx/constraintlayout/core/widgets/d;

    .line 321
    if-eqz v8, :cond_1b4

    .line 323
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 325
    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    .line 328
    move-result v9

    .line 329
    const/16 v11, 0x100

    .line 331
    invoke-static {v9, v11}, Landroidx/constraintlayout/core/widgets/f;->b(II)Z

    .line 334
    move-result v9

    .line 335
    if-eqz v9, :cond_1b4

    .line 337
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 340
    move-result v9

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 344
    move-result v11

    .line 345
    if-ne v9, v11, :cond_1b4

    .line 347
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 350
    move-result v9

    .line 351
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 354
    move-result v11

    .line 355
    if-ge v9, v11, :cond_1b4

    .line 357
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 360
    move-result v9

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 364
    move-result v11

    .line 365
    if-ne v9, v11, :cond_1b4

    .line 367
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 370
    move-result v9

    .line 371
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 374
    move-result v8

    .line 375
    if-ge v9, v8, :cond_1b4

    .line 377
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 380
    move-result v8

    .line 381
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 383
    if-ne v8, v9, :cond_1b4

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 388
    move-result v8

    .line 389
    if-nez v8, :cond_1b4

    .line 391
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:I

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 396
    move-result v9

    .line 397
    invoke-static {v8, v6, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a(III)Z

    .line 400
    move-result v8

    .line 401
    if-eqz v8, :cond_1a0

    .line 403
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:I

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 408
    move-result v9

    .line 409
    invoke-static {v8, v7, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a(III)Z

    .line 412
    move-result v8

    .line 413
    if-eqz v8, :cond_1a0

    .line 415
    move v8, v5

    .line 416
    goto :goto_1a1

    .line 417
    :cond_1a0
    const/4 v8, 0x0

    .line 418
    :goto_1a1
    if-eqz v8, :cond_1b4

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 423
    move-result v3

    .line 424
    iput v3, v2, Lw/b$a;->e:I

    .line 426
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 429
    move-result v3

    .line 430
    iput v3, v2, Lw/b$a;->f:I

    .line 432
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 434
    iput v1, v2, Lw/b$a;->g:I

    .line 436
    return-void

    .line 437
    :cond_1b4
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 439
    if-ne v3, v8, :cond_1ba

    .line 441
    move v9, v5

    .line 442
    goto :goto_1bb

    .line 443
    :cond_1ba
    const/4 v9, 0x0

    .line 444
    :goto_1bb
    if-ne v4, v8, :cond_1bf

    .line 446
    move v8, v5

    .line 447
    goto :goto_1c0

    .line 448
    :cond_1bf
    const/4 v8, 0x0

    .line 449
    :goto_1c0
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 451
    if-eq v4, v11, :cond_1cb

    .line 453
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 455
    if-ne v4, v12, :cond_1c9

    .line 457
    goto :goto_1cb

    .line 458
    :cond_1c9
    const/4 v15, 0x0

    .line 459
    goto :goto_1cc

    .line 460
    :cond_1cb
    :goto_1cb
    move v15, v5

    .line 461
    :goto_1cc
    if-eq v3, v11, :cond_1d5

    .line 463
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 465
    if-ne v3, v4, :cond_1d3

    .line 467
    goto :goto_1d5

    .line 468
    :cond_1d3
    const/4 v3, 0x0

    .line 469
    goto :goto_1d6

    .line 470
    :cond_1d5
    :goto_1d5
    move v3, v5

    .line 471
    :goto_1d6
    const/4 v4, 0x0

    .line 472
    if-eqz v9, :cond_1e1

    .line 474
    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 476
    cmpl-float v11, v11, v4

    .line 478
    if-lez v11, :cond_1e1

    .line 480
    move v11, v5

    .line 481
    goto :goto_1e2

    .line 482
    :cond_1e1
    const/4 v11, 0x0

    .line 483
    :goto_1e2
    if-eqz v8, :cond_1ec

    .line 485
    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 487
    cmpl-float v4, v12, v4

    .line 489
    if-lez v4, :cond_1ec

    .line 491
    move v4, v5

    .line 492
    goto :goto_1ed

    .line 493
    :cond_1ec
    const/4 v4, 0x0

    .line 494
    :goto_1ed
    if-nez v10, :cond_1f0

    .line 496
    return-void

    .line 497
    :cond_1f0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 500
    move-result-object v12

    .line 501
    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 503
    iget v13, v2, Lw/b$a;->j:I

    .line 505
    if-eq v13, v5, :cond_210

    .line 507
    if-eq v13, v14, :cond_210

    .line 509
    if-eqz v9, :cond_210

    .line 511
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 513
    if-nez v9, :cond_210

    .line 515
    if-eqz v8, :cond_210

    .line 517
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 519
    if-eqz v8, :cond_209

    .line 521
    goto :goto_210

    .line 522
    :cond_209
    const/4 v0, 0x0

    .line 523
    const/4 v3, 0x0

    .line 524
    const/4 v4, -0x1

    .line 525
    const/4 v13, 0x0

    .line 526
    :goto_20d
    const/4 v15, 0x0

    .line 527
    goto/16 :goto_2b8

    .line 529
    :cond_210
    :goto_210
    instance-of v8, v10, Lz/g;

    .line 531
    if-eqz v8, :cond_21f

    .line 533
    instance-of v8, v1, Landroidx/constraintlayout/core/widgets/g;

    .line 535
    if-eqz v8, :cond_21f

    .line 537
    move-object v8, v1

    .line 538
    check-cast v8, Landroidx/constraintlayout/core/widgets/g;

    .line 540
    move-object v8, v10

    .line 541
    check-cast v8, Lz/g;

    .line 543
    goto :goto_222

    .line 544
    :cond_21f
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 547
    :goto_222
    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:I

    .line 549
    iput v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:I

    .line 551
    const/4 v8, 0x0

    .line 552
    iput-boolean v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 554
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 557
    move-result v8

    .line 558
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 561
    move-result v9

    .line 562
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 565
    move-result v13

    .line 566
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 568
    if-lez v14, :cond_23e

    .line 570
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    .line 573
    move-result v14

    .line 574
    goto :goto_23f

    .line 575
    :cond_23e
    move v14, v8

    .line 576
    :goto_23f
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 578
    if-lez v5, :cond_247

    .line 580
    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    .line 583
    move-result v14

    .line 584
    :cond_247
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 586
    if-lez v5, :cond_252

    .line 588
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    .line 591
    move-result v5

    .line 592
    move/from16 v16, v6

    .line 594
    goto :goto_255

    .line 595
    :cond_252
    move/from16 v16, v6

    .line 597
    move v5, v9

    .line 598
    :goto_255
    iget v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 600
    if-lez v6, :cond_25d

    .line 602
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 605
    move-result v5

    .line 606
    :cond_25d
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 608
    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    .line 611
    move-result v6

    .line 612
    const/4 v0, 0x1

    .line 613
    invoke-static {v6, v0}, Landroidx/constraintlayout/core/widgets/f;->b(II)Z

    .line 616
    move-result v6

    .line 617
    if-nez v6, :cond_283

    .line 619
    const/high16 v0, 0x3f000000  # 0.5f

    .line 621
    if-eqz v11, :cond_278

    .line 623
    if-eqz v15, :cond_278

    .line 625
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 627
    int-to-float v4, v5

    .line 628
    mul-float/2addr v4, v3

    .line 629
    add-float/2addr v4, v0

    .line 630
    float-to-int v0, v4

    .line 631
    move v15, v0

    .line 632
    goto :goto_284

    .line 633
    :cond_278
    if-eqz v4, :cond_283

    .line 635
    if-eqz v3, :cond_283

    .line 637
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 639
    int-to-float v4, v14

    .line 640
    div-float/2addr v4, v3

    .line 641
    add-float/2addr v4, v0

    .line 642
    float-to-int v0, v4

    .line 643
    move v5, v0

    .line 644
    :cond_283
    move v15, v14

    .line 645
    :goto_284
    if-ne v8, v15, :cond_28d

    .line 647
    if-eq v9, v5, :cond_289

    .line 649
    goto :goto_28d

    .line 650
    :cond_289
    move v3, v5

    .line 651
    move v0, v15

    .line 652
    const/4 v4, -0x1

    .line 653
    goto :goto_20d

    .line 654
    :cond_28d
    :goto_28d
    if-eq v8, v15, :cond_296

    .line 656
    const/high16 v0, 0x40000000  # 2.0f

    .line 658
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 661
    move-result v6

    .line 662
    goto :goto_29a

    .line 663
    :cond_296
    const/high16 v0, 0x40000000  # 2.0f

    .line 665
    move/from16 v6, v16

    .line 667
    :goto_29a
    if-eq v9, v5, :cond_2a0

    .line 669
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 672
    move-result v7

    .line 673
    :cond_2a0
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 676
    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:I

    .line 678
    iput v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:I

    .line 680
    const/4 v15, 0x0

    .line 681
    iput-boolean v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 683
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 686
    move-result v0

    .line 687
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 690
    move-result v3

    .line 691
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 694
    move-result v4

    .line 695
    move v13, v4

    .line 696
    const/4 v4, -0x1

    .line 697
    :goto_2b8
    if-eq v13, v4, :cond_2bc

    .line 699
    const/4 v4, 0x1

    .line 700
    goto :goto_2bd

    .line 701
    :cond_2bc
    move v4, v15

    .line 702
    :goto_2bd
    iget v5, v2, Lw/b$a;->c:I

    .line 704
    if-ne v0, v5, :cond_2c8

    .line 706
    iget v5, v2, Lw/b$a;->d:I

    .line 708
    if-eq v3, v5, :cond_2c6

    .line 710
    goto :goto_2c8

    .line 711
    :cond_2c6
    move v5, v15

    .line 712
    goto :goto_2c9

    .line 713
    :cond_2c8
    :goto_2c8
    const/4 v5, 0x1

    .line 714
    :goto_2c9
    iput-boolean v5, v2, Lw/b$a;->i:Z

    .line 716
    iget-boolean v5, v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c0:Z

    .line 718
    if-eqz v5, :cond_2d0

    .line 720
    const/4 v4, 0x1

    .line 721
    :cond_2d0
    if-eqz v4, :cond_2dc

    .line 723
    const/4 v5, -0x1

    .line 724
    if-eq v13, v5, :cond_2dc

    .line 726
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 728
    if-eq v1, v13, :cond_2dc

    .line 730
    const/4 v1, 0x1

    .line 731
    iput-boolean v1, v2, Lw/b$a;->i:Z

    .line 733
    :cond_2dc
    iput v0, v2, Lw/b$a;->e:I

    .line 735
    iput v3, v2, Lw/b$a;->f:I

    .line 737
    iput-boolean v4, v2, Lw/b$a;->h:Z

    .line 739
    iput v13, v2, Lw/b$a;->g:I

    .line 741
    return-void
.end method
