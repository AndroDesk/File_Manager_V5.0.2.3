.class public final Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MotionLayout.java"

# interfaces
.implements Lm0/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$g;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$d;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$f;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$e;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    }
.end annotation


# static fields
.field public static final synthetic S:I


# instance fields
.field public A:F

.field public B:Z

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly/n;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly/n;",
            ">;"
        }
    .end annotation
.end field

.field public E:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionLayout$g;",
            ">;"
        }
    .end annotation
.end field

.field public F:I

.field public G:J

.field public H:F

.field public I:I

.field public J:F

.field public K:F

.field public L:Z

.field public M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

.field public N:Ljava/lang/Runnable;

.field public O:Z

.field public P:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public Q:Z

.field public R:Landroid/view/View;

.field public a:Landroidx/constraintlayout/motion/widget/a;

.field public b:Landroid/view/animation/Interpolator;

.field public c:F

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:F

.field public k:F

.field public l:F

.field public m:J

.field public n:F

.field public o:Z

.field public p:Z

.field public q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

.field public r:I

.field public s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

.field public v:Ly/b;

.field public w:I

.field public x:I

.field public y:Z

.field public z:J


# virtual methods
.method public final a(F)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 10
    cmpl-float v1, v1, v2

    .line 12
    if-eqz v1, :cond_13

    .line 14
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    .line 16
    if-eqz v1, :cond_13

    .line 18
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 20
    :cond_13
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 22
    cmpl-float v2, v1, p1

    .line 24
    if-nez v2, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    const/4 v2, 0x0

    .line 28
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 30
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 32
    if-eqz v3, :cond_24

    .line 34
    iget v0, v3, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    iget v0, v0, Landroidx/constraintlayout/motion/widget/a;->j:I

    .line 39
    :goto_26
    int-to-float v0, v0

    .line 40
    const/high16 v3, 0x447a0000  # 1000.0f

    .line 42
    div-float/2addr v0, v3

    .line 43
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 45
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 48
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 50
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/a;->d()Landroid/view/animation/Interpolator;

    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    .line 56
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    .line 58
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 61
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    .line 64
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 66
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 71
    return-void
.end method

