.class public Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationScrimBehavior.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COLLAPSE_DELAY:J = 0x0L

.field public static final COLLAPSE_DURATION:J = 0x96L

.field public static final EXPAND_DELAY:J = 0x4bL

.field public static final EXPAND_DURATION:J = 0x96L


# instance fields
.field private final collapseTiming:Lcom/google/android/material/animation/MotionTiming;

.field private final expandTiming:Lcom/google/android/material/animation/MotionTiming;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v1, 0x4b

    const-wide/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 3
    new-instance v0, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v0, 0x4b

    const-wide/16 v2, 0x96

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 6
    new-instance p1, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    return-void
.end method

.method private createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ZZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_5

    .line 3
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 8
    :goto_7
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz p2, :cond_1e

    .line 13
    if-nez p3, :cond_11

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 18
    :cond_11
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 20
    new-array p3, v2, [F

    .line 22
    const/high16 v0, 0x3f800000  # 1.0f

    .line 24
    aput v0, p3, v1

    .line 26
    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 29
    move-result-object p1

    .line 30
    goto :goto_28

    .line 31
    :cond_1e
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 33
    new-array p3, v2, [F

    .line 35
    aput v0, p3, v1

    .line 37
    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 40
    move-result-object p1

    .line 41
    :goto_28
    invoke-virtual {p5, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 44
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    .line 1
    instance-of p1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    return p1
.end method

.method public onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .registers 11

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p2

    .line 13
    move v2, p3

    .line 14
    move v3, p4

    .line 15
    move-object v4, p1

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V

    .line 19
    new-instance p4, Landroid/animation/AnimatorSet;

    .line 21
    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 24
    invoke-static {p4, p1}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 27
    new-instance p1, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;

    .line 29
    invoke-direct {p1, p0, p3, p2}, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V

    .line 32
    invoke-virtual {p4, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    return-object p4
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
