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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .registers 2

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Lr0/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 5

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getLockMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    return v2

    :cond_10
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getLockMode()I

    move-result v0

    if-ne v0, v1, :cond_22

    return v2

    :cond_22
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getLockMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_34

    return v2

    :cond_34
    return v1
.end method

.method public final clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    iget-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result p3

    if-eqz p3, :cond_3a

    iget-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr p3, p1

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    sub-int p1, p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_50

    :cond_3a
    iget-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p1

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    add-int/2addr p1, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_50
    return p1
.end method

.method public final clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public final getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    return p1
.end method

.method public final onEdgeDragStarted(II)V
    .registers 4

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Lr0/c;->c(Landroid/view/View;I)V

    return-void
.end method

.method public final onEdgeTouched(II)V
    .registers 4

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Lr0/c;->c(Landroid/view/View;I)V

    return-void
.end method

.method public final onViewCaptured(Landroid/view/View;I)V
    .registers 8

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p2, :cond_1b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_18

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1b
    return-void
.end method

.method public final onViewDragStateChanged(I)V
    .registers 6

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    iget v0, v0, Lr0/c;->a:I

    if-nez v0, :cond_5a

    iget v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    const/16 v1, 0x20

    if-nez v0, :cond_3a

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    iget-object v2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

    invoke-interface {v3, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;->c(Landroid/view/View;)V

    goto :goto_21

    :cond_31
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    goto :goto_5a

    :cond_3a
    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    iget-object v2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

    invoke-interface {v3, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;->b(Landroid/view/View;)V

    goto :goto_42

    :cond_52
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    :cond_5a
    :goto_5a
    return-void
.end method

.method public final onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object p3, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    if-nez p3, :cond_a

    const/4 p2, 0x0

    iput p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    goto :goto_5f

    :cond_a
    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result p3

    iget-object p4, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    iget-object p5, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    if-eqz p3, :cond_25

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    sub-int p2, v0, p5

    :cond_25
    if-eqz p3, :cond_2c

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    goto :goto_30

    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    :goto_30
    if-eqz p3, :cond_35

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_37

    :cond_35
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_37
    add-int/2addr p5, p3

    sub-int/2addr p2, p5

    int-to-float p2, p2

    iget p3, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    iget p3, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    if-eqz p3, :cond_47

    invoke-virtual {p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d(F)V

    :cond_47
    iget-object p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

    invoke-interface {p3, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;->a(Landroid/view/View;)V

    goto :goto_4f

    :cond_5f
    :goto_5f
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v0

    const/high16 v1, 0x3f000000  # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, p3

    cmpg-float p3, p2, v2

    if-ltz p3, :cond_2a

    cmpl-float p2, p2, v2

    if-nez p2, :cond_2f

    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2f

    :cond_2a
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    add-int/2addr v0, p2

    :cond_2f
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p3, v0

    sub-int/2addr p3, p2

    goto :goto_5c

    :cond_40
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, v0

    cmpl-float p2, p2, v2

    if-gtz p2, :cond_57

    if-nez p2, :cond_5c

    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_5c

    :cond_57
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    add-int/2addr p3, p2

    :cond_5c
    :goto_5c
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lr0/c;->s(II)Z

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final tryCaptureView(Landroid/view/View;I)Z
    .registers 3

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->a()Z

    move-result p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->b:Z

    return p1
.end method
