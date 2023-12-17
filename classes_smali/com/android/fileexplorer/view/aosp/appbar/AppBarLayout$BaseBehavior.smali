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
.field private static final INVALID_POSITION:I

.field private static final MAX_OFFSET_ANIMATION_DURATION:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->INVALID_POSITION:I

    const v0, 0x92fce

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->MAX_OFFSET_ANIMATION_DURATION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_18

    invoke-virtual {p3, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Ln0/c$a;->f:Ln0/c$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Ln0/c$a;Z)V

    :cond_18
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    neg-int v6, v0

    if-eqz v6, :cond_41

    sget-object v0, Ln0/c$a;->g:Ln0/c$a;

    new-instance v7, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$2;-><init>(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;I)V

    invoke-static {p1, v0, v7}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    goto :goto_41

    :cond_3c
    sget-object p3, Ln0/c$a;->g:Ln0/c$a;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Ln0/c$a;Z)V

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

    new-instance v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$3;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$3;-><init>(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Z)V

    invoke-static {p1, p3, v0}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_1e

    const/high16 v1, 0x447a0000  # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, p4

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    goto :goto_2c

    :cond_1e
    int-to-float p4, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000  # 1.0f

    add-float/2addr p4, v0

    const/high16 v0, 0x43160000  # 150.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    :goto_2c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;II)V

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ne v0, p3, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_15
    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_31

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$1;-><init>(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_34

    :cond_31
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_34
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/16 p2, 0x258

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

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

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->hasScrollableChildren()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

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

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1c

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lm0/q;

    if-nez v3, :cond_1b

    instance-of v3, v2, Landroid/widget/ListView;

    if-nez v3, :cond_1b

    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_18

    goto :goto_1b

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    :goto_1b
    return-object v2

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getAppBarChildOnOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)Landroid/view/View;
    .registers 6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1f

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_1c

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1c

    return-object v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildIndexOnOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_34

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v5

    if-eqz v5, :cond_2b

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v5

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    :cond_2b
    neg-int v2, p2

    if-gt v3, v2, :cond_31

    if-lt v4, v2, :cond_31

    return v1

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_34
    const/4 p1, -0x1

    return p1
.end method

