.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;,
        Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_END_DISTANCE:F = 0.5f

.field private static final DEFAULT_ALPHA_START_DISTANCE:F = 0.0f

.field private static final DEFAULT_DRAG_DISMISS_THRESHOLD:F = 0.5f

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final SWIPE_DIRECTION_ANY:I = 0x2

.field public static final SWIPE_DIRECTION_END_TO_START:I = 0x1

.field public static final SWIPE_DIRECTION_START_TO_END:I


# instance fields
.field public alphaEndSwipeDistance:F

.field public alphaStartSwipeDistance:F

.field private final dragCallback:Lr0/c$c;

.field public dragDismissThreshold:F

.field private interceptingEvents:Z

.field public listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

.field private sensitivity:F

.field private sensitivitySet:Z

.field public swipeDirection:I

.field public viewDragHelper:Lr0/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    .line 7
    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 10
    const/high16 v1, 0x3f000000  # 0.5f

    .line 12
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 14
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 16
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 18
    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;

    .line 20
    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    .line 23
    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Lr0/c$c;

    .line 25
    return-void
.end method

.method public static clamp(FFF)F
    .registers 3

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static clamp(III)I
    .registers 3

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private ensureViewDragHelper(Landroid/view/ViewGroup;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lr0/c;

    .line 3
    if-nez v0, :cond_2d

    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivitySet:Z

    .line 7
    if-eqz v0, :cond_20

    .line 9
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    .line 11
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Lr0/c$c;

    .line 13
    new-instance v2, Lr0/c;

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v2, v3, p1, v1}, Lr0/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lr0/c$c;)V

    .line 22
    iget p1, v2, Lr0/c;->b:I

    .line 24
    int-to-float p1, p1

    .line 25
    const/high16 v1, 0x3f800000  # 1.0f

    .line 27
    div-float/2addr v1, v0

    .line 28
    mul-float/2addr v1, p1

    .line 29
    float-to-int p1, v1

    .line 30
    iput p1, v2, Lr0/c;->b:I

    .line 32
    goto :goto_2b

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Lr0/c$c;

    .line 35
    new-instance v2, Lr0/c;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v2, v1, p1, v0}, Lr0/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lr0/c$c;)V

    .line 44
    :goto_2b
    iput-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lr0/c;

    .line 46
    :cond_2d
    return-void
.end method

.method public static fraction(FFF)F
    .registers 3

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method private updateAccessibilityActions(Landroid/view/View;)V
    .registers 4

    .line 1
    const/high16 v0, 0x100000

    .line 3
    invoke-static {v0, p1}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0, p1}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_19

    .line 16
    sget-object v0, Ln0/c$a;->j:Ln0/c$a;

    .line 18
    new-instance v1, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;

    .line 20
    invoke-direct {v1, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    .line 23
    invoke-static {p1, v0, v1}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    .line 26
    :cond_19
    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public getDragState()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lr0/c;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, v0, Lr0/c;->a:I

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public getListener()Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    .line 3
    return-object v0
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    .line 3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_13

    .line 10
    const/4 p2, 0x1

    .line 11
    if-eq v1, p2, :cond_10

    .line 13
    const/4 p2, 0x3

    .line 14
    if-eq v1, p2, :cond_10

    .line 16
    goto :goto_23

    .line 17
    :cond_10
    iput-boolean v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    .line 19
    goto :goto_23

    .line 20
    :cond_13
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 23
    move-result v0

    .line 24
    float-to-int v0, v0

    .line 25
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 28
    move-result v1

    .line 29
    float-to-int v1, v1

    .line 30
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 33
    move-result v0

    .line 34
    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    .line 36
    :goto_23
    if-eqz v0, :cond_2f

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    .line 41
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lr0/c;

    .line 43
    invoke-virtual {p1, p3}, Lr0/c;->t(Landroid/view/MotionEvent;)Z

    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_2f
    return v2
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    .line 4
    move-result p1

    .line 5
    sget-object p3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p2}, Lm0/g0$d;->c(Landroid/view/View;)I

    .line 10
    move-result p3

    .line 11
    if-nez p3, :cond_13

    .line 13
    const/4 p3, 0x1

    .line 14
    invoke-static {p2, p3}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 17
    invoke-direct {p0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->updateAccessibilityActions(Landroid/view/View;)V

    .line 20
    :cond_13
    return p1
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lr0/c;

    .line 3
    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p1, p3}, Lr0/c;->m(Landroid/view/MotionEvent;)V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public setDragDismissDistance(F)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000  # 1.0f

    .line 4
    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 10
    return-void
.end method

.method public setEndAlphaSwipeDistance(F)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000  # 1.0f

    .line 4
    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 10
    return-void
.end method

.method public setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    .line 3
    return-void
.end method

.method public setSensitivity(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivitySet:Z

    .line 6
    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000  # 1.0f

    .line 4
    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 10
    return-void
.end method

.method public setSwipeDirection(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 3
    return-void
.end method