.method public final b(Z)V
    .registers 14

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    .line 3
    const-wide/16 v2, -0x1

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-nez v0, :cond_e

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    .line 15
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 17
    const/4 v1, 0x0

    .line 18
    cmpl-float v2, v0, v1

    .line 20
    const/4 v3, -0x1

    .line 21
    const/high16 v4, 0x3f800000  # 1.0f

    .line 23
    if-lez v2, :cond_1e

    .line 25
    cmpg-float v2, v0, v4

    .line 27
    if-gez v2, :cond_1e

    .line 29
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 31
    :cond_1e
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-nez v2, :cond_30

    .line 37
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    .line 39
    if-eqz v2, :cond_171

    .line 41
    if-nez p1, :cond_30

    .line 43
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 45
    cmpl-float p1, p1, v0

    .line 47
    if-eqz p1, :cond_171

    .line 49
    :cond_30
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 51
    sub-float/2addr p1, v0

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 59
    move-result-wide v7

    .line 60
    iget-wide v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    .line 62
    sub-long v9, v7, v9

    .line 64
    long-to-float v0, v9

    .line 65
    mul-float/2addr v0, p1

    .line 66
    const v2, 0x3089705f  # 1.0E-9f

    .line 69
    mul-float/2addr v0, v2

    .line 70
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 72
    div-float/2addr v0, v2

    .line 73
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 75
    add-float/2addr v2, v0

    .line 76
    iget-boolean v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    .line 78
    if-eqz v9, :cond_51

    .line 80
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 82
    :cond_51
    cmpl-float v9, p1, v1

    .line 84
    if-lez v9, :cond_5b

    .line 86
    iget v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 88
    cmpl-float v10, v2, v10

    .line 90
    if-gez v10, :cond_65

    .line 92
    :cond_5b
    cmpg-float v10, p1, v1

    .line 94
    if-gtz v10, :cond_69

    .line 96
    iget v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 98
    cmpg-float v10, v2, v10

    .line 100
    if-gtz v10, :cond_69

    .line 102
    :cond_65
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 104
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    .line 106
    :cond_69
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 108
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 110
    iput-wide v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    .line 112
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    .line 114
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 117
    move-result v0

    .line 118
    const v7, 0x3727c5ac  # 1.0E-5f

    .line 121
    cmpl-float v0, v0, v7

    .line 123
    if-lez v0, :cond_81

    .line 125
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 127
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 130
    :cond_81
    if-lez v9, :cond_89

    .line 132
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 134
    cmpl-float v0, v2, v0

    .line 136
    if-gez v0, :cond_93

    .line 138
    :cond_89
    cmpg-float v0, p1, v1

    .line 140
    if-gtz v0, :cond_97

    .line 142
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 144
    cmpg-float v0, v2, v0

    .line 146
    if-gtz v0, :cond_97

    .line 148
    :cond_93
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 150
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    .line 152
    :cond_97
    cmpl-float v0, v2, v4

    .line 154
    if-gez v0, :cond_9f

    .line 156
    cmpg-float v0, v2, v1

    .line 158
    if-gtz v0, :cond_a6

    .line 160
    :cond_9f
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    .line 162
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 164
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 167
    :cond_a6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 170
    move-result v0

    .line 171
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    .line 173
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 176
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 178
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    .line 180
    if-nez v7, :cond_b6

    .line 182
    goto :goto_b9

    .line 183
    :cond_b6
    invoke-interface {v7, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 186
    :goto_b9
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    .line 188
    if-eqz v7, :cond_d1

    .line 190
    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 192
    div-float v8, p1, v8

    .line 194
    add-float/2addr v8, v2

    .line 195
    invoke-interface {v7, v8}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 198
    move-result v7

    .line 199
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    .line 201
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    .line 203
    invoke-interface {v8, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 206
    move-result v8

    .line 207
    sub-float/2addr v7, v8

    .line 208
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    .line 210
    :cond_d1
    if-gtz v0, :cond_1a5

    .line 212
    if-lez v9, :cond_db

    .line 214
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 216
    cmpl-float v0, v2, v0

    .line 218
    if-gez v0, :cond_e5

    .line 220
    :cond_db
    cmpg-float v0, p1, v1

    .line 222
    if-gtz v0, :cond_e7

    .line 224
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 226
    cmpg-float v0, v2, v0

    .line 228
    if-gtz v0, :cond_e7

    .line 230
    :cond_e5
    move v0, v5

    .line 231
    goto :goto_e8

    .line 232
    :cond_e7
    move v0, v6

    .line 233
    :goto_e8
    iget-boolean v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    .line 235
    if-nez v7, :cond_f7

    .line 237
    iget-boolean v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    .line 239
    if-nez v7, :cond_f7

    .line 241
    if-eqz v0, :cond_f7

    .line 243
    sget-object v7, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 245
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 248
    :cond_f7
    iget-boolean v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    .line 250
    xor-int/2addr v0, v5

    .line 251
    or-int/2addr v0, v7

    .line 252
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    .line 254
    cmpg-float v0, v2, v1

    .line 256
    if-gtz v0, :cond_11a

    .line 258
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 260
    if-eq v0, v3, :cond_11a

    .line 262
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 264
    if-eq v3, v0, :cond_11a

    .line 266
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 268
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 270
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 277
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 279
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 282
    move v6, v5

    .line 283
    :cond_11a
    float-to-double v7, v2

    .line 284
    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    .line 286
    cmpl-double v0, v7, v10

    .line 288
    if-ltz v0, :cond_138

    .line 290
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 292
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 294
    if-eq v0, v3, :cond_138

    .line 296
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 298
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 300
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 307
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 309
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 312
    move v6, v5

    .line 313
    :cond_138
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    .line 315
    if-nez v0, :cond_155

    .line 317
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    .line 319
    if-eqz v0, :cond_141

    .line 321
    goto :goto_155

    .line 322
    :cond_141
    if-lez v9, :cond_147

    .line 324
    cmpl-float v0, v2, v4

    .line 326
    if-eqz v0, :cond_14f

    .line 328
    :cond_147
    cmpg-float v0, p1, v1

    .line 330
    if-gez v0, :cond_158

    .line 332
    cmpl-float v0, v2, v1

    .line 334
    if-nez v0, :cond_158

    .line 336
    :cond_14f
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 338
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 341
    goto :goto_158

    .line 342
    :cond_155
    :goto_155
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 345
    :cond_158
    :goto_158
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    .line 347
    if-nez v0, :cond_171

    .line 349
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    .line 351
    if-nez v0, :cond_171

    .line 353
    if-lez v9, :cond_166

    .line 355
    cmpl-float v0, v2, v4

    .line 357
    if-eqz v0, :cond_16e

    .line 359
    :cond_166
    cmpg-float p1, p1, v1

    .line 361
    if-gez p1, :cond_171

    .line 363
    cmpl-float p1, v2, v1

    .line 365
    if-nez p1, :cond_171

    .line 367
    :cond_16e
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    .line 370
    :cond_171
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 372
    cmpl-float v0, p1, v4

    .line 374
    if-ltz v0, :cond_183

    .line 376
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 378
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 380
    if-eq p1, v0, :cond_17e

    .line 382
    goto :goto_17f

    .line 383
    :cond_17e
    move v5, v6

    .line 384
    :goto_17f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 386
    :goto_181
    move v6, v5

    .line 387
    goto :goto_192

    .line 388
    :cond_183
    cmpg-float p1, p1, v1

    .line 390
    if-gtz p1, :cond_192

    .line 392
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 394
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 396
    if-eq p1, v0, :cond_18e

    .line 398
    goto :goto_18f

    .line 399
    :cond_18e
    move v5, v6

    .line 400
    :goto_18f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 402
    goto :goto_181

    .line 403
    :cond_192
    :goto_192
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Z

    .line 405
    or-int/2addr p1, v6

    .line 406
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Z

    .line 408
    if-eqz v6, :cond_1a0

    .line 410
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 412
    if-nez p1, :cond_1a0

    .line 414
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 417
    :cond_1a0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 419
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 421
    return-void

    .line 422
    :cond_1a5
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 425
    const/4 p1, 0x0

    .line 426
    throw p1
.end method

.method public final c()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 3
    if-nez v0, :cond_e

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    if-eqz v0, :cond_5f

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_5f

    .line 15
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 17
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 19
    cmpl-float v0, v0, v1

    .line 21
    if-eqz v0, :cond_5f

    .line 23
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    .line 25
    const/4 v1, -0x1

    .line 26
    if-eq v0, v1, :cond_3a

    .line 28
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 30
    if-eqz v0, :cond_22

    .line 32
    invoke-interface {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b()V

    .line 35
    :cond_22
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    if-eqz v0, :cond_3a

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v0

    .line 43
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3a

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 55
    invoke-interface {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b()V

    .line 58
    goto :goto_2a

    .line 59
    :cond_3a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    .line 61
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 63
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 67
    if-eqz v0, :cond_47

    .line 69
    invoke-interface {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a()V

    .line 72
    :cond_47
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 74
    if-eqz v0, :cond_5f

    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v0

    .line 80
    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_5f

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 92
    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a()V

    .line 95
    goto :goto_4f

    .line 96
    :cond_5f
    return-void
.end method

.method public final d()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_f

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    if-eqz v0, :cond_14

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_14

    .line 16
    :cond_f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq v0, v2, :cond_2b

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 23
    if-nez v0, :cond_2a

    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    if-eqz v0, :cond_22

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2a

    .line 35
    :cond_22
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/lang/Runnable;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 42
    :cond_29
    return-void

    .line 43
    :cond_2a
    throw v1

    .line 44
    :cond_2b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    .line 48
    throw v1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b(Z)V

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 7
    if-eqz v1, :cond_3c

    .line 9
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->q:Landroidx/constraintlayout/motion/widget/d;

    .line 11
    if-eqz v1, :cond_3c

    .line 13
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    .line 15
    if-nez v2, :cond_11

    .line 17
    goto :goto_3c

    .line 18
    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v2

    .line 22
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_25

    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroidx/constraintlayout/motion/widget/c$a;

    .line 34
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/c$a;->a()V

    .line 37
    goto :goto_15

    .line 38
    :cond_25
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    .line 40
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/d;->f:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 45
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/d;->f:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 50
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3c

    .line 58
    const/4 v2, 0x0

    .line 59
    iput-object v2, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    .line 61
    :cond_3c
    :goto_3c
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 66
    if-nez v1, :cond_44

    .line 68
    return-void

    .line 69
    :cond_44
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:I

    .line 71
    const/4 v2, 0x1

    .line 72
    and-int/2addr v1, v2

    .line 73
    if-ne v1, v2, :cond_107

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_107

    .line 81
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    .line 83
    add-int/2addr v1, v2

    .line 84
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    .line 86
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 89
    move-result-wide v3

    .line 90
    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    .line 92
    const-wide/16 v7, -0x1

    .line 94
    cmp-long v1, v5, v7

    .line 96
    if-eqz v1, :cond_80

    .line 98
    sub-long v5, v3, v5

    .line 100
    const-wide/32 v7, 0xbebc200

    .line 103
    cmp-long v1, v5, v7

    .line 105
    if-lez v1, :cond_82

    .line 107
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    .line 109
    int-to-float v1, v1

    .line 110
    long-to-float v5, v5

    .line 111
    const v6, 0x3089705f  # 1.0E-9f

    .line 114
    mul-float/2addr v5, v6

    .line 115
    div-float/2addr v1, v5

    .line 116
    const/high16 v5, 0x42c80000  # 100.0f

    .line 118
    mul-float/2addr v1, v5

    .line 119
    float-to-int v1, v1

    .line 120
    int-to-float v1, v1

    .line 121
    div-float/2addr v1, v5

    .line 122
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 124
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    .line 126
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    .line 128
    goto :goto_82

    .line 129
    :cond_80
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    .line 131
    :cond_82
    :goto_82
    new-instance v0, Landroid/graphics/Paint;

    .line 133
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 136
    const/high16 v1, 0x42280000  # 42.0f

    .line 138
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 141
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 144
    move-result v1

    .line 145
    const/high16 v3, 0x447a0000  # 1000.0f

    .line 147
    mul-float/2addr v1, v3

    .line 148
    float-to-int v1, v1

    .line 149
    int-to-float v1, v1

    .line 150
    const/high16 v3, 0x41200000  # 10.0f

    .line 152
    div-float/2addr v1, v3

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 163
    const-string v5, " fps "

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 170
    invoke-static {v5, p0}, Ly/a;->d(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v5, " -> "

    .line 179
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v4

    .line 186
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    move-result-object v4

    .line 190
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 192
    invoke-static {v5, p0}, Ly/a;->d(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v5, " (progress: "

    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, " ) state="

    .line 209
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 214
    const/4 v5, -0x1

    .line 215
    if-ne v1, v5, :cond_db

    .line 217
    const-string v1, "undefined"

    .line 219
    goto :goto_df

    .line 220
    :cond_db
    invoke-static {v1, p0}, Ly/a;->d(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    :goto_df
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 231
    const/high16 v4, -0x1000000

    .line 233
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    const/high16 v4, 0x41300000  # 11.0f

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 241
    move-result v5

    .line 242
    add-int/lit8 v5, v5, -0x1d

    .line 244
    int-to-float v5, v5

    .line 245
    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    const v4, -0x77ff78

    .line 251
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 257
    move-result v4

    .line 258
    add-int/lit8 v4, v4, -0x1e

    .line 260
    int-to-float v4, v4

    .line 261
    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 264
    :cond_107
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:I

    .line 266
    if-le p1, v2, :cond_11f

    .line 268
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    .line 270
    if-nez p1, :cond_116

    .line 272
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    .line 274
    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 277
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    .line 279
    :cond_116
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    .line 281
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 283
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    :cond_11f
    return-void
.end method

.method public final e()V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 8
    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_11

    .line 14
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 17
    return-void

    .line 18
    :cond_11
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 20
    const/4 v1, -0x1

    .line 21
    if-eq v0, v1, :cond_d8

    .line 23
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 25
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v3

    .line 31
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_48

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/constraintlayout/motion/widget/a$b;

    .line 43
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v5

    .line 49
    if-lez v5, :cond_1e

    .line 51
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v4

    .line 57
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1e

    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Landroidx/constraintlayout/motion/widget/a$b$a;

    .line 69
    invoke-virtual {v5, p0}, Landroidx/constraintlayout/motion/widget/a$b$a;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 72
    goto :goto_38

    .line 73
    :cond_48
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->f:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v3

    .line 79
    :cond_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_78

    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroidx/constraintlayout/motion/widget/a$b;

    .line 91
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result v5

    .line 97
    if-lez v5, :cond_4e

    .line 99
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v4

    .line 105
    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_4e

    .line 111
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Landroidx/constraintlayout/motion/widget/a$b$a;

    .line 117
    invoke-virtual {v5, p0}, Landroidx/constraintlayout/motion/widget/a$b$a;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 120
    goto :goto_68

    .line 121
    :cond_78
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object v3

    .line 127
    :cond_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_a8

    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Landroidx/constraintlayout/motion/widget/a$b;

    .line 139
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 144
    move-result v5

    .line 145
    if-lez v5, :cond_7e

    .line 147
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    move-result-object v5

    .line 153
    :goto_98
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_7e

    .line 159
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    move-result-object v6

    .line 163
    check-cast v6, Landroidx/constraintlayout/motion/widget/a$b$a;

    .line 165
    invoke-virtual {v6, p0, v0, v4}, Landroidx/constraintlayout/motion/widget/a$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/a$b;)V

    .line 168
    goto :goto_98

    .line 169
    :cond_a8
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/a;->f:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    move-result-object v2

    .line 175
    :cond_ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_d8

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Landroidx/constraintlayout/motion/widget/a$b;

    .line 187
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    .line 189
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 192
    move-result v4

    .line 193
    if-lez v4, :cond_ae

    .line 195
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 200
    move-result-object v4

    .line 201
    :goto_c8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v5

    .line 205
    if-eqz v5, :cond_ae

    .line 207
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v5

    .line 211
    check-cast v5, Landroidx/constraintlayout/motion/widget/a$b$a;

    .line 213
    invoke-virtual {v5, p0, v0, v3}, Landroidx/constraintlayout/motion/widget/a$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/a$b;)V

    .line 216
    goto :goto_c8

    .line 217
    :cond_d8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 219
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/a;->m()Z

    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_12c

    .line 225
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 227
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 229
    if-eqz v0, :cond_12c

    .line 231
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 233
    if-eqz v0, :cond_12c

    .line 235
    iget v2, v0, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 237
    if-eq v2, v1, :cond_115

    .line 239
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 241
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 244
    move-result-object v1

    .line 245
    if-nez v1, :cond_116

    .line 247
    const-string v2, "cannot find TouchAnchorId @id/"

    .line 249
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    move-result-object v2

    .line 253
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 255
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 258
    move-result-object v3

    .line 259
    iget v0, v0, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 261
    invoke-static {v3, v0}, Ly/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v0

    .line 272
    const-string v2, "TouchResponse"

    .line 274
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    goto :goto_116

    .line 278
    :cond_115
    const/4 v1, 0x0

    .line 279
    :cond_116
    :goto_116
    instance-of v0, v1, Landroidx/core/widget/NestedScrollView;

    .line 281
    if-eqz v0, :cond_12c

    .line 283
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 285
    new-instance v0, Ly/p;

    .line 287
    invoke-direct {v0}, Ly/p;-><init>()V

    .line 290
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    new-instance v0, Ly/q;

    .line 295
    invoke-direct {v0}, Ly/q;-><init>()V

    .line 298
    invoke-virtual {v1, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$c;)V

    .line 301
    :cond_12c
    return-void
.end method

.method public final f(FF)V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_18

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 9
    if-nez v0, :cond_11

    .line 11
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 13
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 20
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 22
    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    .line 24
    return-void

    .line 25
    :cond_18
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 28
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 30
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 33
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    .line 35
    const/4 v0, 0x0

    .line 36
    cmpl-float p2, p2, v0

    .line 38
    const/high16 v1, 0x3f800000  # 1.0f

    .line 40
    if-eqz p2, :cond_30

    .line 42
    if-lez p2, :cond_2c

    .line 44
    move v0, v1

    .line 45
    :cond_2c
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 48
    goto :goto_42

    .line 49
    :cond_30
    cmpl-float p2, p1, v0

    .line 51
    if-eqz p2, :cond_42

    .line 53
    cmpl-float p2, p1, v1

    .line 55
    if-eqz p2, :cond_42

    .line 57
    const/high16 p2, 0x3f000000  # 0.5f

    .line 59
    cmpl-float p1, p1, p2

    .line 61
    if-lez p1, :cond_3f

    .line 63
    move v0, v1

    .line 64
    :cond_3f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 67
    :cond_42
    :goto_42
    return-void
.end method

.method public final g(II)V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_18

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 9
    if-nez v0, :cond_11

    .line 11
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 13
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 20
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 22
    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 24
    return-void

    .line 25
    :cond_18
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 27
    if-nez v0, :cond_1d

    .line 29
    return-void

    .line 30
    :cond_1d
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 32
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 34
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/a;->l(II)V

    .line 37
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 39
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    .line 42
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 44
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    .line 47
    const/4 p1, 0x0

    .line 48
    throw p1
.end method

.method public getConstraintSetIds()[I
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v1

    .line 13
    new-array v2, v1, [I

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_f
    if-ge v3, v1, :cond_1c

    .line 18
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 23
    move-result v4

    .line 24
    aput v4, v2, v3

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_f

    .line 29
    :cond_1c
    return-object v2
.end method

.method public getCurrentState()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 3
    return v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/a$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 9
    return-object v0
.end method

.method public getDesignTool()Ly/b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:Ly/b;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ly/b;

    .line 7
    invoke-direct {v0}, Ly/b;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:Ly/b;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:Ly/b;

    .line 14
    return-object v0
.end method

.method public getEndState()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 3
    return v0
.end method

.method public getNanoTime()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getProgress()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 3
    return v0
.end method

.method public getScene()Landroidx/constraintlayout/motion/widget/a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    return-object v0
.end method

.method public getStartState()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 3
    return v0
.end method

.method public getTargetPosition()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 3
    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 7
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 14
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 16
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 18
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 20
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 22
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 24
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    .line 27
    move-result v1

    .line 28
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    .line 30
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 32
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 35
    move-result v1

    .line 36
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    new-instance v1, Landroid/os/Bundle;

    .line 45
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 50
    const-string v3, "motion.progress"

    .line 52
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 55
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    .line 57
    const-string v3, "motion.velocity"

    .line 59
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 62
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 64
    const-string v3, "motion.StartState"

    .line 66
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 71
    const-string v2, "motion.EndState"

    .line 73
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    return-object v1
.end method

.method public getTransitionTimeMs()J
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    const/high16 v1, 0x447a0000  # 1000.0f

    .line 5
    if-eqz v0, :cond_13

    .line 7
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 9
    if-eqz v2, :cond_d

    .line 11
    iget v0, v2, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget v0, v0, Landroidx/constraintlayout/motion/widget/a;->j:I

    .line 16
    :goto_f
    int-to-float v0, v0

    .line 17
    div-float/2addr v0, v1

    .line 18
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 20
    :cond_13
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 22
    mul-float/2addr v0, v1

    .line 23
    float-to-long v0, v0

    .line 24
    return-wide v0
.end method

.method public getVelocity()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    .line 3
    return v0
.end method

.method public final h(FFI)V
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 8
    cmpl-float v0, v0, p1

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 19
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 21
    if-eqz v2, :cond_19

    .line 23
    iget v3, v2, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    iget v3, v1, Landroidx/constraintlayout/motion/widget/a;->j:I

    .line 28
    :goto_1b
    int-to-float v3, v3

    .line 29
    const/high16 v4, 0x447a0000  # 1000.0f

    .line 31
    div-float/2addr v3, v4

    .line 32
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 34
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 36
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    .line 38
    const/4 p1, 0x7

    .line 39
    const/4 v3, 0x6

    .line 40
    const/4 v4, 0x2

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    if-eqz p3, :cond_84

    .line 45
    if-eq p3, v0, :cond_84

    .line 47
    if-eq p3, v4, :cond_84

    .line 49
    const/4 v4, 0x4

    .line 50
    if-eq p3, v4, :cond_80

    .line 52
    const/4 v4, 0x5

    .line 53
    if-eq p3, v4, :cond_43

    .line 55
    if-eq p3, v3, :cond_84

    .line 57
    if-eq p3, p1, :cond_84

    .line 59
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    .line 61
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 67
    return-void

    .line 68
    :cond_43
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 70
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/a;->e()F

    .line 73
    move-result p3

    .line 74
    const/4 v1, 0x0

    .line 75
    cmpl-float v2, p2, v1

    .line 77
    const/high16 v3, 0x40000000  # 2.0f

    .line 79
    if-lez v2, :cond_5f

    .line 81
    div-float v1, p2, p3

    .line 83
    mul-float/2addr p2, v1

    .line 84
    mul-float/2addr p3, v1

    .line 85
    mul-float/2addr p3, v1

    .line 86
    div-float/2addr p3, v3

    .line 87
    sub-float/2addr p2, p3

    .line 88
    add-float/2addr p2, p1

    .line 89
    const/high16 p1, 0x3f800000  # 1.0f

    .line 91
    cmpl-float p1, p2, p1

    .line 93
    if-lez p1, :cond_6c

    .line 95
    goto :goto_6d

    .line 96
    :cond_5f
    neg-float v2, p2

    .line 97
    div-float/2addr v2, p3

    .line 98
    mul-float/2addr p2, v2

    .line 99
    mul-float/2addr p3, v2

    .line 100
    mul-float/2addr p3, v2

    .line 101
    div-float/2addr p3, v3

    .line 102
    add-float/2addr p3, p2

    .line 103
    add-float/2addr p3, p1

    .line 104
    cmpg-float p1, p3, v1

    .line 106
    if-gez p1, :cond_6c

    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    move v0, v5

    .line 110
    :goto_6d
    if-eqz v0, :cond_75

    .line 112
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 114
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/a;->e()F

    .line 117
    throw v6

    .line 118
    :cond_75
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 120
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/a;->e()F

    .line 123
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    throw v6

    .line 129
    :cond_80
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/a;->e()F

    .line 132
    throw v6

    .line 133
    :cond_84
    if-eqz v2, :cond_8c

    .line 135
    iget-object p1, v2, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 137
    if-eqz p1, :cond_8c

    .line 139
    iget v5, p1, Landroidx/constraintlayout/motion/widget/b;->B:I

    .line 141
    :cond_8c
    if-eqz v5, :cond_8f

    .line 143
    throw v6

    .line 144
    :cond_8f
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/a;->e()F

    .line 147
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    throw v6
.end method

.method public final i()V
    .registers 2

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/lang/Runnable;

    .line 9
    return-void
.end method

.method public final isAttachedToWindow()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final j(I)V
    .registers 11

    .line 1
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_16

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 9
    if-nez v0, :cond_11

    .line 11
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 13
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 20
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 22
    return-void

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, -0x1

    .line 27
    if-eqz v0, :cond_81

    .line 29
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->b:Lz/f;

    .line 31
    if-eqz v0, :cond_81

    .line 33
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 35
    int-to-float v4, v2

    .line 36
    iget-object v0, v0, Lz/f;->b:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lz/f$a;

    .line 44
    if-nez v0, :cond_2f

    .line 46
    move v3, p1

    .line 47
    goto :goto_7e

    .line 48
    :cond_2f
    const/high16 v5, -0x40800000  # -1.0f

    .line 50
    cmpl-float v5, v4, v5

    .line 52
    if-eqz v5, :cond_60

    .line 54
    if-nez v5, :cond_38

    .line 56
    goto :goto_60

    .line 57
    :cond_38
    iget-object v5, v0, Lz/f$a;->b:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v5

    .line 63
    move-object v6, v1

    .line 64
    :cond_3f
    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_58

    .line 70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Lz/f$b;

    .line 76
    invoke-virtual {v7, v4, v4}, Lz/f$b;->a(FF)Z

    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_3f

    .line 82
    iget v6, v7, Lz/f$b;->e:I

    .line 84
    if-ne v3, v6, :cond_56

    .line 86
    goto :goto_7e

    .line 87
    :cond_56
    move-object v6, v7

    .line 88
    goto :goto_3f

    .line 89
    :cond_58
    if-eqz v6, :cond_5d

    .line 91
    iget v3, v6, Lz/f$b;->e:I

    .line 93
    goto :goto_7e

    .line 94
    :cond_5d
    iget v3, v0, Lz/f$a;->c:I

    .line 96
    goto :goto_7e

    .line 97
    :cond_60
    :goto_60
    iget v4, v0, Lz/f$a;->c:I

    .line 99
    if-ne v4, v3, :cond_65

    .line 101
    goto :goto_7e

    .line 102
    :cond_65
    iget-object v4, v0, Lz/f$a;->b:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object v4

    .line 108
    :cond_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_7c

    .line 114
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Lz/f$b;

    .line 120
    iget v5, v5, Lz/f$b;->e:I

    .line 122
    if-ne v3, v5, :cond_6b

    .line 124
    goto :goto_7e

    .line 125
    :cond_7c
    iget v3, v0, Lz/f$a;->c:I

    .line 127
    :goto_7e
    if-eq v3, v2, :cond_81

    .line 129
    move p1, v3

    .line 130
    :cond_81
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 132
    if-ne v0, p1, :cond_86

    .line 134
    goto :goto_aa

    .line 135
    :cond_86
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 137
    const/4 v4, 0x0

    .line 138
    const/high16 v5, 0x447a0000  # 1000.0f

    .line 140
    if-ne v3, p1, :cond_91

    .line 142
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 145
    goto :goto_aa

    .line 146
    :cond_91
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 148
    const/high16 v6, 0x3f800000  # 1.0f

    .line 150
    if-ne v3, p1, :cond_9b

    .line 152
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 155
    goto :goto_aa

    .line 156
    :cond_9b
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 158
    if-eq v0, v2, :cond_ab

    .line 160
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g(II)V

    .line 163
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 166
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 168
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    .line 171
    :goto_aa
    return-void

    .line 172
    :cond_ab
    const/4 p1, 0x0

    .line 173
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 175
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 177
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 179
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 182
    move-result-wide v3

    .line 183
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    .line 185
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 188
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    .line 190
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 192
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 194
    if-eqz v0, :cond_c6

    .line 196
    iget v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    .line 198
    goto :goto_c8

    .line 199
    :cond_c6
    iget v0, p1, Landroidx/constraintlayout/motion/widget/a;->j:I

    .line 201
    :goto_c8
    int-to-float v0, v0

    .line 202
    div-float/2addr v0, v5

    .line 203
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 205
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 207
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 209
    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/motion/widget/a;->l(II)V

    .line 212
    new-instance p1, Landroid/util/SparseArray;

    .line 214
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 217
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 220
    throw v1
.end method

.method public final varargs k(I[Landroid/view/View;)V
    .registers 14

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-eqz v0, :cond_9f

    .line 5
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->q:Landroidx/constraintlayout/motion/widget/d;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v7, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/d;->b:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v8

    .line 21
    const/4 v9, 0x0

    .line 22
    move-object v1, v9

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_95

    .line 29
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    move-object v10, v2

    .line 34
    check-cast v10, Landroidx/constraintlayout/motion/widget/c;

    .line 36
    iget v2, v10, Landroidx/constraintlayout/motion/widget/c;->a:I

    .line 38
    if-ne v2, p1, :cond_16

    .line 40
    array-length v1, p2

    .line 41
    const/4 v2, 0x0

    .line 42
    move v3, v2

    .line 43
    :goto_2a
    if-ge v3, v1, :cond_3a

    .line 45
    aget-object v4, p2, v3

    .line 47
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/motion/widget/c;->b(Landroid/view/View;)Z

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_37

    .line 53
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_37
    add-int/lit8 v3, v3, 0x1

    .line 58
    goto :goto_2a

    .line 59
    :cond_3a
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_93

    .line 65
    new-array v1, v2, [Landroid/view/View;

    .line 67
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    move-object v6, v1

    .line 72
    check-cast v6, [Landroid/view/View;

    .line 74
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 76
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 79
    move-result v4

    .line 80
    iget v1, v10, Landroidx/constraintlayout/motion/widget/c;->e:I

    .line 82
    const/4 v2, 0x2

    .line 83
    if-eq v1, v2, :cond_88

    .line 85
    const/4 v1, -0x1

    .line 86
    if-ne v4, v1, :cond_70

    .line 88
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/d;->d:Ljava/lang/String;

    .line 90
    const-string v2, "No support for ViewTransition within transition yet. Currently: "

    .line 92
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object v2

    .line 96
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 98
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->toString()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    goto :goto_90

    .line 113
    :cond_70
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 115
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 117
    if-nez v1, :cond_78

    .line 119
    move-object v5, v9

    .line 120
    goto :goto_7d

    .line 121
    :cond_78
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    .line 124
    move-result-object v1

    .line 125
    move-object v5, v1

    .line 126
    :goto_7d
    if-nez v5, :cond_80

    .line 128
    goto :goto_90

    .line 129
    :cond_80
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 131
    move-object v1, v10

    .line 132
    move-object v2, v0

    .line 133
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/c;->a(Landroidx/constraintlayout/motion/widget/d;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/c;[Landroid/view/View;)V

    .line 136
    goto :goto_90

    .line 137
    :cond_88
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 139
    const/4 v5, 0x0

    .line 140
    move-object v1, v10

    .line 141
    move-object v2, v0

    .line 142
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/c;->a(Landroidx/constraintlayout/motion/widget/d;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/c;[Landroid/view/View;)V

    .line 145
    :goto_90
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 148
    :cond_93
    move-object v1, v10

    .line 149
    goto :goto_16

    .line 150
    :cond_95
    if-nez v1, :cond_a6

    .line 152
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/d;->d:Ljava/lang/String;

    .line 154
    const-string p2, " Could not find ViewTransition"

    .line 156
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    goto :goto_a6

    .line 160
    :cond_9f
    const-string p1, "MotionLayout"

    .line 162
    const-string p2, " no motionScene"

    .line 164
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_a6
    :goto_a6
    return-void
.end method

.method public final loadLayoutDescription(I)V
    .registers 6

    .line 1
    const-string v0, "unable to parse MotionScene file"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_9a

    .line 6
    :try_start_5
    new-instance v2, Landroidx/constraintlayout/motion/widget/a;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v3

    .line 12
    invoke-direct {v2, v3, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 15
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 17
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne p1, v3, :cond_2e

    .line 22
    iget-object p1, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 24
    if-nez p1, :cond_1b

    .line 26
    move v2, v3

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    iget v2, p1, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 30
    :goto_1d
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 32
    if-nez p1, :cond_23

    .line 34
    move v2, v3

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    iget v2, p1, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 38
    :goto_25
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 40
    if-nez p1, :cond_2a

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    iget v3, p1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 45
    :goto_2c
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 47
    :cond_2e
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 50
    move-result p1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_93

    .line 51
    if-eqz p1, :cond_90

    .line 53
    :try_start_34
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_3b

    .line 59
    goto :goto_3e

    .line 60
    :cond_3b
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 63
    :goto_3e
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 65
    if-eqz p1, :cond_56

    .line 67
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 69
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    .line 72
    move-result-object p1

    .line 73
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 75
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/a;->k(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 78
    if-eqz p1, :cond_52

    .line 80
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 83
    :cond_52
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 85
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 87
    :cond_56
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    .line 90
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 92
    if-eqz p1, :cond_6e

    .line 94
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    .line 96
    if-eqz v1, :cond_6a

    .line 98
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    .line 100
    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$a;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 103
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 106
    goto :goto_9c

    .line 107
    :cond_6a
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a()V

    .line 110
    goto :goto_9c

    .line 111
    :cond_6e
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 113
    if-eqz p1, :cond_9c

    .line 115
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 117
    if-eqz p1, :cond_9c

    .line 119
    iget p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->n:I

    .line 121
    const/4 v1, 0x4

    .line 122
    if-ne p1, v1, :cond_9c

    .line 124
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    .line 127
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 129
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 132
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 134
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_88} :catch_89

    .line 137
    goto :goto_9c

    .line 138
    :catch_89
    move-exception p1

    .line 139
    :try_start_8a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 141
    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    throw v1

    .line 145
    :cond_90
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_92} :catch_93

    .line 147
    goto :goto_9c

    .line 148
    :catch_93
    move-exception p1

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 151
    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    throw v1

    .line 155
    :cond_9a
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 157
    :cond_9c
    :goto_9c
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 15
    if-eqz v0, :cond_27

    .line 17
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq v1, v2, :cond_27

    .line 22
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 28
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/a;->k(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 31
    if-eqz v0, :cond_23

    .line 33
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 36
    :cond_23
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 38
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 40
    :cond_27
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    .line 43
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 45
    if-eqz v0, :cond_3f

    .line 47
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    .line 49
    if-eqz v1, :cond_3b

    .line 51
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    .line 53
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    goto :goto_59

    .line 60
    :cond_3b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a()V

    .line 63
    goto :goto_59

    .line 64
    :cond_3f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 66
    if-eqz v0, :cond_59

    .line 68
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 70
    if-eqz v0, :cond_59

    .line 72
    iget v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->n:I

    .line 74
    const/4 v1, 0x4

    .line 75
    if-ne v0, v1, :cond_59

    .line 77
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    .line 80
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 82
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 85
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 87
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 90
    :cond_59
    :goto_59
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_194

    .line 8
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Z

    .line 10
    if-nez v3, :cond_d

    .line 12
    goto/16 :goto_194

    .line 14
    :cond_d
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->q:Landroidx/constraintlayout/motion/widget/d;

    .line 16
    const/4 v3, -0x1

    .line 17
    const/4 v11, 0x1

    .line 18
    if-eqz v1, :cond_138

    .line 20
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 22
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 25
    move-result v12

    .line 26
    if-ne v12, v3, :cond_1d

    .line 28
    goto/16 :goto_138

    .line 30
    :cond_1d
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/util/HashSet;

    .line 32
    if-nez v4, :cond_5a

    .line 34
    new-instance v4, Ljava/util/HashSet;

    .line 36
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 39
    iput-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/util/HashSet;

    .line 41
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->b:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v4

    .line 47
    :cond_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_5a

    .line 53
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Landroidx/constraintlayout/motion/widget/c;

    .line 59
    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 61
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 64
    move-result v6

    .line 65
    move v7, v2

    .line 66
    :goto_41
    if-ge v7, v6, :cond_2e

    .line 68
    iget-object v8, v1, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 70
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/motion/widget/c;->c(Landroid/view/View;)Z

    .line 77
    move-result v9

    .line 78
    if-eqz v9, :cond_57

    .line 80
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 83
    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/util/HashSet;

    .line 85
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_57
    add-int/lit8 v7, v7, 0x1

    .line 90
    goto :goto_41

    .line 91
    :cond_5a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 94
    move-result v13

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 98
    move-result v14

    .line 99
    new-instance v15, Landroid/graphics/Rect;

    .line 101
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 107
    move-result v9

    .line 108
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    .line 110
    const/4 v8, 0x2

    .line 111
    if-eqz v4, :cond_b3

    .line 113
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_b3

    .line 119
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object v4

    .line 125
    :cond_7c
    :goto_7c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_b3

    .line 131
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Landroidx/constraintlayout/motion/widget/c$a;

    .line 137
    if-eq v9, v11, :cond_ab

    .line 139
    if-eq v9, v8, :cond_90

    .line 141
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    goto :goto_7c

    .line 145
    :cond_90
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    .line 147
    iget-object v6, v6, Ly/m;->a:Landroid/view/View;

    .line 149
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/c$a;->l:Landroid/graphics/Rect;

    .line 151
    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 154
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/c$a;->l:Landroid/graphics/Rect;

    .line 156
    float-to-int v7, v13

    .line 157
    float-to-int v10, v14

    .line 158
    invoke-virtual {v6, v7, v10}, Landroid/graphics/Rect;->contains(II)Z

    .line 161
    move-result v6

    .line 162
    if-nez v6, :cond_7c

    .line 164
    iget-boolean v6, v5, Landroidx/constraintlayout/motion/widget/c$a;->h:Z

    .line 166
    if-nez v6, :cond_7c

    .line 168
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/c$a;->b()V

    .line 171
    goto :goto_7c

    .line 172
    :cond_ab
    iget-boolean v6, v5, Landroidx/constraintlayout/motion/widget/c$a;->h:Z

    .line 174
    if-nez v6, :cond_7c

    .line 176
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/c$a;->b()V

    .line 179
    goto :goto_7c

    .line 180
    :cond_b3
    if-eqz v9, :cond_b9

    .line 182
    if-eq v9, v11, :cond_b9

    .line 184
    goto/16 :goto_138

    .line 186
    :cond_b9
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 188
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 190
    if-nez v4, :cond_c1

    .line 192
    const/4 v10, 0x0

    .line 193
    goto :goto_c6

    .line 194
    :cond_c1
    invoke-virtual {v4, v12}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    .line 197
    move-result-object v4

    .line 198
    move-object v10, v4

    .line 199
    :goto_c6
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->b:Ljava/util/ArrayList;

    .line 201
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 204
    move-result-object v16

    .line 205
    :cond_cc
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    move-result v4

    .line 209
    if-eqz v4, :cond_138

    .line 211
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    move-result-object v4

    .line 215
    move-object v7, v4

    .line 216
    check-cast v7, Landroidx/constraintlayout/motion/widget/c;

    .line 218
    iget v4, v7, Landroidx/constraintlayout/motion/widget/c;->b:I

    .line 220
    if-ne v4, v11, :cond_e0

    .line 222
    if-nez v9, :cond_ec

    .line 224
    goto :goto_ea

    .line 225
    :cond_e0
    if-ne v4, v8, :cond_e5

    .line 227
    if-ne v9, v11, :cond_ec

    .line 229
    goto :goto_ea

    .line 230
    :cond_e5
    const/4 v5, 0x3

    .line 231
    if-ne v4, v5, :cond_ec

    .line 233
    if-nez v9, :cond_ec

    .line 235
    :goto_ea
    move v4, v11

    .line 236
    goto :goto_ed

    .line 237
    :cond_ec
    move v4, v2

    .line 238
    :goto_ed
    if-eqz v4, :cond_cc

    .line 240
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/util/HashSet;

    .line 242
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 245
    move-result-object v17

    .line 246
    :goto_f5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    move-result v4

    .line 250
    if-eqz v4, :cond_cc

    .line 252
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    move-result-object v4

    .line 256
    check-cast v4, Landroid/view/View;

    .line 258
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/motion/widget/c;->c(Landroid/view/View;)Z

    .line 261
    move-result v5

    .line 262
    if-nez v5, :cond_108

    .line 264
    goto :goto_f5

    .line 265
    :cond_108
    invoke-virtual {v4, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 268
    float-to-int v5, v13

    .line 269
    float-to-int v6, v14

    .line 270
    invoke-virtual {v15, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_12b

    .line 276
    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 278
    new-array v5, v11, [Landroid/view/View;

    .line 280
    aput-object v4, v5, v2

    .line 282
    move-object v4, v7

    .line 283
    move-object/from16 v18, v5

    .line 285
    move-object v5, v1

    .line 286
    move-object/from16 v19, v7

    .line 288
    move v7, v12

    .line 289
    move/from16 v20, v8

    .line 291
    move-object v8, v10

    .line 292
    move/from16 v21, v9

    .line 294
    move-object/from16 v9, v18

    .line 296
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/c;->a(Landroidx/constraintlayout/motion/widget/d;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/c;[Landroid/view/View;)V

    .line 299
    goto :goto_131

    .line 300
    :cond_12b
    move-object/from16 v19, v7

    .line 302
    move/from16 v20, v8

    .line 304
    move/from16 v21, v9

    .line 306
    :goto_131
    move-object/from16 v7, v19

    .line 308
    move/from16 v8, v20

    .line 310
    move/from16 v9, v21

    .line 312
    goto :goto_f5

    .line 313
    :cond_138
    :goto_138
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 315
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 317
    if-eqz v1, :cond_194

    .line 319
    iget-boolean v4, v1, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    .line 321
    xor-int/2addr v4, v11

    .line 322
    if-eqz v4, :cond_194

    .line 324
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 326
    if-eqz v1, :cond_194

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 331
    move-result v4

    .line 332
    if-nez v4, :cond_167

    .line 334
    new-instance v4, Landroid/graphics/RectF;

    .line 336
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 339
    invoke-virtual {v1, v0, v4}, Landroidx/constraintlayout/motion/widget/b;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 342
    move-result-object v4

    .line 343
    if-eqz v4, :cond_167

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 348
    move-result v5

    .line 349
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 352
    move-result v6

    .line 353
    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    .line 356
    move-result v4

    .line 357
    if-nez v4, :cond_167

    .line 359
    return v2

    .line 360
    :cond_167
    iget v1, v1, Landroidx/constraintlayout/motion/widget/b;->e:I

    .line 362
    if-eq v1, v3, :cond_194

    .line 364
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    .line 366
    if-eqz v3, :cond_175

    .line 368
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 371
    move-result v3

    .line 372
    if-eq v3, v1, :cond_17b

    .line 374
    :cond_175
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 377
    move-result-object v1

    .line 378
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    .line 380
    :cond_17b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    .line 382
    if-nez v1, :cond_180

    .line 384
    goto :goto_194

    .line 385
    :cond_180
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 388
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    .line 390
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 393
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    .line 395
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 398
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    .line 400
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 403
    const/4 v1, 0x0

    .line 404
    throw v1

    .line 405
    :cond_194
    :goto_194
    return v2
.end method

.method public final onLayout(ZIIII)V
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 7
    if-nez v1, :cond_e

    .line 9
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_21

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 14
    return-void

    .line 15
    :cond_e
    sub-int/2addr p4, p2

    .line 16
    sub-int/2addr p5, p3

    .line 17
    :try_start_10
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 19
    if-ne p1, p4, :cond_1f

    .line 21
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 23
    if-ne p1, p5, :cond_1f

    .line 25
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 27
    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_21

    .line 29
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 31
    return-void

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    :try_start_20
    throw p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 37
    throw p1
.end method

.method public final onMeasure(II)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne v0, p1, :cond_15

    .line 15
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:I

    .line 17
    if-eq v0, p2, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    move v0, v2

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    move v0, v1

    .line 23
    :goto_16
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Z

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_31

    .line 28
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Z

    .line 30
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    .line 33
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 35
    if-nez v0, :cond_30

    .line 37
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    if-eqz v0, :cond_2e

    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_30

    .line 47
    :cond_2e
    move v0, v1

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    throw v4

    .line 50
    :cond_31
    :goto_31
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 52
    if-eqz v3, :cond_36

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v1, v0

    .line 56
    :goto_37
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 58
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:I

    .line 60
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 62
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 64
    const/4 v3, -0x1

    .line 65
    if-nez v0, :cond_44

    .line 67
    move v5, v3

    .line 68
    goto :goto_46

    .line 69
    :cond_44
    iget v5, v0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 71
    :goto_46
    if-nez v0, :cond_4a

    .line 73
    move v0, v3

    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    iget v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 77
    :goto_4c
    if-eqz v1, :cond_f4

    .line 79
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 81
    if-ne v6, v3, :cond_e6

    .line 83
    if-eqz v1, :cond_57

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 88
    :cond_57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 100
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    int-to-float p1, v2

    .line 111
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 113
    mul-float/2addr p2, p1

    .line 114
    add-float/2addr p2, p1

    .line 115
    float-to-int p2, p2

    .line 116
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 119
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 121
    mul-float/2addr v0, p1

    .line 122
    add-float/2addr v0, p1

    .line 123
    float-to-int p1, v0

    .line 124
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 127
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 130
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 132
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 134
    sub-float/2addr p1, p2

    .line 135
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 138
    move-result p1

    .line 139
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 142
    move-result-wide v0

    .line 143
    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    .line 145
    sub-long/2addr v0, v5

    .line 146
    long-to-float p2, v0

    .line 147
    mul-float/2addr p2, p1

    .line 148
    const v0, 0x3089705f  # 1.0E-9f

    .line 151
    mul-float/2addr p2, v0

    .line 152
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 154
    div-float/2addr p2, v0

    .line 155
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 157
    add-float/2addr v0, p2

    .line 158
    iget-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    .line 160
    if-eqz p2, :cond_a3

    .line 162
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 164
    :cond_a3
    const/4 p2, 0x0

    .line 165
    cmpl-float v1, p1, p2

    .line 167
    if-lez v1, :cond_ae

    .line 169
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 171
    cmpl-float v3, v0, v3

    .line 173
    if-gez v3, :cond_b8

    .line 175
    :cond_ae
    cmpg-float v3, p1, p2

    .line 177
    if-gtz v3, :cond_ba

    .line 179
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 181
    cmpg-float v3, v0, v3

    .line 183
    if-gtz v3, :cond_ba

    .line 185
    :cond_b8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 187
    :cond_ba
    if-lez v1, :cond_c2

    .line 189
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 191
    cmpl-float v1, v0, v1

    .line 193
    if-gez v1, :cond_cc

    .line 195
    :cond_c2
    cmpg-float p1, p1, p2

    .line 197
    if-gtz p1, :cond_ce

    .line 199
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 201
    cmpg-float p1, v0, p1

    .line 203
    if-gtz p1, :cond_ce

    .line 205
    :cond_cc
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 207
    :cond_ce
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 209
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 212
    move-result p1

    .line 213
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 216
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    .line 218
    if-nez p2, :cond_dc

    .line 220
    goto :goto_df

    .line 221
    :cond_dc
    invoke-interface {p2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 224
    :goto_df
    if-gtz p1, :cond_e2

    .line 226
    return-void

    .line 227
    :cond_e2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 230
    throw v4

    .line 231
    :cond_e6
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 234
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 236
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    .line 239
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 241
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    .line 244
    throw v4

    .line 245
    :cond_f4
    throw v4
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 19

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 4
    if-nez v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 9
    if-eqz v2, :cond_c2

    .line 11
    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    .line 13
    const/4 v4, 0x1

    .line 14
    xor-int/2addr v3, v4

    .line 15
    if-nez v3, :cond_12

    .line 17
    goto/16 :goto_c2

    .line 19
    :cond_12
    const/4 v5, -0x1

    .line 20
    if-eqz v3, :cond_24

    .line 22
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 24
    if-eqz v3, :cond_24

    .line 26
    iget v3, v3, Landroidx/constraintlayout/motion/widget/b;->e:I

    .line 28
    if-eq v3, v5, :cond_24

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 33
    move-result v6

    .line 34
    if-eq v6, v3, :cond_24

    .line 36
    return-void

    .line 37
    :cond_24
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 39
    const/4 v6, 0x0

    .line 40
    if-eqz v3, :cond_30

    .line 42
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 44
    if-eqz v3, :cond_30

    .line 46
    iget-boolean v3, v3, Landroidx/constraintlayout/motion/widget/b;->s:Z

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v3, v6

    .line 50
    :goto_31
    const/4 v7, 0x0

    .line 51
    const/high16 v8, 0x3f800000  # 1.0f

    .line 53
    if-eqz v3, :cond_54

    .line 55
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 57
    if-eqz v3, :cond_42

    .line 59
    iget v3, v3, Landroidx/constraintlayout/motion/widget/b;->u:I

    .line 61
    and-int/lit8 v3, v3, 0x4

    .line 63
    if-eqz v3, :cond_42

    .line 65
    move/from16 v5, p3

    .line 67
    :cond_42
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 69
    cmpl-float v8, v3, v8

    .line 71
    if-eqz v8, :cond_4c

    .line 73
    cmpl-float v3, v3, v7

    .line 75
    if-nez v3, :cond_54

    .line 77
    :cond_4c
    move-object v3, p1

    .line 78
    invoke-virtual {p1, v5}, Landroid/view/View;->canScrollVertically(I)Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_54

    .line 84
    return-void

    .line 85
    :cond_54
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 87
    const/4 v3, 0x0

    .line 88
    if-eqz v2, :cond_74

    .line 90
    iget v2, v2, Landroidx/constraintlayout/motion/widget/b;->u:I

    .line 92
    and-int/2addr v2, v4

    .line 93
    if-eqz v2, :cond_74

    .line 95
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 97
    if-eqz v2, :cond_74

    .line 99
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 101
    if-nez v2, :cond_67

    .line 103
    goto :goto_74

    .line 104
    :cond_67
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 106
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 109
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 111
    iget v2, v2, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 113
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 116
    throw v3

    .line 117
    :cond_74
    :goto_74
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 119
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 122
    move-result-wide v7

    .line 123
    iget-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:J

    .line 125
    sub-long v9, v7, v9

    .line 127
    long-to-double v9, v9

    .line 128
    const-wide v11, 0x3e112e0be826d695L  # 1.0E-9

    .line 133
    mul-double/2addr v9, v11

    .line 134
    double-to-float v5, v9

    .line 135
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:F

    .line 137
    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:J

    .line 139
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 141
    if-eqz v1, :cond_ab

    .line 143
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 145
    if-eqz v1, :cond_ab

    .line 147
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 149
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 152
    move-result v2

    .line 153
    iget-boolean v5, v1, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 155
    if-nez v5, :cond_a3

    .line 157
    iput-boolean v4, v1, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 159
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 161
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 164
    :cond_a3
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 166
    iget v1, v1, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 168
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 171
    throw v3

    .line 172
    :cond_ab
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 174
    cmpl-float v1, v2, v1

    .line 176
    if-eqz v1, :cond_b5

    .line 178
    aput p2, p4, v6

    .line 180
    aput p3, p4, v4

    .line 182
    :cond_b5
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b(Z)V

    .line 185
    aget v1, p4, v6

    .line 187
    if-nez v1, :cond_c0

    .line 189
    aget v1, p4, v4

    .line 191
    if-eqz v1, :cond_c2

    .line 193
    :cond_c0
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    .line 195
    :cond_c2
    :goto_c2
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 8

    .line 1
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    .line 3
    const/4 p6, 0x0

    .line 4
    if-nez p1, :cond_9

    .line 6
    if-nez p2, :cond_9

    .line 8
    if-eqz p3, :cond_14

    .line 10
    :cond_9
    aget p1, p7, p6

    .line 12
    add-int/2addr p1, p4

    .line 13
    aput p1, p7, p6

    .line 15
    const/4 p1, 0x1

    .line 16
    aget p2, p7, p1

    .line 18
    add-int/2addr p2, p5

    .line 19
    aput p2, p7, p1

    .line 21
    :cond_14
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    .line 23
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:J

    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:F

    .line 10
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-eqz p1, :cond_15

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 8
    move-result v0

    .line 9
    iput-boolean v0, p1, Landroidx/constraintlayout/motion/widget/a;->p:Z

    .line 11
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 13
    if-eqz p1, :cond_15

    .line 15
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 17
    if-eqz p1, :cond_15

    .line 19
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

    .line 22
    :cond_15
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-eqz p1, :cond_15

    .line 5
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 7
    if-eqz p1, :cond_15

    .line 9
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 11
    if-eqz p1, :cond_15

    .line 13
    iget p1, p1, Landroidx/constraintlayout/motion/widget/b;->u:I

    .line 15
    and-int/lit8 p1, p1, 0x2

    .line 17
    if-eqz p1, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_15
    :goto_15
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-eqz p1, :cond_26

    .line 5
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:F

    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float p2, p2, v0

    .line 10
    if-nez p2, :cond_c

    .line 12
    goto :goto_26

    .line 13
    :cond_c
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 15
    if-eqz p1, :cond_26

    .line 17
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 19
    if-nez p1, :cond_15

    .line 21
    goto :goto_26

    .line 22
    :cond_15
    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p1, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 25
    iget-object p2, p1, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 27
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 30
    iget-object p2, p1, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 32
    iget p1, p1, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 34
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 37
    const/4 p1, 0x0

    .line 38
    throw p1

    .line 39
    :cond_26
    :goto_26
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 7
    if-eqz v2, :cond_773

    .line 9
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Z

    .line 11
    if-eqz v3, :cond_773

    .line 13
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/a;->m()Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_773

    .line 19
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 21
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v3, :cond_23

    .line 26
    iget-boolean v3, v3, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    .line 28
    xor-int/2addr v3, v4

    .line 29
    if-nez v3, :cond_23

    .line 31
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    move-result v1

    .line 35
    return v1

    .line 36
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 39
    move-result v3

    .line 40
    new-instance v5, Landroid/graphics/RectF;

    .line 42
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 45
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 47
    if-nez v6, :cond_3f

    .line 49
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 51
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 56
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 59
    move-result-object v7

    .line 60
    iput-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 62
    iput-object v6, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 64
    :cond_3f
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 66
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 68
    if-eqz v6, :cond_48

    .line 70
    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 73
    :cond_48
    const/4 v6, 0x2

    .line 74
    const/4 v7, -0x1

    .line 75
    if-eq v3, v7, :cond_21d

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 80
    move-result v11

    .line 81
    if-eqz v11, :cond_1b3

    .line 83
    if-eq v11, v6, :cond_56

    .line 85
    goto/16 :goto_21d

    .line 87
    :cond_56
    iget-boolean v11, v2, Landroidx/constraintlayout/motion/widget/a;->m:Z

    .line 89
    if-eqz v11, :cond_5c

    .line 91
    goto/16 :goto_21d

    .line 93
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 96
    move-result v11

    .line 97
    iget v12, v2, Landroidx/constraintlayout/motion/widget/a;->s:F

    .line 99
    sub-float/2addr v11, v12

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 103
    move-result v12

    .line 104
    iget v13, v2, Landroidx/constraintlayout/motion/widget/a;->r:F

    .line 106
    sub-float/2addr v12, v13

    .line 107
    float-to-double v13, v12

    .line 108
    const-wide/16 v15, 0x0

    .line 110
    cmpl-double v13, v13, v15

    .line 112
    if-nez v13, :cond_76

    .line 114
    float-to-double v13, v11

    .line 115
    cmpl-double v13, v13, v15

    .line 117
    if-eqz v13, :cond_221

    .line 119
    :cond_76
    iget-object v13, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    .line 121
    if-nez v13, :cond_7c

    .line 123
    goto/16 :goto_221

    .line 125
    :cond_7c
    if-eq v3, v7, :cond_179

    .line 127
    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/a;->b:Lz/f;

    .line 129
    if-eqz v14, :cond_89

    .line 131
    invoke-virtual {v14, v3}, Lz/f;->a(I)I

    .line 134
    move-result v14

    .line 135
    if-eq v14, v7, :cond_89

    .line 137
    goto :goto_8a

    .line 138
    :cond_89
    move v14, v3

    .line 139
    :goto_8a
    new-instance v15, Ljava/util/ArrayList;

    .line 141
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v10

    .line 150
    :goto_95
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v17

    .line 154
    if-eqz v17, :cond_b1

    .line 156
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v17

    .line 160
    move-object/from16 v7, v17

    .line 162
    check-cast v7, Landroidx/constraintlayout/motion/widget/a$b;

    .line 164
    iget v6, v7, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 166
    if-eq v6, v14, :cond_ab

    .line 168
    iget v6, v7, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 170
    if-ne v6, v14, :cond_ae

    .line 172
    :cond_ab
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_ae
    const/4 v6, 0x2

    .line 176
    const/4 v7, -0x1

    .line 177
    goto :goto_95

    .line 178
    :cond_b1
    new-instance v6, Landroid/graphics/RectF;

    .line 180
    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 183
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    move-result-object v7

    .line 187
    const/4 v10, 0x0

    .line 188
    const/4 v14, 0x0

    .line 189
    :goto_bc
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    move-result v15

    .line 193
    if-eqz v15, :cond_17b

    .line 195
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    move-result-object v15

    .line 199
    check-cast v15, Landroidx/constraintlayout/motion/widget/a$b;

    .line 201
    iget-boolean v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    .line 203
    if-eqz v4, :cond_ce

    .line 205
    goto/16 :goto_166

    .line 207
    :cond_ce
    iget-object v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 209
    if-eqz v4, :cond_166

    .line 211
    iget-boolean v8, v2, Landroidx/constraintlayout/motion/widget/a;->p:Z

    .line 213
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

    .line 216
    iget-object v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 218
    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 220
    invoke-virtual {v4, v8, v6}, Landroidx/constraintlayout/motion/widget/b;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 223
    move-result-object v4

    .line 224
    if-eqz v4, :cond_f1

    .line 226
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    .line 229
    move-result v8

    .line 230
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    .line 233
    move-result v9

    .line 234
    invoke-virtual {v4, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    .line 237
    move-result v4

    .line 238
    if-nez v4, :cond_f1

    .line 240
    goto/16 :goto_166

    .line 242
    :cond_f1
    iget-object v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 244
    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 246
    invoke-virtual {v4, v8, v6}, Landroidx/constraintlayout/motion/widget/b;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 249
    move-result-object v4

    .line 250
    if-eqz v4, :cond_10a

    .line 252
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    .line 255
    move-result v8

    .line 256
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    .line 259
    move-result v9

    .line 260
    invoke-virtual {v4, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    .line 263
    move-result v4

    .line 264
    if-nez v4, :cond_10a

    .line 266
    goto :goto_166

    .line 267
    :cond_10a
    iget-object v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 269
    iget v8, v4, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 271
    mul-float/2addr v8, v12

    .line 272
    iget v9, v4, Landroidx/constraintlayout/motion/widget/b;->j:F

    .line 274
    mul-float/2addr v9, v11

    .line 275
    add-float/2addr v9, v8

    .line 276
    iget-boolean v4, v4, Landroidx/constraintlayout/motion/widget/b;->h:Z

    .line 278
    if-eqz v4, :cond_14c

    .line 280
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    .line 283
    move-result v4

    .line 284
    iget-object v8, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 286
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    const/high16 v8, 0x3f000000  # 0.5f

    .line 291
    sub-float/2addr v4, v8

    .line 292
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    .line 295
    move-result v9

    .line 296
    move-object/from16 v18, v6

    .line 298
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 300
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    sub-float/2addr v9, v8

    .line 304
    add-float v6, v12, v4

    .line 306
    add-float v8, v11, v9

    .line 308
    move-object/from16 v19, v7

    .line 310
    float-to-double v7, v8

    .line 311
    move/from16 v20, v11

    .line 313
    move/from16 v21, v12

    .line 315
    float-to-double v11, v6

    .line 316
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    .line 319
    move-result-wide v6

    .line 320
    float-to-double v11, v4

    .line 321
    float-to-double v8, v9

    .line 322
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 325
    move-result-wide v8

    .line 326
    sub-double/2addr v6, v8

    .line 327
    double-to-float v4, v6

    .line 328
    const/high16 v6, 0x41200000  # 10.0f

    .line 330
    mul-float v9, v4, v6

    .line 332
    goto :goto_154

    .line 333
    :cond_14c
    move-object/from16 v18, v6

    .line 335
    move-object/from16 v19, v7

    .line 337
    move/from16 v20, v11

    .line 339
    move/from16 v21, v12

    .line 341
    :goto_154
    iget v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 343
    if-ne v4, v3, :cond_15b

    .line 345
    const/high16 v4, -0x40800000  # -1.0f

    .line 347
    goto :goto_15e

    .line 348
    :cond_15b
    const v4, 0x3f8ccccd  # 1.1f

    .line 351
    :goto_15e
    mul-float/2addr v4, v9

    .line 352
    cmpl-float v6, v4, v10

    .line 354
    if-lez v6, :cond_16e

    .line 356
    move v10, v4

    .line 357
    move-object v14, v15

    .line 358
    goto :goto_16e

    .line 359
    :cond_166
    :goto_166
    move-object/from16 v18, v6

    .line 361
    move-object/from16 v19, v7

    .line 363
    move/from16 v20, v11

    .line 365
    move/from16 v21, v12

    .line 367
    :cond_16e
    :goto_16e
    move-object/from16 v6, v18

    .line 369
    move-object/from16 v7, v19

    .line 371
    move/from16 v11, v20

    .line 373
    move/from16 v12, v21

    .line 375
    const/4 v4, 0x1

    .line 376
    goto/16 :goto_bc

    .line 378
    :cond_179
    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 380
    :cond_17b
    if-eqz v14, :cond_21d

    .line 382
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    .line 385
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 387
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 389
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 391
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/motion/widget/b;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 394
    move-result-object v3

    .line 395
    if-eqz v3, :cond_1a0

    .line 397
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    .line 399
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    .line 402
    move-result v4

    .line 403
    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    .line 405
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    .line 408
    move-result v5

    .line 409
    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    .line 412
    move-result v3

    .line 413
    if-nez v3, :cond_1a0

    .line 415
    const/4 v3, 0x1

    .line 416
    goto :goto_1a1

    .line 417
    :cond_1a0
    const/4 v3, 0x0

    .line 418
    :goto_1a1
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/a;->n:Z

    .line 420
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 422
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 424
    iget v4, v2, Landroidx/constraintlayout/motion/widget/a;->r:F

    .line 426
    iget v5, v2, Landroidx/constraintlayout/motion/widget/a;->s:F

    .line 428
    iput v4, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    .line 430
    iput v5, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    .line 432
    const/4 v4, 0x0

    .line 433
    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 435
    goto :goto_21d

    .line 436
    :cond_1b3
    const/4 v4, 0x0

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 440
    move-result v3

    .line 441
    iput v3, v2, Landroidx/constraintlayout/motion/widget/a;->r:F

    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 446
    move-result v3

    .line 447
    iput v3, v2, Landroidx/constraintlayout/motion/widget/a;->s:F

    .line 449
    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    .line 451
    iput-boolean v4, v2, Landroidx/constraintlayout/motion/widget/a;->m:Z

    .line 453
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 455
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 457
    if-eqz v1, :cond_221

    .line 459
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 461
    invoke-virtual {v1, v3, v5}, Landroidx/constraintlayout/motion/widget/b;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 464
    move-result-object v1

    .line 465
    if-eqz v1, :cond_1eb

    .line 467
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    .line 469
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 472
    move-result v3

    .line 473
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    .line 475
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    .line 478
    move-result v4

    .line 479
    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 482
    move-result v1

    .line 483
    if-nez v1, :cond_1eb

    .line 485
    const/4 v1, 0x0

    .line 486
    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    .line 488
    const/4 v1, 0x1

    .line 489
    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/a;->m:Z

    .line 491
    goto :goto_221

    .line 492
    :cond_1eb
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 494
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 496
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 498
    invoke-virtual {v1, v3, v5}, Landroidx/constraintlayout/motion/widget/b;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 501
    move-result-object v1

    .line 502
    if-eqz v1, :cond_20d

    .line 504
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    .line 506
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 509
    move-result v3

    .line 510
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    .line 512
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    .line 515
    move-result v4

    .line 516
    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 519
    move-result v1

    .line 520
    if-nez v1, :cond_20d

    .line 522
    const/4 v1, 0x1

    .line 523
    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/a;->n:Z

    .line 525
    goto :goto_210

    .line 526
    :cond_20d
    const/4 v1, 0x0

    .line 527
    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/a;->n:Z

    .line 529
    :goto_210
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 531
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 533
    iget v3, v2, Landroidx/constraintlayout/motion/widget/a;->r:F

    .line 535
    iget v2, v2, Landroidx/constraintlayout/motion/widget/a;->s:F

    .line 537
    iput v3, v1, Landroidx/constraintlayout/motion/widget/b;->n:F

    .line 539
    iput v2, v1, Landroidx/constraintlayout/motion/widget/b;->o:F

    .line 541
    goto :goto_221

    .line 542
    :cond_21d
    :goto_21d
    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/a;->m:Z

    .line 544
    if-eqz v3, :cond_224

    .line 546
    :cond_221
    :goto_221
    const/4 v4, 0x0

    .line 547
    goto/16 :goto_75d

    .line 549
    :cond_224
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 551
    if-eqz v3, :cond_72f

    .line 553
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 555
    if-eqz v3, :cond_72f

    .line 557
    iget-boolean v4, v2, Landroidx/constraintlayout/motion/widget/a;->n:Z

    .line 559
    if-nez v4, :cond_72f

    .line 561
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 563
    iget-boolean v5, v3, Landroidx/constraintlayout/motion/widget/b;->h:Z

    .line 565
    const-wide v7, 0x3f847ae147ae147bL  # 0.01

    .line 570
    const/4 v12, 0x6

    .line 571
    const/high16 v13, 0x40400000  # 3.0f

    .line 573
    if-eqz v5, :cond_512

    .line 575
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 577
    if-eqz v5, :cond_245

    .line 579
    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 582
    :cond_245
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 585
    move-result v5

    .line 586
    if-eqz v5, :cond_501

    .line 588
    const/high16 v18, 0x43b40000  # 360.0f

    .line 590
    const/high16 v19, 0x40000000  # 2.0f

    .line 592
    const/4 v11, 0x1

    .line 593
    if-eq v5, v11, :cond_3bb

    .line 595
    const/4 v11, 0x2

    .line 596
    if-eq v5, v11, :cond_257

    .line 598
    goto/16 :goto_72f

    .line 600
    :cond_257
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 606
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 608
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 611
    move-result v5

    .line 612
    int-to-float v5, v5

    .line 613
    div-float v5, v5, v19

    .line 615
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 617
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 620
    move-result v6

    .line 621
    int-to-float v6, v6

    .line 622
    div-float v6, v6, v19

    .line 624
    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->g:I

    .line 626
    const/4 v10, -0x1

    .line 627
    if-eq v9, v10, :cond_2ad

    .line 629
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 631
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 634
    move-result-object v5

    .line 635
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 637
    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    .line 639
    invoke-virtual {v6, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 642
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    .line 644
    const/4 v9, 0x0

    .line 645
    aget v6, v6, v9

    .line 647
    int-to-float v6, v6

    .line 648
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 651
    move-result v9

    .line 652
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 655
    move-result v10

    .line 656
    add-int/2addr v10, v9

    .line 657
    int-to-float v9, v10

    .line 658
    div-float v9, v9, v19

    .line 660
    add-float/2addr v6, v9

    .line 661
    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    .line 663
    const/4 v10, 0x1

    .line 664
    aget v9, v9, v10

    .line 666
    int-to-float v9, v9

    .line 667
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 670
    move-result v10

    .line 671
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 674
    move-result v5

    .line 675
    add-int/2addr v5, v10

    .line 676
    int-to-float v5, v5

    .line 677
    div-float v5, v5, v19

    .line 679
    add-float/2addr v5, v9

    .line 680
    move/from16 v22, v6

    .line 682
    move v6, v5

    .line 683
    move/from16 v5, v22

    .line 685
    goto :goto_2b2

    .line 686
    :cond_2ad
    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 688
    const/4 v10, -0x1

    .line 689
    if-ne v9, v10, :cond_3b4

    .line 691
    :goto_2b2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 694
    move-result v9

    .line 695
    sub-float/2addr v9, v5

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 699
    move-result v10

    .line 700
    sub-float/2addr v10, v6

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 704
    move-result v11

    .line 705
    sub-float/2addr v11, v6

    .line 706
    float-to-double v11, v11

    .line 707
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 710
    move-result v13

    .line 711
    sub-float/2addr v13, v5

    .line 712
    float-to-double v14, v13

    .line 713
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 716
    move-result-wide v11

    .line 717
    iget v13, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    .line 719
    sub-float/2addr v13, v6

    .line 720
    float-to-double v13, v13

    .line 721
    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    .line 723
    sub-float/2addr v6, v5

    .line 724
    float-to-double v5, v6

    .line 725
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 728
    move-result-wide v5

    .line 729
    sub-double v5, v11, v5

    .line 731
    const-wide v13, 0x4066800000000000L  # 180.0

    .line 736
    mul-double/2addr v5, v13

    .line 737
    const-wide v13, 0x400921fb54442d18L  # Math.PI

    .line 742
    div-double/2addr v5, v13

    .line 743
    double-to-float v5, v5

    .line 744
    const/high16 v6, 0x43a50000  # 330.0f

    .line 746
    cmpl-float v6, v5, v6

    .line 748
    if-lez v6, :cond_2f0

    .line 750
    sub-float v5, v5, v18

    .line 752
    goto :goto_2f8

    .line 753
    :cond_2f0
    const/high16 v6, -0x3c5b0000  # -330.0f

    .line 755
    cmpg-float v6, v5, v6

    .line 757
    if-gez v6, :cond_2f8

    .line 759
    add-float v5, v5, v18

    .line 761
    :cond_2f8
    :goto_2f8
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 764
    move-result v6

    .line 765
    float-to-double v13, v6

    .line 766
    cmpl-double v6, v13, v7

    .line 768
    if-gtz v6, :cond_305

    .line 770
    iget-boolean v6, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 772
    if-eqz v6, :cond_72f

    .line 774
    :cond_305
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 776
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 779
    move-result v6

    .line 780
    iget-boolean v7, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 782
    if-nez v7, :cond_318

    .line 784
    const/4 v7, 0x1

    .line 785
    iput-boolean v7, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 787
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 789
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 792
    goto :goto_319

    .line 793
    :cond_318
    const/4 v7, 0x1

    .line 794
    :goto_319
    iget v8, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 796
    const/4 v13, -0x1

    .line 797
    if-ne v8, v13, :cond_3ad

    .line 799
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 801
    aput v18, v8, v7

    .line 803
    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->t:F

    .line 805
    mul-float/2addr v5, v7

    .line 806
    div-float v5, v5, v18

    .line 808
    add-float/2addr v5, v6

    .line 809
    const/high16 v6, 0x3f800000  # 1.0f

    .line 811
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 814
    move-result v5

    .line 815
    const/4 v7, 0x0

    .line 816
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    .line 819
    move-result v5

    .line 820
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 822
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 825
    move-result v8

    .line 826
    cmpl-float v13, v5, v8

    .line 828
    if-eqz v13, :cond_399

    .line 830
    cmpl-float v13, v8, v7

    .line 832
    if-eqz v13, :cond_345

    .line 834
    cmpl-float v6, v8, v6

    .line 836
    if-nez v6, :cond_34d

    .line 838
    :cond_345
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 840
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 843
    move-result v7

    .line 844
    if-gtz v7, :cond_393

    .line 846
    :cond_34d
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 848
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 851
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 853
    if-eqz v5, :cond_35b

    .line 855
    const/16 v6, 0x3e8

    .line 857
    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 860
    :cond_35b
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 862
    if-eqz v5, :cond_364

    .line 864
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 867
    move-result v5

    .line 868
    goto :goto_365

    .line 869
    :cond_364
    const/4 v5, 0x0

    .line 870
    :goto_365
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 872
    if-eqz v4, :cond_36e

    .line 874
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 877
    move-result v4

    .line 878
    goto :goto_36f

    .line 879
    :cond_36e
    const/4 v4, 0x0

    .line 880
    :goto_36f
    float-to-double v6, v4

    .line 881
    float-to-double v4, v5

    .line 882
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 885
    move-result-wide v13

    .line 886
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 889
    move-result-wide v4

    .line 890
    sub-double/2addr v4, v11

    .line 891
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 894
    move-result-wide v4

    .line 895
    mul-double/2addr v4, v13

    .line 896
    float-to-double v6, v9

    .line 897
    float-to-double v8, v10

    .line 898
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 901
    move-result-wide v6

    .line 902
    div-double/2addr v4, v6

    .line 903
    double-to-float v4, v4

    .line 904
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 906
    float-to-double v6, v4

    .line 907
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    .line 910
    move-result-wide v6

    .line 911
    double-to-float v4, v6

    .line 912
    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    .line 914
    const/4 v4, 0x0

    .line 915
    goto :goto_39f

    .line 916
    :cond_393
    const/4 v4, 0x0

    .line 917
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 920
    const/4 v4, 0x0

    .line 921
    throw v4

    .line 922
    :cond_399
    const/4 v4, 0x0

    .line 923
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 925
    const/4 v6, 0x0

    .line 926
    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    .line 928
    :goto_39f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 931
    move-result v5

    .line 932
    iput v5, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    .line 934
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 937
    move-result v5

    .line 938
    iput v5, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    .line 940
    goto/16 :goto_72f

    .line 942
    :cond_3ad
    const/4 v4, 0x0

    .line 943
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 945
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 948
    throw v4

    .line 949
    :cond_3b4
    const/4 v4, 0x0

    .line 950
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 952
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 955
    throw v4

    .line 956
    :cond_3bb
    const/4 v5, 0x0

    .line 957
    iput-boolean v5, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 959
    const/16 v5, 0x10

    .line 961
    iget-object v7, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 963
    if-eqz v7, :cond_3c7

    .line 965
    invoke-virtual {v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 968
    :cond_3c7
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 970
    if-eqz v5, :cond_3d0

    .line 972
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 975
    move-result v5

    .line 976
    goto :goto_3d1

    .line 977
    :cond_3d0
    const/4 v5, 0x0

    .line 978
    :goto_3d1
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 980
    if-eqz v4, :cond_3da

    .line 982
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 985
    move-result v4

    .line 986
    goto :goto_3db

    .line 987
    :cond_3da
    const/4 v4, 0x0

    .line 988
    :goto_3db
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 990
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 993
    move-result v7

    .line 994
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 996
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 999
    move-result v8

    .line 1000
    int-to-float v8, v8

    .line 1001
    div-float v8, v8, v19

    .line 1003
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1005
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 1008
    move-result v11

    .line 1009
    int-to-float v11, v11

    .line 1010
    div-float v11, v11, v19

    .line 1012
    iget v14, v3, Landroidx/constraintlayout/motion/widget/b;->g:I

    .line 1014
    const/4 v15, -0x1

    .line 1015
    if-eq v14, v15, :cond_432

    .line 1017
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1019
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1022
    move-result-object v8

    .line 1023
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1025
    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    .line 1027
    invoke-virtual {v11, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1030
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    .line 1032
    const/4 v14, 0x0

    .line 1033
    aget v11, v11, v14

    .line 1035
    int-to-float v11, v11

    .line 1036
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 1039
    move-result v14

    .line 1040
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 1043
    move-result v15

    .line 1044
    add-int/2addr v15, v14

    .line 1045
    int-to-float v14, v15

    .line 1046
    div-float v14, v14, v19

    .line 1048
    add-float/2addr v11, v14

    .line 1049
    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    .line 1051
    const/4 v15, 0x1

    .line 1052
    aget v14, v14, v15

    .line 1054
    int-to-float v14, v14

    .line 1055
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 1058
    move-result v15

    .line 1059
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 1062
    move-result v8

    .line 1063
    add-int/2addr v8, v15

    .line 1064
    int-to-float v8, v8

    .line 1065
    div-float v8, v8, v19

    .line 1067
    add-float/2addr v8, v14

    .line 1068
    const/4 v15, -0x1

    .line 1069
    move/from16 v22, v11

    .line 1071
    move v11, v8

    .line 1072
    move/from16 v8, v22

    .line 1074
    goto :goto_437

    .line 1075
    :cond_432
    iget v14, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 1077
    const/4 v15, -0x1

    .line 1078
    if-ne v14, v15, :cond_4fa

    .line 1080
    :goto_437
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1083
    move-result v14

    .line 1084
    sub-float/2addr v14, v8

    .line 1085
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1088
    move-result v8

    .line 1089
    sub-float/2addr v8, v11

    .line 1090
    float-to-double v9, v8

    .line 1091
    move/from16 v17, v7

    .line 1093
    float-to-double v6, v14

    .line 1094
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    .line 1097
    move-result-wide v6

    .line 1098
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    .line 1101
    move-result-wide v6

    .line 1102
    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 1104
    if-ne v9, v15, :cond_4f3

    .line 1106
    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 1108
    const/4 v10, 0x1

    .line 1109
    aput v18, v9, v10

    .line 1111
    add-float/2addr v4, v8

    .line 1112
    float-to-double v8, v4

    .line 1113
    add-float/2addr v5, v14

    .line 1114
    float-to-double v4, v5

    .line 1115
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 1118
    move-result-wide v4

    .line 1119
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 1122
    move-result-wide v4

    .line 1123
    sub-double/2addr v4, v6

    .line 1124
    double-to-float v4, v4

    .line 1125
    const/high16 v5, 0x427a0000  # 62.5f

    .line 1127
    mul-float/2addr v4, v5

    .line 1128
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 1131
    move-result v5

    .line 1132
    if-nez v5, :cond_47b

    .line 1134
    mul-float v5, v4, v13

    .line 1136
    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->t:F

    .line 1138
    mul-float/2addr v5, v6

    .line 1139
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 1141
    const/4 v7, 0x1

    .line 1142
    aget v6, v6, v7

    .line 1144
    div-float/2addr v5, v6

    .line 1145
    add-float v5, v5, v17

    .line 1147
    goto :goto_47d

    .line 1148
    :cond_47b
    move/from16 v5, v17

    .line 1150
    :goto_47d
    const/4 v6, 0x0

    .line 1151
    cmpl-float v7, v5, v6

    .line 1153
    if-eqz v7, :cond_4df

    .line 1155
    const/high16 v6, 0x3f800000  # 1.0f

    .line 1157
    cmpl-float v7, v5, v6

    .line 1159
    if-eqz v7, :cond_4df

    .line 1161
    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 1163
    const/4 v7, 0x3

    .line 1164
    if-eq v6, v7, :cond_4df

    .line 1166
    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->t:F

    .line 1168
    mul-float/2addr v4, v7

    .line 1169
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 1171
    const/4 v8, 0x1

    .line 1172
    aget v7, v7, v8

    .line 1174
    div-float/2addr v4, v7

    .line 1175
    float-to-double v7, v5

    .line 1176
    const-wide/high16 v9, 0x3fe0000000000000L  # 0.5

    .line 1178
    cmpg-double v5, v7, v9

    .line 1180
    if-gez v5, :cond_49f

    .line 1182
    const/4 v5, 0x0

    .line 1183
    goto :goto_4a1

    .line 1184
    :cond_49f
    const/high16 v5, 0x3f800000  # 1.0f

    .line 1186
    :goto_4a1
    if-ne v6, v12, :cond_4b0

    .line 1188
    add-float v7, v17, v4

    .line 1190
    const/4 v5, 0x0

    .line 1191
    cmpg-float v6, v7, v5

    .line 1193
    if-gez v6, :cond_4ae

    .line 1195
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 1198
    move-result v4

    .line 1199
    :cond_4ae
    const/high16 v5, 0x3f800000  # 1.0f

    .line 1201
    :cond_4b0
    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 1203
    const/4 v7, 0x7

    .line 1204
    if-ne v6, v7, :cond_4c3

    .line 1206
    add-float v7, v17, v4

    .line 1208
    const/high16 v5, 0x3f800000  # 1.0f

    .line 1210
    cmpl-float v6, v7, v5

    .line 1212
    if-lez v6, :cond_4c2

    .line 1214
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 1217
    move-result v4

    .line 1218
    neg-float v4, v4

    .line 1219
    :cond_4c2
    const/4 v5, 0x0

    .line 1220
    :cond_4c3
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1222
    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 1224
    mul-float/2addr v4, v13

    .line 1225
    invoke-virtual {v6, v5, v4, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->h(FFI)V

    .line 1228
    const/4 v4, 0x0

    .line 1229
    cmpl-float v4, v4, v17

    .line 1231
    if-gez v4, :cond_4d6

    .line 1233
    const/high16 v4, 0x3f800000  # 1.0f

    .line 1235
    cmpg-float v4, v4, v17

    .line 1237
    if-gtz v4, :cond_72f

    .line 1239
    :cond_4d6
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1241
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 1243
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1246
    goto/16 :goto_72f

    .line 1248
    :cond_4df
    const/4 v4, 0x0

    .line 1249
    cmpl-float v4, v4, v5

    .line 1251
    if-gez v4, :cond_4ea

    .line 1253
    const/high16 v4, 0x3f800000  # 1.0f

    .line 1255
    cmpg-float v4, v4, v5

    .line 1257
    if-gtz v4, :cond_72f

    .line 1259
    :cond_4ea
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1261
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 1263
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1266
    goto/16 :goto_72f

    .line 1268
    :cond_4f3
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1270
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 1273
    const/4 v1, 0x0

    .line 1274
    throw v1

    .line 1275
    :cond_4fa
    const/4 v1, 0x0

    .line 1276
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1278
    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1281
    throw v1

    .line 1282
    :cond_501
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1285
    move-result v4

    .line 1286
    iput v4, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    .line 1288
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1291
    move-result v4

    .line 1292
    iput v4, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    .line 1294
    const/4 v4, 0x0

    .line 1295
    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 1297
    goto/16 :goto_730

    .line 1299
    :cond_512
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 1301
    if-eqz v5, :cond_519

    .line 1303
    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1306
    :cond_519
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1309
    move-result v5

    .line 1310
    if-eqz v5, :cond_71f

    .line 1312
    const/4 v6, 0x1

    .line 1313
    if-eq v5, v6, :cond_64e

    .line 1315
    const/4 v6, 0x2

    .line 1316
    if-eq v5, v6, :cond_527

    .line 1318
    goto/16 :goto_72f

    .line 1320
    :cond_527
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1323
    move-result v5

    .line 1324
    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    .line 1326
    sub-float/2addr v5, v6

    .line 1327
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1330
    move-result v6

    .line 1331
    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    .line 1333
    sub-float/2addr v6, v9

    .line 1334
    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 1336
    mul-float/2addr v9, v6

    .line 1337
    iget v10, v3, Landroidx/constraintlayout/motion/widget/b;->j:F

    .line 1339
    mul-float/2addr v10, v5

    .line 1340
    add-float/2addr v10, v9

    .line 1341
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 1344
    move-result v9

    .line 1345
    iget v10, v3, Landroidx/constraintlayout/motion/widget/b;->v:F

    .line 1347
    cmpl-float v9, v9, v10

    .line 1349
    if-gtz v9, :cond_54a

    .line 1351
    iget-boolean v9, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 1353
    if-eqz v9, :cond_72f

    .line 1355
    :cond_54a
    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1357
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 1360
    move-result v9

    .line 1361
    iget-boolean v10, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 1363
    if-nez v10, :cond_55c

    .line 1365
    const/4 v10, 0x1

    .line 1366
    iput-boolean v10, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 1368
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1370
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1373
    :cond_55c
    iget v10, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 1375
    const/4 v11, -0x1

    .line 1376
    if-ne v10, v11, :cond_647

    .line 1378
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1380
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 1383
    move-result v10

    .line 1384
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1386
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 1389
    move-result v11

    .line 1390
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 1393
    move-result v10

    .line 1394
    int-to-float v10, v10

    .line 1395
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 1397
    iget v13, v3, Landroidx/constraintlayout/motion/widget/b;->j:F

    .line 1399
    mul-float v14, v10, v13

    .line 1401
    const/4 v15, 0x1

    .line 1402
    aput v14, v11, v15

    .line 1404
    iget v15, v3, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 1406
    mul-float/2addr v10, v15

    .line 1407
    const/16 v17, 0x0

    .line 1409
    aput v10, v11, v17

    .line 1411
    mul-float/2addr v15, v10

    .line 1412
    mul-float/2addr v13, v14

    .line 1413
    add-float/2addr v13, v15

    .line 1414
    iget v10, v3, Landroidx/constraintlayout/motion/widget/b;->t:F

    .line 1416
    mul-float/2addr v13, v10

    .line 1417
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 1420
    move-result v10

    .line 1421
    float-to-double v10, v10

    .line 1422
    cmpg-double v7, v10, v7

    .line 1424
    const v8, 0x3c23d70a  # 0.01f

    .line 1427
    if-gez v7, :cond_59d

    .line 1429
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 1431
    const/4 v10, 0x0

    .line 1432
    aput v8, v7, v10

    .line 1434
    const/4 v11, 0x1

    .line 1435
    aput v8, v7, v11

    .line 1437
    goto :goto_59f

    .line 1438
    :cond_59d
    const/4 v10, 0x0

    .line 1439
    const/4 v11, 0x1

    .line 1440
    :goto_59f
    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 1442
    const/4 v13, 0x0

    .line 1443
    cmpl-float v7, v7, v13

    .line 1445
    if-eqz v7, :cond_5ac

    .line 1447
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 1449
    aget v5, v5, v10

    .line 1451
    div-float/2addr v6, v5

    .line 1452
    goto :goto_5b2

    .line 1453
    :cond_5ac
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 1455
    aget v6, v6, v11

    .line 1457
    div-float v6, v5, v6

    .line 1459
    :goto_5b2
    add-float/2addr v9, v6

    .line 1460
    const/high16 v5, 0x3f800000  # 1.0f

    .line 1462
    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    .line 1465
    move-result v6

    .line 1466
    const/4 v5, 0x0

    .line 1467
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    .line 1470
    move-result v6

    .line 1471
    iget v5, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 1473
    if-ne v5, v12, :cond_5c6

    .line 1475
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    .line 1478
    move-result v6

    .line 1479
    :cond_5c6
    iget v5, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 1481
    const/4 v7, 0x7

    .line 1482
    if-ne v5, v7, :cond_5d2

    .line 1484
    const v5, 0x3f7d70a4  # 0.99f

    .line 1487
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    .line 1490
    move-result v6

    .line 1491
    :cond_5d2
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1493
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 1496
    move-result v5

    .line 1497
    cmpl-float v7, v6, v5

    .line 1499
    if-eqz v7, :cond_633

    .line 1501
    const/4 v7, 0x0

    .line 1502
    cmpl-float v8, v5, v7

    .line 1504
    if-eqz v8, :cond_5e7

    .line 1506
    const/high16 v7, 0x3f800000  # 1.0f

    .line 1508
    cmpl-float v5, v5, v7

    .line 1510
    if-nez v5, :cond_5ef

    .line 1512
    :cond_5e7
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1514
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1517
    move-result v7

    .line 1518
    if-gtz v7, :cond_62d

    .line 1520
    :cond_5ef
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1522
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1525
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 1527
    if-eqz v5, :cond_5fd

    .line 1529
    const/16 v6, 0x3e8

    .line 1531
    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1534
    :cond_5fd
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 1536
    if-eqz v5, :cond_606

    .line 1538
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 1541
    move-result v5

    .line 1542
    goto :goto_607

    .line 1543
    :cond_606
    const/4 v5, 0x0

    .line 1544
    :goto_607
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 1546
    if-eqz v4, :cond_610

    .line 1548
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 1551
    move-result v4

    .line 1552
    goto :goto_611

    .line 1553
    :cond_610
    const/4 v4, 0x0

    .line 1554
    :goto_611
    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 1556
    const/4 v7, 0x0

    .line 1557
    cmpl-float v6, v6, v7

    .line 1559
    if-eqz v6, :cond_61f

    .line 1561
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 1563
    const/4 v6, 0x0

    .line 1564
    aget v4, v4, v6

    .line 1566
    div-float/2addr v5, v4

    .line 1567
    goto :goto_627

    .line 1568
    :cond_61f
    const/4 v6, 0x0

    .line 1569
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 1571
    const/4 v7, 0x1

    .line 1572
    aget v5, v5, v7

    .line 1574
    div-float v5, v4, v5

    .line 1576
    :goto_627
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1578
    iput v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    .line 1580
    const/4 v4, 0x0

    .line 1581
    goto :goto_639

    .line 1582
    :cond_62d
    const/4 v6, 0x0

    .line 1583
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1586
    const/4 v4, 0x0

    .line 1587
    throw v4

    .line 1588
    :cond_633
    const/4 v4, 0x0

    .line 1589
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1591
    const/4 v6, 0x0

    .line 1592
    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    .line 1594
    :goto_639
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1597
    move-result v5

    .line 1598
    iput v5, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    .line 1600
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1603
    move-result v5

    .line 1604
    iput v5, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    .line 1606
    goto/16 :goto_72f

    .line 1608
    :cond_647
    const/4 v4, 0x0

    .line 1609
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1611
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 1614
    throw v4

    .line 1615
    :cond_64e
    const/4 v5, 0x0

    .line 1616
    iput-boolean v5, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 1618
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 1620
    if-eqz v5, :cond_65a

    .line 1622
    const/16 v6, 0x3e8

    .line 1624
    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1627
    :cond_65a
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 1629
    if-eqz v5, :cond_663

    .line 1631
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 1634
    move-result v5

    .line 1635
    goto :goto_664

    .line 1636
    :cond_663
    const/4 v5, 0x0

    .line 1637
    :goto_664
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 1639
    if-eqz v4, :cond_66d

    .line 1641
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 1644
    move-result v4

    .line 1645
    goto :goto_66e

    .line 1646
    :cond_66d
    const/4 v4, 0x0

    .line 1647
    :goto_66e
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1649
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 1652
    move-result v6

    .line 1653
    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 1655
    const/4 v8, -0x1

    .line 1656
    if-ne v7, v8, :cond_718

    .line 1658
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1660
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 1663
    move-result v7

    .line 1664
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1666
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 1669
    move-result v8

    .line 1670
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 1673
    move-result v7

    .line 1674
    int-to-float v7, v7

    .line 1675
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 1677
    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->j:F

    .line 1679
    mul-float/2addr v9, v7

    .line 1680
    const/4 v10, 0x1

    .line 1681
    aput v9, v8, v10

    .line 1683
    iget v10, v3, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 1685
    mul-float/2addr v7, v10

    .line 1686
    const/4 v14, 0x0

    .line 1687
    aput v7, v8, v14

    .line 1689
    const/4 v8, 0x0

    .line 1690
    cmpl-float v10, v10, v8

    .line 1692
    if-eqz v10, :cond_69f

    .line 1694
    div-float/2addr v5, v7

    .line 1695
    goto :goto_6a1

    .line 1696
    :cond_69f
    div-float v5, v4, v9

    .line 1698
    :goto_6a1
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 1701
    move-result v4

    .line 1702
    if-nez v4, :cond_6ab

    .line 1704
    div-float v4, v5, v13

    .line 1706
    add-float/2addr v4, v6

    .line 1707
    goto :goto_6ac

    .line 1708
    :cond_6ab
    move v4, v6

    .line 1709
    :goto_6ac
    const/4 v7, 0x0

    .line 1710
    cmpl-float v8, v4, v7

    .line 1712
    if-eqz v8, :cond_705

    .line 1714
    const/high16 v7, 0x3f800000  # 1.0f

    .line 1716
    cmpl-float v8, v4, v7

    .line 1718
    if-eqz v8, :cond_705

    .line 1720
    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 1722
    const/4 v8, 0x3

    .line 1723
    if-eq v7, v8, :cond_705

    .line 1725
    float-to-double v8, v4

    .line 1726
    const-wide/high16 v10, 0x3fe0000000000000L  # 0.5

    .line 1728
    cmpg-double v4, v8, v10

    .line 1730
    if-gez v4, :cond_6c5

    .line 1732
    const/4 v4, 0x0

    .line 1733
    goto :goto_6c7

    .line 1734
    :cond_6c5
    const/high16 v4, 0x3f800000  # 1.0f

    .line 1736
    :goto_6c7
    if-ne v7, v12, :cond_6d7

    .line 1738
    add-float v4, v6, v5

    .line 1740
    const/4 v7, 0x0

    .line 1741
    cmpg-float v4, v4, v7

    .line 1743
    if-gez v4, :cond_6d5

    .line 1745
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 1748
    move-result v4

    .line 1749
    move v5, v4

    .line 1750
    :cond_6d5
    const/high16 v4, 0x3f800000  # 1.0f

    .line 1752
    :cond_6d7
    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 1754
    const/4 v8, 0x7

    .line 1755
    if-ne v7, v8, :cond_6eb

    .line 1757
    add-float v4, v6, v5

    .line 1759
    const/high16 v7, 0x3f800000  # 1.0f

    .line 1761
    cmpl-float v4, v4, v7

    .line 1763
    if-lez v4, :cond_6ea

    .line 1765
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 1768
    move-result v4

    .line 1769
    neg-float v4, v4

    .line 1770
    move v5, v4

    .line 1771
    :cond_6ea
    const/4 v4, 0x0

    .line 1772
    :cond_6eb
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1774
    iget v8, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 1776
    invoke-virtual {v7, v4, v5, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->h(FFI)V

    .line 1779
    const/4 v4, 0x0

    .line 1780
    cmpl-float v4, v4, v6

    .line 1782
    if-gez v4, :cond_6fd

    .line 1784
    const/high16 v4, 0x3f800000  # 1.0f

    .line 1786
    cmpg-float v4, v4, v6

    .line 1788
    if-gtz v4, :cond_72f

    .line 1790
    :cond_6fd
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1792
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 1794
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1797
    goto :goto_72f

    .line 1798
    :cond_705
    const/4 v5, 0x0

    .line 1799
    cmpl-float v5, v5, v4

    .line 1801
    if-gez v5, :cond_710

    .line 1803
    const/high16 v5, 0x3f800000  # 1.0f

    .line 1805
    cmpg-float v4, v5, v4

    .line 1807
    if-gtz v4, :cond_72f

    .line 1809
    :cond_710
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1811
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 1813
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1816
    goto :goto_72f

    .line 1817
    :cond_718
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1819
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 1822
    const/4 v1, 0x0

    .line 1823
    throw v1

    .line 1824
    :cond_71f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1827
    move-result v4

    .line 1828
    iput v4, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    .line 1830
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1833
    move-result v4

    .line 1834
    iput v4, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    .line 1836
    const/4 v4, 0x0

    .line 1837
    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 1839
    goto :goto_730

    .line 1840
    :cond_72f
    :goto_72f
    const/4 v4, 0x0

    .line 1841
    :goto_730
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1844
    move-result v3

    .line 1845
    iput v3, v2, Landroidx/constraintlayout/motion/widget/a;->r:F

    .line 1847
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1850
    move-result v3

    .line 1851
    iput v3, v2, Landroidx/constraintlayout/motion/widget/a;->s:F

    .line 1853
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1856
    move-result v1

    .line 1857
    const/4 v3, 0x1

    .line 1858
    if-ne v1, v3, :cond_75d

    .line 1860
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 1862
    if-eqz v1, :cond_75d

    .line 1864
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 1866
    if-eqz v3, :cond_752

    .line 1868
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 1871
    const/4 v3, 0x0

    .line 1872
    iput-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    .line 1874
    goto :goto_753

    .line 1875
    :cond_752
    const/4 v3, 0x0

    .line 1876
    :goto_753
    iput-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 1878
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 1880
    const/4 v3, -0x1

    .line 1881
    if-eq v1, v3, :cond_75d

    .line 1883
    invoke-virtual {v2, v1, v0}, Landroidx/constraintlayout/motion/widget/a;->a(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    .line 1886
    :cond_75d
    :goto_75d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 1888
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 1890
    const/4 v2, 0x4

    .line 1891
    iget v3, v1, Landroidx/constraintlayout/motion/widget/a$b;->q:I

    .line 1893
    and-int/2addr v2, v3

    .line 1894
    if-eqz v2, :cond_769

    .line 1896
    const/4 v9, 0x1

    .line 1897
    goto :goto_76a

    .line 1898
    :cond_769
    move v9, v4

    .line 1899
    :goto_76a
    if-eqz v9, :cond_771

    .line 1901
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 1903
    iget-boolean v1, v1, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 1905
    return v1

    .line 1906
    :cond_771
    const/4 v1, 0x1

    .line 1907
    return v1

    .line 1908
    :cond_773
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1911
    move-result v1

    .line 1912
    return v1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 4
    instance-of v0, p1, Ly/n;

    .line 6
    if-eqz v0, :cond_1f

    .line 8
    check-cast p1, Ly/n;

    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    if-nez v0, :cond_14

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    :cond_1f
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/ArrayList;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Ljava/util/ArrayList;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    :cond_11
    return-void
.end method

.method public final parseLayoutDescription(I)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    .line 4
    return-void
.end method

.method public final requestLayout()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_22

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 8
    if-eqz v0, :cond_22

    .line 10
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 12
    if-eqz v0, :cond_22

    .line 14
    iget v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->p:I

    .line 16
    if-nez v0, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_22

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-gtz v0, :cond_1d

    .line 29
    return-void

    .line 30
    :cond_1d
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    const/4 v0, 0x0

    .line 34
    throw v0

    .line 35
    :cond_22
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 38
    return-void
.end method

.method public setDebugMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    .line 3
    return-void
.end method

.method public setInteractionEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Z

    .line 3
    return-void
.end method

.method public setInterpolatedProgress(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 12
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/a;->d()Landroid/view/animation/Interpolator;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_19

    .line 18
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 25
    return-void

    .line 26
    :cond_19
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 29
    return-void
.end method

.method public setOnHide(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-ge v1, v0, :cond_19

    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ly/n;

    .line 20
    invoke-virtual {v2, p1}, Ly/n;->setProgress(F)V

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public setOnShow(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-ge v1, v0, :cond_19

    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ly/n;

    .line 20
    invoke-virtual {v2, p1}, Ly/n;->setProgress(F)V

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public setProgress(F)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 4
    const/high16 v2, 0x3f800000  # 1.0f

    .line 6
    if-ltz v1, :cond_b

    .line 8
    cmpl-float v3, p1, v2

    .line 10
    if-lez v3, :cond_12

    .line 12
    :cond_b
    const-string v3, "MotionLayout"

    .line 14
    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 16
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_12
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_28

    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 27
    if-nez v0, :cond_23

    .line 29
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 31
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 36
    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 38
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 40
    return-void

    .line 41
    :cond_28
    if-gtz v1, :cond_4b

    .line 43
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 45
    cmpl-float v1, v1, v2

    .line 47
    if-nez v1, :cond_3b

    .line 49
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 51
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 53
    if-ne v1, v2, :cond_3b

    .line 55
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 57
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 60
    :cond_3b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 62
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 64
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 66
    cmpl-float v0, v1, v0

    .line 68
    if-nez v0, :cond_78

    .line 70
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 72
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 75
    goto :goto_78

    .line 76
    :cond_4b
    cmpl-float v1, p1, v2

    .line 78
    if-ltz v1, :cond_70

    .line 80
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 82
    cmpl-float v0, v1, v0

    .line 84
    if-nez v0, :cond_60

    .line 86
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 88
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 90
    if-ne v0, v1, :cond_60

    .line 92
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 94
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 97
    :cond_60
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 99
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 101
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 103
    cmpl-float v0, v0, v2

    .line 105
    if-nez v0, :cond_78

    .line 107
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 109
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 112
    goto :goto_78

    .line 113
    :cond_70
    const/4 v0, -0x1

    .line 114
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 116
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 118
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 121
    :cond_78
    :goto_78
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 123
    if-nez v0, :cond_7d

    .line 125
    return-void

    .line 126
    :cond_7d
    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    .line 129
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 131
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 133
    const-wide/16 v1, -0x1

    .line 135
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    .line 137
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 142
    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p1, Landroidx/constraintlayout/motion/widget/a;->p:Z

    .line 9
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 11
    if-eqz p1, :cond_13

    .line 13
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 15
    if-eqz p1, :cond_13

    .line 17
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    throw p1
.end method

.method public setStartState(I)V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_18

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 9
    if-nez v0, :cond_11

    .line 11
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 13
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 20
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 22
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 24
    return-void

    .line 25
    :cond_18
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 27
    return-void
.end method

.method public final setState(III)V
    .registers 5

    .line 10
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 11
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    if-eqz v0, :cond_16

    int-to-float p2, p2

    int-to-float p3, p3

    .line 15
    invoke-virtual {v0, p2, p3, p1}, Lz/a;->b(FFI)V

    goto :goto_21

    .line 16
    :cond_16
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz p2, :cond_21

    .line 17
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .registers 6

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_a

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    return-void

    .line 2
    :cond_a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 4
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne v1, v2, :cond_17

    if-ne p1, v2, :cond_17

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->c()V

    .line 6
    :cond_17
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_29

    goto :goto_39

    :cond_29
    if-ne p1, v0, :cond_39

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d()V

    goto :goto_39

    :cond_2f
    if-ne p1, v2, :cond_34

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->c()V

    :cond_34
    if-ne p1, v0, :cond_39

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d()V

    :cond_39
    :goto_39
    return-void
.end method

.method public setTransition(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz v0, :cond_5d

    .line 2
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/a$b;

    .line 4
    iget v3, v1, Landroidx/constraintlayout/motion/widget/a$b;->a:I

    if-ne v3, p1, :cond_a

    goto :goto_1d

    :cond_1c
    move-object v1, v2

    .line 5
    :goto_1d
    iget p1, v1, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 7
    iget p1, v1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 9
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_41

    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez p1, :cond_36

    .line 11
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 12
    :cond_36
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 13
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 14
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 15
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    return-void

    .line 16
    :cond_41
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 17
    iput-object v1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 18
    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v0, :cond_4e

    .line 19
    iget-boolean p1, p1, Landroidx/constraintlayout/motion/widget/a;->p:Z

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

    .line 20
    :cond_4e
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    throw v2

    :cond_5d
    return-void
.end method

.method public setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V
    .registers 5

    .line 21
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 22
    iput-object p1, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz p1, :cond_f

    .line 23
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v1, :cond_f

    .line 24
    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/a;->p:Z

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

    .line 25
    :cond_f
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 26
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 27
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    const/4 v2, -0x1

    if-nez v1, :cond_1f

    move v1, v2

    goto :goto_21

    .line 28
    :cond_1f
    iget v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    :goto_21
    if-ne v0, v1, :cond_2c

    const/high16 v0, 0x3f800000  # 1.0f

    .line 29
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 30
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 31
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    goto :goto_33

    :cond_2c
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 33
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 34
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 35
    :goto_33
    iget p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->q:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    if-eqz v0, :cond_40

    const-wide/16 v0, -0x1

    goto :goto_44

    .line 36
    :cond_40
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_44
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    .line 37
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 38
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-nez v0, :cond_4e

    move v1, v2

    goto :goto_50

    .line 39
    :cond_4e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    :goto_50
    if-nez v0, :cond_53

    goto :goto_55

    .line 40
    :cond_53
    iget v2, v0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 41
    :goto_55
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    if-ne v1, v0, :cond_5e

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-ne v2, v0, :cond_5e

    return-void

    .line 42
    :cond_5e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 43
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 44
    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/motion/widget/a;->l(II)V

    .line 45
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    const/4 p1, 0x0

    throw p1
.end method

.method public setTransitionDuration(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    .line 3
    if-nez v0, :cond_c

    .line 5
    const-string p1, "MotionLayout"

    .line 7
    const-string v0, "MotionScene not defined"

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 15
    if-eqz v1, :cond_19

    .line 17
    const/16 v0, 0x8

    .line 19
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result p1

    .line 23
    iput p1, v1, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    iput p1, v0, Landroidx/constraintlayout/motion/widget/a;->j:I

    .line 28
    :goto_1b
    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 3
    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 7
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const-string v1, "motion.progress"

    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 22
    move-result v1

    .line 23
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 25
    const-string v1, "motion.velocity"

    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 30
    move-result v1

    .line 31
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    .line 33
    const-string v1, "motion.StartState"

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 38
    move-result v1

    .line 39
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 41
    const-string v1, "motion.EndState"

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 46
    move-result p1

    .line 47
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 49
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3b

    .line 55
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 57
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a()V

    .line 60
    :cond_3b
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    .line 12
    invoke-static {v0, v2}, Ly/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "->"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 26
    invoke-static {v0, v2}, Ly/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, " (pos:"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, " Dpos/Dt:"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
