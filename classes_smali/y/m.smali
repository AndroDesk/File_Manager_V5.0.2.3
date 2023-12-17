.class public final Ly/m;
.super Ljava/lang/Object;
.source "MotionController.java"


# instance fields
.field public A:F

.field public B:Z

.field public a:Landroid/view/View;

.field public b:Z

.field public c:I

.field public d:Ly/o;

.field public e:Ly/o;

.field public f:Ly/l;

.field public g:Ly/l;

.field public h:[Lu/b;

.field public i:Lu/a;

.field public j:F

.field public k:[I

.field public l:[D

.field public m:[D

.field public n:[Ljava/lang/String;

.field public o:[I

.field public p:[F

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly/o;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly/d;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/d;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/c;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/b;",
            ">;"
        }
    .end annotation
.end field

.field public v:[Ly/k;

.field public w:I

.field public x:I

.field public y:Landroid/view/View;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Ly/m;->b:Z

    .line 12
    const/4 v1, -0x1

    .line 13
    iput v1, p0, Ly/m;->c:I

    .line 15
    new-instance v2, Ly/o;

    .line 17
    invoke-direct {v2}, Ly/o;-><init>()V

    .line 20
    iput-object v2, p0, Ly/m;->d:Ly/o;

    .line 22
    new-instance v2, Ly/o;

    .line 24
    invoke-direct {v2}, Ly/o;-><init>()V

    .line 27
    iput-object v2, p0, Ly/m;->e:Ly/o;

    .line 29
    new-instance v2, Ly/l;

    .line 31
    invoke-direct {v2}, Ly/l;-><init>()V

    .line 34
    iput-object v2, p0, Ly/m;->f:Ly/l;

    .line 36
    new-instance v2, Ly/l;

    .line 38
    invoke-direct {v2}, Ly/l;-><init>()V

    .line 41
    iput-object v2, p0, Ly/m;->g:Ly/l;

    .line 43
    const/high16 v2, 0x3f800000  # 1.0f

    .line 45
    iput v2, p0, Ly/m;->j:F

    .line 47
    const/4 v2, 0x4

    .line 48
    new-array v2, v2, [F

    .line 50
    iput-object v2, p0, Ly/m;->p:[F

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    .line 54
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iput-object v2, p0, Ly/m;->q:Ljava/util/ArrayList;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iput-object v2, p0, Ly/m;->r:Ljava/util/ArrayList;

    .line 66
    iput v1, p0, Ly/m;->w:I

    .line 68
    iput v1, p0, Ly/m;->x:I

    .line 70
    const/4 v2, 0x0

    .line 71
    iput-object v2, p0, Ly/m;->y:Landroid/view/View;

    .line 73
    iput v1, p0, Ly/m;->z:I

    .line 75
    const/high16 v1, 0x7fc00000  # Float.NaN

    .line 77
    iput v1, p0, Ly/m;->A:F

    .line 79
    iput-boolean v0, p0, Ly/m;->B:Z

    .line 81
    iput-object p1, p0, Ly/m;->a:Landroid/view/View;

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    move-result-object p1

    .line 90
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 92
    if-eqz v0, :cond_62

    .line 94
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    :cond_62
    return-void
.end method


# virtual methods
.method public final a(F[F)F
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/high16 v2, 0x3f800000  # 1.0f

    .line 5
    if-eqz p2, :cond_9

    .line 7
    aput v2, p2, v1

    .line 9
    goto :goto_26

    .line 10
    :cond_9
    iget v3, p0, Ly/m;->j:F

    .line 12
    float-to-double v4, v3

    .line 13
    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    .line 15
    cmpl-double v4, v4, v6

    .line 17
    if-eqz v4, :cond_26

    .line 19
    cmpg-float v4, p1, v0

    .line 21
    if-gez v4, :cond_17

    .line 23
    move p1, v0

    .line 24
    :cond_17
    cmpl-float v4, p1, v0

    .line 26
    if-lez v4, :cond_26

    .line 28
    float-to-double v4, p1

    .line 29
    cmpg-double v4, v4, v6

    .line 31
    if-gez v4, :cond_26

    .line 33
    sub-float/2addr p1, v0

    .line 34
    mul-float/2addr p1, v3

    .line 35
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    .line 38
    move-result p1

    .line 39
    :cond_26
    :goto_26
    iget-object v3, p0, Ly/m;->d:Ly/o;

    .line 41
    iget-object v3, v3, Ly/o;->a:Lu/c;

    .line 43
    const/high16 v4, 0x7fc00000  # Float.NaN

    .line 45
    iget-object v5, p0, Ly/m;->q:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v5

    .line 51
    :cond_32
    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_54

    .line 57
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Ly/o;

    .line 63
    iget-object v7, v6, Ly/o;->a:Lu/c;

    .line 65
    if-eqz v7, :cond_32

    .line 67
    iget v8, v6, Ly/o;->b:F

    .line 69
    cmpg-float v9, v8, p1

    .line 71
    if-gez v9, :cond_4b

    .line 73
    move-object v3, v7

    .line 74
    move v0, v8

    .line 75
    goto :goto_32

    .line 76
    :cond_4b
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_32

    .line 82
    iget v4, v6, Ly/o;->b:F

    .line 84
    goto :goto_32

    .line 85
    :cond_54
    if-eqz v3, :cond_72

    .line 87
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_5d

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    move v2, v4

    .line 95
    :goto_5e
    sub-float/2addr p1, v0

    .line 96
    sub-float/2addr v2, v0

    .line 97
    div-float/2addr p1, v2

    .line 98
    float-to-double v4, p1

    .line 99
    invoke-virtual {v3, v4, v5}, Lu/c;->a(D)D

    .line 102
    move-result-wide v6

    .line 103
    double-to-float p1, v6

    .line 104
    mul-float/2addr p1, v2

    .line 105
    add-float/2addr p1, v0

    .line 106
    if-eqz p2, :cond_72

    .line 108
    invoke-virtual {v3, v4, v5}, Lu/c;->b(D)D

    .line 111
    move-result-wide v2

    .line 112
    double-to-float v0, v2

    .line 113
    aput v0, p2, v1

    .line 115
    :cond_72
    return p1
.end method

.method public final b(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z
    .registers 32

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p4

    .line 5
    const/4 v1, 0x0

    .line 6
    move/from16 v2, p1

    .line 8
    invoke-virtual {v0, v2, v1}, Ly/m;->a(F[F)F

    .line 11
    move-result v2

    .line 12
    iget v3, v0, Ly/m;->z:I

    .line 14
    const/high16 v4, 0x3f800000  # 1.0f

    .line 16
    const/4 v5, -0x1

    .line 17
    if-eq v3, v5, :cond_38

    .line 19
    int-to-float v3, v3

    .line 20
    div-float v3, v4, v3

    .line 22
    div-float v5, v2, v3

    .line 24
    float-to-double v5, v5

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 28
    move-result-wide v5

    .line 29
    double-to-float v5, v5

    .line 30
    mul-float/2addr v5, v3

    .line 31
    rem-float/2addr v2, v3

    .line 32
    div-float/2addr v2, v3

    .line 33
    iget v6, v0, Ly/m;->A:F

    .line 35
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_2c

    .line 41
    iget v6, v0, Ly/m;->A:F

    .line 43
    add-float/2addr v2, v6

    .line 44
    rem-float/2addr v2, v4

    .line 45
    :cond_2c
    float-to-double v8, v2

    .line 46
    const-wide/high16 v10, 0x3fe0000000000000L  # 0.5

    .line 48
    cmpl-double v2, v8, v10

    .line 50
    if-lez v2, :cond_34

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    const/4 v4, 0x0

    .line 54
    :goto_35
    mul-float/2addr v4, v3

    .line 55
    add-float v2, v4, v5

    .line 57
    :cond_38
    move v8, v2

    .line 58
    iget-object v2, v0, Ly/m;->t:Ljava/util/HashMap;

    .line 60
    if-eqz v2, :cond_55

    .line 62
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v2

    .line 70
    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_55

    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lx/c;

    .line 82
    invoke-virtual {v3, v8, v7}, Lx/c;->d(FLandroid/view/View;)V

    .line 85
    goto :goto_45

    .line 86
    :cond_55
    iget-object v2, v0, Ly/m;->s:Ljava/util/HashMap;

    .line 88
    const/4 v9, 0x0

    .line 89
    if-eqz v2, :cond_85

    .line 91
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object v10

    .line 99
    move-object v11, v1

    .line 100
    move v12, v9

    .line 101
    :goto_64
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_87

    .line 107
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lx/d;

    .line 113
    instance-of v2, v1, Lx/d$d;

    .line 115
    if-eqz v2, :cond_78

    .line 117
    move-object v11, v1

    .line 118
    check-cast v11, Lx/d$d;

    .line 120
    goto :goto_64

    .line 121
    :cond_78
    move v2, v8

    .line 122
    move-wide/from16 v3, p2

    .line 124
    move-object/from16 v5, p4

    .line 126
    move-object/from16 v6, p5

    .line 128
    invoke-virtual/range {v1 .. v6}, Lx/d;->e(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z

    .line 131
    move-result v1

    .line 132
    or-int/2addr v12, v1

    .line 133
    goto :goto_64

    .line 134
    :cond_85
    move-object v11, v1

    .line 135
    move v12, v9

    .line 136
    :cond_87
    iget-object v1, v0, Ly/m;->h:[Lu/b;

    .line 138
    if-eqz v1, :cond_2fe

    .line 140
    aget-object v1, v1, v9

    .line 142
    float-to-double v13, v8

    .line 143
    iget-object v2, v0, Ly/m;->l:[D

    .line 145
    invoke-virtual {v1, v13, v14, v2}, Lu/b;->c(D[D)V

    .line 148
    iget-object v1, v0, Ly/m;->h:[Lu/b;

    .line 150
    aget-object v1, v1, v9

    .line 152
    iget-object v2, v0, Ly/m;->m:[D

    .line 154
    invoke-virtual {v1, v13, v14, v2}, Lu/b;->e(D[D)V

    .line 157
    iget-object v1, v0, Ly/m;->i:Lu/a;

    .line 159
    if-eqz v1, :cond_af

    .line 161
    iget-object v2, v0, Ly/m;->l:[D

    .line 163
    array-length v3, v2

    .line 164
    if-lez v3, :cond_af

    .line 166
    invoke-virtual {v1, v13, v14, v2}, Lu/a;->c(D[D)V

    .line 169
    iget-object v1, v0, Ly/m;->i:Lu/a;

    .line 171
    iget-object v2, v0, Ly/m;->m:[D

    .line 173
    invoke-virtual {v1, v13, v14, v2}, Lu/a;->e(D[D)V

    .line 176
    :cond_af
    iget-boolean v1, v0, Ly/m;->B:Z

    .line 178
    if-nez v1, :cond_1cd

    .line 180
    iget-object v1, v0, Ly/m;->d:Ly/o;

    .line 182
    iget-object v2, v0, Ly/m;->k:[I

    .line 184
    iget-object v3, v0, Ly/m;->l:[D

    .line 186
    iget-object v4, v0, Ly/m;->m:[D

    .line 188
    iget-boolean v5, v0, Ly/m;->b:Z

    .line 190
    iget v6, v1, Ly/o;->d:F

    .line 192
    iget v9, v1, Ly/o;->e:F

    .line 194
    iget v10, v1, Ly/o;->f:F

    .line 196
    iget v15, v1, Ly/o;->g:F

    .line 198
    move/from16 p1, v6

    .line 200
    array-length v6, v2

    .line 201
    if-eqz v6, :cond_e6

    .line 203
    iget-object v6, v1, Ly/o;->l:[D

    .line 205
    array-length v6, v6

    .line 206
    move/from16 v16, v9

    .line 208
    array-length v9, v2

    .line 209
    add-int/lit8 v9, v9, -0x1

    .line 211
    aget v9, v2, v9

    .line 213
    if-gt v6, v9, :cond_e8

    .line 215
    array-length v6, v2

    .line 216
    add-int/lit8 v6, v6, -0x1

    .line 218
    aget v6, v2, v6

    .line 220
    add-int/lit8 v6, v6, 0x1

    .line 222
    new-array v9, v6, [D

    .line 224
    iput-object v9, v1, Ly/o;->l:[D

    .line 226
    new-array v6, v6, [D

    .line 228
    iput-object v6, v1, Ly/o;->m:[D

    .line 230
    goto :goto_e8

    .line 231
    :cond_e6
    move/from16 v16, v9

    .line 233
    :cond_e8
    :goto_e8
    iget-object v6, v1, Ly/o;->l:[D

    .line 235
    move/from16 v17, v10

    .line 237
    const-wide/high16 v9, 0x7ff8000000000000L  # Double.NaN

    .line 239
    invoke-static {v6, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    .line 242
    const/4 v6, 0x0

    .line 243
    :goto_f2
    array-length v9, v2

    .line 244
    if-ge v6, v9, :cond_106

    .line 246
    iget-object v9, v1, Ly/o;->l:[D

    .line 248
    aget v10, v2, v6

    .line 250
    aget-wide v18, v3, v6

    .line 252
    aput-wide v18, v9, v10

    .line 254
    iget-object v9, v1, Ly/o;->m:[D

    .line 256
    aget-wide v18, v4, v6

    .line 258
    aput-wide v18, v9, v10

    .line 260
    add-int/lit8 v6, v6, 0x1

    .line 262
    goto :goto_f2

    .line 263
    :cond_106
    const/high16 v2, 0x7fc00000  # Float.NaN

    .line 265
    const/4 v3, 0x0

    .line 266
    const/4 v4, 0x0

    .line 267
    const/4 v6, 0x0

    .line 268
    const/4 v9, 0x0

    .line 269
    const/4 v10, 0x0

    .line 270
    move-wide/from16 v20, v13

    .line 272
    move/from16 v18, v15

    .line 274
    move v15, v10

    .line 275
    move v10, v9

    .line 276
    move/from16 v9, p1

    .line 278
    :goto_115
    iget-object v13, v1, Ly/o;->l:[D

    .line 280
    array-length v14, v13

    .line 281
    if-ge v3, v14, :cond_165

    .line 283
    aget-wide v22, v13, v3

    .line 285
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    .line 288
    move-result v13

    .line 289
    if-eqz v13, :cond_123

    .line 291
    goto :goto_162

    .line 292
    :cond_123
    iget-object v13, v1, Ly/o;->l:[D

    .line 294
    aget-wide v22, v13, v3

    .line 296
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    .line 299
    move-result v13

    .line 300
    const-wide/16 v22, 0x0

    .line 302
    if-eqz v13, :cond_130

    .line 304
    goto :goto_136

    .line 305
    :cond_130
    iget-object v13, v1, Ly/o;->l:[D

    .line 307
    aget-wide v24, v13, v3

    .line 309
    add-double v22, v24, v22

    .line 311
    :goto_136
    move-wide/from16 v13, v22

    .line 313
    double-to-float v13, v13

    .line 314
    iget-object v14, v1, Ly/o;->m:[D

    .line 316
    move/from16 v19, v13

    .line 318
    aget-wide v13, v14, v3

    .line 320
    double-to-float v13, v13

    .line 321
    const/4 v14, 0x1

    .line 322
    if-eq v3, v14, :cond_15f

    .line 324
    const/4 v14, 0x2

    .line 325
    if-eq v3, v14, :cond_15b

    .line 327
    const/4 v14, 0x3

    .line 328
    if-eq v3, v14, :cond_157

    .line 330
    const/4 v14, 0x4

    .line 331
    if-eq v3, v14, :cond_153

    .line 333
    const/4 v13, 0x5

    .line 334
    if-eq v3, v13, :cond_150

    .line 336
    goto :goto_162

    .line 337
    :cond_150
    move/from16 v2, v19

    .line 339
    goto :goto_162

    .line 340
    :cond_153
    move v10, v13

    .line 341
    move/from16 v18, v19

    .line 343
    goto :goto_162

    .line 344
    :cond_157
    move v4, v13

    .line 345
    move/from16 v17, v19

    .line 347
    goto :goto_162

    .line 348
    :cond_15b
    move v15, v13

    .line 349
    move/from16 v16, v19

    .line 351
    goto :goto_162

    .line 352
    :cond_15f
    move v6, v13

    .line 353
    move/from16 v9, v19

    .line 355
    :goto_162
    add-int/lit8 v3, v3, 0x1

    .line 357
    goto :goto_115

    .line 358
    :cond_165
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_187

    .line 364
    const/high16 v1, 0x40000000  # 2.0f

    .line 366
    div-float/2addr v4, v1

    .line 367
    add-float/2addr v4, v6

    .line 368
    div-float/2addr v10, v1

    .line 369
    add-float/2addr v10, v15

    .line 370
    const/4 v1, 0x0

    .line 371
    float-to-double v13, v1

    .line 372
    float-to-double v1, v2

    .line 373
    move-object/from16 p1, v11

    .line 375
    float-to-double v10, v10

    .line 376
    float-to-double v3, v4

    .line 377
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 380
    move-result-wide v3

    .line 381
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 384
    move-result-wide v3

    .line 385
    add-double/2addr v3, v1

    .line 386
    add-double/2addr v3, v13

    .line 387
    double-to-float v1, v3

    .line 388
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    .line 391
    goto :goto_189

    .line 392
    :cond_187
    move-object/from16 p1, v11

    .line 394
    :goto_189
    instance-of v1, v7, Ly/c;

    .line 396
    if-eqz v1, :cond_194

    .line 398
    move-object v1, v7

    .line 399
    check-cast v1, Ly/c;

    .line 401
    invoke-interface {v1}, Ly/c;->a()V

    .line 404
    goto :goto_1c9

    .line 405
    :cond_194
    const/high16 v1, 0x3f000000  # 0.5f

    .line 407
    add-float/2addr v9, v1

    .line 408
    float-to-int v2, v9

    .line 409
    add-float v1, v16, v1

    .line 411
    float-to-int v3, v1

    .line 412
    add-float v9, v9, v17

    .line 414
    float-to-int v4, v9

    .line 415
    add-float v1, v1, v18

    .line 417
    float-to-int v1, v1

    .line 418
    sub-int v6, v4, v2

    .line 420
    sub-int v9, v1, v3

    .line 422
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 425
    move-result v10

    .line 426
    if-ne v6, v10, :cond_1b4

    .line 428
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 431
    move-result v10

    .line 432
    if-eq v9, v10, :cond_1b2

    .line 434
    goto :goto_1b4

    .line 435
    :cond_1b2
    const/4 v10, 0x0

    .line 436
    goto :goto_1b5

    .line 437
    :cond_1b4
    :goto_1b4
    const/4 v10, 0x1

    .line 438
    :goto_1b5
    if-nez v10, :cond_1b9

    .line 440
    if-eqz v5, :cond_1c6

    .line 442
    :cond_1b9
    const/high16 v5, 0x40000000  # 2.0f

    .line 444
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 447
    move-result v6

    .line 448
    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 451
    move-result v5

    .line 452
    invoke-virtual {v7, v6, v5}, Landroid/view/View;->measure(II)V

    .line 455
    :cond_1c6
    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 458
    :goto_1c9
    const/4 v1, 0x0

    .line 459
    iput-boolean v1, v0, Ly/m;->b:Z

    .line 461
    goto :goto_1d1

    .line 462
    :cond_1cd
    move-object/from16 p1, v11

    .line 464
    move-wide/from16 v20, v13

    .line 466
    :goto_1d1
    iget v1, v0, Ly/m;->x:I

    .line 468
    const/4 v2, -0x1

    .line 469
    if-eq v1, v2, :cond_232

    .line 471
    iget-object v1, v0, Ly/m;->y:Landroid/view/View;

    .line 473
    if-nez v1, :cond_1e8

    .line 475
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 478
    move-result-object v1

    .line 479
    check-cast v1, Landroid/view/View;

    .line 481
    iget v2, v0, Ly/m;->x:I

    .line 483
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 486
    move-result-object v1

    .line 487
    iput-object v1, v0, Ly/m;->y:Landroid/view/View;

    .line 489
    :cond_1e8
    iget-object v1, v0, Ly/m;->y:Landroid/view/View;

    .line 491
    if-eqz v1, :cond_232

    .line 493
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 496
    move-result v1

    .line 497
    iget-object v2, v0, Ly/m;->y:Landroid/view/View;

    .line 499
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 502
    move-result v2

    .line 503
    add-int/2addr v2, v1

    .line 504
    int-to-float v1, v2

    .line 505
    const/high16 v2, 0x40000000  # 2.0f

    .line 507
    div-float/2addr v1, v2

    .line 508
    iget-object v3, v0, Ly/m;->y:Landroid/view/View;

    .line 510
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 513
    move-result v3

    .line 514
    iget-object v4, v0, Ly/m;->y:Landroid/view/View;

    .line 516
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 519
    move-result v4

    .line 520
    add-int/2addr v4, v3

    .line 521
    int-to-float v3, v4

    .line 522
    div-float/2addr v3, v2

    .line 523
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getRight()I

    .line 526
    move-result v2

    .line 527
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    .line 530
    move-result v4

    .line 531
    sub-int/2addr v2, v4

    .line 532
    if-lez v2, :cond_232

    .line 534
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getBottom()I

    .line 537
    move-result v2

    .line 538
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    .line 541
    move-result v4

    .line 542
    sub-int/2addr v2, v4

    .line 543
    if-lez v2, :cond_232

    .line 545
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    .line 548
    move-result v2

    .line 549
    int-to-float v2, v2

    .line 550
    sub-float/2addr v3, v2

    .line 551
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    .line 554
    move-result v2

    .line 555
    int-to-float v2, v2

    .line 556
    sub-float/2addr v1, v2

    .line 557
    invoke-virtual {v7, v3}, Landroid/view/View;->setPivotX(F)V

    .line 560
    invoke-virtual {v7, v1}, Landroid/view/View;->setPivotY(F)V

    .line 563
    :cond_232
    iget-object v1, v0, Ly/m;->t:Ljava/util/HashMap;

    .line 565
    if-eqz v1, :cond_26d

    .line 567
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 570
    move-result-object v1

    .line 571
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 574
    move-result-object v1

    .line 575
    :cond_23e
    :goto_23e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 578
    move-result v2

    .line 579
    if-eqz v2, :cond_26d

    .line 581
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 584
    move-result-object v2

    .line 585
    check-cast v2, Lu/j;

    .line 587
    instance-of v3, v2, Lx/c$d;

    .line 589
    if-eqz v3, :cond_23e

    .line 591
    iget-object v3, v0, Ly/m;->m:[D

    .line 593
    array-length v4, v3

    .line 594
    const/4 v5, 0x1

    .line 595
    if-le v4, v5, :cond_23e

    .line 597
    check-cast v2, Lx/c$d;

    .line 599
    const/4 v4, 0x0

    .line 600
    aget-wide v9, v3, v4

    .line 602
    aget-wide v4, v3, v5

    .line 604
    invoke-virtual {v2, v8}, Lu/j;->a(F)F

    .line 607
    move-result v2

    .line 608
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    .line 611
    move-result-wide v3

    .line 612
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 615
    move-result-wide v3

    .line 616
    double-to-float v3, v3

    .line 617
    add-float/2addr v2, v3

    .line 618
    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    .line 621
    goto :goto_23e

    .line 622
    :cond_26d
    if-eqz p1, :cond_297

    .line 624
    iget-object v1, v0, Ly/m;->m:[D

    .line 626
    const/4 v2, 0x0

    .line 627
    aget-wide v9, v1, v2

    .line 629
    const/4 v2, 0x1

    .line 630
    aget-wide v13, v1, v2

    .line 632
    move-object/from16 v1, p1

    .line 634
    move v2, v8

    .line 635
    move-wide/from16 v3, p2

    .line 637
    move-object/from16 v5, p4

    .line 639
    move-object/from16 v6, p5

    .line 641
    invoke-virtual/range {v1 .. v6}, Lx/d;->d(FJLandroid/view/View;Landroidx/appcompat/app/u;)F

    .line 644
    move-result v1

    .line 645
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    .line 648
    move-result-wide v2

    .line 649
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 652
    move-result-wide v2

    .line 653
    double-to-float v2, v2

    .line 654
    add-float/2addr v1, v2

    .line 655
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    .line 658
    move-object/from16 v11, p1

    .line 660
    iget-boolean v1, v11, Lu/l;->h:Z

    .line 662
    or-int/2addr v1, v12

    .line 663
    move v12, v1

    .line 664
    :cond_297
    const/4 v1, 0x1

    .line 665
    :goto_298
    iget-object v2, v0, Ly/m;->h:[Lu/b;

    .line 667
    array-length v3, v2

    .line 668
    if-ge v1, v3, :cond_2be

    .line 670
    aget-object v2, v2, v1

    .line 672
    iget-object v3, v0, Ly/m;->p:[F

    .line 674
    move-wide/from16 v4, v20

    .line 676
    invoke-virtual {v2, v4, v5, v3}, Lu/b;->d(D[F)V

    .line 679
    iget-object v2, v0, Ly/m;->d:Ly/o;

    .line 681
    iget-object v2, v2, Ly/o;->k:Ljava/util/LinkedHashMap;

    .line 683
    iget-object v3, v0, Ly/m;->n:[Ljava/lang/String;

    .line 685
    add-int/lit8 v6, v1, -0x1

    .line 687
    aget-object v3, v3, v6

    .line 689
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    move-result-object v2

    .line 693
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 695
    iget-object v3, v0, Ly/m;->p:[F

    .line 697
    invoke-static {v2, v7, v3}, Lx/a;->b(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    .line 700
    add-int/lit8 v1, v1, 0x1

    .line 702
    goto :goto_298

    .line 703
    :cond_2be
    iget-object v1, v0, Ly/m;->f:Ly/l;

    .line 705
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 708
    const/4 v1, 0x0

    .line 709
    cmpg-float v1, v8, v1

    .line 711
    if-gtz v1, :cond_2d0

    .line 713
    iget-object v1, v0, Ly/m;->f:Ly/l;

    .line 715
    iget v1, v1, Ly/l;->b:I

    .line 717
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 720
    goto :goto_2ec

    .line 721
    :cond_2d0
    const/high16 v1, 0x3f800000  # 1.0f

    .line 723
    cmpl-float v1, v8, v1

    .line 725
    if-ltz v1, :cond_2de

    .line 727
    iget-object v1, v0, Ly/m;->g:Ly/l;

    .line 729
    iget v1, v1, Ly/l;->b:I

    .line 731
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 734
    goto :goto_2ec

    .line 735
    :cond_2de
    iget-object v1, v0, Ly/m;->g:Ly/l;

    .line 737
    iget v1, v1, Ly/l;->b:I

    .line 739
    iget-object v2, v0, Ly/m;->f:Ly/l;

    .line 741
    iget v2, v2, Ly/l;->b:I

    .line 743
    if-eq v1, v2, :cond_2ec

    .line 745
    const/4 v1, 0x0

    .line 746
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 749
    :cond_2ec
    :goto_2ec
    iget-object v1, v0, Ly/m;->v:[Ly/k;

    .line 751
    if-eqz v1, :cond_34f

    .line 753
    const/4 v1, 0x0

    .line 754
    :goto_2f1
    iget-object v2, v0, Ly/m;->v:[Ly/k;

    .line 756
    array-length v3, v2

    .line 757
    if-ge v1, v3, :cond_34f

    .line 759
    aget-object v2, v2, v1

    .line 761
    invoke-virtual {v2, v8, v7}, Ly/k;->g(FLandroid/view/View;)V

    .line 764
    add-int/lit8 v1, v1, 0x1

    .line 766
    goto :goto_2f1

    .line 767
    :cond_2fe
    iget-object v1, v0, Ly/m;->d:Ly/o;

    .line 769
    iget v2, v1, Ly/o;->d:F

    .line 771
    iget-object v3, v0, Ly/m;->e:Ly/o;

    .line 773
    iget v4, v3, Ly/o;->d:F

    .line 775
    invoke-static {v4, v2, v8, v2}, Lf0/e;->a(FFFF)F

    .line 778
    move-result v2

    .line 779
    iget v4, v1, Ly/o;->e:F

    .line 781
    iget v5, v3, Ly/o;->e:F

    .line 783
    invoke-static {v5, v4, v8, v4}, Lf0/e;->a(FFFF)F

    .line 786
    move-result v4

    .line 787
    iget v5, v1, Ly/o;->f:F

    .line 789
    iget v6, v3, Ly/o;->f:F

    .line 791
    invoke-static {v6, v5, v8, v5}, Lf0/e;->a(FFFF)F

    .line 794
    move-result v9

    .line 795
    iget v1, v1, Ly/o;->g:F

    .line 797
    iget v3, v3, Ly/o;->g:F

    .line 799
    invoke-static {v3, v1, v8, v1}, Lf0/e;->a(FFFF)F

    .line 802
    move-result v10

    .line 803
    const/high16 v11, 0x3f000000  # 0.5f

    .line 805
    add-float/2addr v2, v11

    .line 806
    float-to-int v13, v2

    .line 807
    add-float/2addr v4, v11

    .line 808
    float-to-int v11, v4

    .line 809
    add-float/2addr v2, v9

    .line 810
    float-to-int v2, v2

    .line 811
    add-float/2addr v4, v10

    .line 812
    float-to-int v4, v4

    .line 813
    sub-int v9, v2, v13

    .line 815
    sub-int v10, v4, v11

    .line 817
    cmpl-float v5, v6, v5

    .line 819
    if-nez v5, :cond_33c

    .line 821
    cmpl-float v1, v3, v1

    .line 823
    if-nez v1, :cond_33c

    .line 825
    iget-boolean v1, v0, Ly/m;->b:Z

    .line 827
    if-eqz v1, :cond_34c

    .line 829
    :cond_33c
    const/high16 v1, 0x40000000  # 2.0f

    .line 831
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 834
    move-result v3

    .line 835
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 838
    move-result v1

    .line 839
    invoke-virtual {v7, v3, v1}, Landroid/view/View;->measure(II)V

    .line 842
    const/4 v1, 0x0

    .line 843
    iput-boolean v1, v0, Ly/m;->b:Z

    .line 845
    :cond_34c
    invoke-virtual {v7, v13, v11, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 848
    :cond_34f
    iget-object v1, v0, Ly/m;->u:Ljava/util/HashMap;

    .line 850
    if-eqz v1, :cond_38b

    .line 852
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 855
    move-result-object v1

    .line 856
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 859
    move-result-object v1

    .line 860
    :goto_35b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 863
    move-result v2

    .line 864
    if-eqz v2, :cond_38b

    .line 866
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 869
    move-result-object v2

    .line 870
    check-cast v2, Lx/b;

    .line 872
    instance-of v3, v2, Lx/b$d;

    .line 874
    if-eqz v3, :cond_387

    .line 876
    check-cast v2, Lx/b$d;

    .line 878
    iget-object v3, v0, Ly/m;->m:[D

    .line 880
    const/4 v4, 0x0

    .line 881
    aget-wide v4, v3, v4

    .line 883
    const/4 v6, 0x1

    .line 884
    aget-wide v9, v3, v6

    .line 886
    invoke-virtual {v2, v8}, Lu/e;->a(F)F

    .line 889
    move-result v2

    .line 890
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 893
    move-result-wide v3

    .line 894
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 897
    move-result-wide v3

    .line 898
    double-to-float v3, v3

    .line 899
    add-float/2addr v2, v3

    .line 900
    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    .line 903
    goto :goto_35b

    .line 904
    :cond_387
    invoke-virtual {v2, v8, v7}, Lx/b;->d(FLandroid/view/View;)V

    .line 907
    goto :goto_35b

    .line 908
    :cond_38b
    return v12
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, " start: x: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ly/m;->d:Ly/o;

    .line 9
    iget v1, v1, Ly/o;->d:F

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " y: "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v2, p0, Ly/m;->d:Ly/o;

    .line 21
    iget v2, v2, Ly/o;->e:F

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, " end: x: "

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v2, p0, Ly/m;->e:Ly/o;

    .line 33
    iget v2, v2, Ly/o;->d:F

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Ly/m;->e:Ly/o;

    .line 43
    iget v1, v1, Ly/o;->e:F

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