.method private interpolateOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_74

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v5}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v0, v7, :cond_71

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v0, v7, :cond_71

    if-eqz v6, :cond_74

    invoke-virtual {v5}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_46

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v7

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_46

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Lm0/g0$d;->d(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    :cond_46
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Lm0/g0$d;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    move-result p1

    sub-int/2addr v2, p1

    :cond_53
    if-lez v2, :cond_74

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v2

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-interface {v6, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    mul-int/2addr v0, p2

    return v0

    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

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

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p2, :cond_2b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    instance-of v3, v2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;

    if-eqz v3, :cond_28

    check-cast v2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->getOverlayTop()I

    move-result p1

    if-eqz p1, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getChildIndexOnOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)I

    move-result v1

    if-ltz v1, :cond_79

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v4

    and-int/lit8 v5, v4, 0x11

    const/16 v6, 0x11

    if-ne v5, v6, :cond_79

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_35

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v6, v1

    :cond_35
    const/4 v1, 0x2

    invoke-static {v4, v1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v7

    if-eqz v7, :cond_44

    sget-object v7, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, Lm0/g0$d;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v6, v2

    goto :goto_57

    :cond_44
    const/4 v7, 0x5

    invoke-static {v4, v7}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v7

    if-eqz v7, :cond_57

    sget-object v7, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, Lm0/g0$d;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v6

    if-ge v0, v2, :cond_56

    move v5, v2

    goto :goto_57

    :cond_56
    move v6, v2

    :cond_57
    :goto_57
    const/16 v2, 0x20

    invoke-static {v4, v2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v2

    if-eqz v2, :cond_65

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v2

    :cond_65
    add-int v2, v6, v5

    div-int/2addr v2, v1

    if-ge v0, v2, :cond_6b

    move v5, v6

    :cond_6b
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v5, v0, v1}, La/b;->q(III)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IF)V

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

    sget-object v0, Ln0/c$a;->f:Ln0/c$a;

    invoke-virtual {v0}, Ln0/c$a;->a()I

    move-result v0

    invoke-static {v0, p1}, Lm0/g0;->j(ILandroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lm0/g0;->g(ILandroid/view/View;)V

    sget-object v1, Ln0/c$a;->g:Ln0/c$a;

    invoke-virtual {v1}, Ln0/c$a;->a()I

    move-result v1

    invoke-static {v1, p1}, Lm0/g0;->j(ILandroid/view/View;)V

    invoke-static {v0, p1}, Lm0/g0;->g(ILandroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-nez v1, :cond_26

    goto :goto_36

    :cond_26
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    instance-of v1, v1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;

    if-nez v1, :cond_33

    return-void

    :cond_33
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->addAccessibilityScrollActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;)V

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

    invoke-static {p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getAppBarChildOnOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$d;->d(Landroid/view/View;)I

    move-result v2

    const/4 v4, 0x1

    if-lez p4, :cond_31

    and-int/lit8 p4, v1, 0xc

    if-eqz p4, :cond_31

    neg-int p3, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_43

    :goto_2f
    move v3, v4

    goto :goto_43

    :cond_31
    and-int/lit8 p4, v1, 0x2

    if-eqz p4, :cond_43

    neg-int p3, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_43

    goto :goto_2f

    :cond_43
    :goto_43
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p3

    if-eqz p3, :cond_51

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v3

    :cond_51
    invoke-virtual {p2, v3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->setLiftedState(Z)Z

    move-result p3

    if-nez p5, :cond_5f

    if-eqz p3, :cond_62

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)Z

    move-result p1

    if-eqz p1, :cond_62

    :cond_5f
    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_62
    return-void
.end method


# virtual methods
.method public bridge synthetic canDragView(Landroid/view/View;)Z
    .registers 2

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;->canDrag(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)Z

    move-result p1

    return p1

    :cond_9
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, -0x1

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

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .registers 2

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

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    return p1
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isOffsetAnimatorRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public bridge synthetic onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 3

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

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-eqz v0, :cond_14

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

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getPendingAction()I

    move-result v0

    iget v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    const/4 v2, 0x0

    if-ltz v1, :cond_3d

    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_3d

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    iget-boolean v3, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v3, :cond_2b

    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$d;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    goto :goto_39

    :cond_2b
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v3, v0, v1

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

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    if-eqz v1, :cond_57

    invoke-direct {p0, p1, p2, v0, v5}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IF)V

    goto :goto_67

    :cond_57
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_67

    :cond_5b
    and-int/2addr v0, v3

    if-eqz v0, :cond_67

    if-eqz v1, :cond_64

    invoke-direct {p0, p1, p2, v2, v5}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IF)V

    goto :goto_67

    :cond_64
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    :cond_67
    :goto_67
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->resetPendingAction()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, La/b;->q(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IIZ)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->onOffsetChanged(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    return p3
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 7

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

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1a

    const/4 p5, 0x0

    invoke-static {p5, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    :cond_1a
    invoke-super/range {p0 .. p6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 8

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

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p4

    neg-int p4, p4

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result p7

    add-int/2addr p7, p4

    goto :goto_15

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

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    aput p1, p6, p4

    :cond_24
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->setLiftedState(Z)Z

    :cond_31
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .registers 10

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

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    :cond_18
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 4

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

    instance-of v0, p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;

    if-eqz v0, :cond_1a

    check-cast p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;

    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    iget p1, p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    iget p1, p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    iget-boolean p1, p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    goto :goto_20

    :cond_1a
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    :goto_20
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 3

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

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_46

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    if-gtz v6, :cond_43

    if-ltz v5, :cond_43

    new-instance v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    iput v3, v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Lm0/g0$d;->d(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTopInset()I

    move-result p2

    add-int/2addr p2, p1

    if-ne v5, p2, :cond_37

    const/4 v2, 0x1

    :cond_37
    iput-boolean v2, v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    int-to-float p1, v5

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

    iget-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1c
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    iput p6, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

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

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-ne p4, v0, :cond_17

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->setLiftedState(Z)Z

    :cond_17
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setDragCallback(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    return-void
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 6

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_47

    if-lt v0, p4, :cond_47

    if-gt v0, p5, :cond_47

    invoke-static {p3, p4, p5}, La/b;->q(III)I

    move-result v5

    if-eq v0, v5, :cond_49

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_1c

    invoke-direct {p0, p2, v5}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->interpolateOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)I

    move-result p3

    goto :goto_1d

    :cond_1c
    move p3, v5

    :goto_1d
    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    move-result p4

    sub-int v1, v0, v5

    sub-int p3, v5, p3

    iput p3, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    if-nez p4, :cond_32

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_32

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

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

    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IIZ)V

    goto :goto_49

    :cond_47
    iput v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    :cond_49
    :goto_49
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V

    return v1
.end method