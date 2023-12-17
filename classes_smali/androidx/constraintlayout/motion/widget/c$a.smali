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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/d;Ly/m;IIILandroid/view/animation/Interpolator;II)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/app/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/u;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->e:Landroidx/appcompat/app/u;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->h:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/c$a;->l:Landroid/graphics/Rect;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->m:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    iput p4, p0, Landroidx/constraintlayout/motion/widget/c$a;->d:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    iget-object p2, p1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    if-nez p2, :cond_30

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    :cond_30
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p6, p0, Landroidx/constraintlayout/motion/widget/c$a;->g:Landroid/view/animation/Interpolator;

    iput p7, p0, Landroidx/constraintlayout/motion/widget/c$a;->a:I

    iput p8, p0, Landroidx/constraintlayout/motion/widget/c$a;->b:I

    const/4 p1, 0x3

    if-ne p5, p1, :cond_40

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->m:Z

    :cond_40
    if-nez p3, :cond_46

    const p1, 0x7f7fffff  # Float.MAX_VALUE

    goto :goto_4a

    :cond_46
    const/high16 p1, 0x3f800000  # 1.0f

    int-to-float p2, p3

    div-float/2addr p1, p2

    :goto_4a
    iput p1, p0, Landroidx/constraintlayout/motion/widget/c$a;->j:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/c$a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 12

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->h:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL  # 1.0E-6

    if-eqz v0, :cond_7b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    sub-long v5, v7, v5

    iput-wide v7, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    iget v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    long-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-float v3, v5

    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->j:F

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_27

    iput v3, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    :cond_27
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->g:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2e

    iget v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    goto :goto_34

    :cond_2e
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    invoke-interface {v0, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    :goto_34
    move v6, v0

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    iget-object v9, v5, Ly/m;->a:Landroid/view/View;

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/c$a;->e:Landroidx/appcompat/app/u;

    invoke-virtual/range {v5 .. v10}, Ly/m;->b(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z

    move-result v0

    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_6a

    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->a:I

    if-eq v4, v2, :cond_58

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    iget-object v5, v5, Ly/m;->a:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_58
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->b:I

    if-eq v4, v2, :cond_63

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    iget-object v2, v2, Ly/m;->a:Landroid/view/View;

    invoke-virtual {v2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_63
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_72

    if-eqz v0, :cond_ee

    :cond_72
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_ee

    :cond_7b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    sub-long v7, v5, v7

    iput-wide v5, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    iget v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    long-to-double v7, v7

    mul-double/2addr v7, v3

    double-to-float v3, v7

    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->j:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v3, v3, v0

    if-ltz v3, :cond_98

    iput v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    :cond_98
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/c$a;->g:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_9f

    iget v3, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    goto :goto_a5

    :cond_9f
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    invoke-interface {v3, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    :goto_a5
    move v4, v3

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    iget-object v7, v3, Ly/m;->a:Landroid/view/View;

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/c$a;->e:Landroidx/appcompat/app/u;

    invoke-virtual/range {v3 .. v8}, Ly/m;->b(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z

    move-result v3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_df

    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->a:I

    if-eq v4, v2, :cond_c9

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    iget-object v5, v5, Ly/m;->a:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_c9
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c$a;->b:I

    if-eq v4, v2, :cond_d4

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    iget-object v2, v2, Ly/m;->a:Landroid/view/View;

    invoke-virtual {v2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_d4
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->m:Z

    if-nez v1, :cond_df

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_df
    iget v1, p0, Landroidx/constraintlayout/motion/widget/c$a;->i:F

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_e7

    if-eqz v3, :cond_ee

    :cond_e7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_ee
    :goto_ee
    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->h:Z

    iget v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    if-nez v0, :cond_e

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    goto :goto_13

    :cond_e
    const/high16 v1, 0x3f800000  # 1.0f

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->j:F

    :cond_15
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->f:Landroidx/constraintlayout/motion/widget/d;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/c$a;->k:J

    return-void
.end method
