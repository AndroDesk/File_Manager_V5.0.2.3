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

    .line 1
    new-instance v0, Lr0/c$a;

    .line 3
    invoke-direct {v0}, Lr0/c$a;-><init>()V

    .line 6
    sput-object v0, Lr0/c;->x:Lr0/c$a;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lr0/c$c;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lr0/c;->c:I

    .line 7
    new-instance v0, Lr0/c$b;

    .line 9
    invoke-direct {v0, p0}, Lr0/c$b;-><init>(Lr0/c;)V

    .line 12
    iput-object v0, p0, Lr0/c;->w:Lr0/c$b;

    .line 14
    if-eqz p2, :cond_54

    .line 16
    if-eqz p3, :cond_4c

    .line 18
    iput-object p2, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 20
    iput-object p3, p0, Lr0/c;->s:Lr0/c$c;

    .line 22
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 33
    move-result-object p3

    .line 34
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 36
    const/high16 v0, 0x41a00000  # 20.0f

    .line 38
    mul-float/2addr p3, v0

    .line 39
    const/high16 v0, 0x3f000000  # 0.5f

    .line 41
    add-float/2addr p3, v0

    .line 42
    float-to-int p3, p3

    .line 43
    iput p3, p0, Lr0/c;->p:I

    .line 45
    iput p3, p0, Lr0/c;->o:I

    .line 47
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 50
    move-result p3

    .line 51
    iput p3, p0, Lr0/c;->b:I

    .line 53
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 56
    move-result p3

    .line 57
    int-to-float p3, p3

    .line 58
    iput p3, p0, Lr0/c;->m:F

    .line 60
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 63
    move-result p2

    .line 64
    int-to-float p2, p2

    .line 65
    iput p2, p0, Lr0/c;->n:F

    .line 67
    new-instance p2, Landroid/widget/OverScroller;

    .line 69
    sget-object p3, Lr0/c;->x:Lr0/c$a;

    .line 71
    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 74
    iput-object p2, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 76
    return-void

    .line 77
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    const-string p2, "Callback may not be null"

    .line 81
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p1

    .line 85
    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 87
    const-string p2, "Parent view may not be null"

    .line 89
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p1
.end method

.method public static l(Landroid/view/View;II)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 8
    move-result v1

    .line 9
    if-lt p1, v1, :cond_1d

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 14
    move-result v1

    .line 15
    if-ge p1, v1, :cond_1d

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 20
    move-result p1

    .line 21
    if-lt p2, p1, :cond_1d

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 26
    move-result p0

    .line 27
    if-ge p2, p0, :cond_1d

    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_1d
    return v0
.end method


