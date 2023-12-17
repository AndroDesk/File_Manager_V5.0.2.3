.class public Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.super Lg1/c;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$a;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$h;
    }
.end annotation


# static fields
.field public static final j:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

.field public c:Landroid/graphics/PorterDuffColorFilter;

.field public d:Landroid/graphics/ColorFilter;

.field public e:Z

.field public f:Z

.field public final g:[F

.field public final h:Landroid/graphics/Matrix;

.field public final i:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 3
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->j:Landroid/graphics/PorterDuff$Mode;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lg1/c;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->f:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->g:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->h:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->i:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Lg1/c;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->f:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->g:[F

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->h:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->i:Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 13
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    .line 1
    if-eqz p1, :cond_14

    .line 3
    if-nez p2, :cond_5

    .line 5
    goto :goto_14

    .line 6
    :cond_5
    invoke-virtual {p0}, Lg1/c;->getState()[I

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 14
    move-result p1

    .line 15
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 17
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 20
    return-object v0

    .line 21
    :cond_14
    :goto_14
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public final canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {v0}, Lg0/a$b;->b(Landroid/graphics/drawable/Drawable;)Z

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 7
    if-eqz v2, :cond_c

    .line 9
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->i:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 18
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->i:Landroid/graphics/Rect;

    .line 20
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 23
    move-result v2

    .line 24
    if-lez v2, :cond_193

    .line 26
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->i:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 31
    move-result v2

    .line 32
    if-gtz v2, :cond_23

    .line 34
    goto/16 :goto_193

    .line 36
    :cond_23
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/ColorFilter;

    .line 38
    if-nez v2, :cond_29

    .line 40
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 42
    :cond_29
    iget-object v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->h:Landroid/graphics/Matrix;

    .line 44
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 47
    iget-object v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->h:Landroid/graphics/Matrix;

    .line 49
    iget-object v4, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->g:[F

    .line 51
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 54
    iget-object v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->g:[F

    .line 56
    const/4 v4, 0x0

    .line 57
    aget v3, v3, v4

    .line 59
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 62
    move-result v3

    .line 63
    iget-object v5, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->g:[F

    .line 65
    const/4 v6, 0x4

    .line 66
    aget v5, v5, v6

    .line 68
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 71
    move-result v5

    .line 72
    iget-object v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->g:[F

    .line 74
    const/4 v7, 0x1

    .line 75
    aget v6, v6, v7

    .line 77
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 80
    move-result v6

    .line 81
    iget-object v8, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->g:[F

    .line 83
    const/4 v9, 0x3

    .line 84
    aget v8, v8, v9

    .line 86
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 89
    move-result v8

    .line 90
    const/4 v9, 0x0

    .line 91
    cmpl-float v6, v6, v9

    .line 93
    const/high16 v10, 0x3f800000  # 1.0f

    .line 95
    if-nez v6, :cond_64

    .line 97
    cmpl-float v6, v8, v9

    .line 99
    if-eqz v6, :cond_66

    .line 101
    :cond_64
    move v3, v10

    .line 102
    move v5, v3

    .line 103
    :cond_66
    iget-object v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->i:Landroid/graphics/Rect;

    .line 105
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 108
    move-result v6

    .line 109
    int-to-float v6, v6

    .line 110
    mul-float/2addr v6, v3

    .line 111
    float-to-int v3, v6

    .line 112
    iget-object v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->i:Landroid/graphics/Rect;

    .line 114
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 117
    move-result v6

    .line 118
    int-to-float v6, v6

    .line 119
    mul-float/2addr v6, v5

    .line 120
    float-to-int v5, v6

    .line 121
    const/16 v6, 0x800

    .line 123
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    .line 126
    move-result v15

    .line 127
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 130
    move-result v3

    .line 131
    if-lez v15, :cond_193

    .line 133
    if-gtz v3, :cond_88

    .line 135
    goto/16 :goto_193

    .line 137
    :cond_88
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    move-result v5

    .line 141
    iget-object v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->i:Landroid/graphics/Rect;

    .line 143
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 145
    int-to-float v8, v8

    .line 146
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 148
    int-to-float v6, v6

    .line 149
    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->isAutoMirrored()Z

    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_a5

    .line 158
    invoke-static/range {p0 .. p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 161
    move-result v6

    .line 162
    if-ne v6, v7, :cond_a5

    .line 164
    move v6, v7

    .line 165
    goto :goto_a6

    .line 166
    :cond_a5
    move v6, v4

    .line 167
    :goto_a6
    if-eqz v6, :cond_b7

    .line 169
    iget-object v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->i:Landroid/graphics/Rect;

    .line 171
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 174
    move-result v6

    .line 175
    int-to-float v6, v6

    .line 176
    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 179
    const/high16 v6, -0x40800000  # -1.0f

    .line 181
    invoke-virtual {v1, v6, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 184
    :cond_b7
    iget-object v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->i:Landroid/graphics/Rect;

    .line 186
    invoke-virtual {v6, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 189
    iget-object v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 191
    iget-object v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    .line 193
    if-eqz v8, :cond_d5

    .line 195
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 198
    move-result v8

    .line 199
    if-ne v15, v8, :cond_d2

    .line 201
    iget-object v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    .line 203
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 206
    move-result v8

    .line 207
    if-ne v3, v8, :cond_d2

    .line 209
    move v8, v7

    .line 210
    goto :goto_d3

    .line 211
    :cond_d2
    move v8, v4

    .line 212
    :goto_d3
    if-nez v8, :cond_df

    .line 214
    :cond_d5
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 216
    invoke-static {v15, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 219
    move-result-object v8

    .line 220
    iput-object v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    .line 222
    iput-boolean v7, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->k:Z

    .line 224
    :cond_df
    iget-boolean v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->f:Z

    .line 226
    if-nez v6, :cond_fd

    .line 228
    iget-object v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 230
    iget-object v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    .line 232
    invoke-virtual {v8, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 235
    new-instance v14, Landroid/graphics/Canvas;

    .line 237
    iget-object v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    .line 239
    invoke-direct {v14, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    iget-object v11, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 244
    iget-object v12, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 246
    sget-object v13, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->p:Landroid/graphics/Matrix;

    .line 248
    move/from16 v16, v3

    .line 250
    invoke-virtual/range {v11 .. v16}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->a(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 253
    goto :goto_155

    .line 254
    :cond_fd
    iget-object v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 256
    iget-boolean v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->k:Z

    .line 258
    if-nez v8, :cond_121

    .line 260
    iget-object v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->g:Landroid/content/res/ColorStateList;

    .line 262
    iget-object v9, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    .line 264
    if-ne v8, v9, :cond_121

    .line 266
    iget-object v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->h:Landroid/graphics/PorterDuff$Mode;

    .line 268
    iget-object v9, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 270
    if-ne v8, v9, :cond_121

    .line 272
    iget-boolean v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->j:Z

    .line 274
    iget-boolean v9, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->e:Z

    .line 276
    if-ne v8, v9, :cond_121

    .line 278
    iget v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->i:I

    .line 280
    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 282
    invoke-virtual {v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->getRootAlpha()I

    .line 285
    move-result v6

    .line 286
    if-ne v8, v6, :cond_121

    .line 288
    move v6, v7

    .line 289
    goto :goto_122

    .line 290
    :cond_121
    move v6, v4

    .line 291
    :goto_122
    if-nez v6, :cond_155

    .line 293
    iget-object v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 295
    iget-object v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    .line 297
    invoke-virtual {v8, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 300
    new-instance v14, Landroid/graphics/Canvas;

    .line 302
    iget-object v8, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    .line 304
    invoke-direct {v14, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 307
    iget-object v11, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 309
    iget-object v12, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 311
    sget-object v13, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->p:Landroid/graphics/Matrix;

    .line 313
    move/from16 v16, v3

    .line 315
    invoke-virtual/range {v11 .. v16}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->a(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 318
    iget-object v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 320
    iget-object v6, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    .line 322
    iput-object v6, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->g:Landroid/content/res/ColorStateList;

    .line 324
    iget-object v6, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 326
    iput-object v6, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->h:Landroid/graphics/PorterDuff$Mode;

    .line 328
    iget-object v6, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 330
    invoke-virtual {v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->getRootAlpha()I

    .line 333
    move-result v6

    .line 334
    iput v6, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->i:I

    .line 336
    iget-boolean v6, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->e:Z

    .line 338
    iput-boolean v6, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->j:Z

    .line 340
    iput-boolean v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->k:Z

    .line 342
    :cond_155
    :goto_155
    iget-object v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 344
    iget-object v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->i:Landroid/graphics/Rect;

    .line 346
    iget-object v8, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 348
    invoke-virtual {v8}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->getRootAlpha()I

    .line 351
    move-result v8

    .line 352
    const/16 v9, 0xff

    .line 354
    if-ge v8, v9, :cond_164

    .line 356
    move v4, v7

    .line 357
    :cond_164
    const/4 v8, 0x0

    .line 358
    if-nez v4, :cond_16b

    .line 360
    if-nez v2, :cond_16b

    .line 362
    move-object v2, v8

    .line 363
    goto :goto_18b

    .line 364
    :cond_16b
    iget-object v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->l:Landroid/graphics/Paint;

    .line 366
    if-nez v4, :cond_179

    .line 368
    new-instance v4, Landroid/graphics/Paint;

    .line 370
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 373
    iput-object v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->l:Landroid/graphics/Paint;

    .line 375
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 378
    :cond_179
    iget-object v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->l:Landroid/graphics/Paint;

    .line 380
    iget-object v7, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 382
    invoke-virtual {v7}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->getRootAlpha()I

    .line 385
    move-result v7

    .line 386
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 389
    iget-object v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->l:Landroid/graphics/Paint;

    .line 391
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 394
    iget-object v2, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->l:Landroid/graphics/Paint;

    .line 396
    :goto_18b
    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    .line 398
    invoke-virtual {v1, v3, v8, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 401
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 404
    :cond_193
    :goto_193
    return-void
.end method

.method public final getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-static {v0}, Lg0/a$a;->a(Landroid/graphics/drawable/Drawable;)I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->getRootAlpha()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final getChangingConfigurations()I
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 16
    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->getChangingConfigurations()I

    .line 19
    move-result v1

    .line 20
    or-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-static {v0}, Lg0/a$b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/ColorFilter;

    .line 12
    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$h;

    .line 7
    iget-object v1, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 16
    return-object v0

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 19
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getChangingConfigurations()I

    .line 22
    move-result v1

    .line 23
    iput v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:I

    .line 25
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 27
    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 14
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->i:F

    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 14
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->h:F

    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public final getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, -0x3

    .line 11
    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 4
    iget-object v2, v0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_12

    .line 5
    invoke-static {v2, v1, v8, v9, v10}, Lg0/a$b;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_12
    iget-object v11, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 7
    new-instance v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    invoke-direct {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;-><init>()V

    .line 8
    iput-object v2, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 9
    sget-object v2, Lg1/a;->a:[I

    invoke-static {v1, v10, v9, v2}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 10
    iget-object v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 11
    iget-object v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    const-string v5, "tintMode"

    const/4 v12, 0x6

    const/4 v13, -0x1

    .line 12
    invoke-static {v2, v8, v5, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    .line 13
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/16 v14, 0x9

    const/4 v15, 0x5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_49

    if-eq v5, v15, :cond_4b

    if-eq v5, v14, :cond_46

    packed-switch v5, :pswitch_data_402

    goto :goto_4b

    .line 14
    :pswitch_3d  #0x10
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_4b

    .line 15
    :pswitch_40  #0xf
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_4b

    .line 16
    :pswitch_43  #0xe
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_4b

    .line 17
    :cond_46
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_4b

    .line 18
    :cond_49
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 19
    :cond_4b
    :goto_4b
    iput-object v6, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v5, "tint"

    const/4 v6, 0x1

    .line 20
    invoke-static {v2, v8, v10, v5, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColorStateList(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 21
    iput-object v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    .line 22
    :cond_58
    iget-boolean v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->e:Z

    const-string v12, "autoMirrored"

    invoke-static {v2, v8, v12, v15, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v5

    iput-boolean v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->e:Z

    .line 23
    iget v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->j:F

    const-string v5, "viewportWidth"

    const/4 v12, 0x7

    invoke-static {v2, v8, v5, v12, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->j:F

    .line 24
    iget v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->k:F

    const-string v5, "viewportHeight"

    const/16 v15, 0x8

    invoke-static {v2, v8, v5, v15, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->k:F

    .line 25
    iget v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->j:F

    const/16 v16, 0x0

    cmpg-float v5, v5, v16

    if-lez v5, :cond_3e6

    cmpg-float v3, v3, v16

    if-lez v3, :cond_3ca

    .line 26
    iget v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->h:F

    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->h:F

    .line 27
    iget v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->i:F

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->i:F

    .line 28
    iget v12, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->h:F

    cmpg-float v12, v12, v16

    if-lez v12, :cond_3ae

    cmpg-float v3, v3, v16

    if-lez v3, :cond_392

    .line 29
    invoke-virtual {v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->getAlpha()F

    move-result v3

    const-string v12, "alpha"

    const/4 v14, 0x4

    .line 30
    invoke-static {v2, v8, v12, v14, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    .line 31
    invoke-virtual {v4, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->setAlpha(F)V

    const/4 v12, 0x0

    .line 32
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_bc

    .line 33
    iput-object v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->m:Ljava/lang/String;

    .line 34
    iget-object v14, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->o:Landroidx/collection/a;

    invoke-virtual {v14, v3, v4}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_bc
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getChangingConfigurations()I

    move-result v2

    iput v2, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:I

    .line 37
    iput-boolean v6, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->k:Z

    .line 38
    iget-object v14, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 39
    iget-object v4, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 40
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 41
    iget-object v2, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 42
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 43
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v13, v17, 0x1

    move/from16 v17, v6

    :goto_e1
    if-eq v2, v6, :cond_375

    .line 44
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ge v6, v13, :cond_eb

    if-eq v2, v7, :cond_375

    :cond_eb
    const-string v6, "group"

    if-ne v2, v5, :cond_33e

    .line 45
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    check-cast v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    const-string v7, "path"

    .line 47
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v21, v6

    const-string v6, "fillType"

    const-string v5, "pathData"

    if-eqz v7, :cond_243

    .line 48
    new-instance v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;

    invoke-direct {v7}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;-><init>()V

    .line 49
    sget-object v2, Lg1/a;->c:[I

    invoke-static {v1, v10, v9, v2}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 50
    invoke-static {v8, v5}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12b

    move-object/from16 v24, v3

    move-object v12, v4

    move-object v0, v7

    move-object/from16 v19, v11

    move/from16 v22, v13

    const/16 v16, 0x9

    const/16 v18, -0x1

    const/16 v25, 0x8

    move-object v11, v2

    goto/16 :goto_219

    .line 51
    :cond_12b
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_133

    .line 52
    iput-object v5, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->b:Ljava/lang/String;

    :cond_133
    const/4 v5, 0x2

    .line 53
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_140

    .line 54
    invoke-static/range {v17 .. v17}, Lf0/h;->c(Ljava/lang/String;)[Lf0/h$a;

    move-result-object v5

    iput-object v5, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    :cond_140
    const/16 v17, 0x1

    const/16 v21, 0x0

    const-string v5, "fillColor"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v3, p2

    move-object v12, v4

    move-object/from16 v4, p4

    move/from16 v22, v13

    const/4 v0, 0x1

    move-object v13, v6

    move/from16 v6, v17

    move-object v0, v7

    move-object/from16 v19, v11

    const/4 v11, 0x3

    move/from16 v7, v21

    .line 55
    invoke-static/range {v2 .. v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v2

    iput-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->g:Landroidx/core/content/res/ComplexColorCompat;

    const/16 v2, 0xc

    .line 56
    iget v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    const-string v4, "fillAlpha"

    move-object/from16 v7, v23

    invoke-static {v7, v8, v4, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->i:F

    const-string v2, "strokeLineCap"

    const/4 v3, -0x1

    const/16 v6, 0x8

    .line 57
    invoke-static {v7, v8, v2, v6, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 58
    iget-object v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->m:Landroid/graphics/Paint$Cap;

    if-eqz v2, :cond_18a

    const/4 v4, 0x1

    if-eq v2, v4, :cond_186

    const/4 v5, 0x2

    if-eq v2, v5, :cond_183

    goto :goto_18d

    .line 59
    :cond_183
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_18d

    :cond_186
    const/4 v5, 0x2

    .line 60
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_18d

    :cond_18a
    const/4 v5, 0x2

    .line 61
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 62
    :goto_18d
    iput-object v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->m:Landroid/graphics/Paint$Cap;

    const-string v2, "strokeLineJoin"

    const/4 v3, -0x1

    const/16 v4, 0x9

    .line 63
    invoke-static {v7, v8, v2, v4, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 64
    iget-object v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->n:Landroid/graphics/Paint$Join;

    if-eqz v2, :cond_1a8

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1a5

    if-eq v2, v5, :cond_1a2

    goto :goto_1aa

    .line 65
    :cond_1a2
    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_1aa

    .line 66
    :cond_1a5
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_1aa

    .line 67
    :cond_1a8
    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 68
    :goto_1aa
    iput-object v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->n:Landroid/graphics/Paint$Join;

    const/16 v2, 0xa

    .line 69
    iget v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->o:F

    const-string v4, "strokeMiterLimit"

    invoke-static {v7, v8, v4, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->o:F

    const/16 v17, 0x3

    const/16 v20, 0x0

    const-string v21, "strokeColor"

    move-object v2, v7

    const/16 v18, -0x1

    move-object/from16 v3, p2

    const/16 v16, 0x9

    move-object/from16 v4, p4

    move v11, v5

    move-object/from16 v5, v21

    move/from16 v25, v6

    move/from16 v6, v17

    move-object v11, v7

    move/from16 v7, v20

    .line 70
    invoke-static/range {v2 .. v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v2

    iput-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->e:Landroidx/core/content/res/ComplexColorCompat;

    const/16 v2, 0xb

    .line 71
    iget v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    const-string v4, "strokeAlpha"

    invoke-static {v11, v8, v4, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 72
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    const-string v3, "strokeWidth"

    const/4 v4, 0x4

    invoke-static {v11, v8, v3, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->f:F

    .line 73
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    const-string v3, "trimPathEnd"

    const/4 v4, 0x6

    invoke-static {v11, v8, v3, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->k:F

    .line 74
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    const-string v3, "trimPathOffset"

    const/4 v4, 0x7

    invoke-static {v11, v8, v3, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->l:F

    .line 75
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    const-string v3, "trimPathStart"

    const/4 v4, 0x5

    invoke-static {v11, v8, v3, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;->j:F

    const/16 v2, 0xd

    .line 76
    iget v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    invoke-static {v11, v8, v13, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    iput v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    .line 77
    :goto_219
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    iget-object v2, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->getPathName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_230

    .line 80
    iget-object v2, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->o:Landroidx/collection/a;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->getPathName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_230
    iget v2, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:I

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->d:I

    or-int/2addr v0, v2

    iput v0, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:I

    move-object/from16 v7, v24

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v11, 0x4

    const/4 v13, 0x6

    const/16 v17, 0x0

    goto/16 :goto_33c

    :cond_243
    move-object/from16 v24, v3

    move-object v12, v4

    move-object/from16 v19, v11

    move/from16 v22, v13

    const/16 v16, 0x9

    const/16 v18, -0x1

    const/16 v25, 0x8

    move-object v13, v6

    const-string v0, "clip-path"

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a8

    .line 83
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$a;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$a;-><init>()V

    .line 84
    invoke-static {v8, v5}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_265

    goto :goto_28b

    .line 85
    :cond_265
    sget-object v2, Lg1/a;->d:[I

    invoke-static {v1, v10, v9, v2}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 86
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_274

    .line 87
    iput-object v4, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->b:Ljava/lang/String;

    :cond_274
    const/4 v4, 0x1

    .line 88
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_281

    .line 89
    invoke-static {v5}, Lf0/h;->c(Ljava/lang/String;)[Lf0/h$a;

    move-result-object v4

    iput-object v4, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    :cond_281
    const/4 v4, 0x2

    .line 90
    invoke-static {v2, v8, v13, v4, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    .line 91
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    :goto_28b
    iget-object v2, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->getPathName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29f

    .line 94
    iget-object v2, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->o:Landroidx/collection/a;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->getPathName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_29f
    iget v2, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:I

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->d:I

    or-int/2addr v0, v2

    iput v0, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:I

    goto/16 :goto_334

    :cond_2a8
    move-object/from16 v0, v21

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_334

    .line 97
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;-><init>()V

    .line 98
    sget-object v2, Lg1/a;->b:[I

    invoke-static {v1, v10, v9, v2}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 99
    iget v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c:F

    const-string v4, "rotation"

    const/4 v5, 0x5

    invoke-static {v2, v8, v4, v5, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c:F

    .line 100
    iget v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:F

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:F

    .line 101
    iget v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    .line 102
    iget v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:F

    const-string v7, "scaleX"

    const/4 v11, 0x3

    invoke-static {v2, v8, v7, v11, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:F

    .line 103
    iget v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    const-string v7, "scaleY"

    const/4 v11, 0x4

    invoke-static {v2, v8, v7, v11, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 104
    iget v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    const-string v7, "translateX"

    const/4 v13, 0x6

    invoke-static {v2, v8, v7, v13, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 105
    iget v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    const-string v7, "translateY"

    const/4 v4, 0x7

    invoke-static {v2, v8, v7, v4, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    const/4 v3, 0x0

    .line 106
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_30d

    .line 107
    iput-object v7, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Ljava/lang/String;

    .line 108
    :cond_30d
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->c()V

    .line 109
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    iget-object v2, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v24

    .line 111
    invoke-virtual {v7, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->getGroupName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32c

    .line 113
    iget-object v2, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->o:Landroidx/collection/a;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->getGroupName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_32c
    iget v2, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:I

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:I

    or-int/2addr v0, v2

    iput v0, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:I

    goto :goto_33c

    :cond_334
    :goto_334
    move-object/from16 v7, v24

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v11, 0x4

    const/4 v13, 0x6

    :goto_33c
    const/4 v15, 0x3

    goto :goto_361

    :cond_33e
    move-object v0, v6

    move-object/from16 v19, v11

    move/from16 v22, v13

    move/from16 v25, v15

    const/4 v11, 0x4

    const/4 v13, 0x6

    const/16 v16, 0x9

    const/16 v18, -0x1

    move v6, v5

    move v15, v7

    const/4 v5, 0x5

    move-object v7, v3

    move v3, v12

    move-object v12, v4

    const/4 v4, 0x7

    if-ne v2, v15, :cond_361

    .line 115
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_361

    .line 117
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 118
    :cond_361
    :goto_361
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move-object/from16 v0, p0

    move v5, v6

    move-object v4, v12

    move-object/from16 v11, v19

    move/from16 v13, v22

    const/4 v6, 0x1

    move v12, v3

    move-object v3, v7

    move v7, v15

    move/from16 v15, v25

    goto/16 :goto_e1

    :cond_375
    move-object/from16 v19, v11

    if-nez v17, :cond_388

    move-object/from16 v0, v19

    .line 119
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void

    :cond_388
    move-object/from16 v3, p0

    .line 120
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no path defined"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_392
    move-object v3, v0

    .line 121
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3ae
    move-object v3, v0

    .line 122
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3ca
    move-object v3, v0

    .line 123
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e6
    move-object v3, v0

    .line 124
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_402
    .packed-switch 0xe
        :pswitch_43  #0000000e
        :pswitch_40  #0000000f
        :pswitch_3d  #00000010
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    return-void
.end method

.method public final isAutoMirrored()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-static {v0}, Lg0/a$a;->d(Landroid/graphics/drawable/Drawable;)Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 12
    iget-boolean v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->e:Z

    .line 14
    return v0
.end method

.method public final isStateful()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3c

    .line 16
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 18
    if-eqz v0, :cond_3a

    .line 20
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 22
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->n:Ljava/lang/Boolean;

    .line 24
    if-nez v1, :cond_25

    .line 26
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 28
    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->a()Z

    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->n:Ljava/lang/Boolean;

    .line 38
    :cond_25
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->n:Ljava/lang/Boolean;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3c

    .line 46
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 48
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    .line 50
    if-eqz v0, :cond_3a

    .line 52
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3a

    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    const/4 v0, 0x0

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    :goto_3c
    const/4 v0, 0x1

    .line 62
    :goto_3d
    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    return-object p0

    .line 9
    :cond_8
    iget-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->e:Z

    .line 11
    if-nez v0, :cond_1e

    .line 13
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    if-ne v0, p0, :cond_1e

    .line 19
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 21
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 23
    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;)V

    .line 26
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->e:Z

    .line 31
    :cond_1e
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 8
    :cond_7
    return-void
.end method

.method public final onStateChange([I)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 13
    iget-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_1f

    .line 18
    iget-object v4, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 20
    if-eqz v4, :cond_1f

    .line 22
    invoke-virtual {p0, v2, v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 28
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 31
    move v0, v3

    .line 32
    :cond_1f
    iget-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 34
    iget-object v4, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->n:Ljava/lang/Boolean;

    .line 36
    if-nez v4, :cond_31

    .line 38
    iget-object v4, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 40
    invoke-virtual {v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->a()Z

    .line 43
    move-result v4

    .line 44
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    move-result-object v4

    .line 48
    iput-object v4, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->n:Ljava/lang/Boolean;

    .line 50
    :cond_31
    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->n:Ljava/lang/Boolean;

    .line 52
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4c

    .line 58
    iget-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 60
    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 62
    invoke-virtual {v2, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->b([I)Z

    .line 65
    move-result p1

    .line 66
    iget-boolean v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->k:Z

    .line 68
    or-int/2addr v2, p1

    .line 69
    iput-boolean v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->k:Z

    .line 71
    if-eqz p1, :cond_4c

    .line 73
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move v3, v0

    .line 78
    :goto_4d
    return v3
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 12
    return-void
.end method

.method public final setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 11
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 13
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->getRootAlpha()I

    .line 16
    move-result v0

    .line 17
    if-eq v0, p1, :cond_1c

    .line 19
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 21
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    .line 23
    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->setRootAlpha(I)V

    .line 26
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 29
    :cond_1c
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {v0, p1}, Lg0/a$a;->e(Landroid/graphics/drawable/Drawable;Z)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 11
    iput-boolean p1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->e:Z

    .line 13
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8
    return-void

    .line 9
    :cond_8
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/ColorFilter;

    .line 11
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 14
    return-void
.end method

.method public final setTint(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {v0, p1}, Lg0/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 16
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {v0, p1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 11
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    .line 13
    if-eq v1, p1, :cond_1b

    .line 15
    iput-object p1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    .line 17
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 19
    invoke-virtual {p0, p1, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 25
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 28
    :cond_1b
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {v0, p1}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->b:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;

    .line 11
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 13
    if-eq v1, p1, :cond_1b

    .line 15
    iput-object p1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 17
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    .line 19
    invoke-virtual {p0, v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 25
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 28
    :cond_1b
    return-void
.end method

.method public final setVisible(ZZ)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 12
    return-void
.end method
