.class Lcom/google/android/material/behavior/SwipeDismissBehavior$1;
.super Lr0/c$c;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private activePointerId:I

.field private originalCapturedViewLeft:I

.field public final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 3
    invoke-direct {p0}, Lr0/c$c;-><init>()V

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 9
    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v1, :cond_34

    .line 8
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 10
    invoke-static {p1}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 13
    move-result p1

    .line 14
    if-ne p1, v3, :cond_11

    .line 16
    move p1, v3

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move p1, v2

    .line 19
    :goto_12
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 21
    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 23
    const/4 v5, 0x2

    .line 24
    if-ne v4, v5, :cond_1a

    .line 26
    return v3

    .line 27
    :cond_1a
    if-nez v4, :cond_27

    .line 29
    if-eqz p1, :cond_23

    .line 31
    cmpg-float p1, p2, v0

    .line 33
    if-gez p1, :cond_26

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    if-lez v1, :cond_26

    .line 38
    :goto_25
    move v2, v3

    .line 39
    :cond_26
    return v2

    .line 40
    :cond_27
    if-ne v4, v3, :cond_33

    .line 42
    if-eqz p1, :cond_2e

    .line 44
    if-lez v1, :cond_33

    .line 46
    goto :goto_32

    .line 47
    :cond_2e
    cmpg-float p1, p2, v0

    .line 49
    if-gez p1, :cond_33

    .line 51
    :goto_32
    move v2, v3

    .line 52
    :cond_33
    return v2

    .line 53
    :cond_34
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 56
    move-result p2

    .line 57
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 59
    sub-int/2addr p2, v0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 63
    move-result p1

    .line 64
    int-to-float p1, p1

    .line 65
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 67
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 69
    mul-float/2addr p1, v0

    .line 70
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 73
    move-result p1

    .line 74
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 77
    move-result p2

    .line 78
    if-lt p2, p1, :cond_50

    .line 80
    move v2, v3

    .line 81
    :cond_50
    return v2
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 6

    .line 1
    sget-object p3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p1}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result p3

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p3, v0, :cond_b

    .line 10
    move p3, v0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p3, 0x0

    .line 13
    :goto_c
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 15
    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 17
    if-nez v1, :cond_26

    .line 19
    if-eqz p3, :cond_1e

    .line 21
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 26
    move-result p1

    .line 27
    sub-int/2addr p3, p1

    .line 28
    iget p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 30
    goto :goto_49

    .line 31
    :cond_1e
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 36
    move-result p1

    .line 37
    :goto_24
    add-int/2addr p1, p3

    .line 38
    goto :goto_49

    .line 39
    :cond_26
    if-ne v1, v0, :cond_3b

    .line 41
    if-eqz p3, :cond_31

    .line 43
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 48
    move-result p1

    .line 49
    goto :goto_24

    .line 50
    :cond_31
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 55
    move-result p1

    .line 56
    sub-int/2addr p3, p1

    .line 57
    iget p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 59
    goto :goto_49

    .line 60
    :cond_3b
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 65
    move-result v0

    .line 66
    sub-int/2addr p3, v0

    .line 67
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 72
    move-result p1

    .line 73
    add-int/2addr p1, v0

    .line 74
    :goto_49
    invoke-static {p3, p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(III)I

    .line 77
    move-result p1

    .line 78
    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 6
    move-result p2

    .line 7
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_12

    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    :cond_12
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    .line 10
    :cond_9
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 8

    .line 1
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 3
    int-to-float p3, p3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    move-result p4

    .line 8
    int-to-float p4, p4

    .line 9
    iget-object p5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 11
    iget p5, p5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 13
    mul-float/2addr p4, p5

    .line 14
    add-float/2addr p4, p3

    .line 15
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 17
    int-to-float p3, p3

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 21
    move-result p5

    .line 22
    int-to-float p5, p5

    .line 23
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 25
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 27
    mul-float/2addr p5, v0

    .line 28
    add-float/2addr p5, p3

    .line 29
    int-to-float p2, p2

    .line 30
    cmpg-float p3, p2, p4

    .line 32
    const/high16 v0, 0x3f800000  # 1.0f

    .line 34
    if-gtz p3, :cond_27

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 39
    goto :goto_3d

    .line 40
    :cond_27
    cmpl-float p3, p2, p5

    .line 42
    const/4 v1, 0x0

    .line 43
    if-ltz p3, :cond_30

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 48
    goto :goto_3d

    .line 49
    :cond_30
    invoke-static {p4, p5, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->fraction(FFF)F

    .line 52
    move-result p2

    .line 53
    sub-float p2, v0, p2

    .line 55
    invoke-static {v1, p2, v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    .line 58
    move-result p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 62
    :goto_3d
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 6

    .line 1
    const/4 p3, -0x1

    .line 2
    iput p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    move-result p3

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1a

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 17
    move-result p2

    .line 18
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 20
    if-ge p2, v0, :cond_17

    .line 22
    sub-int/2addr v0, p3

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    add-int/2addr v0, p3

    .line 25
    :goto_18
    const/4 p2, 0x1

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 29
    const/4 p2, 0x0

    .line 30
    :goto_1d
    iget-object p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 32
    iget-object p3, p3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lr0/c;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 37
    move-result v1

    .line 38
    invoke-virtual {p3, v0, v1}, Lr0/c;->s(II)Z

    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_38

    .line 44
    new-instance p3, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;

    .line 46
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 48
    invoke-direct {p3, v0, p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    .line 51
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 53
    invoke-static {p1, p3}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 56
    goto :goto_43

    .line 57
    :cond_38
    if-eqz p2, :cond_43

    .line 59
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 61
    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    .line 63
    if-eqz p2, :cond_43

    .line 65
    invoke-interface {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 68
    :cond_43
    :goto_43
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_7

    .line 6
    if-ne v0, p2, :cond_11

    .line 8
    :cond_7
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 10
    invoke-virtual {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_11

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    :goto_12
    return p1
.end method
