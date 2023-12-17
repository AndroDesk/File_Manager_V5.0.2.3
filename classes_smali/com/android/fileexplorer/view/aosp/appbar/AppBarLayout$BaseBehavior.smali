.class public Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;
.super Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;,
        Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;",
        ">",
        "Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastStartedType:I

.field private offsetAnimator:Landroid/animation/ValueAnimator;

.field private offsetDelta:I

.field private offsetToChildIndexOnLayout:I

.field private offsetToChildIndexOnLayoutIsMinHeight:Z

.field private offsetToChildIndexOnLayoutPerc:F

.field private onDragCallback:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    .line 3
    return p0
.end method

.method private addAccessibilityScrollActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 8
    move-result v1

    .line 9
    neg-int v1, v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v1, :cond_18

    .line 13
    invoke-virtual {p3, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_18

    .line 19
    sget-object v0, Ln0/c$a;->f:Ln0/c$a;

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Ln0/c$a;Z)V

    .line 25
    :cond_18
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_41

    .line 31
    const/4 v0, -0x1

    .line 32
    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3c

    .line 38
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    .line 41
    move-result v0

    .line 42
    neg-int v6, v0

    .line 43
    if-eqz v6, :cond_41

    .line 45
    sget-object v0, Ln0/c$a;->g:Ln0/c$a;

    .line 47
    new-instance v7, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$2;

    .line 49
    move-object v1, v7

    .line 50
    move-object v2, p0

    .line 51
    move-object v3, p1

    .line 52
    move-object v4, p2

    .line 53
    move-object v5, p3

    .line 54
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$2;-><init>(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;I)V

    .line 57
    invoke-static {p1, v0, v7}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    .line 60
    goto :goto_41

    .line 61
    :cond_3c
    sget-object p3, Ln0/c$a;->g:Ln0/c$a;

    .line 63
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Ln0/c$a;Z)V

    .line 66
    :cond_41
    :goto_41
    return-void
.end method

.method private addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Ln0/c$a;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Ln0/c$a;",
            "Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$3;

    .line 3
    invoke-direct {v0, p0, p2, p4}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$3;-><init>(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Z)V

    .line 6
    invoke-static {p1, p3, v0}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    .line 9
    return-void
.end method

.method private animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IF)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IF)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p3

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 9
    move-result v0

    .line 10
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 13
    move-result p4

    .line 14
    const/4 v1, 0x0

    .line 15
    cmpl-float v1, p4, v1

    .line 17
    if-lez v1, :cond_1e

    .line 19
    const/high16 v1, 0x447a0000  # 1000.0f

    .line 21
    int-to-float v0, v0

    .line 22
    div-float/2addr v0, p4

    .line 23
    mul-float/2addr v0, v1

    .line 24
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 27
    move-result p4

    .line 28
    mul-int/lit8 p4, p4, 0x3

    .line 30
    goto :goto_2c

    .line 31
    :cond_1e
    int-to-float p4, v0

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v0

    .line 36
    int-to-float v0, v0

    .line 37
    div-float/2addr p4, v0

    .line 38
    const/high16 v0, 0x3f800000  # 1.0f

    .line 40
    add-float/2addr p4, v0

    .line 41
    const/high16 v0, 0x43160000  # 150.0f

    .line 43
    mul-float/2addr p4, v0

    .line 44
    float-to-int p4, p4

    .line 45
    :goto_2c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;II)V

    .line 48
    return-void
.end method

