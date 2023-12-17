.class public final Landroidx/constraintlayout/motion/widget/c$a;
.super Ljava/lang/Object;
.source "ViewTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:Ly/m;

.field public d:I

.field public e:Landroidx/appcompat/app/u;

.field public f:Landroidx/constraintlayout/motion/widget/d;

.field public g:Landroid/view/animation/Interpolator;

.field public h:Z

.field public i:F

.field public j:F

.field public k:J

.field public l:Landroid/graphics/Rect;

.field public m:Z


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/d;Ly/m;IIILandroid/view/animation/Interpolator;II)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/appcompat/app/u;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroidx/appcompat/app/u;-><init>(I)V

    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->e:Landroidx/appcompat/app/u;

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->h:Z

    .line 15
    new-instance v2, Landroid/graphics/Rect;

    .line 17
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 20
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/c$a;->l:Landroid/graphics/Rect;

    .line 22
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->m:Z

    .line 24
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    .line 26
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    .line 28
    iput p4, p0, Landroidx/constraintlayout/motion/widget/c$a;->d:I

    .line 30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 33
    move-result-wide p1

    .line 34
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    .line 36
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    .line 38
    iget-object p2, p1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    .line 40
    if-nez p2, :cond_30

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    .line 44
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iput-object p2, p1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    .line 49
    :cond_30
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iput-object p6, p0, Landroidx/constraintlayout/motion/widget/c$a;->g:Landroid/view/animation/Interpolator;

    .line 56
    iput p7, p0, Landroidx/constraintlayout/motion/widget/c$a;->a:I

    .line 58
    iput p8, p0, Landroidx/constraintlayout/motion/widget/c$a;->b:I

    .line 60
    const/4 p1, 0x3

    .line 61
    if-ne p5, p1, :cond_40

    .line 63
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->m:Z

    .line 65
    :cond_40
    if-nez p3, :cond_46

    .line 67
    const p1, 0x7f7fffff  # Float.MAX_VALUE

    .line 70
    goto :goto_4a

    .line 71
    :cond_46
    const/high16 p1, 0x3f800000  # 1.0f

    .line 73
    int-to-float p2, p3

    .line 74
    div-float/2addr p1, p2

    .line 75
    :goto_4a
    iput p1, p0, Landroidx/constraintlayout/motion/widget/c$a;->j:F

    .line 77
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/c$a;->a()V

    .line 80
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 12

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->h:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const-wide v3, 0x3eb0c6f7a0b5ed8dL  # 1.0E-6

    .line 10
    if-eqz v0, :cond_7b

    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 15
    move-result-wide v7

    .line 16
    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    .line 18
    sub-long v5, v7, v5

    .line 20
    iput-wide v7, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    .line 22
    iget v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 24
    long-to-double v5, v5

    .line 25
    mul-double/2addr v5, v3

    .line 26
    double-to-float v3, v5

    .line 27
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->j:F

    .line 29
    mul-float/2addr v3, v4

    .line 30
    sub-float/2addr v0, v3

    .line 31
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 33
    const/4 v3, 0x0

    .line 34
    cmpg-float v0, v0, v3

    .line 36
    if-gez v0, :cond_27

    .line 38
    iput v3, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 40
    :cond_27
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->g:Landroid/view/animation/Interpolator;

    .line 42
    if-nez v0, :cond_2e

    .line 44
    iget v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 49
    invoke-interface {v0, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 52
    move-result v0

    .line 53
    :goto_34
    move v6, v0

    .line 54
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    .line 56
    iget-object v9, v5, Ly/m;->a:Landroid/view/View;

    .line 58
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/c$a;->e:Landroidx/appcompat/app/u;

    .line 60
    invoke-virtual/range {v5 .. v10}, Ly/m;->b(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z

    .line 63
    move-result v0

    .line 64
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 66
    cmpg-float v4, v4, v3

    .line 68
    if-gtz v4, :cond_6a

    .line 70
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->a:I

    .line 72
    if-eq v4, v2, :cond_58

    .line 74
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    .line 76
    iget-object v5, v5, Ly/m;->a:Landroid/view/View;

    .line 78
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 81
    move-result-wide v6

    .line 82
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v5, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 89
    :cond_58
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->b:I

    .line 91
    if-eq v4, v2, :cond_63

    .line 93
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    .line 95
    iget-object v2, v2, Ly/m;->a:Landroid/view/View;

    .line 97
    invoke-virtual {v2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 100
    :cond_63
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    .line 102
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/d;->f:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_6a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 109
    cmpl-float v1, v1, v3

    .line 111
    if-gtz v1, :cond_72

    .line 113
    if-eqz v0, :cond_ee

    .line 115
    :cond_72
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    .line 117
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 122
    goto/16 :goto_ee

    .line 124
    :cond_7b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 127
    move-result-wide v5

    .line 128
    iget-wide v7, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    .line 130
    sub-long v7, v5, v7

    .line 132
    iput-wide v5, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    .line 134
    iget v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 136
    long-to-double v7, v7

    .line 137
    mul-double/2addr v7, v3

    .line 138
    double-to-float v3, v7

    .line 139
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->j:F

    .line 141
    mul-float/2addr v3, v4

    .line 142
    add-float/2addr v3, v0

    .line 143
    iput v3, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 145
    const/high16 v0, 0x3f800000  # 1.0f

    .line 147
    cmpl-float v3, v3, v0

    .line 149
    if-ltz v3, :cond_98

    .line 151
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 153
    :cond_98
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/c$a;->g:Landroid/view/animation/Interpolator;

    .line 155
    if-nez v3, :cond_9f

    .line 157
    iget v3, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 159
    goto :goto_a5

    .line 160
    :cond_9f
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 162
    invoke-interface {v3, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 165
    move-result v3

    .line 166
    :goto_a5
    move v4, v3

    .line 167
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    .line 169
    iget-object v7, v3, Ly/m;->a:Landroid/view/View;

    .line 171
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/c$a;->e:Landroidx/appcompat/app/u;

    .line 173
    invoke-virtual/range {v3 .. v8}, Ly/m;->b(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z

    .line 176
    move-result v3

    .line 177
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 179
    cmpl-float v4, v4, v0

    .line 181
    if-ltz v4, :cond_df

    .line 183
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->a:I

    .line 185
    if-eq v4, v2, :cond_c9

    .line 187
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    .line 189
    iget-object v5, v5, Ly/m;->a:Landroid/view/View;

    .line 191
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 194
    move-result-wide v6

    .line 195
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    move-result-object v6

    .line 199
    invoke-virtual {v5, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 202
    :cond_c9
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->b:I

    .line 204
    if-eq v4, v2, :cond_d4

    .line 206
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    .line 208
    iget-object v2, v2, Ly/m;->a:Landroid/view/View;

    .line 210
    invoke-virtual {v2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 213
    :cond_d4
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->m:Z

    .line 215
    if-nez v1, :cond_df

    .line 217
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    .line 219
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/d;->f:Ljava/util/ArrayList;

    .line 221
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_df
    iget v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    .line 226
    cmpg-float v0, v1, v0

    .line 228
    if-ltz v0, :cond_e7

    .line 230
    if-eqz v3, :cond_ee

    .line 232
    :cond_e7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    .line 234
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 239
    :cond_ee
    :goto_ee
    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->h:Z

    .line 4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->d:I

    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_15

    .line 9
    if-nez v0, :cond_e

    .line 11
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 14
    goto :goto_13

    .line 15
    :cond_e
    const/high16 v1, 0x3f800000  # 1.0f

    .line 17
    int-to-float v0, v0

    .line 18
    div-float v0, v1, v0

    .line 20
    :goto_13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->j:F

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    .line 24
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    .line 35
    return-void
.end method
