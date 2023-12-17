.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$Behavior;,
        Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;,
        Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field public static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field public static final PENDING_ACTION_COLLAPSED:I = 0x2

.field public static final PENDING_ACTION_EXPANDED:I = 0x1

.field public static final PENDING_ACTION_FORCE:I = 0x8

.field public static final PENDING_ACTION_NONE:I


# instance fields
.field private currentOffset:I

.field private downPreScrollRange:I

.field private downScrollRange:I

.field private elevationOverlayAnimator:Landroid/animation/ValueAnimator;

.field private haveChildWithInterpolator:Z

.field private lastInsets:Lm0/r0;

.field private liftOnScroll:Z

.field private liftOnScrollTargetView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private liftOnScrollTargetViewId:I

.field private liftable:Z

.field private liftableOverride:Z

.field private lifted:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction:I

.field private statusBarForeground:Landroid/graphics/drawable/Drawable;

.field private tmpStatesArray:[I

.field private totalScrollRange:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_AppBarLayout:I

    .line 3
    sput v0, Lcom/google/android/material/appbar/AppBarLayout;->DEF_STYLE_RES:I

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->appBarLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    .line 3
    sget v4, Lcom/google/android/material/appbar/AppBarLayout;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 5
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 6
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    const/4 v6, 0x0

    .line 7
    iput v6, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setOrientation(I)V

    .line 10
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    invoke-static {p0}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 12
    invoke-static {p0, p2, p3, v4}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 13
    sget-object v2, Lcom/google/android/material/R$styleable;->AppBarLayout:[I

    new-array v5, v6, [I

    move-object v0, v7

    move-object v1, p2

    move v3, p3

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 15
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 16
    invoke-static {p0, p3}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_5d

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 19
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 20
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 21
    invoke-virtual {v0, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 22
    invoke-static {p0, v0}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_5d
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 24
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 25
    invoke-direct {p0, p3, v6, v6}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 26
    :cond_6c
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 27
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    .line 28
    invoke-static {p0, p3}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    :cond_7c
    const/16 p3, 0x1a

    if-lt v8, p3, :cond_9e

    .line 29
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 30
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 31
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setKeyboardNavigationCluster(Z)V

    .line 32
    :cond_8f
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 33
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 34
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    .line 35
    :cond_9e
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScroll:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 36
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScrollTargetViewId:I

    .line 37
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 38
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_statusBarForeground:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 41
    invoke-static {p0, p1}, Lm0/g0$i;->u(Landroid/view/View;Lm0/v;)V

    return-void
.end method

.method private clearLiftOnScrollTargetView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method

.method private findLiftOnScrollTargetView(Landroid/view/View;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_31

    .line 6
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v0, v2, :cond_31

    .line 11
    if-eqz p1, :cond_11

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move-object p1, v1

    .line 19
    :goto_12
    if-nez p1, :cond_28

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    move-result-object v0

    .line 25
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 27
    if-eqz v0, :cond_28

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/view/ViewGroup;

    .line 35
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p1

    .line 41
    :cond_28
    if-eqz p1, :cond_31

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 45
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 48
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 50
    :cond_31
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 52
    if-eqz p1, :cond_3c

    .line 54
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    move-object v1, p1

    .line 59
    check-cast v1, Landroid/view/View;

    .line 61
    :cond_3c
    return-object v1
.end method

.method private hasCollapsibleChild()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v2, v0, :cond_1d

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 19
    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->isCollapsible()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1a

    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_6

    .line 30
    :cond_1d
    return v1
.end method

.method private invalidateScrollRanges()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 4
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 6
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    .line 8
    return-void
.end method

.method private setExpanded(ZZZ)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    :goto_5
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const/4 p2, 0x4

    goto :goto_b

    :cond_a
    move p2, v0

    :goto_b
    or-int/2addr p1, p2

    if-eqz p3, :cond_10

    const/16 v0, 0x8

    :cond_10
    or-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setLiftableState(Z)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    .line 3
    if-eq v0, p1, :cond_b

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method private shouldDrawStatusBarForeground()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_c

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

.method private shouldOffsetFirstChild()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_1c

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result v2

    .line 16
    const/16 v3, 0x8

    .line 18
    if-eq v2, v3, :cond_1c

    .line 20
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 22
    invoke-static {v0}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1c

    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1c
    return v1
.end method

.method private startLiftOnScrollElevationOverlayAnimation(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/google/android/material/R$dimen;->design_appbar_elevation:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p2, :cond_f

    .line 14
    move v2, v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v2, v0

    .line 17
    :goto_10
    if-eqz p2, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v0, v1

    .line 21
    :goto_14
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 23
    if-eqz p2, :cond_1b

    .line 25
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    :cond_1b
    const/4 p2, 0x2

    .line 29
    new-array p2, p2, [F

    .line 31
    const/4 v1, 0x0

    .line 32
    aput v2, p2, v1

    .line 34
    const/4 v1, 0x1

    .line 35
    aput v0, p2, v1

    .line 37
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v0

    .line 47
    sget v1, Lcom/google/android/material/R$integer;->app_bar_elevation_anim_duration:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 52
    move-result v0

    .line 53
    int-to-long v0, v0

    .line 54
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 59
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 61
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 66
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$2;

    .line 68
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$2;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 71
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 76
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 79
    return-void
.end method

.method private updateWillNotDraw()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldDrawStatusBarForeground()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 10
    return-void
.end method


# virtual methods
.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    :cond_b
    if-eqz p1, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 3
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldDrawStatusBarForeground()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1d

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    .line 17
    neg-int v2, v2

    .line 18
    int-to-float v2, v2

    .line 19
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 30
    :cond_1d
    return-void
.end method

.method public drawableStateChanged()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz v1, :cond_1a

    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1a

    .line 18
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_1a
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .registers 4

    .line 3
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .registers 4

    .line 5
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .registers 3

    .line 6
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_c

    .line 7
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 8
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    .line 9
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 10
    :cond_18
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
            "Lcom/google/android/material/appbar/AppBarLayout;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    .line 6
    return-object v0
.end method

.method public getDownNestedPreScrollRange()I
    .registers 10

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_e
    if-ltz v0, :cond_60

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 30
    move-result v5

    .line 31
    iget v6, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 33
    and-int/lit8 v7, v6, 0x5

    .line 35
    const/4 v8, 0x5

    .line 36
    if-ne v7, v8, :cond_5a

    .line 38
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 40
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 42
    add-int/2addr v7, v4

    .line 43
    and-int/lit8 v4, v6, 0x8

    .line 45
    if-eqz v4, :cond_36

    .line 47
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 49
    invoke-static {v3}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 52
    move-result v4

    .line 53
    :goto_34
    add-int/2addr v4, v7

    .line 54
    goto :goto_45

    .line 55
    :cond_36
    and-int/lit8 v4, v6, 0x2

    .line 57
    if-eqz v4, :cond_43

    .line 59
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 61
    invoke-static {v3}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 64
    move-result v4

    .line 65
    sub-int v4, v5, v4

    .line 67
    goto :goto_34

    .line 68
    :cond_43
    add-int v4, v7, v5

    .line 70
    :goto_45
    if-nez v0, :cond_58

    .line 72
    sget-object v6, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 74
    invoke-static {v3}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_58

    .line 80
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 83
    move-result v3

    .line 84
    sub-int/2addr v5, v3

    .line 85
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 88
    move-result v4

    .line 89
    :cond_58
    add-int/2addr v2, v4

    .line 90
    goto :goto_5d

    .line 91
    :cond_5a
    if-lez v2, :cond_5d

    .line 93
    goto :goto_60

    .line 94
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v0, -0x1

    .line 96
    goto :goto_e

    .line 97
    :cond_60
    :goto_60
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 100
    move-result v0

    .line 101
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 103
    return v0
.end method

.method public getDownNestedScrollRange()I
    .registers 10

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    :goto_d
    if-ge v2, v0, :cond_39

    .line 16
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result v6

    .line 30
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 32
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 34
    add-int/2addr v7, v8

    .line 35
    add-int/2addr v7, v6

    .line 36
    iget v5, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 38
    and-int/lit8 v6, v5, 0x1

    .line 40
    if-eqz v6, :cond_39

    .line 42
    add-int/2addr v3, v7

    .line 43
    and-int/lit8 v5, v5, 0x2

    .line 45
    if-eqz v5, :cond_36

    .line 47
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 49
    invoke-static {v4}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 52
    move-result v0

    .line 53
    sub-int/2addr v3, v0

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_d

    .line 58
    :cond_39
    :goto_39
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    .line 64
    return v0
.end method

.method public getLiftOnScrollTargetViewId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 3
    return v0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 4
    move-result v0

    .line 5
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p0}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_10

    .line 13
    :goto_c
    mul-int/lit8 v1, v1, 0x2

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1

    .line 17
    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-lt v1, v2, :cond_21

    .line 24
    sub-int/2addr v1, v2

    .line 25
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 32
    move-result v1

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 v1, 0x0

    .line 35
    :goto_22
    if-eqz v1, :cond_25

    .line 37
    goto :goto_c

    .line 38
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 41
    move-result v0

    .line 42
    div-int/lit8 v0, v0, 0x3

    .line 44
    return v0
.end method

.method public getPendingAction()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 3
    return v0
.end method

.method public getStatusBarForeground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getTargetElevation()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getTopInset()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Lm0/r0;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lm0/r0;->e()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public final getTotalScrollRange()I
    .registers 10

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    :goto_d
    if-ge v2, v0, :cond_49

    .line 16
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result v6

    .line 30
    iget v7, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 32
    and-int/lit8 v8, v7, 0x1

    .line 34
    if-eqz v8, :cond_49

    .line 36
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 38
    add-int/2addr v6, v8

    .line 39
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 41
    add-int/2addr v6, v5

    .line 42
    add-int/2addr v6, v3

    .line 43
    if-nez v2, :cond_39

    .line 45
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 47
    invoke-static {v4}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_39

    .line 53
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 56
    move-result v3

    .line 57
    sub-int/2addr v6, v3

    .line 58
    :cond_39
    move v3, v6

    .line 59
    and-int/lit8 v5, v7, 0x2

    .line 61
    if-eqz v5, :cond_46

    .line 63
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 65
    invoke-static {v4}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 68
    move-result v0

    .line 69
    sub-int/2addr v3, v0

    .line 70
    goto :goto_49

    .line 71
    :cond_46
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto :goto_d

    .line 74
    :cond_49
    :goto_49
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 80
    return v0
.end method

.method public getUpNestedPreScrollRange()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public hasChildWithInterpolator()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 3
    return v0
.end method

.method public hasScrollableChildren()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isLiftOnScroll()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 7
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    .line 3
    if-nez v0, :cond_9

    .line 5
    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    .line 12
    array-length v1, v0

    .line 13
    add-int/2addr p1, v1

    .line 14
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x0

    .line 19
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    .line 21
    sget v3, Lcom/google/android/material/R$attr;->state_liftable:I

    .line 23
    if-eqz v2, :cond_19

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    neg-int v3, v3

    .line 27
    :goto_1a
    aput v3, v0, v1

    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz v2, :cond_26

    .line 32
    iget-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 34
    if-eqz v3, :cond_26

    .line 36
    sget v3, Lcom/google/android/material/R$attr;->state_lifted:I

    .line 38
    goto :goto_29

    .line 39
    :cond_26
    sget v3, Lcom/google/android/material/R$attr;->state_lifted:I

    .line 41
    neg-int v3, v3

    .line 42
    :goto_29
    aput v3, v0, v1

    .line 44
    const/4 v1, 0x2

    .line 45
    sget v3, Lcom/google/android/material/R$attr;->state_collapsible:I

    .line 47
    if-eqz v2, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    neg-int v3, v3

    .line 51
    :goto_32
    aput v3, v0, v1

    .line 53
    const/4 v1, 0x3

    .line 54
    if-eqz v2, :cond_3e

    .line 56
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 58
    if-eqz v2, :cond_3e

    .line 60
    sget v2, Lcom/google/android/material/R$attr;->state_collapsed:I

    .line 62
    goto :goto_41

    .line 63
    :cond_3e
    sget v2, Lcom/google/android/material/R$attr;->state_collapsed:I

    .line 65
    neg-int v2, v2

    .line 66
    :goto_41
    aput v2, v0, v1

    .line 68
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->clearLiftOnScrollTargetView()V

    .line 7
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 4
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 6
    invoke-static {p0}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    if-eqz p1, :cond_27

    .line 13
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_27

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    move-result p3

    .line 27
    sub-int/2addr p3, p2

    .line 28
    :goto_1b
    if-ltz p3, :cond_27

    .line 30
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object p4

    .line 34
    invoke-virtual {p4, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 37
    add-int/lit8 p3, p3, -0x1

    .line 39
    goto :goto_1b

    .line 40
    :cond_27
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    .line 43
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    move-result p3

    .line 50
    move p4, p1

    .line 51
    :goto_32
    if-ge p4, p3, :cond_4a

    .line 53
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    move-result-object p5

    .line 57
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    move-result-object p5

    .line 61
    check-cast p5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 63
    invoke-virtual {p5}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    .line 66
    move-result-object p5

    .line 67
    if-eqz p5, :cond_47

    .line 69
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 71
    goto :goto_4a

    .line 72
    :cond_47
    add-int/lit8 p4, p4, 0x1

    .line 74
    goto :goto_32

    .line 75
    :cond_4a
    :goto_4a
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 77
    if-eqz p3, :cond_59

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 82
    move-result p4

    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 86
    move-result p5

    .line 87
    invoke-virtual {p3, p1, p1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    :cond_59
    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    .line 92
    if-nez p3, :cond_6c

    .line 94
    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 96
    if-nez p3, :cond_69

    .line 98
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->hasCollapsibleChild()Z

    .line 101
    move-result p3

    .line 102
    if-eqz p3, :cond_68

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move p2, p1

    .line 106
    :cond_69
    :goto_69
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    .line 109
    :cond_6c
    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    move-result p1

    .line 8
    const/high16 v0, 0x40000000  # 2.0f

    .line 10
    if-eq p1, v0, :cond_43

    .line 12
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-static {p0}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_43

    .line 20
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_43

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result v0

    .line 30
    const/high16 v1, -0x80000000

    .line 32
    if-eq p1, v1, :cond_2a

    .line 34
    if-eqz p1, :cond_24

    .line 36
    goto :goto_3c

    .line 37
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 40
    move-result p1

    .line 41
    add-int/2addr v0, p1

    .line 42
    goto :goto_3c

    .line 43
    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 50
    move-result v0

    .line 51
    add-int/2addr v0, p1

    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 56
    move-result p2

    .line 57
    invoke-static {v0, p1, p2}, La/b;->q(III)I

    .line 60
    move-result v0

    .line 61
    :goto_3c
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 64
    move-result p1

    .line 65
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 68
    :cond_43
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    .line 71
    return-void
.end method

.method public onOffsetChanged(I)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    .line 16
    if-eqz v0, :cond_28

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    :goto_16
    if-ge v1, v0, :cond_28

    .line 25
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    .line 27
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;

    .line 33
    if-eqz v2, :cond_25

    .line 35
    invoke-interface {v2, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V

    .line 38
    :cond_25
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_16

    .line 41
    :cond_28
    return-void
.end method

.method public onWindowInsetChanged(Lm0/r0;)Lm0/r0;
    .registers 4

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    move-object v0, p1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Lm0/r0;

    .line 14
    invoke-static {v1, v0}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1b

    .line 20
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Lm0/r0;

    .line 22
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->updateWillNotDraw()V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 28
    :cond_1b
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    return-void
.end method

.method public resetPendingAction()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 4
    return-void
.end method

.method public setElevation(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 7
    return-void
.end method

.method public setExpanded(Z)V
    .registers 3

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p0}, Lm0/g0$g;->c(Landroid/view/View;)Z

    move-result v0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .registers 4

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    return-void
.end method

.method public setLiftOnScroll(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 3
    return-void
.end method

.method public setLiftOnScrollTargetViewId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->clearLiftOnScrollTargetView()V

    .line 6
    return-void
.end method

.method public setLiftable(Z)Z
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public setLifted(Z)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setLiftedState(Z)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 3
    if-eq v0, p1, :cond_20

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 10
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 12
    if-eqz v0, :cond_1e

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v0

    .line 18
    instance-of v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 20
    if-eqz v0, :cond_1e

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 28
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->startLiftOnScrollElevationOverlayAnimation(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)V

    .line 31
    :cond_1e
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public setOrientation(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_7

    .line 4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "AppBarLayout is always vertical and does not support horizontal orientation"

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1
.end method

.method public setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eq v0, p1, :cond_4a

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    :cond_a
    if-eqz p1, :cond_10

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1

    .line 17
    :cond_10
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 19
    if-eqz v1, :cond_42

    .line 21
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_23

    .line 27
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 36
    :cond_23
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 38
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 40
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 43
    move-result v0

    .line 44
    invoke-static {p1, v0}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 47
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    if-nez v0, :cond_39

    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v0, v1

    .line 59
    :goto_3a
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 62
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 67
    :cond_42
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->updateWillNotDraw()V

    .line 70
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 72
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 75
    :cond_4a
    return-void
.end method

.method public setStatusBarForegroundColor(I)V
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    return-void
.end method

.method public setStatusBarForegroundResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public setTargetElevation(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 4
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move p1, v0

    .line 10
    :goto_9
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v1, :cond_10

    .line 14
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 17
    :cond_10
    return-void
.end method

.method public shouldLift(Landroid/view/View;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->findLiftOnScrollTargetView(Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move-object p1, v0

    .line 9
    :goto_8
    if-eqz p1, :cond_19

    .line 11
    const/4 v0, -0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_17

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 21
    move-result p1

    .line 22
    if-lez p1, :cond_19

    .line 24
    :cond_17
    const/4 p1, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    :goto_1a
    return p1
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 9
    if-ne p1, v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 p1, 0x1

    .line 15
    :goto_e
    return p1
.end method
