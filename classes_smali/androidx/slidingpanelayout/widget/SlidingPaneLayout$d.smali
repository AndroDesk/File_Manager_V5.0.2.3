.class public final Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;
.super Lr0/c$c;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 3
    invoke-direct {p0}, Lr0/c$c;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 3
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_8

    .line 8
    return v2

    .line 9
    :cond_8
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getLockMode()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x3

    .line 14
    if-ne v0, v1, :cond_10

    .line 16
    return v2

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 19
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_22

    .line 26
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 28
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getLockMode()I

    .line 31
    move-result v0

    .line 32
    if-ne v0, v1, :cond_22

    .line 34
    return v2

    .line 35
    :cond_22
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 37
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_34

    .line 43
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 45
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getLockMode()I

    .line 48
    move-result v0

    .line 49
    const/4 v3, 0x2

    .line 50
    if-ne v0, v3, :cond_34

    .line 52
    return v2

    .line 53
    :cond_34
    return v1
.end method

.method public final clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 3
    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 11
    iget-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 13
    invoke-virtual {p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_3a

    .line 19
    iget-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 21
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 24
    move-result p3

    .line 25
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    move-result v0

    .line 31
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 33
    add-int/2addr v0, p1

    .line 34
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 36
    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 41
    move-result p1

    .line 42
    add-int/2addr p1, v0

    .line 43
    sub-int/2addr p3, p1

    .line 44
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 46
    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    .line 48
    sub-int p1, p3, p1

    .line 50
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 53
    move-result p2

    .line 54
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 57
    move-result p1

    .line 58
    goto :goto_50

    .line 59
    :cond_3a
    iget-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 61
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    .line 64
    move-result p3

    .line 65
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 67
    add-int/2addr p3, p1

    .line 68
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 70
    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    .line 72
    add-int/2addr p1, p3

    .line 73
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 76
    move-result p2

    .line 77
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 80
    move-result p1

    .line 81
    :goto_50
    return p1
.end method

.method public final clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 3
    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    .line 5
    return p1
.end method

.method public final onEdgeDragStarted(II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 10
    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 12
    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 14
    invoke-virtual {v0, p1, p2}, Lr0/c;->c(Landroid/view/View;I)V

    .line 17
    return-void
.end method

.method public final onEdgeTouched(II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 10
    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 12
    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 14
    invoke-virtual {v0, p1, p2}, Lr0/c;->c(Landroid/view/View;I)V

    .line 17
    return-void
.end method

.method public final onViewCaptured(Landroid/view/View;I)V
    .registers 8

    .line 1
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_8
    if-ge v1, p2, :cond_1b

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x4

    .line 20
    if-ne v3, v4, :cond_18

    .line 22
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_8

    .line 28
    :cond_1b
    return-void
.end method

.method public final onViewDragStateChanged(I)V
    .registers 6

    .line 1
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 3
    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 5
    iget v0, v0, Lr0/c;->a:I

    .line 7
    if-nez v0, :cond_5a

    .line 9
    iget v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 11
    const/high16 v1, 0x3f800000  # 1.0f

    .line 13
    cmpl-float v0, v0, v1

    .line 15
    const/16 v1, 0x20

    .line 17
    if-nez v0, :cond_3a

    .line 19
    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 21
    invoke-virtual {p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f(Landroid/view/View;)V

    .line 24
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 26
    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 28
    iget-object v2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v2

    .line 34
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_31

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

    .line 46
    invoke-interface {v3, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;->c(Landroid/view/View;)V

    .line 49
    goto :goto_21

    .line 50
    :cond_31
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 53
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 55
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 58
    goto :goto_5a

    .line 59
    :cond_3a
    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 61
    iget-object v2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v2

    .line 67
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_52

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

    .line 79
    invoke-interface {v3, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;->b(Landroid/view/View;)V

    .line 82
    goto :goto_42

    .line 83
    :cond_52
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 86
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 88
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 91
    :cond_5a
    :goto_5a
    return-void
.end method

.method public final onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7

    .line 1
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 3
    iget-object p3, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 5
    if-nez p3, :cond_a

    .line 7
    const/4 p2, 0x0

    .line 8
    iput p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 10
    goto :goto_5f

    .line 11
    :cond_a
    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    .line 14
    move-result p3

    .line 15
    iget-object p4, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 17
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object p4

    .line 21
    check-cast p4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 23
    iget-object p5, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    .line 28
    move-result p5

    .line 29
    if-eqz p3, :cond_25

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 34
    move-result v0

    .line 35
    sub-int/2addr v0, p2

    .line 36
    sub-int p2, v0, p5

    .line 38
    :cond_25
    if-eqz p3, :cond_2c

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 43
    move-result p5

    .line 44
    goto :goto_30

    .line 45
    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 48
    move-result p5

    .line 49
    :goto_30
    if-eqz p3, :cond_35

    .line 51
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 53
    goto :goto_37

    .line 54
    :cond_35
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 56
    :goto_37
    add-int/2addr p5, p3

    .line 57
    sub-int/2addr p2, p5

    .line 58
    int-to-float p2, p2

    .line 59
    iget p3, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    .line 61
    int-to-float p3, p3

    .line 62
    div-float/2addr p2, p3

    .line 63
    iput p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 65
    iget p3, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    .line 67
    if-eqz p3, :cond_47

    .line 69
    invoke-virtual {p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d(F)V

    .line 72
    :cond_47
    iget-object p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 74
    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p1

    .line 80
    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result p3

    .line 84
    if-eqz p3, :cond_5f

    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object p3

    .line 90
    check-cast p3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

    .line 92
    invoke-interface {p3, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;->a(Landroid/view/View;)V

    .line 95
    goto :goto_4f

    .line 96
    :cond_5f
    :goto_5f
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 101
    return-void
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 7
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 9
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    .line 12
    move-result v0

    .line 13
    const/high16 v1, 0x3f000000  # 0.5f

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_40

    .line 18
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 23
    move-result v0

    .line 24
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 26
    add-int/2addr v0, p3

    .line 27
    cmpg-float p3, p2, v2

    .line 29
    if-ltz p3, :cond_2a

    .line 31
    cmpl-float p2, p2, v2

    .line 33
    if-nez p2, :cond_2f

    .line 35
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 37
    iget p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 39
    cmpl-float p2, p2, v1

    .line 41
    if-lez p2, :cond_2f

    .line 43
    :cond_2a
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 45
    iget p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    .line 47
    add-int/2addr v0, p2

    .line 48
    :cond_2f
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 50
    iget-object p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 55
    move-result p2

    .line 56
    iget-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 58
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 61
    move-result p3

    .line 62
    sub-int/2addr p3, v0

    .line 63
    sub-int/2addr p3, p2

    .line 64
    goto :goto_5c

    .line 65
    :cond_40
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 70
    move-result v0

    .line 71
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 73
    add-int/2addr p3, v0

    .line 74
    cmpl-float p2, p2, v2

    .line 76
    if-gtz p2, :cond_57

    .line 78
    if-nez p2, :cond_5c

    .line 80
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 82
    iget p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    .line 84
    cmpl-float p2, p2, v1

    .line 86
    if-lez p2, :cond_5c

    .line 88
    :cond_57
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 90
    iget p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    .line 92
    add-int/2addr p3, p2

    .line 93
    :cond_5c
    :goto_5c
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 95
    iget-object p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 100
    move-result p1

    .line 101
    invoke-virtual {p2, p3, p1}, Lr0/c;->s(II)Z

    .line 104
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 109
    return-void
.end method

.method public final tryCaptureView(Landroid/view/View;I)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a()Z

    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 15
    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->b:Z

    .line 17
    return p1
.end method