.method private animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 4
    move-result v0

    .line 5
    if-ne v0, p3, :cond_16

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 9
    if-eqz p1, :cond_15

    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_15

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 19
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 22
    :cond_15
    return-void

    .line 23
    :cond_16
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 25
    if-nez v1, :cond_31

    .line 27
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 29
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 34
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 36
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 41
    new-instance v2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$1;

    .line 43
    invoke-direct {v2, p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$1;-><init>(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    goto :goto_34

    .line 50
    :cond_31
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 53
    :goto_34
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 55
    const/16 p2, 0x258

    .line 57
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    .line 60
    move-result p2

    .line 61
    int-to-long v1, p2

    .line 62
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 67
    const/4 p2, 0x2

    .line 68
    new-array p2, p2, [I

    .line 70
    const/4 p4, 0x0

    .line 71
    aput v0, p2, p4

    .line 73
    const/4 p4, 0x1

    .line 74
    aput p3, p2, p4

    .line 76
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 79
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 81
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 84
    return-void
.end method

.method private canScrollChildren(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->hasScrollableChildren()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 14
    move-result p3

    .line 15
    sub-int/2addr p1, p3

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 19
    move-result p2

    .line 20
    if-gt p1, p2, :cond_17

    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    :goto_18
    return p1
.end method

.method private static checkFlag(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_1c

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Lm0/q;

    .line 14
    if-nez v3, :cond_1b

    .line 16
    instance-of v3, v2, Landroid/widget/ListView;

    .line 18
    if-nez v3, :cond_1b

    .line 20
    instance-of v3, v2, Landroid/widget/ScrollView;

    .line 22
    if-eqz v3, :cond_18

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_5

    .line 28
    :cond_1b
    :goto_1b
    return-object v2

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method private static getAppBarChildOnOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)Landroid/view/View;
    .registers 6

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-ge v1, v0, :cond_1f

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 19
    move-result v3

    .line 20
    if-lt p1, v3, :cond_1c

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 25
    move-result v3

    .line 26
    if-gt p1, v3, :cond_1c

    .line 28
    return-object v2

    .line 29
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_9

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private getChildIndexOnOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_34

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 15
    move-result v3

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 19
    move-result v4

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;

    .line 26
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    .line 29
    move-result v5

    .line 30
    const/16 v6, 0x20

    .line 32
    invoke-static {v5, v6}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_2b

    .line 38
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 40
    sub-int/2addr v3, v5

    .line 41
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 43
    add-int/2addr v4, v2

    .line 44
    :cond_2b
    neg-int v2, p2

    .line 45
    if-gt v3, v2, :cond_31

    .line 47
    if-lt v4, v2, :cond_31

    .line 49
    return v1

    .line 50
    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_5

    .line 53
    :cond_34
    const/4 p1, -0x1

    .line 54
    return p1
.end method

.method private interpolateOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_a
    if-ge v3, v1, :cond_74

    .line 13
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;

    .line 23
    invoke-virtual {v5}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 30
    move-result v7

    .line 31
    if-lt v0, v7, :cond_71

    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 36
    move-result v7

    .line 37
    if-gt v0, v7, :cond_71

    .line 39
    if-eqz v6, :cond_74

    .line 41
    invoke-virtual {v5}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    .line 44
    move-result v1

    .line 45
    and-int/lit8 v3, v1, 0x1

    .line 47
    if-eqz v3, :cond_46

    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 52
    move-result v3

    .line 53
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 55
    add-int/2addr v3, v7

    .line 56
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 58
    add-int/2addr v3, v5

    .line 59
    add-int/2addr v2, v3

    .line 60
    and-int/lit8 v1, v1, 0x2

    .line 62
    if-eqz v1, :cond_46

    .line 64
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 66
    invoke-static {v4}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 69
    move-result v1

    .line 70
    sub-int/2addr v2, v1

    .line 71
    :cond_46
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 73
    invoke-static {v4}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_53

    .line 79
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    .line 82
    move-result p1

    .line 83
    sub-int/2addr v2, p1

    .line 84
    :cond_53
    if-lez v2, :cond_74

    .line 86
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 89
    move-result p1

    .line 90
    sub-int/2addr v0, p1

    .line 91
    int-to-float p1, v2

    .line 92
    int-to-float v0, v0

    .line 93
    div-float/2addr v0, p1

    .line 94
    invoke-interface {v6, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 97
    move-result v0

    .line 98
    mul-float/2addr v0, p1

    .line 99
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 102
    move-result p1

    .line 103
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    .line 106
    move-result p2

    .line 107
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 110
    move-result v0

    .line 111
    add-int/2addr v0, p1

    .line 112
    mul-int/2addr v0, p2

    .line 113
    return v0

    .line 114
    :cond_71
    add-int/lit8 v3, v3, 0x1

    .line 116
    goto :goto_a

    .line 117
    :cond_74
    return p2
.end method

.method private shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_a
    if-ge v1, p2, :cond_2b

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/view/View;

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 25
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 27
    instance-of v3, v2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;

    .line 29
    if-eqz v3, :cond_28

    .line 31
    check-cast v2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;

    .line 33
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->getOverlayTop()I

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_27

    .line 39
    const/4 v0, 0x1

    .line 40
    :cond_27
    return v0

    .line 41
    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_a

    .line 44
    :cond_2b
    return v0
.end method

.method private snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p2, v0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getChildIndexOnOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)I

    .line 8
    move-result v1

    .line 9
    if-ltz v1, :cond_79

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;

    .line 21
    invoke-virtual {v3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    .line 24
    move-result v4

    .line 25
    and-int/lit8 v5, v4, 0x11

    .line 27
    const/16 v6, 0x11

    .line 29
    if-ne v5, v6, :cond_79

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 34
    move-result v5

    .line 35
    neg-int v5, v5

    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 39
    move-result v6

    .line 40
    neg-int v6, v6

    .line 41
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    move-result v7

    .line 45
    add-int/lit8 v7, v7, -0x1

    .line 47
    if-ne v1, v7, :cond_35

    .line 49
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    .line 52
    move-result v1

    .line 53
    add-int/2addr v6, v1

    .line 54
    :cond_35
    const/4 v1, 0x2

    .line 55
    invoke-static {v4, v1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_44

    .line 61
    sget-object v7, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 63
    invoke-static {v2}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 66
    move-result v2

    .line 67
    add-int/2addr v6, v2

    .line 68
    goto :goto_57

    .line 69
    :cond_44
    const/4 v7, 0x5

    .line 70
    invoke-static {v4, v7}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_57

    .line 76
    sget-object v7, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 78
    invoke-static {v2}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 81
    move-result v2

    .line 82
    add-int/2addr v2, v6

    .line 83
    if-ge v0, v2, :cond_56

    .line 85
    move v5, v2

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move v6, v2

    .line 88
    :cond_57
    :goto_57
    const/16 v2, 0x20

    .line 90
    invoke-static {v4, v2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_65

    .line 96
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 98
    add-int/2addr v5, v2

    .line 99
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 101
    sub-int/2addr v6, v2

    .line 102
    :cond_65
    add-int v2, v6, v5

    .line 104
    div-int/2addr v2, v1

    .line 105
    if-ge v0, v2, :cond_6b

    .line 107
    move v5, v6

    .line 108
    :cond_6b
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 111
    move-result v0

    .line 112
    neg-int v0, v0

    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-static {v5, v0, v1}, La/b;->q(III)I

    .line 117
    move-result v0

    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IF)V

    .line 122
    :cond_79
    return-void
.end method

.method private updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ln0/c$a;->f:Ln0/c$a;

    .line 3
    invoke-virtual {v0}, Ln0/c$a;->a()I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0, p1}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {v0, p1}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 14
    sget-object v1, Ln0/c$a;->g:Ln0/c$a;

    .line 16
    invoke-virtual {v1}, Ln0/c$a;->a()I

    .line 19
    move-result v1

    .line 20
    invoke-static {v1, p1}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 23
    invoke-static {v0, p1}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_36

    .line 32
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_26

    .line 38
    goto :goto_36

    .line 39
    :cond_26
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 45
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 47
    instance-of v1, v1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;

    .line 49
    if-nez v1, :cond_33

    .line 51
    return-void

    .line 52
    :cond_33
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->addAccessibilityScrollActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;)V

    .line 55
    :cond_36
    :goto_36
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IIZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getAppBarChildOnOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_62

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;

    .line 13
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    .line 16
    move-result v1

    .line 17
    and-int/lit8 v2, v1, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_43

    .line 22
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 24
    invoke-static {v0}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 27
    move-result v2

    .line 28
    const/4 v4, 0x1

    .line 29
    if-lez p4, :cond_31

    .line 31
    and-int/lit8 p4, v1, 0xc

    .line 33
    if-eqz p4, :cond_31

    .line 35
    neg-int p3, p3

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 39
    move-result p4

    .line 40
    sub-int/2addr p4, v2

    .line 41
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    .line 44
    move-result v0

    .line 45
    sub-int/2addr p4, v0

    .line 46
    if-lt p3, p4, :cond_43

    .line 48
    :goto_2f
    move v3, v4

    .line 49
    goto :goto_43

    .line 50
    :cond_31
    and-int/lit8 p4, v1, 0x2

    .line 52
    if-eqz p4, :cond_43

    .line 54
    neg-int p3, p3

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 58
    move-result p4

    .line 59
    sub-int/2addr p4, v2

    .line 60
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    .line 63
    move-result v0

    .line 64
    sub-int/2addr p4, v0

    .line 65
    if-lt p3, p4, :cond_43

    .line 67
    goto :goto_2f

    .line 68
    :cond_43
    :goto_43
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->isLiftOnScroll()Z

    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_51

    .line 74
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    .line 81
    move-result v3

    .line 82
    :cond_51
    invoke-virtual {p2, v3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 85
    move-result p3

    .line 86
    if-nez p5, :cond_5f

    .line 88
    if-eqz p3, :cond_62

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)Z

    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_62

    .line 96
    :cond_5f
    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 99
    :cond_62
    return-void
.end method


# virtual methods
.method public bridge synthetic canDragView(Landroid/view/View;)Z
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->canDragView(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)Z

    move-result p1

    return p1
.end method

.method public canDragView(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;->canDrag(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)Z

    move-result p1

    return p1

    .line 4
    :cond_9
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_25

    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_24

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :cond_25
    :goto_25
    return v0
.end method

.method public bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getMaxDragOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method public getMaxDragOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getScrollRangeForDragFling(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method public getScrollRangeForDragFling(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    return p1
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public isOffsetAnimatorRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public bridge synthetic onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    return-void
.end method

.method public onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->setLiftedState(Z)Z

    :cond_14
    return-void
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    .line 1
    check-cast p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;I)Z"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getPendingAction()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    const/4 v2, 0x0

    if-ltz v1, :cond_3d

    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_3d

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 7
    iget-boolean v3, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v3, :cond_2b

    .line 8
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 9
    invoke-static {v0}, Lm0/g0$d;->d(Landroid/view/View;)I

    move-result v0

    .line 10
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    goto :goto_39

    .line 11
    :cond_2b
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v3, v0, v1

    .line 12
    :goto_39
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_67

    :cond_3d
    if-eqz v0, :cond_67

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_46

    move v1, v3

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_5b

    .line 13
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    if-eqz v1, :cond_57

    .line 14
    invoke-direct {p0, p1, p2, v0, v5}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IF)V

    goto :goto_67

    .line 15
    :cond_57
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_67

    :cond_5b
    and-int/2addr v0, v3

    if-eqz v0, :cond_67

    if-eqz v1, :cond_64

    .line 16
    invoke-direct {p0, p1, p2, v2, v5}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IF)V

    goto :goto_67

    .line 17
    :cond_64
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 18
    :cond_67
    :goto_67
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->resetPendingAction()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 20
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, La/b;->q(III)I

    move-result v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IIZ)V

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->onOffsetChanged(I)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    return p3
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 7

    .line 1
    check-cast p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IIII)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIII)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 3
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1a

    const/4 p5, 0x0

    .line 4
    invoke-static {p5, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1a
    invoke-super/range {p0 .. p6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 8

    .line 1
    check-cast p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    if-eqz p5, :cond_24

    if-gez p5, :cond_f

    .line 2
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p4

    neg-int p4, p4

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result p7

    add-int/2addr p7, p4

    goto :goto_15

    .line 4
    :cond_f
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result p4

    neg-int p4, p4

    const/4 p7, 0x0

    :goto_15
    move v4, p4

    move v5, p7

    if-eq v4, v5, :cond_24

    const/4 p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    aput p1, p6, p4

    .line 6
    :cond_24
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 7
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->setLiftedState(Z)Z

    :cond_31
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .registers 10

    .line 1
    check-cast p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p9}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    if-gez p7, :cond_13

    const/4 p3, 0x1

    .line 2
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p4

    aput p4, p9, p3

    :cond_13
    if-nez p7, :cond_18

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    :cond_18
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    check-cast p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/os/Parcelable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 2
    instance-of v0, p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;

    if-eqz v0, :cond_1a

    .line 3
    check-cast p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 4
    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 5
    iget p1, p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 6
    iget p1, p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    .line 7
    iget-boolean p1, p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    goto :goto_20

    .line 8
    :cond_1a
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    :goto_20
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 3

    .line 1
    check-cast p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)Landroid/os/Parcelable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_46

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    if-gtz v6, :cond_43

    if-ltz v5, :cond_43

    .line 8
    new-instance v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 9
    iput v3, v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    .line 10
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {v4}, Lm0/g0$d;->d(Landroid/view/View;)I

    move-result p1

    .line 12
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    move-result p2

    add-int/2addr p2, p1

    if-ne v5, p2, :cond_37

    const/4 v2, 0x1

    :cond_37
    iput-boolean v2, v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    int-to-float p1, v5

    .line 13
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    return-object v0

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_46
    return-object p1
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    .line 1
    check-cast p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    and-int/lit8 p4, p5, 0x2

    if-eqz p4, :cond_12

    .line 2
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p4

    if-nez p4, :cond_10

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->canScrollChildren(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-eqz p1, :cond_1c

    .line 3
    iget-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1c

    .line 4
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1c
    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 6
    iput p6, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 1
    check-cast p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-ne p4, v0, :cond_17

    .line 3
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    .line 4
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 5
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 6
    :cond_17
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setDragCallback(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    .line 3
    return-void
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 6

    .line 1
    check-cast p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;III)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;III)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_47

    if-lt v0, p4, :cond_47

    if-gt v0, p5, :cond_47

    .line 3
    invoke-static {p3, p4, p5}, La/b;->q(III)I

    move-result v5

    if-eq v0, v5, :cond_49

    .line 4
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 5
    invoke-direct {p0, p2, v5}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->interpolateOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)I

    move-result p3

    goto :goto_1d

    :cond_1c
    move p3, v5

    .line 6
    :goto_1d
    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    move-result p4

    sub-int v1, v0, v5

    sub-int p3, v5, p3

    .line 7
    iput p3, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    if-nez p4, :cond_32

    .line 8
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_32

    .line 9
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 10
    :cond_32
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->onOffsetChanged(I)V

    if-ge v5, v0, :cond_3d

    const/4 p3, -0x1

    goto :goto_3e

    :cond_3d
    const/4 p3, 0x1

    :goto_3e
    move v6, p3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IIZ)V

    goto :goto_49

    .line 12
    :cond_47
    iput v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    .line 13
    :cond_49
    :goto_49
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    return v1
.end method
