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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public final a(F)V
    .registers 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    if-eqz v1, :cond_13

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    :cond_13
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_1a

    return-void

    :cond_1a
    const/4 v2, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v3, :cond_24

    iget v0, v3, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    goto :goto_26

    :cond_24
    iget v0, v0, Landroidx/constraintlayout/motion/widget/a;->j:I

    :goto_26
    int-to-float v0, v0

    const/high16 v3, 0x447a0000  # 1000.0f

    div-float/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/a;->d()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b(Z)V
    .registers 14

    iget-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    :cond_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000  # 1.0f

    if-lez v2, :cond_1e

    cmpg-float v2, v0, v4

    if-gez v2, :cond_1e

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    :cond_1e
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_30

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    if-eqz v2, :cond_171

    if-nez p1, :cond_30

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_171

    :cond_30
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v7

    iget-wide v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    sub-long v9, v7, v9

    long-to-float v0, v9

    mul-float/2addr v0, p1

    const v2, 0x3089705f  # 1.0E-9f

    mul-float/2addr v0, v2

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    div-float/2addr v0, v2

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    add-float/2addr v2, v0

    iget-boolean v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    if-eqz v9, :cond_51

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    :cond_51
    cmpl-float v9, p1, v1

    if-lez v9, :cond_5b

    iget v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpl-float v10, v2, v10

    if-gez v10, :cond_65

    :cond_5b
    cmpg-float v10, p1, v1

    if-gtz v10, :cond_69

    iget v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpg-float v10, v2, v10

    if-gtz v10, :cond_69

    :cond_65
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    :cond_69
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    iput-wide v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v7, 0x3727c5ac  # 1.0E-5f

    cmpl-float v0, v0, v7

    if-lez v0, :cond_81

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_81
    if-lez v9, :cond_89

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpl-float v0, v2, v0

    if-gez v0, :cond_93

    :cond_89
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_97

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_97

    :cond_93
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    :cond_97
    cmpl-float v0, v2, v4

    if-gez v0, :cond_9f

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_a6

    :cond_9f
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_a6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    if-nez v7, :cond_b6

    goto :goto_b9

    :cond_b6
    invoke-interface {v7, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    :goto_b9
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    if-eqz v7, :cond_d1

    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    div-float v8, p1, v8

    add-float/2addr v8, v2

    invoke-interface {v7, v8}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    invoke-interface {v8, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v8

    sub-float/2addr v7, v8

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    :cond_d1
    if-gtz v0, :cond_1a5

    if-lez v9, :cond_db

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpl-float v0, v2, v0

    if-gez v0, :cond_e5

    :cond_db
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_e7

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_e7

    :cond_e5
    move v0, v5

    goto :goto_e8

    :cond_e7
    move v0, v6

    :goto_e8
    iget-boolean v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    if-nez v7, :cond_f7

    iget-boolean v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    if-nez v7, :cond_f7

    if-eqz v0, :cond_f7

    sget-object v7, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_f7
    iget-boolean v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    xor-int/2addr v0, v5

    or-int/2addr v0, v7

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_11a

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    if-eq v0, v3, :cond_11a

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-eq v3, v0, :cond_11a

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    move v6, v5

    :cond_11a
    float-to-double v7, v2

    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, v7, v10

    if-ltz v0, :cond_138

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-eq v0, v3, :cond_138

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    move v6, v5

    :cond_138
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    if-nez v0, :cond_155

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    if-eqz v0, :cond_141

    goto :goto_155

    :cond_141
    if-lez v9, :cond_147

    cmpl-float v0, v2, v4

    if-eqz v0, :cond_14f

    :cond_147
    cmpg-float v0, p1, v1

    if-gez v0, :cond_158

    cmpl-float v0, v2, v1

    if-nez v0, :cond_158

    :cond_14f
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_158

    :cond_155
    :goto_155
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_158
    :goto_158
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    if-nez v0, :cond_171

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    if-nez v0, :cond_171

    if-lez v9, :cond_166

    cmpl-float v0, v2, v4

    if-eqz v0, :cond_16e

    :cond_166
    cmpg-float p1, p1, v1

    if-gez p1, :cond_171

    cmpl-float p1, v2, v1

    if-nez p1, :cond_171

    :cond_16e
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    :cond_171
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v0, p1, v4

    if-ltz v0, :cond_183

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-eq p1, v0, :cond_17e

    goto :goto_17f

    :cond_17e
    move v5, v6

    :goto_17f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    :goto_181
    move v6, v5

    goto :goto_192

    :cond_183
    cmpg-float p1, p1, v1

    if-gtz p1, :cond_192

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    if-eq p1, v0, :cond_18e

    goto :goto_18f

    :cond_18e
    move v5, v6

    :goto_18f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    goto :goto_181

    :cond_192
    :goto_192
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Z

    or-int/2addr p1, v6

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Z

    if-eqz v6, :cond_1a0

    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    if-nez p1, :cond_1a0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1a0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    return-void

    :cond_1a5
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    const/4 p1, 0x0

    throw p1
.end method

.method public final c()V
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    :cond_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5f

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3a

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b()V

    :cond_22
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-interface {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b()V

    goto :goto_2a

    :cond_3a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-eqz v0, :cond_47

    invoke-interface {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a()V

    :cond_47
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a()V

    goto :goto_4f

    :cond_5f
    return-void
.end method

.method public final d()V
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2b

    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_22
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/lang/Runnable;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_29
    return-void

    :cond_2a
    throw v1

    :cond_2b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    throw v1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b(Z)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz v1, :cond_3c

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->q:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v1, :cond_3c

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    if-nez v2, :cond_11

    goto :goto_3c

    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/c$a;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/c$a;->a()V

    goto :goto_15

    :cond_25
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    :cond_3c
    :goto_3c
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v1, :cond_44

    return-void

    :cond_44
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_107

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_107

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_80

    sub-long v5, v3, v5

    const-wide/32 v7, 0xbebc200

    cmp-long v1, v5, v7

    if-lez v1, :cond_82

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    int-to-float v1, v1

    long-to-float v5, v5

    const v6, 0x3089705f  # 1.0E-9f

    mul-float/2addr v5, v6

    div-float/2addr v1, v5

    const/high16 v5, 0x42c80000  # 100.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    goto :goto_82

    :cond_80
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    :cond_82
    :goto_82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x42280000  # 42.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    const/high16 v3, 0x447a0000  # 1000.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000  # 10.0f

    div-float/2addr v1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " fps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    invoke-static {v5, p0}, Ly/a;->d(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-static {v5, p0}, Ly/a;->d(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ) state="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_db

    const-string v1, "undefined"

    goto :goto_df

    :cond_db
    invoke-static {v1, p0}, Ly/a;->d(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    move-result-object v1

    :goto_df
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41300000  # 11.0f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1d

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v4, -0x77ff78

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_107
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:I

    if-le p1, v2, :cond_11f

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    if-nez p1, :cond_116

    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    :cond_116
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_11f
    return-void
.end method

.method public final e()V
    .registers 8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    return-void

    :cond_11
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d8

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1e

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/a$b$a;

    invoke-virtual {v5, p0}, Landroidx/constraintlayout/motion/widget/a$b$a;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_38

    :cond_48
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4e

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/a$b$a;

    invoke-virtual {v5, p0}, Landroidx/constraintlayout/motion/widget/a$b$a;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_68

    :cond_78
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7e

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_98
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/a$b$a;

    invoke-virtual {v6, p0, v0, v4}, Landroidx/constraintlayout/motion/widget/a$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/a$b;)V

    goto :goto_98

    :cond_a8
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_ae

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ae

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/a$b$a;

    invoke-virtual {v5, p0, v0, v3}, Landroidx/constraintlayout/motion/widget/a$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/a$b;)V

    goto :goto_c8

    :cond_d8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/a;->m()Z

    move-result v0

    if-eqz v0, :cond_12c

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v0, :cond_12c

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v0, :cond_12c

    iget v2, v0, Landroidx/constraintlayout/motion/widget/b;->d:I

    if-eq v2, v1, :cond_115

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_116

    const-string v2, "cannot find TouchAnchorId @id/"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v0, v0, Landroidx/constraintlayout/motion/widget/b;->d:I

    invoke-static {v3, v0}, Ly/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TouchResponse"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_116

    :cond_115
    const/4 v1, 0x0

    :cond_116
    :goto_116
    instance-of v0, v1, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_12c

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    new-instance v0, Ly/p;

    invoke-direct {v0}, Ly/p;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Ly/q;

    invoke-direct {v0}, Ly/q;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$c;)V

    :cond_12c
    return-void
.end method

.method public final f(FF)V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_11

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    return-void

    :cond_18
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p2, :cond_30

    if-lez p2, :cond_2c

    move v0, v1

    :cond_2c
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    goto :goto_42

    :cond_30
    cmpl-float p2, p1, v0

    if-eqz p2, :cond_42

    cmpl-float p2, p1, v1

    if-eqz p2, :cond_42

    const/high16 p2, 0x3f000000  # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3f

    move v0, v1

    :cond_3f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    :cond_42
    :goto_42
    return-void
.end method

.method public final g(II)V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_11

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    return-void

    :cond_18
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/a;->l(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    const/4 p1, 0x0

    throw p1
.end method

.method public getConstraintSetIds()[I
    .registers 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1c

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1c
    return-object v2
.end method

.method public getCurrentState()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

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

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDesignTool()Ly/b;
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:Ly/b;

    if-nez v0, :cond_b

    new-instance v0, Ly/b;

    invoke-direct {v0}, Ly/b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:Ly/b;

    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:Ly/b;

    return-object v0
.end method

.method public getEndState()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    return v0
.end method

.method public getNanoTime()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    return v0
.end method

.method public getScene()Landroidx/constraintlayout/motion/widget/a;
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    return-object v0
.end method

.method public getStartState()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    return v0
.end method

.method public getTargetPosition()F
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    const-string v3, "motion.progress"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    const-string v3, "motion.velocity"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    const-string v3, "motion.StartState"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    const-string v2, "motion.EndState"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getTransitionTimeMs()J
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    const/high16 v1, 0x447a0000  # 1000.0f

    if-eqz v0, :cond_13

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v2, :cond_d

    iget v0, v2, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    goto :goto_f

    :cond_d
    iget v0, v0, Landroidx/constraintlayout/motion/widget/a;->j:I

    :goto_f
    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    :cond_13
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    return v0
.end method

.method public final h(FFI)V
    .registers 11

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v2, :cond_19

    iget v3, v2, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    goto :goto_1b

    :cond_19
    iget v3, v1, Landroidx/constraintlayout/motion/widget/a;->j:I

    :goto_1b
    int-to-float v3, v3

    const/high16 v4, 0x447a0000  # 1000.0f

    div-float/2addr v3, v4

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    const/4 p1, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_84

    if-eq p3, v0, :cond_84

    if-eq p3, v4, :cond_84

    const/4 v4, 0x4

    if-eq p3, v4, :cond_80

    const/4 v4, 0x5

    if-eq p3, v4, :cond_43

    if-eq p3, v3, :cond_84

    if-eq p3, p1, :cond_84

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_43
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/a;->e()F

    move-result p3

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    const/high16 v3, 0x40000000  # 2.0f

    if-lez v2, :cond_5f

    div-float v1, p2, p3

    mul-float/2addr p2, v1

    mul-float/2addr p3, v1

    mul-float/2addr p3, v1

    div-float/2addr p3, v3

    sub-float/2addr p2, p3

    add-float/2addr p2, p1

    const/high16 p1, 0x3f800000  # 1.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6c

    goto :goto_6d

    :cond_5f
    neg-float v2, p2

    div-float/2addr v2, p3

    mul-float/2addr p2, v2

    mul-float/2addr p3, v2

    mul-float/2addr p3, v2

    div-float/2addr p3, v3

    add-float/2addr p3, p2

    add-float/2addr p3, p1

    cmpg-float p1, p3, v1

    if-gez p1, :cond_6c

    goto :goto_6d

    :cond_6c
    move v0, v5

    :goto_6d
    if-eqz v0, :cond_75

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/a;->e()F

    throw v6

    :cond_75
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/a;->e()F

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v6

    :cond_80
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/a;->e()F

    throw v6

    :cond_84
    if-eqz v2, :cond_8c

    iget-object p1, v2, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz p1, :cond_8c

    iget v5, p1, Landroidx/constraintlayout/motion/widget/b;->B:I

    :cond_8c
    if-eqz v5, :cond_8f

    throw v6

    :cond_8f
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/a;->e()F

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v6
.end method

.method public final i()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/lang/Runnable;

    return-void
.end method

.method public final isAttachedToWindow()Z
    .registers 2

    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public final j(I)V
    .registers 11

    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_11

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    return-void

    :cond_16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_81

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->b:Lz/f;

    if-eqz v0, :cond_81

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    int-to-float v4, v2

    iget-object v0, v0, Lz/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/f$a;

    if-nez v0, :cond_2f

    move v3, p1

    goto :goto_7e

    :cond_2f
    const/high16 v5, -0x40800000  # -1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_60

    if-nez v5, :cond_38

    goto :goto_60

    :cond_38
    iget-object v5, v0, Lz/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v1

    :cond_3f
    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz/f$b;

    invoke-virtual {v7, v4, v4}, Lz/f$b;->a(FF)Z

    move-result v8

    if-eqz v8, :cond_3f

    iget v6, v7, Lz/f$b;->e:I

    if-ne v3, v6, :cond_56

    goto :goto_7e

    :cond_56
    move-object v6, v7

    goto :goto_3f

    :cond_58
    if-eqz v6, :cond_5d

    iget v3, v6, Lz/f$b;->e:I

    goto :goto_7e

    :cond_5d
    iget v3, v0, Lz/f$a;->c:I

    goto :goto_7e

    :cond_60
    :goto_60
    iget v4, v0, Lz/f$a;->c:I

    if-ne v4, v3, :cond_65

    goto :goto_7e

    :cond_65
    iget-object v4, v0, Lz/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz/f$b;

    iget v5, v5, Lz/f$b;->e:I

    if-ne v3, v5, :cond_6b

    goto :goto_7e

    :cond_7c
    iget v3, v0, Lz/f$a;->c:I

    :goto_7e
    if-eq v3, v2, :cond_81

    move p1, v3

    :cond_81
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-ne v0, p1, :cond_86

    goto :goto_aa

    :cond_86
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    const/4 v4, 0x0

    const/high16 v5, 0x447a0000  # 1000.0f

    if-ne v3, p1, :cond_91

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    goto :goto_aa

    :cond_91
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/high16 v6, 0x3f800000  # 1.0f

    if-ne v3, p1, :cond_9b

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    goto :goto_aa

    :cond_9b
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-eq v0, v2, :cond_ab

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g(II)V

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    :goto_aa
    return-void

    :cond_ab
    const/4 p1, 0x0

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v0, :cond_c6

    iget v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    goto :goto_c8

    :cond_c6
    iget v0, p1, Landroidx/constraintlayout/motion/widget/a;->j:I

    :goto_c8
    int-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/motion/widget/a;->l(II)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    throw v1
.end method

.method public final varargs k(I[Landroid/view/View;)V
    .registers 14

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz v0, :cond_9f

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->q:Landroidx/constraintlayout/motion/widget/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, v9

    :cond_16
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/constraintlayout/motion/widget/c;

    iget v2, v10, Landroidx/constraintlayout/motion/widget/c;->a:I

    if-ne v2, p1, :cond_16

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_2a
    if-ge v3, v1, :cond_3a

    aget-object v4, p2, v3

    invoke-virtual {v10, v4}, Landroidx/constraintlayout/motion/widget/c;->b(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_3a
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_93

    new-array v1, v2, [Landroid/view/View;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Landroid/view/View;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v4

    iget v1, v10, Landroidx/constraintlayout/motion/widget/c;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_88

    const/4 v1, -0x1

    if-ne v4, v1, :cond_70

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/d;->d:Ljava/lang/String;

    const-string v2, "No support for ViewTransition within transition yet. Currently: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :cond_70
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v1, :cond_78

    move-object v5, v9

    goto :goto_7d

    :cond_78
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    move-result-object v1

    move-object v5, v1

    :goto_7d
    if-nez v5, :cond_80

    goto :goto_90

    :cond_80
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object v1, v10

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/c;->a(Landroidx/constraintlayout/motion/widget/d;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/c;[Landroid/view/View;)V

    goto :goto_90

    :cond_88
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/c;->a(Landroidx/constraintlayout/motion/widget/d;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/c;[Landroid/view/View;)V

    :goto_90
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_93
    move-object v1, v10

    goto :goto_16

    :cond_95
    if-nez v1, :cond_a6

    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/d;->d:Ljava/lang/String;

    const-string p2, " Could not find ViewTransition"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    :cond_9f
    const-string p1, "MotionLayout"

    const-string p2, " no motionScene"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    :goto_a6
    return-void
.end method

.method public final loadLayoutDescription(I)V
    .registers 6

    const-string v0, "unable to parse MotionScene file"

    const/4 v1, 0x0

    if-eqz p1, :cond_9a

    :try_start_5
    new-instance v2, Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v3, -0x1

    if-ne p1, v3, :cond_2e

    iget-object p1, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-nez p1, :cond_1b

    move v2, v3

    goto :goto_1d

    :cond_1b
    iget v2, p1, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    :goto_1d
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-nez p1, :cond_23

    move v2, v3

    goto :goto_25

    :cond_23
    iget v2, p1, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    :goto_25
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    if-nez p1, :cond_2a

    goto :goto_2c

    :cond_2a
    iget v3, p1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    :goto_2c
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    :cond_2e
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_93

    if-eqz p1, :cond_90

    :try_start_34
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_3b

    goto :goto_3e

    :cond_3b
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    :goto_3e
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz p1, :cond_56

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    move-result-object p1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/a;->k(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    if-eqz p1, :cond_52

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_52
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    :cond_56
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-eqz p1, :cond_6e

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    if-eqz v1, :cond_6a

    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$a;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_9c

    :cond_6a
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a()V

    goto :goto_9c

    :cond_6e
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz p1, :cond_9c

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz p1, :cond_9c

    iget p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->n:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_9c

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_88} :catch_89

    goto :goto_9c

    :catch_89
    move-exception p1

    :try_start_8a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_90
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_92} :catch_93

    goto :goto_9c

    :catch_93
    move-exception p1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9a
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    :cond_9c
    :goto_9c
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz v0, :cond_27

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/a;->k(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    if-eqz v0, :cond_23

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_23
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    :cond_27
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-eqz v0, :cond_3f

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    if-eqz v1, :cond_3b

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_59

    :cond_3b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a()V

    goto :goto_59

    :cond_3f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz v0, :cond_59

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v0, :cond_59

    iget v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_59

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_194

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Z

    if-nez v3, :cond_d

    goto/16 :goto_194

    :cond_d
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->q:Landroidx/constraintlayout/motion/widget/d;

    const/4 v3, -0x1

    const/4 v11, 0x1

    if-eqz v1, :cond_138

    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v12

    if-ne v12, v3, :cond_1d

    goto/16 :goto_138

    :cond_1d
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/util/HashSet;

    if-nez v4, :cond_5a

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/util/HashSet;

    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/c;

    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :goto_41
    if-ge v7, v6, :cond_2e

    iget-object v8, v1, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/constraintlayout/motion/widget/c;->c(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_57
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    :cond_5a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    const/4 v8, 0x2

    if-eqz v4, :cond_b3

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b3

    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7c
    :goto_7c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/c$a;

    if-eq v9, v11, :cond_ab

    if-eq v9, v8, :cond_90

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7c

    :cond_90
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/c$a;->c:Ly/m;

    iget-object v6, v6, Ly/m;->a:Landroid/view/View;

    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/c$a;->l:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/c$a;->l:Landroid/graphics/Rect;

    float-to-int v7, v13

    float-to-int v10, v14

    invoke-virtual {v6, v7, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_7c

    iget-boolean v6, v5, Landroidx/constraintlayout/motion/widget/c$a;->h:Z

    if-nez v6, :cond_7c

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/c$a;->b()V

    goto :goto_7c

    :cond_ab
    iget-boolean v6, v5, Landroidx/constraintlayout/motion/widget/c$a;->h:Z

    if-nez v6, :cond_7c

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/c$a;->b()V

    goto :goto_7c

    :cond_b3
    if-eqz v9, :cond_b9

    if-eq v9, v11, :cond_b9

    goto/16 :goto_138

    :cond_b9
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v4, :cond_c1

    const/4 v10, 0x0

    goto :goto_c6

    :cond_c1
    invoke-virtual {v4, v12}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    move-result-object v4

    move-object v10, v4

    :goto_c6
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_cc
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_138

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroidx/constraintlayout/motion/widget/c;

    iget v4, v7, Landroidx/constraintlayout/motion/widget/c;->b:I

    if-ne v4, v11, :cond_e0

    if-nez v9, :cond_ec

    goto :goto_ea

    :cond_e0
    if-ne v4, v8, :cond_e5

    if-ne v9, v11, :cond_ec

    goto :goto_ea

    :cond_e5
    const/4 v5, 0x3

    if-ne v4, v5, :cond_ec

    if-nez v9, :cond_ec

    :goto_ea
    move v4, v11

    goto :goto_ed

    :cond_ec
    move v4, v2

    :goto_ed
    if-eqz v4, :cond_cc

    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_f5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cc

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/motion/widget/c;->c(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_108

    goto :goto_f5

    :cond_108
    invoke-virtual {v4, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v5, v13

    float-to-int v6, v14

    invoke-virtual {v15, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_12b

    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-array v5, v11, [Landroid/view/View;

    aput-object v4, v5, v2

    move-object v4, v7

    move-object/from16 v18, v5

    move-object v5, v1

    move-object/from16 v19, v7

    move v7, v12

    move/from16 v20, v8

    move-object v8, v10

    move/from16 v21, v9

    move-object/from16 v9, v18

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/c;->a(Landroidx/constraintlayout/motion/widget/d;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/c;[Landroid/view/View;)V

    goto :goto_131

    :cond_12b
    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    :goto_131
    move-object/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    goto :goto_f5

    :cond_138
    :goto_138
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v1, :cond_194

    iget-boolean v4, v1, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    xor-int/2addr v4, v11

    if-eqz v4, :cond_194

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v1, :cond_194

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_167

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, v0, v4}, Landroidx/constraintlayout/motion/widget/b;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_167

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_167

    return v2

    :cond_167
    iget v1, v1, Landroidx/constraintlayout/motion/widget/b;->e:I

    if-eq v1, v3, :cond_194

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    if-eqz v3, :cond_175

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v1, :cond_17b

    :cond_175
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    :cond_17b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    if-nez v1, :cond_180

    goto :goto_194

    :cond_180
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    const/4 v1, 0x0

    throw v1

    :cond_194
    :goto_194
    return v2
.end method

.method public final onLayout(ZIIII)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v1, :cond_e

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_21

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    return-void

    :cond_e
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    :try_start_10
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-ne p1, p4, :cond_1f

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-ne p1, p5, :cond_1f

    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_21

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    return-void

    :cond_1f
    const/4 p1, 0x0

    :try_start_20
    throw p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    throw p1
.end method

.method public final onMeasure(II)V
    .registers 10

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v0, :cond_8

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_15

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:I

    if-eq v0, p2, :cond_13

    goto :goto_15

    :cond_13
    move v0, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v1

    :goto_16
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_31

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez v0, :cond_30

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2e
    move v0, v1

    goto :goto_31

    :cond_30
    throw v4

    :cond_31
    :goto_31
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v1, v0

    :goto_37
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    const/4 v3, -0x1

    if-nez v0, :cond_44

    move v5, v3

    goto :goto_46

    :cond_44
    iget v5, v0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    :goto_46
    if-nez v0, :cond_4a

    move v0, v3

    goto :goto_4c

    :cond_4a
    iget v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    :goto_4c
    if-eqz v1, :cond_f4

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    if-ne v6, v3, :cond_e6

    if-eqz v1, :cond_57

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    :cond_57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float p1, v2

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    mul-float/2addr p2, p1

    add-float/2addr p2, p1

    float-to-int p2, p2

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    mul-float/2addr v0, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    sub-long/2addr v0, v5

    long-to-float p2, v0

    mul-float/2addr p2, p1

    const v0, 0x3089705f  # 1.0E-9f

    mul-float/2addr p2, v0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    div-float/2addr p2, v0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    add-float/2addr v0, p2

    iget-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    if-eqz p2, :cond_a3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    :cond_a3
    const/4 p2, 0x0

    cmpl-float v1, p1, p2

    if-lez v1, :cond_ae

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpl-float v3, v0, v3

    if-gez v3, :cond_b8

    :cond_ae
    cmpg-float v3, p1, p2

    if-gtz v3, :cond_ba

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_ba

    :cond_b8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    :cond_ba
    if-lez v1, :cond_c2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpl-float v1, v0, v1

    if-gez v1, :cond_cc

    :cond_c2
    cmpg-float p1, p1, p2

    if-gtz p1, :cond_ce

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_ce

    :cond_cc
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    :cond_ce
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    if-nez p2, :cond_dc

    goto :goto_df

    :cond_dc
    invoke-interface {p2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    :goto_df
    if-gtz p1, :cond_e2

    return-void

    :cond_e2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    throw v4

    :cond_e6
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    throw v4

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

    move-object v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v2, :cond_c2

    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_12

    goto/16 :goto_c2

    :cond_12
    const/4 v5, -0x1

    if-eqz v3, :cond_24

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v3, :cond_24

    iget v3, v3, Landroidx/constraintlayout/motion/widget/b;->e:I

    if-eq v3, v5, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v3, :cond_24

    return-void

    :cond_24
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    const/4 v6, 0x0

    if-eqz v3, :cond_30

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v3, :cond_30

    iget-boolean v3, v3, Landroidx/constraintlayout/motion/widget/b;->s:Z

    goto :goto_31

    :cond_30
    move v3, v6

    :goto_31
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    if-eqz v3, :cond_54

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v3, :cond_42

    iget v3, v3, Landroidx/constraintlayout/motion/widget/b;->u:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_42

    move/from16 v5, p3

    :cond_42
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_4c

    cmpl-float v3, v3, v7

    if-nez v3, :cond_54

    :cond_4c
    move-object v3, p1

    invoke-virtual {p1, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_54

    return-void

    :cond_54
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_74

    iget v2, v2, Landroidx/constraintlayout/motion/widget/b;->u:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_74

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v2, :cond_74

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-nez v2, :cond_67

    goto :goto_74

    :cond_67
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/b;->d:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    throw v3

    :cond_74
    :goto_74
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:J

    sub-long v9, v7, v9

    long-to-double v9, v9

    const-wide v11, 0x3e112e0be826d695L  # 1.0E-9

    mul-double/2addr v9, v11

    double-to-float v5, v9

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:F

    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:J

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v1, :cond_ab

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v1, :cond_ab

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v2

    iget-boolean v5, v1, Landroidx/constraintlayout/motion/widget/b;->k:Z

    if-nez v5, :cond_a3

    iput-boolean v4, v1, Landroidx/constraintlayout/motion/widget/b;->k:Z

    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_a3
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/b;->d:I

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    throw v3

    :cond_ab
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_b5

    aput p2, p4, v6

    aput p3, p4, v4

    :cond_b5
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b(Z)V

    aget v1, p4, v6

    if-nez v1, :cond_c0

    aget v1, p4, v4

    if-eqz v1, :cond_c2

    :cond_c0
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

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

    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    const/4 p6, 0x0

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    if-eqz p3, :cond_14

    :cond_9
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    :cond_14
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:F

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .registers 3

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/constraintlayout/motion/widget/a;->p:Z

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz p1, :cond_15

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz p1, :cond_15

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

    :cond_15
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz p1, :cond_15

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz p1, :cond_15

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz p1, :cond_15

    iget p1, p1, Landroidx/constraintlayout/motion/widget/b;->u:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x1

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x0

    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;I)V
    .registers 4

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz p1, :cond_26

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_c

    goto :goto_26

    :cond_c
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz p1, :cond_26

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-nez p1, :cond_15

    goto :goto_26

    :cond_15
    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/constraintlayout/motion/widget/b;->k:Z

    iget-object p2, p1, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    iget-object p2, p1, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p1, p1, Landroidx/constraintlayout/motion/widget/b;->d:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    const/4 p1, 0x0

    throw p1

    :cond_26
    :goto_26
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz v2, :cond_773

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Z

    if-eqz v3, :cond_773

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/a;->m()Z

    move-result v2

    if-eqz v2, :cond_773

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    const/4 v4, 0x1

    if-eqz v3, :cond_23

    iget-boolean v3, v3, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    xor-int/2addr v3, v4

    if-nez v3, :cond_23

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v3

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    if-nez v6, :cond_3f

    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    iput-object v6, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    :cond_3f
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_48

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_48
    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eq v3, v7, :cond_21d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-eqz v11, :cond_1b3

    if-eq v11, v6, :cond_56

    goto/16 :goto_21d

    :cond_56
    iget-boolean v11, v2, Landroidx/constraintlayout/motion/widget/a;->m:Z

    if-eqz v11, :cond_5c

    goto/16 :goto_21d

    :cond_5c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget v12, v2, Landroidx/constraintlayout/motion/widget/a;->s:F

    sub-float/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    iget v13, v2, Landroidx/constraintlayout/motion/widget/a;->r:F

    sub-float/2addr v12, v13

    float-to-double v13, v12

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_76

    float-to-double v13, v11

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_221

    :cond_76
    iget-object v13, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    if-nez v13, :cond_7c

    goto/16 :goto_221

    :cond_7c
    if-eq v3, v7, :cond_179

    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/a;->b:Lz/f;

    if-eqz v14, :cond_89

    invoke-virtual {v14, v3}, Lz/f;->a(I)I

    move-result v14

    if-eq v14, v7, :cond_89

    goto :goto_8a

    :cond_89
    move v14, v3

    :goto_8a
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_95
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Landroidx/constraintlayout/motion/widget/a$b;

    iget v6, v7, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    if-eq v6, v14, :cond_ab

    iget v6, v7, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    if-ne v6, v14, :cond_ae

    :cond_ab
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ae
    const/4 v6, 0x2

    const/4 v7, -0x1

    goto :goto_95

    :cond_b1
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_bc
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_17b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/motion/widget/a$b;

    iget-boolean v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    if-eqz v4, :cond_ce

    goto/16 :goto_166

    :cond_ce
    iget-object v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v4, :cond_166

    iget-boolean v8, v2, Landroidx/constraintlayout/motion/widget/a;->p:Z

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

    iget-object v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v8, v6}, Landroidx/constraintlayout/motion/widget/b;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_f1

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_f1

    goto/16 :goto_166

    :cond_f1
    iget-object v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v8, v6}, Landroidx/constraintlayout/motion/widget/b;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_10a

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_10a

    goto :goto_166

    :cond_10a
    iget-object v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    iget v8, v4, Landroidx/constraintlayout/motion/widget/b;->i:F

    mul-float/2addr v8, v12

    iget v9, v4, Landroidx/constraintlayout/motion/widget/b;->j:F

    mul-float/2addr v9, v11

    add-float/2addr v9, v8

    iget-boolean v4, v4, Landroidx/constraintlayout/motion/widget/b;->h:Z

    if-eqz v4, :cond_14c

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v8, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v8, 0x3f000000  # 0.5f

    sub-float/2addr v4, v8

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move-object/from16 v18, v6

    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float/2addr v9, v8

    add-float v6, v12, v4

    add-float v8, v11, v9

    move-object/from16 v19, v7

    float-to-double v7, v8

    move/from16 v20, v11

    move/from16 v21, v12

    float-to-double v11, v6

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    float-to-double v11, v4

    float-to-double v8, v9

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-float v4, v6

    const/high16 v6, 0x41200000  # 10.0f

    mul-float v9, v4, v6

    goto :goto_154

    :cond_14c
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v11

    move/from16 v21, v12

    :goto_154
    iget v4, v15, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    if-ne v4, v3, :cond_15b

    const/high16 v4, -0x40800000  # -1.0f

    goto :goto_15e

    :cond_15b
    const v4, 0x3f8ccccd  # 1.1f

    :goto_15e
    mul-float/2addr v4, v9

    cmpl-float v6, v4, v10

    if-lez v6, :cond_16e

    move v10, v4

    move-object v14, v15

    goto :goto_16e

    :cond_166
    :goto_166
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v11

    move/from16 v21, v12

    :cond_16e
    :goto_16e
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v11, v20

    move/from16 v12, v21

    const/4 v4, 0x1

    goto/16 :goto_bc

    :cond_179
    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    :cond_17b
    if-eqz v14, :cond_21d

    invoke-virtual {v0, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/motion/widget/b;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_1a0

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_1a0

    const/4 v3, 0x1

    goto :goto_1a1

    :cond_1a0
    const/4 v3, 0x0

    :goto_1a1
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/a;->n:Z

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    iget v4, v2, Landroidx/constraintlayout/motion/widget/a;->r:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/a;->s:F

    iput v4, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    iput v5, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    goto :goto_21d

    :cond_1b3
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/a;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/a;->s:F

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    iput-boolean v4, v2, Landroidx/constraintlayout/motion/widget/a;->m:Z

    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v1, :cond_221

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v3, v5}, Landroidx/constraintlayout/motion/widget/b;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_1eb

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_1eb

    const/4 v1, 0x0

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/a;->m:Z

    goto :goto_221

    :cond_1eb
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v3, v5}, Landroidx/constraintlayout/motion/widget/b;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_20d

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/a;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_20d

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/a;->n:Z

    goto :goto_210

    :cond_20d
    const/4 v1, 0x0

    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/a;->n:Z

    :goto_210
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    iget v3, v2, Landroidx/constraintlayout/motion/widget/a;->r:F

    iget v2, v2, Landroidx/constraintlayout/motion/widget/a;->s:F

    iput v3, v1, Landroidx/constraintlayout/motion/widget/b;->n:F

    iput v2, v1, Landroidx/constraintlayout/motion/widget/b;->o:F

    goto :goto_221

    :cond_21d
    :goto_21d
    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/a;->m:Z

    if-eqz v3, :cond_224

    :cond_221
    :goto_221
    const/4 v4, 0x0

    goto/16 :goto_75d

    :cond_224
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v3, :cond_72f

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v3, :cond_72f

    iget-boolean v4, v2, Landroidx/constraintlayout/motion/widget/a;->n:Z

    if-nez v4, :cond_72f

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget-boolean v5, v3, Landroidx/constraintlayout/motion/widget/b;->h:Z

    const-wide v7, 0x3f847ae147ae147bL  # 0.01

    const/4 v12, 0x6

    const/high16 v13, 0x40400000  # 3.0f

    if-eqz v5, :cond_512

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_245

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_245
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_501

    const/high16 v18, 0x43b40000  # 360.0f

    const/high16 v19, 0x40000000  # 2.0f

    const/4 v11, 0x1

    if-eq v5, v11, :cond_3bb

    const/4 v11, 0x2

    if-eq v5, v11, :cond_257

    goto/16 :goto_72f

    :cond_257
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v19

    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v19

    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->g:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2ad

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    invoke-virtual {v6, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    const/4 v9, 0x0

    aget v6, v6, v9

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    div-float v9, v9, v19

    add-float/2addr v6, v9

    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v10

    int-to-float v5, v5

    div-float v5, v5, v19

    add-float/2addr v5, v9

    move/from16 v22, v6

    move v6, v5

    move/from16 v5, v22

    goto :goto_2b2

    :cond_2ad
    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3b4

    :goto_2b2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sub-float/2addr v9, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    sub-float/2addr v10, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    sub-float/2addr v11, v6

    float-to-double v11, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    sub-float/2addr v13, v5

    float-to-double v14, v13

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    iget v13, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    sub-float/2addr v13, v6

    float-to-double v13, v13

    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    sub-float/2addr v6, v5

    float-to-double v5, v6

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double v5, v11, v5

    const-wide v13, 0x4066800000000000L  # 180.0

    mul-double/2addr v5, v13

    const-wide v13, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v5, v13

    double-to-float v5, v5

    const/high16 v6, 0x43a50000  # 330.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2f0

    sub-float v5, v5, v18

    goto :goto_2f8

    :cond_2f0
    const/high16 v6, -0x3c5b0000  # -330.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2f8

    add-float v5, v5, v18

    :cond_2f8
    :goto_2f8
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v13, v6

    cmpl-double v6, v13, v7

    if-gtz v6, :cond_305

    iget-boolean v6, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    if-eqz v6, :cond_72f

    :cond_305
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    iget-boolean v7, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    if-nez v7, :cond_318

    const/4 v7, 0x1

    iput-boolean v7, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_319

    :cond_318
    const/4 v7, 0x1

    :goto_319
    iget v8, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    const/4 v13, -0x1

    if-ne v8, v13, :cond_3ad

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    aput v18, v8, v7

    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->t:F

    mul-float/2addr v5, v7

    div-float v5, v5, v18

    add-float/2addr v5, v6

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v8

    cmpl-float v13, v5, v8

    if-eqz v13, :cond_399

    cmpl-float v13, v8, v7

    if-eqz v13, :cond_345

    cmpl-float v6, v8, v6

    if-nez v6, :cond_34d

    :cond_345
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_393

    :cond_34d
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_35b

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_35b
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_364

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    goto :goto_365

    :cond_364
    const/4 v5, 0x0

    :goto_365
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_36e

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    goto :goto_36f

    :cond_36e
    const/4 v4, 0x0

    :goto_36f
    float-to-double v6, v4

    float-to-double v4, v5

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v13

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    sub-double/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v13

    float-to-double v6, v9

    float-to-double v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    const/4 v4, 0x0

    goto :goto_39f

    :cond_393
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    const/4 v4, 0x0

    throw v4

    :cond_399
    const/4 v4, 0x0

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    :goto_39f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    goto/16 :goto_72f

    :cond_3ad
    const/4 v4, 0x0

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    throw v4

    :cond_3b4
    const/4 v4, 0x0

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    throw v4

    :cond_3bb
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    const/16 v5, 0x10

    iget-object v7, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_3c7

    invoke-virtual {v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_3c7
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_3d0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    goto :goto_3d1

    :cond_3d0
    const/4 v5, 0x0

    :goto_3d1
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_3da

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    goto :goto_3db

    :cond_3da
    const/4 v4, 0x0

    :goto_3db
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v7

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v19

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v19

    iget v14, v3, Landroidx/constraintlayout/motion/widget/b;->g:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_432

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    invoke-virtual {v11, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    const/4 v14, 0x0

    aget v11, v11, v14

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v15

    add-int/2addr v15, v14

    int-to-float v14, v15

    div-float v14, v14, v19

    add-float/2addr v11, v14

    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/b;->m:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v15

    int-to-float v8, v8

    div-float v8, v8, v19

    add-float/2addr v8, v14

    const/4 v15, -0x1

    move/from16 v22, v11

    move v11, v8

    move/from16 v8, v22

    goto :goto_437

    :cond_432
    iget v14, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4fa

    :goto_437
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v14

    sub-float/2addr v14, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    sub-float/2addr v8, v11

    float-to-double v9, v8

    move/from16 v17, v7

    float-to-double v6, v14

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    if-ne v9, v15, :cond_4f3

    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    const/4 v10, 0x1

    aput v18, v9, v10

    add-float/2addr v4, v8

    float-to-double v8, v4

    add-float/2addr v5, v14

    float-to-double v4, v5

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    sub-double/2addr v4, v6

    double-to-float v4, v4

    const/high16 v5, 0x427a0000  # 62.5f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_47b

    mul-float v5, v4, v13

    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->t:F

    mul-float/2addr v5, v6

    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    div-float/2addr v5, v6

    add-float v5, v5, v17

    goto :goto_47d

    :cond_47b
    move/from16 v5, v17

    :goto_47d
    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_4df

    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_4df

    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4df

    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->t:F

    mul-float/2addr v4, v7

    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    div-float/2addr v4, v7

    float-to-double v7, v5

    const-wide/high16 v9, 0x3fe0000000000000L  # 0.5

    cmpg-double v5, v7, v9

    if-gez v5, :cond_49f

    const/4 v5, 0x0

    goto :goto_4a1

    :cond_49f
    const/high16 v5, 0x3f800000  # 1.0f

    :goto_4a1
    if-ne v6, v12, :cond_4b0

    add-float v7, v17, v4

    const/4 v5, 0x0

    cmpg-float v6, v7, v5

    if-gez v6, :cond_4ae

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    :cond_4ae
    const/high16 v5, 0x3f800000  # 1.0f

    :cond_4b0
    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_4c3

    add-float v7, v17, v4

    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v6, v7, v5

    if-lez v6, :cond_4c2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    neg-float v4, v4

    :cond_4c2
    const/4 v5, 0x0

    :cond_4c3
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    mul-float/2addr v4, v13

    invoke-virtual {v6, v5, v4, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->h(FFI)V

    const/4 v4, 0x0

    cmpl-float v4, v4, v17

    if-gez v4, :cond_4d6

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v4, v4, v17

    if-gtz v4, :cond_72f

    :cond_4d6
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/16 :goto_72f

    :cond_4df
    const/4 v4, 0x0

    cmpl-float v4, v4, v5

    if-gez v4, :cond_4ea

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_72f

    :cond_4ea
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/16 :goto_72f

    :cond_4f3
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    const/4 v1, 0x0

    throw v1

    :cond_4fa
    const/4 v1, 0x0

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    throw v1

    :cond_501
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    goto/16 :goto_730

    :cond_512
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_519

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_519
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_71f

    const/4 v6, 0x1

    if-eq v5, v6, :cond_64e

    const/4 v6, 0x2

    if-eq v5, v6, :cond_527

    goto/16 :goto_72f

    :cond_527
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    sub-float/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    sub-float/2addr v6, v9

    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->i:F

    mul-float/2addr v9, v6

    iget v10, v3, Landroidx/constraintlayout/motion/widget/b;->j:F

    mul-float/2addr v10, v5

    add-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v3, Landroidx/constraintlayout/motion/widget/b;->v:F

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_54a

    iget-boolean v9, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    if-eqz v9, :cond_72f

    :cond_54a
    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v9

    iget-boolean v10, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    if-nez v10, :cond_55c

    const/4 v10, 0x1

    iput-boolean v10, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_55c
    iget v10, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_647

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/b;->j:F

    mul-float v14, v10, v13

    const/4 v15, 0x1

    aput v14, v11, v15

    iget v15, v3, Landroidx/constraintlayout/motion/widget/b;->i:F

    mul-float/2addr v10, v15

    const/16 v17, 0x0

    aput v10, v11, v17

    mul-float/2addr v15, v10

    mul-float/2addr v13, v14

    add-float/2addr v13, v15

    iget v10, v3, Landroidx/constraintlayout/motion/widget/b;->t:F

    mul-float/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    cmpg-double v7, v10, v7

    const v8, 0x3c23d70a  # 0.01f

    if-gez v7, :cond_59d

    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    const/4 v10, 0x0

    aput v8, v7, v10

    const/4 v11, 0x1

    aput v8, v7, v11

    goto :goto_59f

    :cond_59d
    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_59f
    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->i:F

    const/4 v13, 0x0

    cmpl-float v7, v7, v13

    if-eqz v7, :cond_5ac

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    aget v5, v5, v10

    div-float/2addr v6, v5

    goto :goto_5b2

    :cond_5ac
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    aget v6, v6, v11

    div-float v6, v5, v6

    :goto_5b2
    add-float/2addr v9, v6

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v5, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v5, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    if-ne v5, v12, :cond_5c6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_5c6
    iget v5, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    const/4 v7, 0x7

    if-ne v5, v7, :cond_5d2

    const v5, 0x3f7d70a4  # 0.99f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :cond_5d2
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v5

    cmpl-float v7, v6, v5

    if-eqz v7, :cond_633

    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-eqz v8, :cond_5e7

    const/high16 v7, 0x3f800000  # 1.0f

    cmpl-float v5, v5, v7

    if-nez v5, :cond_5ef

    :cond_5e7
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_62d

    :cond_5ef
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_5fd

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_5fd
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_606

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    goto :goto_607

    :cond_606
    const/4 v5, 0x0

    :goto_607
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_610

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    goto :goto_611

    :cond_610
    const/4 v4, 0x0

    :goto_611
    iget v6, v3, Landroidx/constraintlayout/motion/widget/b;->i:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_61f

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    div-float/2addr v5, v4

    goto :goto_627

    :cond_61f
    const/4 v6, 0x0

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    div-float v5, v4, v5

    :goto_627
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    const/4 v4, 0x0

    goto :goto_639

    :cond_62d
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    const/4 v4, 0x0

    throw v4

    :cond_633
    const/4 v4, 0x0

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    :goto_639
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    goto/16 :goto_72f

    :cond_647
    const/4 v4, 0x0

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    throw v4

    :cond_64e
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_65a

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_65a
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_663

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    goto :goto_664

    :cond_663
    const/4 v5, 0x0

    :goto_664
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_66d

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    goto :goto_66e

    :cond_66d
    const/4 v4, 0x0

    :goto_66e
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_718

    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/b;->l:[F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/b;->j:F

    mul-float/2addr v9, v7

    const/4 v10, 0x1

    aput v9, v8, v10

    iget v10, v3, Landroidx/constraintlayout/motion/widget/b;->i:F

    mul-float/2addr v7, v10

    const/4 v14, 0x0

    aput v7, v8, v14

    const/4 v8, 0x0

    cmpl-float v10, v10, v8

    if-eqz v10, :cond_69f

    div-float/2addr v5, v7

    goto :goto_6a1

    :cond_69f
    div-float v5, v4, v9

    :goto_6a1
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6ab

    div-float v4, v5, v13

    add-float/2addr v4, v6

    goto :goto_6ac

    :cond_6ab
    move v4, v6

    :goto_6ac
    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    if-eqz v8, :cond_705

    const/high16 v7, 0x3f800000  # 1.0f

    cmpl-float v8, v4, v7

    if-eqz v8, :cond_705

    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_705

    float-to-double v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L  # 0.5

    cmpg-double v4, v8, v10

    if-gez v4, :cond_6c5

    const/4 v4, 0x0

    goto :goto_6c7

    :cond_6c5
    const/high16 v4, 0x3f800000  # 1.0f

    :goto_6c7
    if-ne v7, v12, :cond_6d7

    add-float v4, v6, v5

    const/4 v7, 0x0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_6d5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v5, v4

    :cond_6d5
    const/high16 v4, 0x3f800000  # 1.0f

    :cond_6d7
    iget v7, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_6eb

    add-float v4, v6, v5

    const/high16 v7, 0x3f800000  # 1.0f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6ea

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    neg-float v4, v4

    move v5, v4

    :cond_6ea
    const/4 v4, 0x0

    :cond_6eb
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v8, v3, Landroidx/constraintlayout/motion/widget/b;->c:I

    invoke-virtual {v7, v4, v5, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->h(FFI)V

    const/4 v4, 0x0

    cmpl-float v4, v4, v6

    if-gez v4, :cond_6fd

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_72f

    :cond_6fd
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_72f

    :cond_705
    const/4 v5, 0x0

    cmpl-float v5, v5, v4

    if-gez v5, :cond_710

    const/high16 v5, 0x3f800000  # 1.0f

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_72f

    :cond_710
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_72f

    :cond_718
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    const/4 v1, 0x0

    throw v1

    :cond_71f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/b;->n:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/b;->o:F

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/b;->k:Z

    goto :goto_730

    :cond_72f
    :goto_72f
    const/4 v4, 0x0

    :goto_730
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/a;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/a;->s:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_75d

    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    if-eqz v1, :cond_75d

    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_752

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroid/view/VelocityTracker;

    goto :goto_753

    :cond_752
    const/4 v3, 0x0

    :goto_753
    iput-object v3, v2, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_75d

    invoke-virtual {v2, v1, v0}, Landroidx/constraintlayout/motion/widget/a;->a(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    :cond_75d
    :goto_75d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    const/4 v2, 0x4

    iget v3, v1, Landroidx/constraintlayout/motion/widget/a$b;->q:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_769

    const/4 v9, 0x1

    goto :goto_76a

    :cond_769
    move v9, v4

    :goto_76a
    if-eqz v9, :cond_771

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    iget-boolean v1, v1, Landroidx/constraintlayout/motion/widget/b;->k:Z

    return v1

    :cond_771
    const/4 v1, 0x1

    return v1

    :cond_773
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    instance-of v0, p1, Ly/n;

    if-eqz v0, :cond_1f

    check-cast p1, Ly/n;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1f
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public final parseLayoutDescription(I)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    return-void
.end method

.method public final requestLayout()V
    .registers 3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz v0, :cond_22

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v0, :cond_22

    iget v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->p:I

    if-nez v0, :cond_12

    return-void

    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1d

    return-void

    :cond_1d
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    const/4 v0, 0x0

    throw v0

    :cond_22
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setDebugMode(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .registers 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz v0, :cond_19

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/a;->d()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    :cond_19
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .registers 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly/n;

    invoke-virtual {v2, p1}, Ly/n;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setOnShow(F)V
    .registers 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly/n;

    invoke-virtual {v2, p1}, Ly/n;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setProgress(F)V
    .registers 7

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000  # 1.0f

    if-ltz v1, :cond_b

    cmpl-float v3, p1, v2

    if-lez v3, :cond_12

    :cond_b
    const-string v3, "MotionLayout"

    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_23

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    return-void

    :cond_28
    if-gtz v1, :cond_4b

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3b

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-ne v1, v2, :cond_3b

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_3b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_78

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_78

    :cond_4b
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_70

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_60

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    if-ne v0, v1, :cond_60

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_60
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_78

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_78

    :cond_70
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_78
    :goto_78
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v0, :cond_7d

    return-void

    :cond_7d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/a;)V
    .registers 3

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/constraintlayout/motion/widget/a;->p:Z

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz p1, :cond_13

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz p1, :cond_13

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

    :cond_13
    const/4 p1, 0x0

    throw p1
.end method

.method public setStartState(I)V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_11

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    return-void

    :cond_18
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    return-void
.end method

.method public final setState(III)V
    .registers 5

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    if-eqz v0, :cond_16

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p2, p3, p1}, Lz/a;->b(FFI)V

    goto :goto_21

    :cond_16
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz p2, :cond_21

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .registers 6

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_a

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne v1, v2, :cond_17

    if-ne p1, v2, :cond_17

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->c()V

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

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d()V

    goto :goto_39

    :cond_2f
    if-ne p1, v2, :cond_34

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->c()V

    :cond_34
    if-ne p1, v0, :cond_39

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d()V

    :cond_39
    :goto_39
    return-void
.end method

.method public setTransition(I)V
    .registers 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz v0, :cond_5d

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

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

    iget v3, v1, Landroidx/constraintlayout/motion/widget/a$b;->a:I

    if-ne v3, p1, :cond_a

    goto :goto_1d

    :cond_1c
    move-object v1, v2

    :goto_1d
    iget p1, v1, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    iget p1, v1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_41

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez p1, :cond_36

    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    :cond_36
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    return-void

    :cond_41
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iput-object v1, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v0, :cond_4e

    iget-boolean p1, p1, Landroidx/constraintlayout/motion/widget/a;->p:Z

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

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

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iput-object p1, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz p1, :cond_f

    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v1, :cond_f

    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/a;->p:Z

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

    :cond_f
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    const/4 v2, -0x1

    if-nez v1, :cond_1f

    move v1, v2

    goto :goto_21

    :cond_1f
    iget v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    :goto_21
    if-ne v0, v1, :cond_2c

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    goto :goto_33

    :cond_2c
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

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

    :cond_40
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_44
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:J

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-nez v0, :cond_4e

    move v1, v2

    goto :goto_50

    :cond_4e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    :goto_50
    if-nez v0, :cond_53

    goto :goto_55

    :cond_53
    iget v2, v0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    :goto_55
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    if-ne v1, v0, :cond_5e

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-ne v2, v0, :cond_5e

    return-void

    :cond_5e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/motion/widget/a;->l(II)V

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

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v0, :cond_c

    const-string p1, "MotionLayout"

    const-string v0, "MotionScene not defined"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    if-eqz v1, :cond_19

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    goto :goto_1b

    :cond_19
    iput p1, v0, Landroidx/constraintlayout/motion/widget/a;->j:I

    :goto_1b
    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$g;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "motion.progress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    const-string v1, "motion.velocity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    const-string v1, "motion.StartState"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    const-string v1, "motion.EndState"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a()V

    :cond_3b
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    invoke-static {v0, v2}, Ly/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-static {v0, v2}, Ly/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
