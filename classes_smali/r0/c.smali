.class public final Lr0/c;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/c$c;
    }
.end annotation


# static fields
.field public static final x:Lr0/c$a;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:I

.field public l:Landroid/view/VelocityTracker;

.field public m:F

.field public n:F

.field public o:I

.field public final p:I

.field public q:I

.field public r:Landroid/widget/OverScroller;

.field public final s:Lr0/c$c;

.field public t:Landroid/view/View;

.field public u:Z

.field public final v:Landroid/view/ViewGroup;

.field public final w:Lr0/c$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr0/c$a;

    invoke-direct {v0}, Lr0/c$a;-><init>()V

    sput-object v0, Lr0/c;->x:Lr0/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lr0/c$c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lr0/c;->c:I

    new-instance v0, Lr0/c$b;

    invoke-direct {v0, p0}, Lr0/c$b;-><init>(Lr0/c;)V

    iput-object v0, p0, Lr0/c;->w:Lr0/c$b;

    if-eqz p2, :cond_54

    if-eqz p3, :cond_4c

    iput-object p2, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    iput-object p3, p0, Lr0/c;->s:Lr0/c$c;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000  # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Lr0/c;->p:I

    iput p3, p0, Lr0/c;->o:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lr0/c;->b:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lr0/c;->m:F

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lr0/c;->n:F

    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Lr0/c;->x:Lr0/c$a;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    return-void

    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static l(Landroid/view/View;II)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_1d

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_1d

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    if-lt p2, p1, :cond_1d

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    if-ge p2, p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method


# virtual methods
.method public final a()V
    .registers 10

    invoke-virtual {p0}, Lr0/c;->b()V

    iget v0, p0, Lr0/c;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v2, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    iget-object v2, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    iget-object v3, p0, Lr0/c;->s:Lr0/c$c;

    iget-object v4, p0, Lr0/c;->t:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    invoke-virtual/range {v3 .. v8}, Lr0/c$c;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr0/c;->r(I)V

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lr0/c;->c:I

    iget-object v0, p0, Lr0/c;->d:[F

    if-nez v0, :cond_8

    goto :goto_2d

    :cond_8
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lr0/c;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lr0/c;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lr0/c;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lr0/c;->h:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lr0/c;->i:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lr0/c;->j:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Lr0/c;->k:I

    :goto_2d
    iget-object v0, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    :cond_37
    return-void
.end method

.method public final c(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_16

    iput-object p1, p0, Lr0/c;->t:Landroid/view/View;

    iput p2, p0, Lr0/c;->c:I

    iget-object v0, p0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v0, p1, p2}, Lr0/c$c;->onViewCaptured(Landroid/view/View;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr0/c;->r(I)V

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(FFII)Z
    .registers 8

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lr0/c;->h:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_56

    iget v0, p0, Lr0/c;->q:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_56

    iget-object v0, p0, Lr0/c;->j:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_56

    iget-object v0, p0, Lr0/c;->i:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_56

    iget v0, p0, Lr0/c;->b:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_30

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_30

    goto :goto_56

    :cond_30
    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_47

    iget-object p2, p0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {p2, p4}, Lr0/c$c;->onEdgeLock(I)Z

    move-result p2

    if-eqz p2, :cond_47

    iget-object p1, p0, Lr0/c;->j:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    return v1

    :cond_47
    iget-object p2, p0, Lr0/c;->i:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_56

    iget p2, p0, Lr0/c;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_56

    const/4 v1, 0x1

    :cond_56
    :goto_56
    return v1
.end method

.method public final e(Landroid/view/View;FF)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v1, p1}, Lr0/c$c;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    iget-object v3, p0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v3, p1}, Lr0/c$c;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_1a

    move p1, v2

    goto :goto_1b

    :cond_1a
    move p1, v0

    :goto_1b
    if-eqz v1, :cond_2c

    if-eqz p1, :cond_2c

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p3, p2

    iget p1, p0, Lr0/c;->b:I

    mul-int/2addr p1, p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_2b

    move v0, v2

    :cond_2b
    return v0

    :cond_2c
    if-eqz v1, :cond_3b

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lr0/c;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3a

    move v0, v2

    :cond_3a
    return v0

    :cond_3b
    if-eqz p1, :cond_49

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lr0/c;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_49

    move v0, v2

    :cond_49
    return v0
