.class public final Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final p:Landroid/graphics/Matrix;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Matrix;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/PathMeasure;

.field public final g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/Boolean;

.field public final o:Landroidx/collection/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->p:Landroid/graphics/Matrix;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->h:F

    .line 4
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->i:F

    .line 5
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->j:F

    .line 6
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->k:F

    const/16 v0, 0xff

    .line 7
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->l:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->m:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->n:Ljava/lang/Boolean;

    .line 10
    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->o:Landroidx/collection/a;

    .line 11
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->a:Landroid/graphics/Path;

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;)V
    .registers 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->h:F

    .line 17
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->i:F

    .line 18
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->j:F

    .line 19
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->k:F

    const/16 v0, 0xff

    .line 20
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->l:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->m:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->n:Ljava/lang/Boolean;

    .line 23
    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->o:Landroidx/collection/a;

    .line 24
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    invoke-direct {v1, v2, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;Landroidx/collection/a;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 25
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->a:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->a:Landroid/graphics/Path;

    .line 26
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Path;

    .line 27
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->h:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->h:F

    .line 28
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->i:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->i:F

    .line 29
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->j:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->j:F

    .line 30
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->k:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->k:F

    .line 31
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->l:I

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->l:I

    .line 32
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->m:Ljava/lang/String;

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->m:Ljava/lang/String;

    .line 33
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->m:Ljava/lang/String;

    if-eqz v1, :cond_5d

    .line 34
    invoke-virtual {v0, v1, p0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_5d
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->n:Ljava/lang/Boolean;

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->n:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V
    .registers 24

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    move-object/from16 v8, p3

    .line 7
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->a:Landroid/graphics/Matrix;

    .line 9
    move-object/from16 v1, p2

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 14
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->a:Landroid/graphics/Matrix;

    .line 16
    iget-object v1, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:Landroid/graphics/Matrix;

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 21
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 24
    const/4 v9, 0x0

    .line 25
    move-object v11, v6

    .line 26
    move v10, v9

    .line 27
    :goto_1a
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v0

    .line 33
    if-ge v10, v0, :cond_22c

    .line 35
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    .line 43
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 45
    if-eqz v1, :cond_40

    .line 47
    move-object v1, v0

    .line 48
    check-cast v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 50
    iget-object v2, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->a:Landroid/graphics/Matrix;

    .line 52
    move-object/from16 v0, p0

    .line 54
    move-object/from16 v3, p3

    .line 56
    move/from16 v4, p4

    .line 58
    move/from16 v5, p5

    .line 60
    invoke-virtual/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->a(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 63
    goto/16 :goto_223

    .line 65
    :cond_40
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;

    .line 67
    if-eqz v1, :cond_223

    .line 69
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;

    .line 71
    move/from16 v1, p4

    .line 73
    int-to-float v2, v1

    .line 74
    iget v3, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->j:F

    .line 76
    div-float/2addr v2, v3

    .line 77
    move/from16 v3, p5

    .line 79
    int-to-float v4, v3

    .line 80
    iget v5, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->k:F

    .line 82
    div-float/2addr v4, v5

    .line 83
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 86
    move-result v5

    .line 87
    iget-object v12, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->a:Landroid/graphics/Matrix;

    .line 89
    iget-object v13, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/graphics/Matrix;

    .line 91
    invoke-virtual {v13, v12}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 94
    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/graphics/Matrix;

    .line 96
    invoke-virtual {v11, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 99
    const/4 v2, 0x4

    .line 100
    new-array v2, v2, [F

    .line 102
    fill-array-data v2, :array_230

    .line 105
    invoke-virtual {v12, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 108
    aget v4, v2, v9

    .line 110
    float-to-double v11, v4

    .line 111
    const/4 v4, 0x1

    .line 112
    aget v13, v2, v4

    .line 114
    float-to-double v13, v13

    .line 115
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    .line 118
    move-result-wide v11

    .line 119
    double-to-float v11, v11

    .line 120
    const/4 v12, 0x2

    .line 121
    aget v13, v2, v12

    .line 123
    float-to-double v13, v13

    .line 124
    const/4 v15, 0x3

    .line 125
    aget v12, v2, v15

    .line 127
    move/from16 v16, v5

    .line 129
    float-to-double v4, v12

    .line 130
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 133
    move-result-wide v4

    .line 134
    double-to-float v4, v4

    .line 135
    aget v5, v2, v9

    .line 137
    const/4 v12, 0x1

    .line 138
    aget v13, v2, v12

    .line 140
    const/4 v12, 0x2

    .line 141
    aget v12, v2, v12

    .line 143
    aget v2, v2, v15

    .line 145
    mul-float/2addr v5, v2

    .line 146
    mul-float/2addr v13, v12

    .line 147
    sub-float/2addr v5, v13

    .line 148
    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    .line 151
    move-result v2

    .line 152
    const/4 v4, 0x0

    .line 153
    cmpl-float v11, v2, v4

    .line 155
    if-lez v11, :cond_a2

    .line 157
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 160
    move-result v5

    .line 161
    div-float/2addr v5, v2

    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    move v5, v4

    .line 164
    :goto_a3
    cmpl-float v2, v5, v4

    .line 166
    if-nez v2, :cond_a9

    .line 168
    goto/16 :goto_221

    .line 170
    :cond_a9
    iget-object v2, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->a:Landroid/graphics/Path;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 178
    iget-object v11, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    .line 180
    if-eqz v11, :cond_b8

    .line 182
    invoke-static {v11, v2}, Lf0/h$a;->b([Lf0/h$a;Landroid/graphics/Path;)V

    .line 185
    :cond_b8
    iget-object v2, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->a:Landroid/graphics/Path;

    .line 187
    iget-object v11, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Path;

    .line 189
    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 192
    instance-of v11, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$a;

    .line 194
    if-eqz v11, :cond_df

    .line 196
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Path;

    .line 198
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    .line 200
    if-nez v0, :cond_cc

    .line 202
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 204
    goto :goto_ce

    .line 205
    :cond_cc
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 207
    :goto_ce
    invoke-virtual {v4, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 210
    iget-object v0, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Path;

    .line 212
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/graphics/Matrix;

    .line 214
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 217
    iget-object v0, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Path;

    .line 219
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 222
    goto/16 :goto_221

    .line 224
    :cond_df
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;

    .line 226
    iget v11, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    .line 228
    cmpl-float v12, v11, v4

    .line 230
    const/high16 v13, 0x3f800000  # 1.0f

    .line 232
    if-nez v12, :cond_ef

    .line 234
    iget v12, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    .line 236
    cmpl-float v12, v12, v13

    .line 238
    if-eqz v12, :cond_12d

    .line 240
    :cond_ef
    iget v12, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    .line 242
    add-float/2addr v11, v12

    .line 243
    rem-float/2addr v11, v13

    .line 244
    iget v14, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    .line 246
    add-float/2addr v14, v12

    .line 247
    rem-float/2addr v14, v13

    .line 248
    iget-object v12, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/PathMeasure;

    .line 250
    if-nez v12, :cond_102

    .line 252
    new-instance v12, Landroid/graphics/PathMeasure;

    .line 254
    invoke-direct {v12}, Landroid/graphics/PathMeasure;-><init>()V

    .line 257
    iput-object v12, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/PathMeasure;

    .line 259
    :cond_102
    iget-object v12, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/PathMeasure;

    .line 261
    iget-object v13, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->a:Landroid/graphics/Path;

    .line 263
    invoke-virtual {v12, v13, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 266
    iget-object v12, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/PathMeasure;

    .line 268
    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->getLength()F

    .line 271
    move-result v12

    .line 272
    mul-float/2addr v11, v12

    .line 273
    mul-float/2addr v14, v12

    .line 274
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 277
    cmpl-float v13, v11, v14

    .line 279
    if-lez v13, :cond_124

    .line 281
    iget-object v13, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/PathMeasure;

    .line 283
    const/4 v15, 0x1

    .line 284
    invoke-virtual {v13, v11, v12, v2, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 287
    iget-object v11, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/PathMeasure;

    .line 289
    invoke-virtual {v11, v4, v14, v2, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 292
    goto :goto_12a

    .line 293
    :cond_124
    const/4 v15, 0x1

    .line 294
    iget-object v12, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->f:Landroid/graphics/PathMeasure;

    .line 296
    invoke-virtual {v12, v11, v14, v2, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 299
    :goto_12a
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 302
    :cond_12d
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Path;

    .line 304
    iget-object v11, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/graphics/Matrix;

    .line 306
    invoke-virtual {v4, v2, v11}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 309
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    .line 311
    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    .line 314
    move-result v2

    .line 315
    const/high16 v4, 0x437f0000  # 255.0f

    .line 317
    const/16 v11, 0xff

    .line 319
    const v12, 0xffffff

    .line 322
    const/4 v13, 0x0

    .line 323
    if-eqz v2, :cond_1a8

    .line 325
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    .line 327
    iget-object v14, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->e:Landroid/graphics/Paint;

    .line 329
    if-nez v14, :cond_157

    .line 331
    new-instance v14, Landroid/graphics/Paint;

    .line 333
    const/4 v15, 0x1

    .line 334
    invoke-direct {v14, v15}, Landroid/graphics/Paint;-><init>(I)V

    .line 337
    iput-object v14, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->e:Landroid/graphics/Paint;

    .line 339
    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 341
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    :cond_157
    iget-object v14, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->e:Landroid/graphics/Paint;

    .line 346
    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    .line 349
    move-result v15

    .line 350
    if-eqz v15, :cond_176

    .line 352
    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    .line 355
    move-result-object v2

    .line 356
    iget-object v15, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/graphics/Matrix;

    .line 358
    invoke-virtual {v2, v15}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 361
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 364
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    .line 366
    mul-float/2addr v2, v4

    .line 367
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 370
    move-result v2

    .line 371
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 374
    goto :goto_192

    .line 375
    :cond_176
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 378
    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 381
    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    .line 384
    move-result v2

    .line 385
    iget v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    .line 387
    sget-object v17, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->j:Landroid/graphics/PorterDuff$Mode;

    .line 389
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 392
    move-result v9

    .line 393
    and-int/2addr v2, v12

    .line 394
    int-to-float v9, v9

    .line 395
    mul-float/2addr v9, v15

    .line 396
    float-to-int v9, v9

    .line 397
    shl-int/lit8 v9, v9, 0x18

    .line 399
    or-int/2addr v2, v9

    .line 400
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    :goto_192
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 406
    iget-object v2, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Path;

    .line 408
    iget v9, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    .line 410
    if-nez v9, :cond_19e

    .line 412
    sget-object v9, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 414
    goto :goto_1a0

    .line 415
    :cond_19e
    sget-object v9, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 417
    :goto_1a0
    invoke-virtual {v2, v9}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 420
    iget-object v2, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Path;

    .line 422
    invoke-virtual {v8, v2, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 425
    :cond_1a8
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    .line 427
    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    .line 430
    move-result v2

    .line 431
    if-eqz v2, :cond_221

    .line 433
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    .line 435
    iget-object v9, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/Paint;

    .line 437
    if-nez v9, :cond_1c3

    .line 439
    new-instance v9, Landroid/graphics/Paint;

    .line 441
    const/4 v14, 0x1

    .line 442
    invoke-direct {v9, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 445
    iput-object v9, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/Paint;

    .line 447
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 449
    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 452
    :cond_1c3
    iget-object v9, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/Paint;

    .line 454
    iget-object v14, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->n:Landroid/graphics/Paint$Join;

    .line 456
    if-eqz v14, :cond_1cc

    .line 458
    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 461
    :cond_1cc
    iget-object v14, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->m:Landroid/graphics/Paint$Cap;

    .line 463
    if-eqz v14, :cond_1d3

    .line 465
    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 468
    :cond_1d3
    iget v14, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->o:F

    .line 470
    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 473
    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    .line 476
    move-result v14

    .line 477
    if-eqz v14, :cond_1f5

    .line 479
    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    .line 482
    move-result-object v2

    .line 483
    iget-object v11, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/graphics/Matrix;

    .line 485
    invoke-virtual {v2, v11}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 488
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 491
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 493
    mul-float/2addr v2, v4

    .line 494
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 497
    move-result v2

    .line 498
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 501
    goto :goto_211

    .line 502
    :cond_1f5
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 505
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 508
    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    .line 511
    move-result v2

    .line 512
    iget v4, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 514
    sget-object v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->j:Landroid/graphics/PorterDuff$Mode;

    .line 516
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 519
    move-result v11

    .line 520
    and-int/2addr v2, v12

    .line 521
    int-to-float v11, v11

    .line 522
    mul-float/2addr v11, v4

    .line 523
    float-to-int v4, v11

    .line 524
    shl-int/lit8 v4, v4, 0x18

    .line 526
    or-int/2addr v2, v4

    .line 527
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    :goto_211
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 533
    mul-float v5, v5, v16

    .line 535
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    .line 537
    mul-float/2addr v0, v5

    .line 538
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 541
    iget-object v0, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Path;

    .line 543
    invoke-virtual {v8, v0, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 546
    :cond_221
    :goto_221
    move-object v11, v6

    .line 547
    goto :goto_227

    .line 548
    :cond_223
    :goto_223
    move/from16 v1, p4

    .line 550
    move/from16 v3, p5

    .line 552
    :goto_227
    add-int/lit8 v10, v10, 0x1

    .line 554
    const/4 v9, 0x0

    .line 555
    goto/16 :goto_1a

    .line 557
    :cond_22c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    .line 560
    return-void

    :array_230
    .array-data 4
        0x0
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public getAlpha()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->getRootAlpha()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x437f0000  # 255.0f

    .line 8
    div-float/2addr v0, v1

    .line 9
    return v0
.end method

.method public getRootAlpha()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->l:I

    .line 3
    return v0
.end method

.method public setAlpha(F)V
    .registers 3

    .line 1
    const/high16 v0, 0x437f0000  # 255.0f

    .line 3
    mul-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->setRootAlpha(I)V

    .line 8
    return-void
.end method

.method public setRootAlpha(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->l:I

    .line 3
    return-void
.end method