# virtual methods
.method public final a()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lr0/c;->b()V

    .line 4
    iget v0, p0, Lr0/c;->a:I

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_30

    .line 9
    iget-object v0, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 11
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 17
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 23
    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 26
    iget-object v2, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 28
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    .line 31
    move-result v5

    .line 32
    iget-object v2, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 34
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    .line 37
    move-result v6

    .line 38
    iget-object v3, p0, Lr0/c;->s:Lr0/c$c;

    .line 40
    iget-object v4, p0, Lr0/c;->t:Landroid/view/View;

    .line 42
    sub-int v7, v5, v0

    .line 44
    sub-int v8, v6, v1

    .line 46
    invoke-virtual/range {v3 .. v8}, Lr0/c$c;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 49
    :cond_30
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lr0/c;->r(I)V

    .line 53
    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lr0/c;->c:I

    .line 4
    iget-object v0, p0, Lr0/c;->d:[F

    .line 6
    if-nez v0, :cond_8

    .line 8
    goto :goto_2d

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 13
    iget-object v0, p0, Lr0/c;->e:[F

    .line 15
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 18
    iget-object v0, p0, Lr0/c;->f:[F

    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 23
    iget-object v0, p0, Lr0/c;->g:[F

    .line 25
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 28
    iget-object v0, p0, Lr0/c;->h:[I

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 34
    iget-object v0, p0, Lr0/c;->i:[I

    .line 36
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 39
    iget-object v0, p0, Lr0/c;->j:[I

    .line 41
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 44
    iput v1, p0, Lr0/c;->k:I

    .line 46
    :goto_2d
    iget-object v0, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 48
    if-eqz v0, :cond_37

    .line 50
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 53
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 56
    :cond_37
    return-void
.end method

.method public final c(Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 7
    if-ne v0, v1, :cond_16

    .line 9
    iput-object p1, p0, Lr0/c;->t:Landroid/view/View;

    .line 11
    iput p2, p0, Lr0/c;->c:I

    .line 13
    iget-object v0, p0, Lr0/c;->s:Lr0/c$c;

    .line 15
    invoke-virtual {v0, p1, p2}, Lr0/c$c;->onViewCaptured(Landroid/view/View;I)V

    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lr0/c;->r(I)V

    .line 22
    return-void

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string p2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    .line 27
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p2

    .line 31
    iget-object v0, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, ")"

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1
.end method

.method public final d(FFII)Z
    .registers 8

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 8
    move-result p2

    .line 9
    iget-object v0, p0, Lr0/c;->h:[I

    .line 11
    aget v0, v0, p3

    .line 13
    and-int/2addr v0, p4

    .line 14
    const/4 v1, 0x0

    .line 15
    if-ne v0, p4, :cond_56

    .line 17
    iget v0, p0, Lr0/c;->q:I

    .line 19
    and-int/2addr v0, p4

    .line 20
    if-eqz v0, :cond_56

    .line 22
    iget-object v0, p0, Lr0/c;->j:[I

    .line 24
    aget v0, v0, p3

    .line 26
    and-int/2addr v0, p4

    .line 27
    if-eq v0, p4, :cond_56

    .line 29
    iget-object v0, p0, Lr0/c;->i:[I

    .line 31
    aget v0, v0, p3

    .line 33
    and-int/2addr v0, p4

    .line 34
    if-eq v0, p4, :cond_56

    .line 36
    iget v0, p0, Lr0/c;->b:I

    .line 38
    int-to-float v2, v0

    .line 39
    cmpg-float v2, p1, v2

    .line 41
    if-gtz v2, :cond_30

    .line 43
    int-to-float v0, v0

    .line 44
    cmpg-float v0, p2, v0

    .line 46
    if-gtz v0, :cond_30

    .line 48
    goto :goto_56

    .line 49
    :cond_30
    const/high16 v0, 0x3f000000  # 0.5f

    .line 51
    mul-float/2addr p2, v0

    .line 52
    cmpg-float p2, p1, p2

    .line 54
    if-gez p2, :cond_47

    .line 56
    iget-object p2, p0, Lr0/c;->s:Lr0/c$c;

    .line 58
    invoke-virtual {p2, p4}, Lr0/c$c;->onEdgeLock(I)Z

    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_47

    .line 64
    iget-object p1, p0, Lr0/c;->j:[I

    .line 66
    aget p2, p1, p3

    .line 68
    or-int/2addr p2, p4

    .line 69
    aput p2, p1, p3

    .line 71
    return v1

    .line 72
    :cond_47
    iget-object p2, p0, Lr0/c;->i:[I

    .line 74
    aget p2, p2, p3

    .line 76
    and-int/2addr p2, p4

    .line 77
    if-nez p2, :cond_56

    .line 79
    iget p2, p0, Lr0/c;->b:I

    .line 81
    int-to-float p2, p2

    .line 82
    cmpl-float p1, p1, p2

    .line 84
    if-lez p1, :cond_56

    .line 86
    const/4 v1, 0x1

    .line 87
    :cond_56
    :goto_56
    return v1
.end method

.method public final e(Landroid/view/View;FF)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    iget-object v1, p0, Lr0/c;->s:Lr0/c$c;

    .line 7
    invoke-virtual {v1, p1}, Lr0/c$c;->getViewHorizontalDragRange(Landroid/view/View;)I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-lez v1, :cond_f

    .line 14
    move v1, v2

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v1, v0

    .line 17
    :goto_10
    iget-object v3, p0, Lr0/c;->s:Lr0/c$c;

    .line 19
    invoke-virtual {v3, p1}, Lr0/c$c;->getViewVerticalDragRange(Landroid/view/View;)I

    .line 22
    move-result p1

    .line 23
    if-lez p1, :cond_1a

    .line 25
    move p1, v2

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move p1, v0

    .line 28
    :goto_1b
    if-eqz v1, :cond_2c

    .line 30
    if-eqz p1, :cond_2c

    .line 32
    mul-float/2addr p2, p2

    .line 33
    mul-float/2addr p3, p3

    .line 34
    add-float/2addr p3, p2

    .line 35
    iget p1, p0, Lr0/c;->b:I

    .line 37
    mul-int/2addr p1, p1

    .line 38
    int-to-float p1, p1

    .line 39
    cmpl-float p1, p3, p1

    .line 41
    if-lez p1, :cond_2b

    .line 43
    move v0, v2

    .line 44
    :cond_2b
    return v0

    .line 45
    :cond_2c
    if-eqz v1, :cond_3b

    .line 47
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 50
    move-result p1

    .line 51
    iget p2, p0, Lr0/c;->b:I

    .line 53
    int-to-float p2, p2

    .line 54
    cmpl-float p1, p1, p2

    .line 56
    if-lez p1, :cond_3a

    .line 58
    move v0, v2

    .line 59
    :cond_3a
    return v0

    .line 60
    :cond_3b
    if-eqz p1, :cond_49

    .line 62
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 65
    move-result p1

    .line 66
    iget p2, p0, Lr0/c;->b:I

    .line 68
    int-to-float p2, p2

    .line 69
    cmpl-float p1, p1, p2

    .line 71
    if-lez p1, :cond_49

    .line 73
    move v0, v2

    .line 74
    :cond_49
    return v0
.end method

.method public final f(I)V
    .registers 8

    .line 1
    iget-object v0, p0, Lr0/c;->d:[F

    .line 3
    if-eqz v0, :cond_32

    .line 5
    iget v1, p0, Lr0/c;->k:I

    .line 7
    const/4 v2, 0x1

    .line 8
    shl-int v3, v2, p1

    .line 10
    and-int v4, v3, v1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v4, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v2, v5

    .line 17
    :goto_10
    if-nez v2, :cond_13

    .line 19
    goto :goto_32

    .line 20
    :cond_13
    const/4 v2, 0x0

    .line 21
    aput v2, v0, p1

    .line 23
    iget-object v0, p0, Lr0/c;->e:[F

    .line 25
    aput v2, v0, p1

    .line 27
    iget-object v0, p0, Lr0/c;->f:[F

    .line 29
    aput v2, v0, p1

    .line 31
    iget-object v0, p0, Lr0/c;->g:[F

    .line 33
    aput v2, v0, p1

    .line 35
    iget-object v0, p0, Lr0/c;->h:[I

    .line 37
    aput v5, v0, p1

    .line 39
    iget-object v0, p0, Lr0/c;->i:[I

    .line 41
    aput v5, v0, p1

    .line 43
    iget-object v0, p0, Lr0/c;->j:[I

    .line 45
    aput v5, v0, p1

    .line 47
    not-int p1, v3

    .line 48
    and-int/2addr p1, v1

    .line 49
    iput p1, p0, Lr0/c;->k:I

    .line 51
    :cond_32
    :goto_32
    return-void
.end method

.method public final g(III)I
    .registers 8

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_4
    iget-object v0, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v0

    .line 11
    div-int/lit8 v1, v0, 0x2

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr v2, v0

    .line 20
    const/high16 v0, 0x3f800000  # 1.0f

    .line 22
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 25
    move-result v2

    .line 26
    int-to-float v1, v1

    .line 27
    const/high16 v3, 0x3f000000  # 0.5f

    .line 29
    sub-float/2addr v2, v3

    .line 30
    const v3, 0x3ef1463b

    .line 33
    mul-float/2addr v2, v3

    .line 34
    float-to-double v2, v2

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 38
    move-result-wide v2

    .line 39
    double-to-float v2, v2

    .line 40
    mul-float/2addr v2, v1

    .line 41
    add-float/2addr v2, v1

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 45
    move-result p2

    .line 46
    if-lez p2, :cond_3f

    .line 48
    const/high16 p1, 0x447a0000  # 1000.0f

    .line 50
    int-to-float p2, p2

    .line 51
    div-float/2addr v2, p2

    .line 52
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 55
    move-result p2

    .line 56
    mul-float/2addr p2, p1

    .line 57
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 60
    move-result p1

    .line 61
    mul-int/lit8 p1, p1, 0x4

    .line 63
    goto :goto_4b

    .line 64
    :cond_3f
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 67
    move-result p1

    .line 68
    int-to-float p1, p1

    .line 69
    int-to-float p2, p3

    .line 70
    div-float/2addr p1, p2

    .line 71
    add-float/2addr p1, v0

    .line 72
    const/high16 p2, 0x43800000  # 256.0f

    .line 74
    mul-float/2addr p1, p2

    .line 75
    float-to-int p1, p1

    .line 76
    :goto_4b
    const/16 p2, 0x258

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method public final h()Z
    .registers 12

    .line 1
    iget v0, p0, Lr0/c;->a:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_68

    .line 7
    iget-object v0, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 9
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 12
    move-result v0

    .line 13
    iget-object v3, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 15
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    .line 18
    move-result v3

    .line 19
    iget-object v4, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 21
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    .line 24
    move-result v10

    .line 25
    iget-object v4, p0, Lr0/c;->t:Landroid/view/View;

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 30
    move-result v4

    .line 31
    sub-int v8, v3, v4

    .line 33
    iget-object v4, p0, Lr0/c;->t:Landroid/view/View;

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 38
    move-result v4

    .line 39
    sub-int v9, v10, v4

    .line 41
    if-eqz v8, :cond_31

    .line 43
    iget-object v4, p0, Lr0/c;->t:Landroid/view/View;

    .line 45
    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 47
    invoke-virtual {v4, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 50
    :cond_31
    if-eqz v9, :cond_3a

    .line 52
    iget-object v4, p0, Lr0/c;->t:Landroid/view/View;

    .line 54
    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 56
    invoke-virtual {v4, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 59
    :cond_3a
    if-nez v8, :cond_3e

    .line 61
    if-eqz v9, :cond_47

    .line 63
    :cond_3e
    iget-object v4, p0, Lr0/c;->s:Lr0/c$c;

    .line 65
    iget-object v5, p0, Lr0/c;->t:Landroid/view/View;

    .line 67
    move v6, v3

    .line 68
    move v7, v10

    .line 69
    invoke-virtual/range {v4 .. v9}, Lr0/c$c;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 72
    :cond_47
    if-eqz v0, :cond_5f

    .line 74
    iget-object v4, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 76
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    .line 79
    move-result v4

    .line 80
    if-ne v3, v4, :cond_5f

    .line 82
    iget-object v3, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 84
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    .line 87
    move-result v3

    .line 88
    if-ne v10, v3, :cond_5f

    .line 90
    iget-object v0, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 92
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 95
    move v0, v2

    .line 96
    :cond_5f
    if-nez v0, :cond_68

    .line 98
    iget-object v0, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 100
    iget-object v3, p0, Lr0/c;->w:Lr0/c$b;

    .line 102
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_68
    iget v0, p0, Lr0/c;->a:I

    .line 107
    if-ne v0, v1, :cond_6d

    .line 109
    const/4 v2, 0x1

    .line 110
    :cond_6d
    return v2
.end method

.method public final i(II)Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_32

    .line 11
    iget-object v1, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 13
    iget-object v2, p0, Lr0/c;->s:Lr0/c$c;

    .line 15
    invoke-virtual {v2, v0}, Lr0/c$c;->getOrderedChildIndex(I)I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 26
    move-result v2

    .line 27
    if-lt p1, v2, :cond_2f

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 32
    move-result v2

    .line 33
    if-ge p1, v2, :cond_2f

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 38
    move-result v2

    .line 39
    if-lt p2, v2, :cond_2f

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 44
    move-result v2

    .line 45
    if-ge p2, v2, :cond_2f

    .line 47
    return-object v1

    .line 48
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    .line 50
    goto :goto_8

    .line 51
    :cond_32
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public final j(IIII)Z
    .registers 14

    .line 1
    iget-object v0, p0, Lr0/c;->t:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 6
    move-result v2

    .line 7
    iget-object v0, p0, Lr0/c;->t:Landroid/view/View;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 12
    move-result v3

    .line 13
    sub-int v4, p1, v2

    .line 15
    sub-int v5, p2, v3

    .line 17
    const/4 p1, 0x0

    .line 18
    if-nez v4, :cond_1e

    .line 20
    if-nez v5, :cond_1e

    .line 22
    iget-object p2, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 24
    invoke-virtual {p2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 27
    invoke-virtual {p0, p1}, Lr0/c;->r(I)V

    .line 30
    return p1

    .line 31
    :cond_1e
    iget-object p2, p0, Lr0/c;->t:Landroid/view/View;

    .line 33
    iget v0, p0, Lr0/c;->n:F

    .line 35
    float-to-int v0, v0

    .line 36
    iget v1, p0, Lr0/c;->m:F

    .line 38
    float-to-int v1, v1

    .line 39
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 42
    move-result v6

    .line 43
    if-ge v6, v0, :cond_2e

    .line 45
    move p3, p1

    .line 46
    goto :goto_35

    .line 47
    :cond_2e
    if-le v6, v1, :cond_35

    .line 49
    if-lez p3, :cond_34

    .line 51
    move p3, v1

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    neg-int p3, v1

    .line 54
    :cond_35
    :goto_35
    iget v0, p0, Lr0/c;->n:F

    .line 56
    float-to-int v0, v0

    .line 57
    iget v1, p0, Lr0/c;->m:F

    .line 59
    float-to-int v1, v1

    .line 60
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 63
    move-result v6

    .line 64
    if-ge v6, v0, :cond_42

    .line 66
    goto :goto_49

    .line 67
    :cond_42
    if-le v6, v1, :cond_4a

    .line 69
    if-lez p4, :cond_48

    .line 71
    move p4, v1

    .line 72
    goto :goto_4a

    .line 73
    :cond_48
    neg-int p1, v1

    .line 74
    :goto_49
    move p4, p1

    .line 75
    :cond_4a
    :goto_4a
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 78
    move-result p1

    .line 79
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 82
    move-result v0

    .line 83
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 86
    move-result v1

    .line 87
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 90
    move-result v6

    .line 91
    add-int v7, v1, v6

    .line 93
    add-int v8, p1, v0

    .line 95
    if-eqz p3, :cond_63

    .line 97
    int-to-float p1, v1

    .line 98
    int-to-float v1, v7

    .line 99
    goto :goto_65

    .line 100
    :cond_63
    int-to-float p1, p1

    .line 101
    int-to-float v1, v8

    .line 102
    :goto_65
    div-float/2addr p1, v1

    .line 103
    if-eqz p4, :cond_6b

    .line 105
    int-to-float v0, v6

    .line 106
    int-to-float v1, v7

    .line 107
    goto :goto_6d

    .line 108
    :cond_6b
    int-to-float v0, v0

    .line 109
    int-to-float v1, v8

    .line 110
    :goto_6d
    div-float/2addr v0, v1

    .line 111
    iget-object v1, p0, Lr0/c;->s:Lr0/c$c;

    .line 113
    invoke-virtual {v1, p2}, Lr0/c$c;->getViewHorizontalDragRange(Landroid/view/View;)I

    .line 116
    move-result v1

    .line 117
    invoke-virtual {p0, v4, p3, v1}, Lr0/c;->g(III)I

    .line 120
    move-result p3

    .line 121
    iget-object v1, p0, Lr0/c;->s:Lr0/c$c;

    .line 123
    invoke-virtual {v1, p2}, Lr0/c$c;->getViewVerticalDragRange(Landroid/view/View;)I

    .line 126
    move-result p2

    .line 127
    invoke-virtual {p0, v5, p4, p2}, Lr0/c;->g(III)I

    .line 130
    move-result p2

    .line 131
    int-to-float p3, p3

    .line 132
    mul-float/2addr p3, p1

    .line 133
    int-to-float p1, p2

    .line 134
    mul-float/2addr p1, v0

    .line 135
    add-float/2addr p1, p3

    .line 136
    float-to-int v6, p1

    .line 137
    iget-object v1, p0, Lr0/c;->r:Landroid/widget/OverScroller;

    .line 139
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 142
    const/4 p1, 0x2

    .line 143
    invoke-virtual {p0, p1}, Lr0/c;->r(I)V

    .line 146
    const/4 p1, 0x1

    .line 147
    return p1
.end method

.method public final k(I)Z
    .registers 5

    .line 1
    iget v0, p0, Lr0/c;->k:I

    .line 3
    const/4 v1, 0x1

    .line 4
    shl-int v2, v1, p1

    .line 6
    and-int/2addr v0, v2

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_b

    .line 10
    move v0, v1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v0, v2

    .line 13
    :goto_c
    if-nez v0, :cond_2a

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v1, "Ignoring pointerId="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const-string v0, "ViewDragHelper"

    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v2

    .line 43
    :cond_2a
    return v1
.end method

.method public final m(Landroid/view/MotionEvent;)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 12
    move-result v3

    .line 13
    if-nez v2, :cond_11

    .line 15
    invoke-virtual/range {p0 .. p0}, Lr0/c;->b()V

    .line 18
    :cond_11
    iget-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 20
    if-nez v4, :cond_1b

    .line 22
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 25
    move-result-object v4

    .line 26
    iput-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 28
    :cond_1b
    iget-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 30
    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v2, :cond_1a4

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eq v2, v5, :cond_199

    .line 39
    const/4 v6, 0x2

    .line 40
    if-eq v2, v6, :cond_d2

    .line 42
    const/4 v6, 0x3

    .line 43
    if-eq v2, v6, :cond_b6

    .line 45
    const/4 v6, 0x5

    .line 46
    if-eq v2, v6, :cond_79

    .line 48
    const/4 v6, 0x6

    .line 49
    if-eq v2, v6, :cond_34

    .line 51
    goto/16 :goto_1ca

    .line 53
    :cond_34
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 56
    move-result v2

    .line 57
    iget v3, v0, Lr0/c;->a:I

    .line 59
    if-ne v3, v5, :cond_74

    .line 61
    iget v3, v0, Lr0/c;->c:I

    .line 63
    if-ne v2, v3, :cond_74

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 68
    move-result v3

    .line 69
    :goto_44
    const/4 v5, -0x1

    .line 70
    if-ge v4, v3, :cond_6e

    .line 72
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 75
    move-result v6

    .line 76
    iget v7, v0, Lr0/c;->c:I

    .line 78
    if-ne v6, v7, :cond_50

    .line 80
    goto :goto_6b

    .line 81
    :cond_50
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 84
    move-result v7

    .line 85
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 88
    move-result v8

    .line 89
    float-to-int v7, v7

    .line 90
    float-to-int v8, v8

    .line 91
    invoke-virtual {v0, v7, v8}, Lr0/c;->i(II)Landroid/view/View;

    .line 94
    move-result-object v7

    .line 95
    iget-object v8, v0, Lr0/c;->t:Landroid/view/View;

    .line 97
    if-ne v7, v8, :cond_6b

    .line 99
    invoke-virtual {v0, v8, v6}, Lr0/c;->u(Landroid/view/View;I)Z

    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_6b

    .line 105
    iget v1, v0, Lr0/c;->c:I

    .line 107
    goto :goto_6f

    .line 108
    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    .line 110
    goto :goto_44

    .line 111
    :cond_6e
    move v1, v5

    .line 112
    :goto_6f
    if-ne v1, v5, :cond_74

    .line 114
    invoke-virtual/range {p0 .. p0}, Lr0/c;->n()V

    .line 117
    :cond_74
    invoke-virtual {v0, v2}, Lr0/c;->f(I)V

    .line 120
    goto/16 :goto_1ca

    .line 122
    :cond_79
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 125
    move-result v2

    .line 126
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 129
    move-result v4

    .line 130
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 133
    move-result v1

    .line 134
    invoke-virtual {v0, v4, v1, v2}, Lr0/c;->p(FFI)V

    .line 137
    iget v3, v0, Lr0/c;->a:I

    .line 139
    if-nez v3, :cond_a5

    .line 141
    float-to-int v3, v4

    .line 142
    float-to-int v1, v1

    .line 143
    invoke-virtual {v0, v3, v1}, Lr0/c;->i(II)Landroid/view/View;

    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1, v2}, Lr0/c;->u(Landroid/view/View;I)Z

    .line 150
    iget-object v1, v0, Lr0/c;->h:[I

    .line 152
    aget v1, v1, v2

    .line 154
    iget v3, v0, Lr0/c;->q:I

    .line 156
    and-int/2addr v1, v3

    .line 157
    if-eqz v1, :cond_1ca

    .line 159
    iget-object v3, v0, Lr0/c;->s:Lr0/c$c;

    .line 161
    invoke-virtual {v3, v1, v2}, Lr0/c$c;->onEdgeTouched(II)V

    .line 164
    goto/16 :goto_1ca

    .line 166
    :cond_a5
    float-to-int v3, v4

    .line 167
    float-to-int v1, v1

    .line 168
    iget-object v4, v0, Lr0/c;->t:Landroid/view/View;

    .line 170
    invoke-static {v4, v3, v1}, Lr0/c;->l(Landroid/view/View;II)Z

    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_1ca

    .line 176
    iget-object v1, v0, Lr0/c;->t:Landroid/view/View;

    .line 178
    invoke-virtual {v0, v1, v2}, Lr0/c;->u(Landroid/view/View;I)Z

    .line 181
    goto/16 :goto_1ca

    .line 183
    :cond_b6
    iget v1, v0, Lr0/c;->a:I

    .line 185
    if-ne v1, v5, :cond_cd

    .line 187
    const/4 v1, 0x0

    .line 188
    iput-boolean v5, v0, Lr0/c;->u:Z

    .line 190
    iget-object v2, v0, Lr0/c;->s:Lr0/c$c;

    .line 192
    iget-object v3, v0, Lr0/c;->t:Landroid/view/View;

    .line 194
    invoke-virtual {v2, v3, v1, v1}, Lr0/c$c;->onViewReleased(Landroid/view/View;FF)V

    .line 197
    iput-boolean v4, v0, Lr0/c;->u:Z

    .line 199
    iget v1, v0, Lr0/c;->a:I

    .line 201
    if-ne v1, v5, :cond_cd

    .line 203
    invoke-virtual {v0, v4}, Lr0/c;->r(I)V

    .line 206
    :cond_cd
    invoke-virtual/range {p0 .. p0}, Lr0/c;->b()V

    .line 209
    goto/16 :goto_1ca

    .line 211
    :cond_d2
    iget v2, v0, Lr0/c;->a:I

    .line 213
    if-ne v2, v5, :cond_152

    .line 215
    iget v2, v0, Lr0/c;->c:I

    .line 217
    invoke-virtual {v0, v2}, Lr0/c;->k(I)Z

    .line 220
    move-result v2

    .line 221
    if-nez v2, :cond_e0

    .line 223
    goto/16 :goto_1ca

    .line 225
    :cond_e0
    iget v2, v0, Lr0/c;->c:I

    .line 227
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 230
    move-result v2

    .line 231
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 234
    move-result v3

    .line 235
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 238
    move-result v2

    .line 239
    iget-object v4, v0, Lr0/c;->f:[F

    .line 241
    iget v5, v0, Lr0/c;->c:I

    .line 243
    aget v4, v4, v5

    .line 245
    sub-float/2addr v3, v4

    .line 246
    float-to-int v3, v3

    .line 247
    iget-object v4, v0, Lr0/c;->g:[F

    .line 249
    aget v4, v4, v5

    .line 251
    sub-float/2addr v2, v4

    .line 252
    float-to-int v2, v2

    .line 253
    iget-object v4, v0, Lr0/c;->t:Landroid/view/View;

    .line 255
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 258
    move-result v4

    .line 259
    add-int/2addr v4, v3

    .line 260
    iget-object v5, v0, Lr0/c;->t:Landroid/view/View;

    .line 262
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 265
    move-result v5

    .line 266
    add-int/2addr v5, v2

    .line 267
    iget-object v6, v0, Lr0/c;->t:Landroid/view/View;

    .line 269
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 272
    move-result v6

    .line 273
    iget-object v7, v0, Lr0/c;->t:Landroid/view/View;

    .line 275
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 278
    move-result v7

    .line 279
    if-eqz v3, :cond_129

    .line 281
    iget-object v8, v0, Lr0/c;->s:Lr0/c$c;

    .line 283
    iget-object v9, v0, Lr0/c;->t:Landroid/view/View;

    .line 285
    invoke-virtual {v8, v9, v4, v3}, Lr0/c$c;->clampViewPositionHorizontal(Landroid/view/View;II)I

    .line 288
    move-result v4

    .line 289
    iget-object v8, v0, Lr0/c;->t:Landroid/view/View;

    .line 291
    sub-int v9, v4, v6

    .line 293
    sget-object v10, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 295
    invoke-virtual {v8, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 298
    :cond_129
    move v13, v4

    .line 299
    if-eqz v2, :cond_13d

    .line 301
    iget-object v4, v0, Lr0/c;->s:Lr0/c$c;

    .line 303
    iget-object v8, v0, Lr0/c;->t:Landroid/view/View;

    .line 305
    invoke-virtual {v4, v8, v5, v2}, Lr0/c$c;->clampViewPositionVertical(Landroid/view/View;II)I

    .line 308
    move-result v5

    .line 309
    iget-object v4, v0, Lr0/c;->t:Landroid/view/View;

    .line 311
    sub-int v8, v5, v7

    .line 313
    sget-object v9, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 315
    invoke-virtual {v4, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 318
    :cond_13d
    move v14, v5

    .line 319
    if-nez v3, :cond_142

    .line 321
    if-eqz v2, :cond_14d

    .line 323
    :cond_142
    sub-int v15, v13, v6

    .line 325
    sub-int v16, v14, v7

    .line 327
    iget-object v11, v0, Lr0/c;->s:Lr0/c$c;

    .line 329
    iget-object v12, v0, Lr0/c;->t:Landroid/view/View;

    .line 331
    invoke-virtual/range {v11 .. v16}, Lr0/c$c;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 334
    :cond_14d
    invoke-virtual/range {p0 .. p1}, Lr0/c;->q(Landroid/view/MotionEvent;)V

    .line 337
    goto/16 :goto_1ca

    .line 339
    :cond_152
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 342
    move-result v2

    .line 343
    :goto_156
    if-ge v4, v2, :cond_195

    .line 345
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 348
    move-result v3

    .line 349
    invoke-virtual {v0, v3}, Lr0/c;->k(I)Z

    .line 352
    move-result v6

    .line 353
    if-nez v6, :cond_163

    .line 355
    goto :goto_192

    .line 356
    :cond_163
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 359
    move-result v6

    .line 360
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 363
    move-result v7

    .line 364
    iget-object v8, v0, Lr0/c;->d:[F

    .line 366
    aget v8, v8, v3

    .line 368
    sub-float v8, v6, v8

    .line 370
    iget-object v9, v0, Lr0/c;->e:[F

    .line 372
    aget v9, v9, v3

    .line 374
    sub-float v9, v7, v9

    .line 376
    invoke-virtual {v0, v8, v9, v3}, Lr0/c;->o(FFI)V

    .line 379
    iget v10, v0, Lr0/c;->a:I

    .line 381
    if-ne v10, v5, :cond_17f

    .line 383
    goto :goto_195

    .line 384
    :cond_17f
    float-to-int v6, v6

    .line 385
    float-to-int v7, v7

    .line 386
    invoke-virtual {v0, v6, v7}, Lr0/c;->i(II)Landroid/view/View;

    .line 389
    move-result-object v6

    .line 390
    invoke-virtual {v0, v6, v8, v9}, Lr0/c;->e(Landroid/view/View;FF)Z

    .line 393
    move-result v7

    .line 394
    if-eqz v7, :cond_192

    .line 396
    invoke-virtual {v0, v6, v3}, Lr0/c;->u(Landroid/view/View;I)Z

    .line 399
    move-result v3

    .line 400
    if-eqz v3, :cond_192

    .line 402
    goto :goto_195

    .line 403
    :cond_192
    :goto_192
    add-int/lit8 v4, v4, 0x1

    .line 405
    goto :goto_156

    .line 406
    :cond_195
    :goto_195
    invoke-virtual/range {p0 .. p1}, Lr0/c;->q(Landroid/view/MotionEvent;)V

    .line 409
    goto :goto_1ca

    .line 410
    :cond_199
    iget v1, v0, Lr0/c;->a:I

    .line 412
    if-ne v1, v5, :cond_1a0

    .line 414
    invoke-virtual/range {p0 .. p0}, Lr0/c;->n()V

    .line 417
    :cond_1a0
    invoke-virtual/range {p0 .. p0}, Lr0/c;->b()V

    .line 420
    goto :goto_1ca

    .line 421
    :cond_1a4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 424
    move-result v2

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 428
    move-result v3

    .line 429
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 432
    move-result v1

    .line 433
    float-to-int v4, v2

    .line 434
    float-to-int v5, v3

    .line 435
    invoke-virtual {v0, v4, v5}, Lr0/c;->i(II)Landroid/view/View;

    .line 438
    move-result-object v4

    .line 439
    invoke-virtual {v0, v2, v3, v1}, Lr0/c;->p(FFI)V

    .line 442
    invoke-virtual {v0, v4, v1}, Lr0/c;->u(Landroid/view/View;I)Z

    .line 445
    iget-object v2, v0, Lr0/c;->h:[I

    .line 447
    aget v2, v2, v1

    .line 449
    iget v3, v0, Lr0/c;->q:I

    .line 451
    and-int/2addr v2, v3

    .line 452
    if-eqz v2, :cond_1ca

    .line 454
    iget-object v3, v0, Lr0/c;->s:Lr0/c$c;

    .line 456
    invoke-virtual {v3, v2, v1}, Lr0/c$c;->onEdgeTouched(II)V

    .line 459
    :cond_1ca
    :goto_1ca
    return-void
.end method

.method public final n()V
    .registers 7

    .line 1
    iget-object v0, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 3
    iget v1, p0, Lr0/c;->m:F

    .line 5
    const/16 v2, 0x3e8

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 10
    iget-object v0, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 12
    iget v1, p0, Lr0/c;->c:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lr0/c;->n:F

    .line 20
    iget v2, p0, Lr0/c;->m:F

    .line 22
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 25
    move-result v3

    .line 26
    cmpg-float v1, v3, v1

    .line 28
    const/4 v4, 0x0

    .line 29
    if-gez v1, :cond_20

    .line 31
    move v0, v4

    .line 32
    goto :goto_2b

    .line 33
    :cond_20
    cmpl-float v1, v3, v2

    .line 35
    if-lez v1, :cond_2b

    .line 37
    cmpl-float v0, v0, v4

    .line 39
    if-lez v0, :cond_2a

    .line 41
    move v0, v2

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    neg-float v0, v2

    .line 44
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 46
    iget v2, p0, Lr0/c;->c:I

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 51
    move-result v1

    .line 52
    iget v2, p0, Lr0/c;->n:F

    .line 54
    iget v3, p0, Lr0/c;->m:F

    .line 56
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 59
    move-result v5

    .line 60
    cmpg-float v2, v5, v2

    .line 62
    if-gez v2, :cond_40

    .line 64
    goto :goto_4c

    .line 65
    :cond_40
    cmpl-float v2, v5, v3

    .line 67
    if-lez v2, :cond_4b

    .line 69
    cmpl-float v1, v1, v4

    .line 71
    if-lez v1, :cond_4a

    .line 73
    move v4, v3

    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    neg-float v1, v3

    .line 76
    :cond_4b
    move v4, v1

    .line 77
    :goto_4c
    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lr0/c;->u:Z

    .line 80
    iget-object v2, p0, Lr0/c;->s:Lr0/c$c;

    .line 82
    iget-object v3, p0, Lr0/c;->t:Landroid/view/View;

    .line 84
    invoke-virtual {v2, v3, v0, v4}, Lr0/c$c;->onViewReleased(Landroid/view/View;FF)V

    .line 87
    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lr0/c;->u:Z

    .line 90
    iget v2, p0, Lr0/c;->a:I

    .line 92
    if-ne v2, v1, :cond_60

    .line 94
    invoke-virtual {p0, v0}, Lr0/c;->r(I)V

    .line 97
    :cond_60
    return-void
.end method

.method public final o(FFI)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lr0/c;->d(FFII)Z

    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {p0, p2, p1, p3, v1}, Lr0/c;->d(FFII)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_e

    .line 13
    or-int/lit8 v0, v0, 0x4

    .line 15
    :cond_e
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, p1, p2, p3, v1}, Lr0/c;->d(FFII)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_17

    .line 22
    or-int/lit8 v0, v0, 0x2

    .line 24
    :cond_17
    const/16 v1, 0x8

    .line 26
    invoke-virtual {p0, p2, p1, p3, v1}, Lr0/c;->d(FFII)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_21

    .line 32
    or-int/lit8 v0, v0, 0x8

    .line 34
    :cond_21
    if-eqz v0, :cond_2f

    .line 36
    iget-object p1, p0, Lr0/c;->i:[I

    .line 38
    aget p2, p1, p3

    .line 40
    or-int/2addr p2, v0

    .line 41
    aput p2, p1, p3

    .line 43
    iget-object p1, p0, Lr0/c;->s:Lr0/c$c;

    .line 45
    invoke-virtual {p1, v0, p3}, Lr0/c$c;->onEdgeDragStarted(II)V

    .line 48
    :cond_2f
    return-void
.end method

.method public final p(FFI)V
    .registers 14

    .line 1
    iget-object v0, p0, Lr0/c;->d:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 6
    array-length v2, v0

    .line 7
    if-gt v2, p3, :cond_50

    .line 9
    :cond_8
    add-int/lit8 v2, p3, 0x1

    .line 11
    new-array v3, v2, [F

    .line 13
    new-array v4, v2, [F

    .line 15
    new-array v5, v2, [F

    .line 17
    new-array v6, v2, [F

    .line 19
    new-array v7, v2, [I

    .line 21
    new-array v8, v2, [I

    .line 23
    new-array v2, v2, [I

    .line 25
    if-eqz v0, :cond_42

    .line 27
    array-length v9, v0

    .line 28
    invoke-static {v0, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v0, p0, Lr0/c;->e:[F

    .line 33
    array-length v9, v0

    .line 34
    invoke-static {v0, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget-object v0, p0, Lr0/c;->f:[F

    .line 39
    array-length v9, v0

    .line 40
    invoke-static {v0, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v0, p0, Lr0/c;->g:[F

    .line 45
    array-length v9, v0

    .line 46
    invoke-static {v0, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object v0, p0, Lr0/c;->h:[I

    .line 51
    array-length v9, v0

    .line 52
    invoke-static {v0, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget-object v0, p0, Lr0/c;->i:[I

    .line 57
    array-length v9, v0

    .line 58
    invoke-static {v0, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object v0, p0, Lr0/c;->j:[I

    .line 63
    array-length v9, v0

    .line 64
    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    :cond_42
    iput-object v3, p0, Lr0/c;->d:[F

    .line 69
    iput-object v4, p0, Lr0/c;->e:[F

    .line 71
    iput-object v5, p0, Lr0/c;->f:[F

    .line 73
    iput-object v6, p0, Lr0/c;->g:[F

    .line 75
    iput-object v7, p0, Lr0/c;->h:[I

    .line 77
    iput-object v8, p0, Lr0/c;->i:[I

    .line 79
    iput-object v2, p0, Lr0/c;->j:[I

    .line 81
    :cond_50
    iget-object v0, p0, Lr0/c;->d:[F

    .line 83
    iget-object v2, p0, Lr0/c;->f:[F

    .line 85
    aput p1, v2, p3

    .line 87
    aput p1, v0, p3

    .line 89
    iget-object v0, p0, Lr0/c;->e:[F

    .line 91
    iget-object v2, p0, Lr0/c;->g:[F

    .line 93
    aput p2, v2, p3

    .line 95
    aput p2, v0, p3

    .line 97
    iget-object v0, p0, Lr0/c;->h:[I

    .line 99
    float-to-int p1, p1

    .line 100
    float-to-int p2, p2

    .line 101
    iget-object v2, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 106
    move-result v2

    .line 107
    iget v3, p0, Lr0/c;->o:I

    .line 109
    add-int/2addr v2, v3

    .line 110
    const/4 v3, 0x1

    .line 111
    if-ge p1, v2, :cond_71

    .line 113
    move v1, v3

    .line 114
    :cond_71
    iget-object v2, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 116
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 119
    move-result v2

    .line 120
    iget v4, p0, Lr0/c;->o:I

    .line 122
    add-int/2addr v2, v4

    .line 123
    if-ge p2, v2, :cond_7e

    .line 125
    or-int/lit8 v1, v1, 0x4

    .line 127
    :cond_7e
    iget-object v2, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 132
    move-result v2

    .line 133
    iget v4, p0, Lr0/c;->o:I

    .line 135
    sub-int/2addr v2, v4

    .line 136
    if-le p1, v2, :cond_8b

    .line 138
    or-int/lit8 v1, v1, 0x2

    .line 140
    :cond_8b
    iget-object p1, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 145
    move-result p1

    .line 146
    iget v2, p0, Lr0/c;->o:I

    .line 148
    sub-int/2addr p1, v2

    .line 149
    if-le p2, p1, :cond_98

    .line 151
    or-int/lit8 v1, v1, 0x8

    .line 153
    :cond_98
    aput v1, v0, p3

    .line 155
    iget p1, p0, Lr0/c;->k:I

    .line 157
    shl-int p2, v3, p3

    .line 159
    or-int/2addr p1, p2

    .line 160
    iput p1, p0, Lr0/c;->k:I

    .line 162
    return-void
.end method

.method public final q(Landroid/view/MotionEvent;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_25

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 11
    move-result v2

    .line 12
    invoke-virtual {p0, v2}, Lr0/c;->k(I)Z

    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_12

    .line 18
    goto :goto_22

    .line 19
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 22
    move-result v3

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 26
    move-result v4

    .line 27
    iget-object v5, p0, Lr0/c;->f:[F

    .line 29
    aput v3, v5, v2

    .line 31
    iget-object v3, p0, Lr0/c;->g:[F

    .line 33
    aput v4, v3, v2

    .line 35
    :goto_22
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_5

    .line 38
    :cond_25
    return-void
.end method

.method public final r(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lr0/c;->v:Landroid/view/ViewGroup;

    .line 3
    iget-object v1, p0, Lr0/c;->w:Lr0/c$b;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    iget v0, p0, Lr0/c;->a:I

    .line 10
    if-eq v0, p1, :cond_19

    .line 12
    iput p1, p0, Lr0/c;->a:I

    .line 14
    iget-object v0, p0, Lr0/c;->s:Lr0/c$c;

    .line 16
    invoke-virtual {v0, p1}, Lr0/c$c;->onViewDragStateChanged(I)V

    .line 19
    iget p1, p0, Lr0/c;->a:I

    .line 21
    if-nez p1, :cond_19

    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lr0/c;->t:Landroid/view/View;

    .line 26
    :cond_19
    return-void
.end method

.method public final s(II)Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lr0/c;->u:Z

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    iget-object v0, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 7
    iget v1, p0, Lr0/c;->c:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 12
    move-result v0

    .line 13
    float-to-int v0, v0

    .line 14
    iget-object v1, p0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 16
    iget v2, p0, Lr0/c;->c:I

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 21
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    invoke-virtual {p0, p1, p2, v0, v1}, Lr0/c;->j(IIII)Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
.end method

.method public final t(Landroid/view/MotionEvent;)Z
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 12
    move-result v3

    .line 13
    if-nez v2, :cond_11

    .line 15
    invoke-virtual/range {p0 .. p0}, Lr0/c;->b()V

    .line 18
    :cond_11
    iget-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 20
    if-nez v4, :cond_1b

    .line 22
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 25
    move-result-object v4

    .line 26
    iput-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 28
    :cond_1b
    iget-object v4, v0, Lr0/c;->l:Landroid/view/VelocityTracker;

    .line 30
    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v2, :cond_104

    .line 37
    if-eq v2, v5, :cond_ff

    .line 39
    if-eq v2, v4, :cond_70

    .line 41
    const/4 v7, 0x3

    .line 42
    if-eq v2, v7, :cond_ff

    .line 44
    const/4 v7, 0x5

    .line 45
    if-eq v2, v7, :cond_3c

    .line 47
    const/4 v4, 0x6

    .line 48
    if-eq v2, v4, :cond_33

    .line 50
    goto/16 :goto_102

    .line 52
    :cond_33
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Lr0/c;->f(I)V

    .line 59
    goto/16 :goto_102

    .line 61
    :cond_3c
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 64
    move-result v2

    .line 65
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 68
    move-result v7

    .line 69
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v7, v1, v2}, Lr0/c;->p(FFI)V

    .line 76
    iget v3, v0, Lr0/c;->a:I

    .line 78
    if-nez v3, :cond_5f

    .line 80
    iget-object v1, v0, Lr0/c;->h:[I

    .line 82
    aget v1, v1, v2

    .line 84
    iget v3, v0, Lr0/c;->q:I

    .line 86
    and-int/2addr v1, v3

    .line 87
    if-eqz v1, :cond_102

    .line 89
    iget-object v3, v0, Lr0/c;->s:Lr0/c$c;

    .line 91
    invoke-virtual {v3, v1, v2}, Lr0/c$c;->onEdgeTouched(II)V

    .line 94
    goto/16 :goto_102

    .line 96
    :cond_5f
    if-ne v3, v4, :cond_102

    .line 98
    float-to-int v3, v7

    .line 99
    float-to-int v1, v1

    .line 100
    invoke-virtual {v0, v3, v1}, Lr0/c;->i(II)Landroid/view/View;

    .line 103
    move-result-object v1

    .line 104
    iget-object v3, v0, Lr0/c;->t:Landroid/view/View;

    .line 106
    if-ne v1, v3, :cond_102

    .line 108
    invoke-virtual {v0, v1, v2}, Lr0/c;->u(Landroid/view/View;I)Z

    .line 111
    goto/16 :goto_102

    .line 113
    :cond_70
    iget-object v2, v0, Lr0/c;->d:[F

    .line 115
    if-eqz v2, :cond_102

    .line 117
    iget-object v2, v0, Lr0/c;->e:[F

    .line 119
    if-nez v2, :cond_7a

    .line 121
    goto/16 :goto_102

    .line 123
    :cond_7a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 126
    move-result v2

    .line 127
    const/4 v3, 0x0

    .line 128
    :goto_7f
    if-ge v3, v2, :cond_fb

    .line 130
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 133
    move-result v4

    .line 134
    invoke-virtual {v0, v4}, Lr0/c;->k(I)Z

    .line 137
    move-result v7

    .line 138
    if-nez v7, :cond_8d

    .line 140
    goto/16 :goto_f8

    .line 142
    :cond_8d
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 145
    move-result v7

    .line 146
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 149
    move-result v8

    .line 150
    iget-object v9, v0, Lr0/c;->d:[F

    .line 152
    aget v9, v9, v4

    .line 154
    sub-float v9, v7, v9

    .line 156
    iget-object v10, v0, Lr0/c;->e:[F

    .line 158
    aget v10, v10, v4

    .line 160
    sub-float v10, v8, v10

    .line 162
    float-to-int v7, v7

    .line 163
    float-to-int v8, v8

    .line 164
    invoke-virtual {v0, v7, v8}, Lr0/c;->i(II)Landroid/view/View;

    .line 167
    move-result-object v7

    .line 168
    if-eqz v7, :cond_b1

    .line 170
    invoke-virtual {v0, v7, v9, v10}, Lr0/c;->e(Landroid/view/View;FF)Z

    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_b1

    .line 176
    move v8, v5

    .line 177
    goto :goto_b2

    .line 178
    :cond_b1
    const/4 v8, 0x0

    .line 179
    :goto_b2
    if-eqz v8, :cond_e7

    .line 181
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 184
    move-result v11

    .line 185
    float-to-int v12, v9

    .line 186
    add-int v13, v11, v12

    .line 188
    iget-object v14, v0, Lr0/c;->s:Lr0/c$c;

    .line 190
    invoke-virtual {v14, v7, v13, v12}, Lr0/c$c;->clampViewPositionHorizontal(Landroid/view/View;II)I

    .line 193
    move-result v12

    .line 194
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 197
    move-result v13

    .line 198
    float-to-int v14, v10

    .line 199
    add-int v15, v13, v14

    .line 201
    iget-object v6, v0, Lr0/c;->s:Lr0/c$c;

    .line 203
    invoke-virtual {v6, v7, v15, v14}, Lr0/c$c;->clampViewPositionVertical(Landroid/view/View;II)I

    .line 206
    move-result v6

    .line 207
    iget-object v14, v0, Lr0/c;->s:Lr0/c$c;

    .line 209
    invoke-virtual {v14, v7}, Lr0/c$c;->getViewHorizontalDragRange(Landroid/view/View;)I

    .line 212
    move-result v14

    .line 213
    iget-object v15, v0, Lr0/c;->s:Lr0/c$c;

    .line 215
    invoke-virtual {v15, v7}, Lr0/c$c;->getViewVerticalDragRange(Landroid/view/View;)I

    .line 218
    move-result v15

    .line 219
    if-eqz v14, :cond_e0

    .line 221
    if-lez v14, :cond_e7

    .line 223
    if-ne v12, v11, :cond_e7

    .line 225
    :cond_e0
    if-eqz v15, :cond_fb

    .line 227
    if-lez v15, :cond_e7

    .line 229
    if-ne v6, v13, :cond_e7

    .line 231
    goto :goto_fb

    .line 232
    :cond_e7
    invoke-virtual {v0, v9, v10, v4}, Lr0/c;->o(FFI)V

    .line 235
    iget v6, v0, Lr0/c;->a:I

    .line 237
    if-ne v6, v5, :cond_ef

    .line 239
    goto :goto_fb

    .line 240
    :cond_ef
    if-eqz v8, :cond_f8

    .line 242
    invoke-virtual {v0, v7, v4}, Lr0/c;->u(Landroid/view/View;I)Z

    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_f8

    .line 248
    goto :goto_fb

    .line 249
    :cond_f8
    :goto_f8
    add-int/lit8 v3, v3, 0x1

    .line 251
    goto :goto_7f

    .line 252
    :cond_fb
    :goto_fb
    invoke-virtual/range {p0 .. p1}, Lr0/c;->q(Landroid/view/MotionEvent;)V

    .line 255
    goto :goto_102

    .line 256
    :cond_ff
    invoke-virtual/range {p0 .. p0}, Lr0/c;->b()V

    .line 259
    :cond_102
    :goto_102
    const/4 v6, 0x0

    .line 260
    goto :goto_133

    .line 261
    :cond_104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 264
    move-result v2

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 268
    move-result v3

    .line 269
    const/4 v6, 0x0

    .line 270
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 273
    move-result v1

    .line 274
    invoke-virtual {v0, v2, v3, v1}, Lr0/c;->p(FFI)V

    .line 277
    float-to-int v2, v2

    .line 278
    float-to-int v3, v3

    .line 279
    invoke-virtual {v0, v2, v3}, Lr0/c;->i(II)Landroid/view/View;

    .line 282
    move-result-object v2

    .line 283
    iget-object v3, v0, Lr0/c;->t:Landroid/view/View;

    .line 285
    if-ne v2, v3, :cond_125

    .line 287
    iget v3, v0, Lr0/c;->a:I

    .line 289
    if-ne v3, v4, :cond_125

    .line 291
    invoke-virtual {v0, v2, v1}, Lr0/c;->u(Landroid/view/View;I)Z

    .line 294
    :cond_125
    iget-object v2, v0, Lr0/c;->h:[I

    .line 296
    aget v2, v2, v1

    .line 298
    iget v3, v0, Lr0/c;->q:I

    .line 300
    and-int/2addr v2, v3

    .line 301
    if-eqz v2, :cond_133

    .line 303
    iget-object v3, v0, Lr0/c;->s:Lr0/c$c;

    .line 305
    invoke-virtual {v3, v2, v1}, Lr0/c$c;->onEdgeTouched(II)V

    .line 308
    :cond_133
    :goto_133
    iget v1, v0, Lr0/c;->a:I

    .line 310
    if-ne v1, v5, :cond_138

    .line 312
    goto :goto_139

    .line 313
    :cond_138
    move v5, v6

    .line 314
    :goto_139
    return v5
.end method

.method public final u(Landroid/view/View;I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lr0/c;->t:Landroid/view/View;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_a

    .line 6
    iget v0, p0, Lr0/c;->c:I

    .line 8
    if-ne v0, p2, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    if-eqz p1, :cond_1a

    .line 13
    iget-object v0, p0, Lr0/c;->s:Lr0/c$c;

    .line 15
    invoke-virtual {v0, p1, p2}, Lr0/c$c;->tryCaptureView(Landroid/view/View;I)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1a

    .line 21
    iput p2, p0, Lr0/c;->c:I

    .line 23
    invoke-virtual {p0, p1, p2}, Lr0/c;->c(Landroid/view/View;I)V

    .line 26
    return v1

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return p1
.end method