.end method

.method public final f(I)V
    .registers 8

    iget-object v0, p0, Lr0/c;->d:[F

    if-eqz v0, :cond_32

    iget v1, p0, Lr0/c;->k:I

    const/4 v2, 0x1

    shl-int v3, v2, p1

    and-int v4, v3, v1

    const/4 v5, 0x0

    if-eqz v4, :cond_f

    goto :goto_10

    :cond_f
    move v2, v5

    :goto_10
    if-nez v2, :cond_13

    goto :goto_32

    :cond_13
    const/4 v2, 0x0

    aput v2, v0, p1

    iget-object v0, p0, Lr0/c;->e:[F

    aput v2, v0, p1

    iget-object v0, p0, Lr0/c;->f:[F

    aput v2, v0, p1

    iget-object v0, p0, Lr0/c;->g:[F

    aput v2, v0, p1

    iget-object v0, p0, Lr0/c;->h:[I

    aput v5, v0, p1

    iget-object v0, p0, Lr0/c;->i:[I

    aput v5, v0, p1

    iget-object v0, p0, Lr0/c;->j:[I

    aput v5, v0, p1

    not-int p1, v3

    and-int/2addr p1, v1

    iput p1, p0, Lr0/c;->k:I

    :cond_32
    :goto_32
    return-void
.end method

.method public final g(III)I
    .registers 8

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object v0, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    const/high16 v3, 0x3f000000  # 0.5f

    sub-float/2addr v2, v3

    const v3, 0x3ef1463b

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_3f

    const/high16 p1, 0x447a0000  # 1000.0f

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_4b

    :cond_3f
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000  # 256.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_4b
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final h()Z
    .registers 12

    iget v0, p0, Lr0/c;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_68

    iget-object v0, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    iget-object v3, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    iget-object v4, p0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    iget-object v4, p0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_31

    iget-object v4, p0, Lr0/c;->t:Landroid/view/View;

    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_31
    if-eqz v9, :cond_3a

    iget-object v4, p0, Lr0/c;->t:Landroid/view/View;

    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3a
    if-nez v8, :cond_3e

    if-eqz v9, :cond_47

    :cond_3e
    iget-object v4, p0, Lr0/c;->s:Lr0/c$c;

    iget-object v5, p0, Lr0/c;->t:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Lr0/c$c;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_47
    if-eqz v0, :cond_5f

    iget-object v4, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_5f

    iget-object v3, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_5f

    iget-object v0, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    move v0, v2

    :cond_5f
    if-nez v0, :cond_68

    iget-object v0, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    iget-object v3, p0, Lr0/c;->w:Lr0/c$b;

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_68
    iget v0, p0, Lr0/c;->a:I

    if-ne v0, v1, :cond_6d

    const/4 v2, 0x1

    :cond_6d
    return v2
.end method

.method public final i(II)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_32

    iget-object v1, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    iget-object v2, p0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v2, v0}, Lr0/c$c;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_2f

    return-object v1

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(IIII)Z
    .registers 14

    iget-object v0, p0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v4, p1, v2

    sub-int v5, p2, v3

    const/4 p1, 0x0

    if-nez v4, :cond_1e

    if-nez v5, :cond_1e

    iget-object p2, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {p0, p1}, Lr0/c;->r(I)V

    return p1

    :cond_1e
    iget-object p2, p0, Lr0/c;->t:Landroid/view/View;

    iget v0, p0, Lr0/c;->n:F

    float-to-int v0, v0

    iget v1, p0, Lr0/c;->m:F

    float-to-int v1, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v0, :cond_2e

    move p3, p1

    goto :goto_35

    :cond_2e
    if-le v6, v1, :cond_35

    if-lez p3, :cond_34

    move p3, v1

    goto :goto_35

    :cond_34
    neg-int p3, v1

    :cond_35
    :goto_35
    iget v0, p0, Lr0/c;->n:F

    float-to-int v0, v0

    iget v1, p0, Lr0/c;->m:F

    float-to-int v1, v1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v0, :cond_42

    goto :goto_49

    :cond_42
    if-le v6, v1, :cond_4a

    if-lez p4, :cond_48

    move p4, v1

    goto :goto_4a

    :cond_48
    neg-int p1, v1

    :goto_49
    move p4, p1

    :cond_4a
    :goto_4a
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int v7, v1, v6

    add-int v8, p1, v0

    if-eqz p3, :cond_63

    int-to-float p1, v1

    int-to-float v1, v7

    goto :goto_65

    :cond_63
    int-to-float p1, p1

    int-to-float v1, v8

    :goto_65
    div-float/2addr p1, v1

    if-eqz p4, :cond_6b

    int-to-float v0, v6

    int-to-float v1, v7

    goto :goto_6d

    :cond_6b
    int-to-float v0, v0

    int-to-float v1, v8

    :goto_6d
    div-float/2addr v0, v1

    iget-object v1, p0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v1, p2}, Lr0/c$c;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v4, p3, v1}, Lr0/c;->g(III)I

    move-result p3

    iget-object v1, p0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v1, p2}, Lr0/c$c;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, v5, p4, p2}, Lr0/c;->g(III)I

    move-result p2

    int-to-float p3, p3

    mul-float/2addr p3, p1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    add-float/2addr p1, p3

    float-to-int v6, p1

    iget-object v1, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lr0/c;->r(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final k(I)Z
    .registers 5

    iget v0, p0, Lr0/c;->k:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewDragHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2a
    return v1
.end method

.method public final m(Landroid/view/MotionEvent;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lr0/c;->b()V

    :cond_11
    iget-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    :cond_1b
    iget-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x0

    if-eqz v2, :cond_1a4

    const/4 v5, 0x1

    if-eq v2, v5, :cond_199

    const/4 v6, 0x2

    if-eq v2, v6, :cond_d2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_b6

    const/4 v6, 0x5

    if-eq v2, v6, :cond_79

    const/4 v6, 0x6

    if-eq v2, v6, :cond_34

    goto/16 :goto_1ca

    :cond_34
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, v0, Lr0/c;->a:I

    if-ne v3, v5, :cond_74

    iget v3, v0, Lr0/c;->c:I

    if-ne v2, v3, :cond_74

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    :goto_44
    const/4 v5, -0x1

    if-ge v4, v3, :cond_6e

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, v0, Lr0/c;->c:I

    if-ne v6, v7, :cond_50

    goto :goto_6b

    :cond_50
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v7

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Lr0/c;->i(II)Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Lr0/c;->t:Landroid/view/View;

    if-ne v7, v8, :cond_6b

    invoke-virtual {v0, v8, v6}, Lr0/c;->u(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_6b

    iget v1, v0, Lr0/c;->c:I

    goto :goto_6f

    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_6e
    move v1, v5

    :goto_6f
    if-ne v1, v5, :cond_74

    invoke-virtual/range {p0 .. p0}, Lr0/c;->n()V

    :cond_74
    invoke-virtual {v0, v2}, Lr0/c;->f(I)V

    goto/16 :goto_1ca

    :cond_79
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {v0, v4, v1, v2}, Lr0/c;->p(FFI)V

    iget v3, v0, Lr0/c;->a:I

    if-nez v3, :cond_a5

    float-to-int v3, v4

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Lr0/c;->i(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lr0/c;->u(Landroid/view/View;I)Z

    iget-object v1, v0, Lr0/c;->h:[I

    aget v1, v1, v2

    iget v3, v0, Lr0/c;->q:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1ca

    iget-object v3, v0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v3, v1, v2}, Lr0/c$c;->onEdgeTouched(II)V

    goto/16 :goto_1ca

    :cond_a5
    float-to-int v3, v4

    float-to-int v1, v1

    iget-object v4, v0, Lr0/c;->t:Landroid/view/View;

    invoke-static {v4, v3, v1}, Lr0/c;->l(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_1ca

    iget-object v1, v0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lr0/c;->u(Landroid/view/View;I)Z

    goto/16 :goto_1ca

    :cond_b6
    iget v1, v0, Lr0/c;->a:I

    if-ne v1, v5, :cond_cd

    const/4 v1, 0x0

    iput-boolean v5, v0, Lr0/c;->u:Z

    iget-object v2, v0, Lr0/c;->s:Lr0/c$c;

    iget-object v3, v0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v2, v3, v1, v1}, Lr0/c$c;->onViewReleased(Landroid/view/View;FF)V

    iput-boolean v4, v0, Lr0/c;->u:Z

    iget v1, v0, Lr0/c;->a:I

    if-ne v1, v5, :cond_cd

    invoke-virtual {v0, v4}, Lr0/c;->r(I)V

    :cond_cd
    invoke-virtual/range {p0 .. p0}, Lr0/c;->b()V

    goto/16 :goto_1ca

    :cond_d2
    iget v2, v0, Lr0/c;->a:I

    if-ne v2, v5, :cond_152

    iget v2, v0, Lr0/c;->c:I

    invoke-virtual {v0, v2}, Lr0/c;->k(I)Z

    move-result v2

    if-nez v2, :cond_e0

    goto/16 :goto_1ca

    :cond_e0
    iget v2, v0, Lr0/c;->c:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v4, v0, Lr0/c;->f:[F

    iget v5, v0, Lr0/c;->c:I

    aget v4, v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v0, Lr0/c;->g:[F

    aget v4, v4, v5

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, v0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, v0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, v0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, v0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-eqz v3, :cond_129

    iget-object v8, v0, Lr0/c;->s:Lr0/c$c;

    iget-object v9, v0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v8, v9, v4, v3}, Lr0/c$c;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v4

    iget-object v8, v0, Lr0/c;->t:Landroid/view/View;

    sub-int v9, v4, v6

    sget-object v10, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v8, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_129
    move v13, v4

    if-eqz v2, :cond_13d

    iget-object v4, v0, Lr0/c;->s:Lr0/c$c;

    iget-object v8, v0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v4, v8, v5, v2}, Lr0/c$c;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v5

    iget-object v4, v0, Lr0/c;->t:Landroid/view/View;

    sub-int v8, v5, v7

    sget-object v9, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_13d
    move v14, v5

    if-nez v3, :cond_142

    if-eqz v2, :cond_14d

    :cond_142
    sub-int v15, v13, v6

    sub-int v16, v14, v7

    iget-object v11, v0, Lr0/c;->s:Lr0/c$c;

    iget-object v12, v0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual/range {v11 .. v16}, Lr0/c$c;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_14d
    invoke-virtual/range {p0 .. p1}, Lr0/c;->q(Landroid/view/MotionEvent;)V

    goto/16 :goto_1ca

    :cond_152
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    :goto_156
    if-ge v4, v2, :cond_195

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lr0/c;->k(I)Z

    move-result v6

    if-nez v6, :cond_163

    goto :goto_192

    :cond_163
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iget-object v8, v0, Lr0/c;->d:[F

    aget v8, v8, v3

    sub-float v8, v6, v8

    iget-object v9, v0, Lr0/c;->e:[F

    aget v9, v9, v3

    sub-float v9, v7, v9

    invoke-virtual {v0, v8, v9, v3}, Lr0/c;->o(FFI)V

    iget v10, v0, Lr0/c;->a:I

    if-ne v10, v5, :cond_17f

    goto :goto_195

    :cond_17f
    float-to-int v6, v6

    float-to-int v7, v7

    invoke-virtual {v0, v6, v7}, Lr0/c;->i(II)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6, v8, v9}, Lr0/c;->e(Landroid/view/View;FF)Z

    move-result v7

    if-eqz v7, :cond_192

    invoke-virtual {v0, v6, v3}, Lr0/c;->u(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_192

    goto :goto_195

    :cond_192
    :goto_192
    add-int/lit8 v4, v4, 0x1

    goto :goto_156

    :cond_195
    :goto_195
    invoke-virtual/range {p0 .. p1}, Lr0/c;->q(Landroid/view/MotionEvent;)V

    goto :goto_1ca

    :cond_199
    iget v1, v0, Lr0/c;->a:I

    if-ne v1, v5, :cond_1a0

    invoke-virtual/range {p0 .. p0}, Lr0/c;->n()V

    :cond_1a0
    invoke-virtual/range {p0 .. p0}, Lr0/c;->b()V

    goto :goto_1ca

    :cond_1a4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    float-to-int v4, v2

    float-to-int v5, v3

    invoke-virtual {v0, v4, v5}, Lr0/c;->i(II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1}, Lr0/c;->p(FFI)V

    invoke-virtual {v0, v4, v1}, Lr0/c;->u(Landroid/view/View;I)Z

    iget-object v2, v0, Lr0/c;->h:[I

    aget v2, v2, v1

    iget v3, v0, Lr0/c;->q:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1ca

    iget-object v3, v0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v3, v2, v1}, Lr0/c$c;->onEdgeTouched(II)V

    :cond_1ca
    :goto_1ca
    return-void
.end method

.method public final n()V
    .registers 7

    iget-object v0, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lr0/c;->m:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lr0/c;->c:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Lr0/c;->n:F

    iget v2, p0, Lr0/c;->m:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v1, v3, v1

    const/4 v4, 0x0

    if-gez v1, :cond_20

    move v0, v4

    goto :goto_2b

    :cond_20
    cmpl-float v1, v3, v2

    if-lez v1, :cond_2b

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2a

    move v0, v2

    goto :goto_2b

    :cond_2a
    neg-float v0, v2

    :cond_2b
    :goto_2b
    iget-object v1, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Lr0/c;->c:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Lr0/c;->n:F

    iget v3, p0, Lr0/c;->m:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v2, v5, v2

    if-gez v2, :cond_40

    goto :goto_4c

    :cond_40
    cmpl-float v2, v5, v3

    if-lez v2, :cond_4b

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4a

    move v4, v3

    goto :goto_4c

    :cond_4a
    neg-float v1, v3

    :cond_4b
    move v4, v1

    :goto_4c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lr0/c;->u:Z

    iget-object v2, p0, Lr0/c;->s:Lr0/c$c;

    iget-object v3, p0, Lr0/c;->t:Landroid/view/View;

    invoke-virtual {v2, v3, v0, v4}, Lr0/c$c;->onViewReleased(Landroid/view/View;FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/c;->u:Z

    iget v2, p0, Lr0/c;->a:I

    if-ne v2, v1, :cond_60

    invoke-virtual {p0, v0}, Lr0/c;->r(I)V

    :cond_60
    return-void
.end method

.method public final o(FFI)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lr0/c;->d(FFII)Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, p2, p1, p3, v1}, Lr0/c;->d(FFII)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit8 v0, v0, 0x4

    :cond_e
    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, p3, v1}, Lr0/c;->d(FFII)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x2

    :cond_17
    const/16 v1, 0x8

    invoke-virtual {p0, p2, p1, p3, v1}, Lr0/c;->d(FFII)Z

    move-result p1

    if-eqz p1, :cond_21

    or-int/lit8 v0, v0, 0x8

    :cond_21
    if-eqz v0, :cond_2f

    iget-object p1, p0, Lr0/c;->i:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    iget-object p1, p0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {p1, v0, p3}, Lr0/c$c;->onEdgeDragStarted(II)V

    :cond_2f
    return-void
.end method

.method public final p(FFI)V
    .registers 14

    iget-object v0, p0, Lr0/c;->d:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    array-length v2, v0

    if-gt v2, p3, :cond_50

    :cond_8
    add-int/lit8 v2, p3, 0x1

    new-array v3, v2, [F

    new-array v4, v2, [F

    new-array v5, v2, [F

    new-array v6, v2, [F

    new-array v7, v2, [I

    new-array v8, v2, [I

    new-array v2, v2, [I

    if-eqz v0, :cond_42

    array-length v9, v0

    invoke-static {v0, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lr0/c;->e:[F

    array-length v9, v0

    invoke-static {v0, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lr0/c;->f:[F

    array-length v9, v0

    invoke-static {v0, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lr0/c;->g:[F

    array-length v9, v0

    invoke-static {v0, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lr0/c;->h:[I

    array-length v9, v0

    invoke-static {v0, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lr0/c;->i:[I

    array-length v9, v0

    invoke-static {v0, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lr0/c;->j:[I

    array-length v9, v0

    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_42
    iput-object v3, p0, Lr0/c;->d:[F

    iput-object v4, p0, Lr0/c;->e:[F

    iput-object v5, p0, Lr0/c;->f:[F

    iput-object v6, p0, Lr0/c;->g:[F

    iput-object v7, p0, Lr0/c;->h:[I

    iput-object v8, p0, Lr0/c;->i:[I

    iput-object v2, p0, Lr0/c;->j:[I

    :cond_50
    iget-object v0, p0, Lr0/c;->d:[F

    iget-object v2, p0, Lr0/c;->f:[F

    aput p1, v2, p3

    aput p1, v0, p3

    iget-object v0, p0, Lr0/c;->e:[F

    iget-object v2, p0, Lr0/c;->g:[F

    aput p2, v2, p3

    aput p2, v0, p3

    iget-object v0, p0, Lr0/c;->h:[I

    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v2, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lr0/c;->o:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-ge p1, v2, :cond_71

    move v1, v3

    :cond_71
    iget-object v2, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v4, p0, Lr0/c;->o:I

    add-int/2addr v2, v4

    if-ge p2, v2, :cond_7e

    or-int/lit8 v1, v1, 0x4

    :cond_7e
    iget-object v2, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v4, p0, Lr0/c;->o:I

    sub-int/2addr v2, v4

    if-le p1, v2, :cond_8b

    or-int/lit8 v1, v1, 0x2

    :cond_8b
    iget-object p1, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v2, p0, Lr0/c;->o:I

    sub-int/2addr p1, v2

    if-le p2, p1, :cond_98

    or-int/lit8 v1, v1, 0x8

    :cond_98
    aput v1, v0, p3

    iget p1, p0, Lr0/c;->k:I

    shl-int p2, v3, p3

    or-int/2addr p1, p2

    iput p1, p0, Lr0/c;->k:I

    return-void
.end method

.method public final q(Landroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_25

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lr0/c;->k(I)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_22

    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lr0/c;->f:[F

    aput v3, v5, v2

    iget-object v3, p0, Lr0/c;->g:[F

    aput v4, v3, v2

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_25
    return-void
.end method

.method public final r(I)V
    .registers 4

    iget-object v0, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    iget-object v1, p0, Lr0/c;->w:Lr0/c$b;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Lr0/c;->a:I

    if-eq v0, p1, :cond_19

    iput p1, p0, Lr0/c;->a:I

    iget-object v0, p0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v0, p1}, Lr0/c$c;->onViewDragStateChanged(I)V

    iget p1, p0, Lr0/c;->a:I

    if-nez p1, :cond_19

    const/4 p1, 0x0

    iput-object p1, p0, Lr0/c;->t:Landroid/view/View;

    :cond_19
    return-void
.end method

.method public final s(II)Z
    .registers 6

    iget-boolean v0, p0, Lr0/c;->u:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lr0/c;->c:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Lr0/c;->c:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lr0/c;->j(IIII)Z

    move-result p1

    return p1

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(Landroid/view/MotionEvent;)Z
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lr0/c;->b()V

    :cond_11
    iget-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    :cond_1b
    iget-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_104

    if-eq v2, v5, :cond_ff

    if-eq v2, v4, :cond_70

    const/4 v7, 0x3

    if-eq v2, v7, :cond_ff

    const/4 v7, 0x5

    if-eq v2, v7, :cond_3c

    const/4 v4, 0x6

    if-eq v2, v4, :cond_33

    goto/16 :goto_102

    :cond_33
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lr0/c;->f(I)V

    goto/16 :goto_102

    :cond_3c
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {v0, v7, v1, v2}, Lr0/c;->p(FFI)V

    iget v3, v0, Lr0/c;->a:I

    if-nez v3, :cond_5f

    iget-object v1, v0, Lr0/c;->h:[I

    aget v1, v1, v2

    iget v3, v0, Lr0/c;->q:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_102

    iget-object v3, v0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v3, v1, v2}, Lr0/c$c;->onEdgeTouched(II)V

    goto/16 :goto_102

    :cond_5f
    if-ne v3, v4, :cond_102

    float-to-int v3, v7

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Lr0/c;->i(II)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lr0/c;->t:Landroid/view/View;

    if-ne v1, v3, :cond_102

    invoke-virtual {v0, v1, v2}, Lr0/c;->u(Landroid/view/View;I)Z

    goto/16 :goto_102

    :cond_70
    iget-object v2, v0, Lr0/c;->d:[F

    if-eqz v2, :cond_102

    iget-object v2, v0, Lr0/c;->e:[F

    if-nez v2, :cond_7a

    goto/16 :goto_102

    :cond_7a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_7f
    if-ge v3, v2, :cond_fb

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lr0/c;->k(I)Z

    move-result v7

    if-nez v7, :cond_8d

    goto/16 :goto_f8

    :cond_8d
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, v0, Lr0/c;->d:[F

    aget v9, v9, v4

    sub-float v9, v7, v9

    iget-object v10, v0, Lr0/c;->e:[F

    aget v10, v10, v4

    sub-float v10, v8, v10

    float-to-int v7, v7

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Lr0/c;->i(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_b1

    invoke-virtual {v0, v7, v9, v10}, Lr0/c;->e(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_b1

    move v8, v5

    goto :goto_b2

    :cond_b1
    const/4 v8, 0x0

    :goto_b2
    if-eqz v8, :cond_e7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    float-to-int v12, v9

    add-int v13, v11, v12

    iget-object v14, v0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v14, v7, v13, v12}, Lr0/c$c;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    float-to-int v14, v10

    add-int v15, v13, v14

    iget-object v6, v0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v6, v7, v15, v14}, Lr0/c$c;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v6

    iget-object v14, v0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v14, v7}, Lr0/c$c;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v14

    iget-object v15, v0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v15, v7}, Lr0/c$c;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v15

    if-eqz v14, :cond_e0

    if-lez v14, :cond_e7

    if-ne v12, v11, :cond_e7

    :cond_e0
    if-eqz v15, :cond_fb

    if-lez v15, :cond_e7

    if-ne v6, v13, :cond_e7

    goto :goto_fb

    :cond_e7
    invoke-virtual {v0, v9, v10, v4}, Lr0/c;->o(FFI)V

    iget v6, v0, Lr0/c;->a:I

    if-ne v6, v5, :cond_ef

    goto :goto_fb

    :cond_ef
    if-eqz v8, :cond_f8

    invoke-virtual {v0, v7, v4}, Lr0/c;->u(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_f8

    goto :goto_fb

    :cond_f8
    :goto_f8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_fb
    :goto_fb
    invoke-virtual/range {p0 .. p1}, Lr0/c;->q(Landroid/view/MotionEvent;)V

    goto :goto_102

    :cond_ff
    invoke-virtual/range {p0 .. p0}, Lr0/c;->b()V

    :cond_102
    :goto_102
    const/4 v6, 0x0

    goto :goto_133

    :cond_104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lr0/c;->p(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lr0/c;->i(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lr0/c;->t:Landroid/view/View;

    if-ne v2, v3, :cond_125

    iget v3, v0, Lr0/c;->a:I

    if-ne v3, v4, :cond_125

    invoke-virtual {v0, v2, v1}, Lr0/c;->u(Landroid/view/View;I)Z

    :cond_125
    iget-object v2, v0, Lr0/c;->h:[I

    aget v2, v2, v1

    iget v3, v0, Lr0/c;->q:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_133

    iget-object v3, v0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v3, v2, v1}, Lr0/c$c;->onEdgeTouched(II)V

    :cond_133
    :goto_133
    iget v1, v0, Lr0/c;->a:I

    if-ne v1, v5, :cond_138

    goto :goto_139

    :cond_138
    move v5, v6

    :goto_139
    return v5
.end method

.method public final u(Landroid/view/View;I)Z
    .registers 5

    iget-object v0, p0, Lr0/c;->t:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    iget v0, p0, Lr0/c;->c:I

    if-ne v0, p2, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_1a

    iget-object v0, p0, Lr0/c;->s:Lr0/c$c;

    invoke-virtual {v0, p1, p2}, Lr0/c$c;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput p2, p0, Lr0/c;->c:I

    invoke-virtual {p0, p1, p2}, Lr0/c;->c(Landroid/view/View;I)V

    return v1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method
