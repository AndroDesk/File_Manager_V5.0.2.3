.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SaveFlags;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$State;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
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
.field private static final CORNER_ANIMATION_DURATION:I = 0x1f4

.field private static final DEF_STYLE_RES:I

.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final SAVE_ALL:I = -0x1

.field public static final SAVE_FIT_TO_CONTENTS:I = 0x2

.field public static final SAVE_HIDEABLE:I = 0x4

.field public static final SAVE_NONE:I = 0x0

.field public static final SAVE_PEEK_HEIGHT:I = 0x1

.field public static final SAVE_SKIP_COLLAPSED:I = 0x8

.field private static final SIGNIFICANT_VEL_THRESHOLD:I = 0x1f4

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HALF_EXPANDED:I = 0x6

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BottomSheetBehavior"


# instance fields
.field public activePointerId:I

.field private final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private childHeight:I

.field public collapsedOffset:I

.field private final dragCallback:Lr0/c$c;

.field private draggable:Z

.field public elevation:F

.field public expandedOffset:I

.field private fitToContents:Z

.field public fitToContentsOffset:I

.field private gestureInsetBottom:I

.field private gestureInsetBottomIgnored:Z

.field public halfExpandedOffset:I

.field public halfExpandedRatio:F

.field public hideable:Z

.field private ignoreEvents:Z

.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialY:I

.field private interpolatorAnimator:Landroid/animation/ValueAnimator;

.field private isShapeExpanded:Z

.field private lastNestedScrollDy:I

.field private materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private maximumVelocity:F

.field private nestedScrolled:Z

.field public nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public parentHeight:I

.field public parentWidth:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightGestureInsetBuffer:I

.field private peekHeightMin:I

.field private saveFlags:I

.field private settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>.SettleRunnable;"
        }
    .end annotation
.end field

.field private shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private shapeThemingEnabled:Z

.field private skipCollapsed:Z

.field public state:I

.field public touchingScrollingChild:Z

.field private updateImportantForAccessibilityOnSiblings:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field public viewDragHelper:Lr0/c;

.field public viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_BottomSheet_Modal:I

    .line 3
    sput v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->DEF_STYLE_RES:I

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    const/high16 v0, 0x3f000000  # 0.5f

    .line 6
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    const/high16 v0, -0x40800000  # -1.0f

    .line 7
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 8
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    const/4 v0, 0x4

    .line 9
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Lr0/c$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 15
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    const/4 v2, 0x0

    .line 16
    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    const/high16 v2, 0x3f000000  # 0.5f

    .line 17
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    const/high16 v3, -0x40800000  # -1.0f

    .line 18
    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 19
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    const/4 v4, 0x4

    .line 20
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 22
    new-instance v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v4, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Lr0/c$c;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    .line 24
    sget-object v4, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 25
    sget v5, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_shapeAppearance:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeThemingEnabled:Z

    .line 26
    sget v5, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 27
    invoke-static {p1, v4, v5}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 28
    invoke-direct {p0, p1, p2, v6, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createMaterialShapeDrawable(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    goto :goto_56

    .line 29
    :cond_53
    invoke-direct {p0, p1, p2, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createMaterialShapeDrawable(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 30
    :goto_56
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createShapeValueAnimator()V

    .line 31
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_elevation:I

    invoke-virtual {v4, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 32
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v4, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    const/4 v5, -0x1

    if-eqz v3, :cond_72

    .line 33
    iget v3, v3, Landroid/util/TypedValue;->data:I

    if-ne v3, v5, :cond_72

    .line 34
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_79

    .line 35
    :cond_72
    invoke-virtual {v4, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 37
    :goto_79
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v4, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 38
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_gestureInsetBottomIgnored:I

    .line 39
    invoke-virtual {v4, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 40
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    .line 41
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    .line 42
    invoke-virtual {v4, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 43
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setFitToContents(Z)V

    .line 44
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    .line 45
    invoke-virtual {v4, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 46
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 47
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_draggable:I

    invoke-virtual {v4, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 48
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_saveFlags:I

    invoke-virtual {v4, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSaveFlags(I)V

    .line 49
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_halfExpandedRatio:I

    .line 50
    invoke-virtual {v4, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 51
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHalfExpandedRatio(F)V

    .line 52
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    invoke-virtual {v4, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_cc

    .line 53
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_cc

    .line 54
    iget p2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    goto :goto_d3

    .line 55
    :cond_cc
    invoke-virtual {v4, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 56
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    .line 57
    :goto_d3
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 3
    return p0
.end method

.method private addAccessibilityActionForState(Landroid/view/View;Ln0/c$a;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ln0/c$a;",
            "I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    .line 3
    invoke-direct {v0, p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    .line 6
    invoke-static {p1, p2, v0}, Lm0/g0;->k(Landroid/view/View;Ln0/c$a;Ln0/g;)V

    .line 9
    return-void
.end method

.method private calculateCollapsedOffset()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 7
    if-eqz v1, :cond_14

    .line 9
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 11
    sub-int/2addr v1, v0

    .line 12
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 23
    sub-int/2addr v1, v0

    .line 24
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 26
    :goto_19
    return-void
.end method

.method private calculateHalfExpandedOffset()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 6
    const/high16 v2, 0x3f800000  # 1.0f

    .line 8
    sub-float/2addr v2, v1

    .line 9
    mul-float/2addr v2, v0

    .line 10
    float-to-int v0, v2

    .line 11
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 13
    return-void
.end method

.method private calculatePeekHeight()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    .line 7
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 9
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    .line 11
    mul-int/lit8 v2, v2, 0x9

    .line 13
    div-int/lit8 v2, v2, 0x10

    .line 15
    sub-int/2addr v1, v2

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    .line 29
    if-nez v0, :cond_2c

    .line 31
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    .line 33
    if-lez v0, :cond_2c

    .line 35
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 37
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    .line 39
    add-int/2addr v0, v2

    .line 40
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 43
    move-result v0

    .line 44
    return v0

    .line 45
    :cond_2c
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 47
    return v0
.end method

.method private createMaterialShapeDrawable(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createMaterialShapeDrawable(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    return-void
.end method

.method private createMaterialShapeDrawable(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V
    .registers 7

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeThemingEnabled:Z

    if-eqz v0, :cond_3f

    .line 3
    sget v0, Lcom/google/android/material/R$attr;->bottomSheetStyle:I

    sget v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->DEF_STYLE_RES:I

    .line 4
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 6
    new-instance p2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    if-eqz p3, :cond_28

    if-eqz p4, :cond_28

    .line 8
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3f

    .line 9
    :cond_28
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x1010031

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 11
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private createShapeValueAnimator()V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_1c

    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 13
    const-wide/16 v1, 0x1f4

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 20
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;

    .line 22
    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 28
    return-void

    .line 29
    :array_1c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    if-eqz v0, :cond_1b

    .line 9
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 11
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 13
    instance-of v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 15
    if-eqz v0, :cond_13

    .line 17
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 19
    return-object p0

    .line 20
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    const-string v0, "The view is not associated with BottomSheetBehavior"

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0

    .line 28
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    const-string v0, "The view is not a child of CoordinatorLayout"

    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0
.end method

.method private getYVelocity()F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    const/16 v1, 0x3e8

    .line 9
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 14
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 16
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method private reset()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 6
    if-eqz v0, :cond_d

    .line 8
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 14
    :cond_d
    return-void
.end method

.method private restoreOptionalState(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_d

    .line 9
    and-int/lit8 v2, v0, 0x1

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_11

    .line 14
    :cond_d
    iget v2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    .line 16
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 18
    :cond_11
    if-eq v0, v1, :cond_18

    .line 20
    and-int/lit8 v2, v0, 0x2

    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_1c

    .line 25
    :cond_18
    iget-boolean v2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    .line 27
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 29
    :cond_1c
    if-eq v0, v1, :cond_23

    .line 31
    and-int/lit8 v2, v0, 0x4

    .line 33
    const/4 v3, 0x4

    .line 34
    if-ne v2, v3, :cond_27

    .line 36
    :cond_23
    iget-boolean v2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    .line 38
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 40
    :cond_27
    if-eq v0, v1, :cond_2e

    .line 42
    const/16 v1, 0x8

    .line 44
    and-int/2addr v0, v1

    .line 45
    if-ne v0, v1, :cond_32

    .line 47
    :cond_2e
    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    .line 49
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 51
    :cond_32
    return-void
.end method

.method private setSystemGestureInsets(Landroid/view/View;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_18

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isGestureInsetBottomIgnored()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_18

    .line 13
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 15
    if-nez v0, :cond_18

    .line 17
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    .line 19
    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 22
    invoke-static {p1, v0}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 25
    :cond_18
    return-void
.end method

.method private settleToStatePendingLayout(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_28

    .line 18
    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_28

    .line 24
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 26
    invoke-static {v0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_28

    .line 32
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    .line 34
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleToState(Landroid/view/View;I)V

    .line 44
    :goto_2b
    return-void
.end method

.method private updateAccessibilityActions()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 12
    if-nez v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    const/high16 v1, 0x80000

    .line 17
    invoke-static {v1, v0}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v1, v0}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 24
    const/high16 v2, 0x40000

    .line 26
    invoke-static {v2, v0}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 29
    invoke-static {v1, v0}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 32
    const/high16 v2, 0x100000

    .line 34
    invoke-static {v2, v0}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 37
    invoke-static {v1, v0}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 40
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 42
    if-eqz v1, :cond_35

    .line 44
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 46
    const/4 v2, 0x5

    .line 47
    if-eq v1, v2, :cond_35

    .line 49
    sget-object v1, Ln0/c$a;->j:Ln0/c$a;

    .line 51
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ln0/c$a;I)V

    .line 54
    :cond_35
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 56
    const/4 v2, 0x6

    .line 57
    const/4 v3, 0x4

    .line 58
    const/4 v4, 0x3

    .line 59
    if-eq v1, v4, :cond_57

    .line 61
    if-eq v1, v3, :cond_4c

    .line 63
    if-eq v1, v2, :cond_41

    .line 65
    goto :goto_61

    .line 66
    :cond_41
    sget-object v1, Ln0/c$a;->i:Ln0/c$a;

    .line 68
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ln0/c$a;I)V

    .line 71
    sget-object v1, Ln0/c$a;->h:Ln0/c$a;

    .line 73
    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ln0/c$a;I)V

    .line 76
    goto :goto_61

    .line 77
    :cond_4c
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 79
    if-eqz v1, :cond_51

    .line 81
    move v2, v4

    .line 82
    :cond_51
    sget-object v1, Ln0/c$a;->h:Ln0/c$a;

    .line 84
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ln0/c$a;I)V

    .line 87
    goto :goto_61

    .line 88
    :cond_57
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 90
    if-eqz v1, :cond_5c

    .line 92
    move v2, v3

    .line 93
    :cond_5c
    sget-object v1, Ln0/c$a;->i:Ln0/c$a;

    .line 95
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ln0/c$a;I)V

    .line 98
    :goto_61
    return-void
.end method

.method private updateDrawableForTargetState(I)V
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_4

    .line 4
    return-void

    .line 5
    :cond_4
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne p1, v1, :cond_b

    .line 10
    move p1, v2

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move p1, v3

    .line 13
    :goto_c
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    .line 15
    if-eq v1, p1, :cond_3e

    .line 17
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    .line 19
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 21
    if-eqz v1, :cond_3e

    .line 23
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 25
    if-eqz v1, :cond_3e

    .line 27
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_26

    .line 33
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 35
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 38
    goto :goto_3e

    .line 39
    :cond_26
    const/high16 v1, 0x3f800000  # 1.0f

    .line 41
    if-eqz p1, :cond_2c

    .line 43
    const/4 p1, 0x0

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move p1, v1

    .line 46
    :goto_2d
    sub-float/2addr v1, p1

    .line 47
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 49
    new-array v0, v0, [F

    .line 51
    aput v1, v0, v3

    .line 53
    aput p1, v0, v2

    .line 55
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 58
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 60
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method

.method private updateImportantForAccessibility(Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 18
    if-nez v1, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    move-result v1

    .line 27
    if-eqz p1, :cond_29

    .line 29
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 31
    if-nez v2, :cond_28

    .line 33
    new-instance v2, Ljava/util/HashMap;

    .line 35
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 38
    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    return-void

    .line 42
    :cond_29
    :goto_29
    const/4 v2, 0x0

    .line 43
    :goto_2a
    if-ge v2, v1, :cond_75

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    move-result-object v3

    .line 49
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    if-ne v3, v4, :cond_39

    .line 57
    goto :goto_72

    .line 58
    :cond_39
    if-eqz p1, :cond_53

    .line 60
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 62
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    .line 65
    move-result v5

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v5

    .line 70
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    .line 75
    if-eqz v4, :cond_72

    .line 77
    const/4 v4, 0x4

    .line 78
    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 80
    invoke-static {v3, v4}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 83
    goto :goto_72

    .line 84
    :cond_53
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    .line 86
    if-eqz v4, :cond_72

    .line 88
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 90
    if-eqz v4, :cond_72

    .line 92
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_72

    .line 98
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 100
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/lang/Integer;

    .line 106
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 109
    move-result v4

    .line 110
    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 112
    invoke-static {v3, v4}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 115
    :cond_72
    :goto_72
    add-int/lit8 v2, v2, 0x1

    .line 117
    goto :goto_2a

    .line 118
    :cond_75
    if-nez p1, :cond_7a

    .line 120
    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 123
    :cond_7a
    return-void
.end method

.method private updatePeekHeight(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_21

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 8
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 10
    const/4 v1, 0x4

    .line 11
    if-ne v0, v1, :cond_21

    .line 13
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/View;

    .line 21
    if-eqz v0, :cond_21

    .line 23
    if-eqz p1, :cond_1e

    .line 25
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleToStatePendingLayout(I)V

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 34
    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    return-void
.end method

.method public disableShapeAnimations()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 4
    return-void
.end method

.method public dispatchOnSlide(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-eqz v0, :cond_4a

    .line 11
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_4a

    .line 19
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 21
    if-gt p1, v1, :cond_29

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 26
    move-result v2

    .line 27
    if-ne v1, v2, :cond_1d

    .line 29
    goto :goto_29

    .line 30
    :cond_1d
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 32
    sub-int p1, v1, p1

    .line 34
    int-to-float p1, p1

    .line 35
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    int-to-float v1, v1

    .line 41
    goto :goto_32

    .line 42
    :cond_29
    :goto_29
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 44
    sub-int p1, v1, p1

    .line 46
    int-to-float p1, p1

    .line 47
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 49
    sub-int/2addr v2, v1

    .line 50
    int-to-float v1, v2

    .line 51
    :goto_32
    div-float/2addr p1, v1

    .line 52
    const/4 v1, 0x0

    .line 53
    :goto_34
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result v2

    .line 59
    if-ge v1, v2, :cond_4a

    .line 61
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 69
    invoke-virtual {v2, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_34

    .line 75
    :cond_4a
    return-void
.end method

.method public findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .registers 5

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p1}, Lm0/g0$i;->p(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object p1

    .line 10
    :cond_9
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 12
    if-eqz v0, :cond_24

    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v1

    .line 21
    :goto_14
    if-ge v0, v1, :cond_24

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_21

    .line 33
    return-object v2

    .line 34
    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_14

    .line 37
    :cond_24
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method

.method public getExpandedOffset()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 10
    :goto_9
    return v0
.end method

.method public getHalfExpandedRatio()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 3
    return v0
.end method

.method public getPeekHeight()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 9
    :goto_8
    return v0
.end method

.method public getPeekHeightMin()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    .line 3
    return v0
.end method

.method public getSaveFlags()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 3
    return v0
.end method

.method public getSkipCollapsed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 3
    return v0
.end method

.method public getState()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 3
    return v0
.end method

.method public isDraggable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 3
    return v0
.end method

.method public isFitToContents()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 3
    return v0
.end method

.method public isGestureInsetBottomIgnored()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    .line 3
    return v0
.end method

.method public isHideable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 3
    return v0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 9
    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onDetachedFromLayoutParams()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 9
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
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
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_d0

    .line 9
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 11
    if-nez v0, :cond_e

    .line 13
    goto/16 :goto_d0

    .line 15
    :cond_e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_17

    .line 21
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    .line 24
    :cond_17
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 26
    if-nez v3, :cond_21

    .line 28
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 31
    move-result-object v3

    .line 32
    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 34
    :cond_21
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 36
    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, -0x1

    .line 41
    const/4 v5, 0x2

    .line 42
    if-eqz v0, :cond_3c

    .line 44
    if-eq v0, v2, :cond_31

    .line 46
    const/4 p2, 0x3

    .line 47
    if-eq v0, p2, :cond_31

    .line 49
    goto :goto_7f

    .line 50
    :cond_31
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 52
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 54
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 56
    if-eqz p2, :cond_7f

    .line 58
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 60
    return v1

    .line 61
    :cond_3c
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 64
    move-result v6

    .line 65
    float-to-int v6, v6

    .line 66
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 69
    move-result v7

    .line 70
    float-to-int v7, v7

    .line 71
    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 73
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 75
    if-eq v7, v5, :cond_6e

    .line 77
    iget-object v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 79
    if-eqz v7, :cond_57

    .line 81
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Landroid/view/View;

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move-object v7, v3

    .line 89
    :goto_58
    if-eqz v7, :cond_6e

    .line 91
    iget v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 93
    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_6e

    .line 99
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 102
    move-result v7

    .line 103
    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 106
    move-result v7

    .line 107
    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 109
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 111
    :cond_6e
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 113
    if-ne v7, v4, :cond_7c

    .line 115
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 117
    invoke-virtual {p1, p2, v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 120
    move-result p2

    .line 121
    if-nez p2, :cond_7c

    .line 123
    move p2, v2

    .line 124
    goto :goto_7d

    .line 125
    :cond_7c
    move p2, v1

    .line 126
    :goto_7d
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 128
    :cond_7f
    :goto_7f
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 130
    if-nez p2, :cond_8e

    .line 132
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 134
    if-eqz p2, :cond_8e

    .line 136
    invoke-virtual {p2, p3}, Lr0/c;->t(Landroid/view/MotionEvent;)Z

    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_8e

    .line 142
    return v2

    .line 143
    :cond_8e
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 145
    if-eqz p2, :cond_99

    .line 147
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 150
    move-result-object p2

    .line 151
    move-object v3, p2

    .line 152
    check-cast v3, Landroid/view/View;

    .line 154
    :cond_99
    if-ne v0, v5, :cond_cf

    .line 156
    if-eqz v3, :cond_cf

    .line 158
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 160
    if-nez p2, :cond_cf

    .line 162
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 164
    if-eq p2, v2, :cond_cf

    .line 166
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 169
    move-result p2

    .line 170
    float-to-int p2, p2

    .line 171
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 174
    move-result v0

    .line 175
    float-to-int v0, v0

    .line 176
    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_cf

    .line 182
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 184
    if-eqz p1, :cond_cf

    .line 186
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 188
    int-to-float p1, p1

    .line 189
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 192
    move-result p2

    .line 193
    sub-float/2addr p1, p2

    .line 194
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 197
    move-result p1

    .line 198
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 200
    iget p2, p2, Lr0/c;->b:I

    .line 202
    int-to-float p2, p2

    .line 203
    cmpl-float p1, p1, p2

    .line 205
    if-lez p1, :cond_cf

    .line 207
    move v1, v2

    .line 208
    :cond_cf
    return v1

    .line 209
    :cond_d0
    :goto_d0
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 211
    return v1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p1}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_12

    .line 10
    invoke-static {p2}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_12

    .line 16
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 21
    const/4 v2, 0x3

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v0, :cond_6c

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v0

    .line 29
    sget v4, Lcom/google/android/material/R$dimen;->design_bottom_sheet_peek_height_min:I

    .line 31
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    .line 37
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSystemGestureInsets(Landroid/view/View;)V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 42
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 45
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 47
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeThemingEnabled:Z

    .line 49
    if-eqz v0, :cond_39

    .line 51
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 53
    if-eqz v0, :cond_39

    .line 55
    invoke-static {p2, v0}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 58
    :cond_39
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 60
    if-eqz v0, :cond_60

    .line 62
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 64
    const/high16 v5, -0x40800000  # -1.0f

    .line 66
    cmpl-float v5, v4, v5

    .line 68
    if-nez v5, :cond_49

    .line 70
    invoke-static {p2}, Lm0/g0$i;->i(Landroid/view/View;)F

    .line 73
    move-result v4

    .line 74
    :cond_49
    invoke-virtual {v0, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 77
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 79
    if-ne v0, v2, :cond_52

    .line 81
    move v0, v1

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v0, v3

    .line 84
    :goto_53
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    .line 86
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 88
    if-eqz v0, :cond_5b

    .line 90
    const/4 v0, 0x0

    .line 91
    goto :goto_5d

    .line 92
    :cond_5b
    const/high16 v0, 0x3f800000  # 1.0f

    .line 94
    :goto_5d
    invoke-virtual {v4, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 97
    :cond_60
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 100
    invoke-static {p2}, Lm0/g0$d;->c(Landroid/view/View;)I

    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_6c

    .line 106
    invoke-static {p2, v1}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 109
    :cond_6c
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 111
    if-nez v0, :cond_7d

    .line 113
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Lr0/c$c;

    .line 115
    new-instance v4, Lr0/c;

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    move-result-object v5

    .line 121
    invoke-direct {v4, v5, p1, v0}, Lr0/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lr0/c$c;)V

    .line 124
    iput-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 126
    :cond_7d
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 129
    move-result v0

    .line 130
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 136
    move-result p3

    .line 137
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 142
    move-result p1

    .line 143
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 145
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 148
    move-result p1

    .line 149
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 151
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 153
    sub-int/2addr p3, p1

    .line 154
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    .line 157
    move-result p1

    .line 158
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 160
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    .line 163
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 166
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 168
    if-ne p1, v2, :cond_b1

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 173
    move-result p1

    .line 174
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 177
    goto :goto_dd

    .line 178
    :cond_b1
    const/4 p3, 0x6

    .line 179
    if-ne p1, p3, :cond_ba

    .line 181
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 183
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 186
    goto :goto_dd

    .line 187
    :cond_ba
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 189
    if-eqz p3, :cond_c7

    .line 191
    const/4 p3, 0x5

    .line 192
    if-ne p1, p3, :cond_c7

    .line 194
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 196
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 199
    goto :goto_dd

    .line 200
    :cond_c7
    const/4 p3, 0x4

    .line 201
    if-ne p1, p3, :cond_d0

    .line 203
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 205
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 208
    goto :goto_dd

    .line 209
    :cond_d0
    if-eq p1, v1, :cond_d5

    .line 211
    const/4 p3, 0x2

    .line 212
    if-ne p1, p3, :cond_dd

    .line 214
    :cond_d5
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 217
    move-result p1

    .line 218
    sub-int/2addr v0, p1

    .line 219
    invoke-virtual {p2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 222
    :cond_dd
    :goto_dd
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 224
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    .line 227
    move-result-object p2

    .line 228
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 231
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 233
    return v1
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_17

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    if-ne p3, v0, :cond_17

    .line 12
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne v0, v2, :cond_16

    .line 17
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_17

    .line 23
    :cond_16
    const/4 v1, 0x1

    .line 24
    :cond_17
    return v1
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p7, p1, :cond_4

    .line 4
    return-void

    .line 5
    :cond_4
    iget-object p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 7
    if-eqz p4, :cond_f

    .line 9
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object p4

    .line 13
    check-cast p4, Landroid/view/View;

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 p4, 0x0

    .line 17
    :goto_10
    if-eq p3, p4, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 23
    move-result p4

    .line 24
    sub-int p7, p4, p5

    .line 26
    if-lez p5, :cond_44

    .line 28
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 31
    move-result p3

    .line 32
    if-ge p7, p3, :cond_33

    .line 34
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 37
    move-result p3

    .line 38
    sub-int/2addr p4, p3

    .line 39
    aput p4, p6, p1

    .line 41
    neg-int p3, p4

    .line 42
    sget-object p4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 44
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 47
    const/4 p3, 0x3

    .line 48
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 51
    goto :goto_74

    .line 52
    :cond_33
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 54
    if-nez p3, :cond_38

    .line 56
    return-void

    .line 57
    :cond_38
    aput p5, p6, p1

    .line 59
    neg-int p3, p5

    .line 60
    sget-object p4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 68
    goto :goto_74

    .line 69
    :cond_44
    if-gez p5, :cond_74

    .line 71
    const/4 v0, -0x1

    .line 72
    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 75
    move-result p3

    .line 76
    if-nez p3, :cond_74

    .line 78
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 80
    if-le p7, p3, :cond_64

    .line 82
    iget-boolean p7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 84
    if-eqz p7, :cond_56

    .line 86
    goto :goto_64

    .line 87
    :cond_56
    sub-int/2addr p4, p3

    .line 88
    aput p4, p6, p1

    .line 90
    neg-int p3, p4

    .line 91
    sget-object p4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 93
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 96
    const/4 p3, 0x4

    .line 97
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 100
    goto :goto_74

    .line 101
    :cond_64
    :goto_64
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 103
    if-nez p3, :cond_69

    .line 105
    return-void

    .line 106
    :cond_69
    aput p5, p6, p1

    .line 108
    neg-int p3, p5

    .line 109
    sget-object p4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 111
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 117
    :cond_74
    :goto_74
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 120
    move-result p2

    .line 121
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 124
    iput p5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 126
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 128
    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 1
    check-cast p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    .line 3
    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 10
    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->restoreOptionalState(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V

    .line 13
    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    .line 15
    const/4 p2, 0x1

    .line 16
    if-eq p1, p2, :cond_18

    .line 18
    const/4 p2, 0x2

    .line 19
    if-ne p1, p2, :cond_15

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    :goto_18
    const/4 p1, 0x4

    .line 26
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 28
    :goto_1b
    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 10
    return-object v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 6
    and-int/lit8 p2, p5, 0x2

    .line 8
    if-eqz p2, :cond_a

    .line 10
    const/4 p1, 0x1

    .line 11
    :cond_a
    return p1
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 8
    move-result p4

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, p4, :cond_f

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 15
    return-void

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 18
    if-eqz p1, :cond_c5

    .line 20
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    if-ne p3, p1, :cond_c5

    .line 26
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 28
    if-nez p1, :cond_1f

    .line 30
    goto/16 :goto_c5

    .line 32
    :cond_1f
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 34
    const/4 p3, 0x4

    .line 35
    const/4 p4, 0x6

    .line 36
    if-lez p1, :cond_3c

    .line 38
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 40
    if-eqz p1, :cond_2d

    .line 42
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 44
    goto/16 :goto_bf

    .line 46
    :cond_2d
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 49
    move-result p1

    .line 50
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 52
    if-le p1, p3, :cond_38

    .line 54
    move p1, p3

    .line 55
    goto/16 :goto_ba

    .line 57
    :cond_38
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 59
    goto/16 :goto_bf

    .line 61
    :cond_3c
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 63
    if-eqz p1, :cond_4f

    .line 65
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getYVelocity()F

    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4f

    .line 75
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 77
    const/4 v0, 0x5

    .line 78
    goto/16 :goto_bf

    .line 80
    :cond_4f
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 82
    if-nez p1, :cond_9b

    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 87
    move-result p1

    .line 88
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 90
    if-eqz v1, :cond_72

    .line 92
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 94
    sub-int p4, p1, p4

    .line 96
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 99
    move-result p4

    .line 100
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 102
    sub-int/2addr p1, v1

    .line 103
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 106
    move-result p1

    .line 107
    if-ge p4, p1, :cond_6f

    .line 109
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 111
    goto :goto_bf

    .line 112
    :cond_6f
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 114
    goto :goto_a1

    .line 115
    :cond_72
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 117
    if-ge p1, v1, :cond_86

    .line 119
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 121
    sub-int p3, p1, p3

    .line 123
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 126
    move-result p3

    .line 127
    if-ge p1, p3, :cond_83

    .line 129
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 131
    goto :goto_bf

    .line 132
    :cond_83
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 134
    goto :goto_ba

    .line 135
    :cond_86
    sub-int v0, p1, v1

    .line 137
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 140
    move-result v0

    .line 141
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 143
    sub-int/2addr p1, v1

    .line 144
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 147
    move-result p1

    .line 148
    if-ge v0, p1, :cond_98

    .line 150
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 152
    goto :goto_ba

    .line 153
    :cond_98
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 155
    goto :goto_a1

    .line 156
    :cond_9b
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 158
    if-eqz p1, :cond_a3

    .line 160
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 162
    :goto_a1
    move v0, p3

    .line 163
    goto :goto_bf

    .line 164
    :cond_a3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 167
    move-result p1

    .line 168
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 170
    sub-int v0, p1, v0

    .line 172
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 175
    move-result v0

    .line 176
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 178
    sub-int/2addr p1, v1

    .line 179
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 182
    move-result p1

    .line 183
    if-ge v0, p1, :cond_bc

    .line 185
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 187
    :goto_ba
    move v0, p4

    .line 188
    goto :goto_bf

    .line 189
    :cond_bc
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 191
    goto :goto_a1

    .line 192
    :goto_bf
    const/4 p3, 0x0

    .line 193
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 196
    iput-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 198
    :cond_c5
    :goto_c5
    return-void
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
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
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 12
    move-result p1

    .line 13
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_14

    .line 18
    if-nez p1, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    invoke-virtual {v0, p3}, Lr0/c;->m(Landroid/view/MotionEvent;)V

    .line 28
    :cond_1b
    if-nez p1, :cond_20

    .line 30
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 35
    if-nez v0, :cond_2a

    .line 37
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 43
    :cond_2a
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 45
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 50
    if-eqz v0, :cond_5a

    .line 52
    const/4 v0, 0x2

    .line 53
    if-ne p1, v0, :cond_5a

    .line 55
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 57
    if-nez p1, :cond_5a

    .line 59
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 61
    int-to-float p1, p1

    .line 62
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 65
    move-result v0

    .line 66
    sub-float/2addr p1, v0

    .line 67
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 70
    move-result p1

    .line 71
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 73
    iget v2, v0, Lr0/c;->b:I

    .line 75
    int-to-float v2, v2

    .line 76
    cmpl-float p1, p1, v2

    .line 78
    if-lez p1, :cond_5a

    .line 80
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 83
    move-result p1

    .line 84
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 87
    move-result p1

    .line 88
    invoke-virtual {v0, p2, p1}, Lr0/c;->c(Landroid/view/View;I)V

    .line 91
    :cond_5a
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 93
    xor-int/2addr p1, v1

    .line 94
    return p1
.end method

.method public removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "BottomSheetBehavior"

    .line 3
    const-string v1, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    if-eqz p1, :cond_13

    .line 15
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_13
    return-void
.end method

.method public setDraggable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 3
    return-void
.end method

.method public setExpandedOffset(I)V
    .registers 3

    .line 1
    if-ltz p1, :cond_5

    .line 3
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    const-string v0, "offset must be greater than or equal to 0"

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public setFitToContents(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 8
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 10
    if-eqz p1, :cond_e

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 15
    :cond_e
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 17
    if-eqz p1, :cond_19

    .line 19
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 21
    const/4 v0, 0x6

    .line 22
    if-ne p1, v0, :cond_19

    .line 24
    const/4 p1, 0x3

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 28
    :goto_1b
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 31
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 34
    return-void
.end method

.method public setGestureInsetBottomIgnored(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    .line 3
    return-void
.end method

.method public setHalfExpandedRatio(F)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    if-lez v0, :cond_15

    .line 6
    const/high16 v0, 0x3f800000  # 1.0f

    .line 8
    cmpl-float v0, p1, v0

    .line 10
    if-gez v0, :cond_15

    .line 12
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 14
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    .line 21
    :cond_14
    return-void

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v0, "ratio must be a float value between 0 and 1"

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public setHideable(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 3
    if-eq v0, p1, :cond_14

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 7
    if-nez p1, :cond_11

    .line 9
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 11
    const/4 v0, 0x5

    .line 12
    if-ne p1, v0, :cond_11

    .line 14
    const/4 p1, 0x4

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 18
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 21
    :cond_14
    return-void
.end method

.method public setPeekHeight(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    return-void
.end method

.method public final setPeekHeight(IZ)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_c

    .line 2
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez p1, :cond_15

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    goto :goto_1f

    .line 4
    :cond_c
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v2, :cond_17

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    if-eq v2, p1, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_1f

    .line 5
    :cond_17
    :goto_17
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 6
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    :goto_1f
    if-eqz v0, :cond_24

    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    :cond_24
    return-void
.end method

.method public setSaveFlags(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 3
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 3
    return-void
.end method

.method public setState(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 8
    if-nez v0, :cond_1c

    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_19

    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_19

    .line 16
    const/4 v0, 0x6

    .line 17
    if-eq p1, v0, :cond_19

    .line 19
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    const/4 v0, 0x5

    .line 24
    if-ne p1, v0, :cond_1b

    .line 26
    :cond_19
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 28
    :cond_1b
    return-void

    .line 29
    :cond_1c
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleToStatePendingLayout(I)V

    .line 32
    return-void
.end method

.method public setStateInternal(I)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 8
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/View;

    .line 19
    if-nez v0, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    const/4 v1, 0x3

    .line 23
    const/4 v2, 0x0

    .line 24
    if-ne p1, v1, :cond_1e

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    .line 30
    goto :goto_2a

    .line 31
    :cond_1e
    const/4 v1, 0x6

    .line 32
    if-eq p1, v1, :cond_27

    .line 34
    const/4 v1, 0x5

    .line 35
    if-eq p1, v1, :cond_27

    .line 37
    const/4 v1, 0x4

    .line 38
    if-ne p1, v1, :cond_2a

    .line 40
    :cond_27
    invoke-direct {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    .line 43
    :cond_2a
    :goto_2a
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(I)V

    .line 46
    :goto_2d
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v1

    .line 52
    if-ge v2, v1, :cond_43

    .line 54
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 62
    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_2d

    .line 68
    :cond_43
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 71
    return-void
.end method

.method public setUpdateImportantForAccessibilityOnSiblings(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    .line 3
    return-void
.end method

.method public settleToState(Landroid/view/View;I)V
    .registers 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    if-ne p2, v1, :cond_7

    .line 5
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 7
    goto :goto_29

    .line 8
    :cond_7
    const/4 v1, 0x6

    .line 9
    if-ne p2, v1, :cond_19

    .line 11
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 13
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 15
    if-eqz v2, :cond_17

    .line 17
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 19
    if-gt v1, v2, :cond_17

    .line 21
    move p2, v0

    .line 22
    move v0, v2

    .line 23
    goto :goto_29

    .line 24
    :cond_17
    move v0, v1

    .line 25
    goto :goto_29

    .line 26
    :cond_19
    if-ne p2, v0, :cond_20

    .line 28
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 31
    move-result v0

    .line 32
    goto :goto_29

    .line 33
    :cond_20
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 35
    if-eqz v0, :cond_2e

    .line 37
    const/4 v0, 0x5

    .line 38
    if-ne p2, v0, :cond_2e

    .line 40
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 42
    :goto_29
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 46
    return-void

    .line 47
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string v0, "Illegal state argument: "

    .line 51
    invoke-static {v0, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1
.end method

.method public shouldHide(Landroid/view/View;F)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 10
    move-result v0

    .line 11
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ge v0, v2, :cond_10

    .line 16
    return v3

    .line 17
    :cond_10
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 24
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    const v2, 0x3dcccccd  # 0.1f

    .line 29
    mul-float/2addr p2, v2

    .line 30
    add-float/2addr p2, p1

    .line 31
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 33
    int-to-float p1, p1

    .line 34
    sub-float/2addr p2, p1

    .line 35
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 38
    move-result p1

    .line 39
    int-to-float p2, v0

    .line 40
    div-float/2addr p1, p2

    .line 41
    const/high16 p2, 0x3f000000  # 0.5f

    .line 43
    cmpl-float p1, p1, p2

    .line 45
    if-lez p1, :cond_2f

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v1, v3

    .line 49
    :goto_30
    return v1
.end method

.method public startSettlingAnimation(Landroid/view/View;IIZ)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_30

    .line 7
    if-eqz p4, :cond_13

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 12
    move-result p4

    .line 13
    invoke-virtual {v0, p4, p3}, Lr0/c;->s(II)Z

    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_30

    .line 19
    goto :goto_2f

    .line 20
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 23
    move-result p4

    .line 24
    iput-object p1, v0, Lr0/c;->t:Landroid/view/View;

    .line 26
    const/4 v3, -0x1

    .line 27
    iput v3, v0, Lr0/c;->c:I

    .line 29
    invoke-virtual {v0, p4, p3, v1, v1}, Lr0/c;->j(IIII)Z

    .line 32
    move-result p3

    .line 33
    if-nez p3, :cond_2d

    .line 35
    iget p4, v0, Lr0/c;->a:I

    .line 37
    if-nez p4, :cond_2d

    .line 39
    iget-object p4, v0, Lr0/c;->t:Landroid/view/View;

    .line 41
    if-eqz p4, :cond_2d

    .line 43
    const/4 p4, 0x0

    .line 44
    iput-object p4, v0, Lr0/c;->t:Landroid/view/View;

    .line 46
    :cond_2d
    if-eqz p3, :cond_30

    .line 48
    :goto_2f
    move v1, v2

    .line 49
    :cond_30
    if-eqz v1, :cond_60

    .line 51
    const/4 p3, 0x2

    .line 52
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 55
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(I)V

    .line 58
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 60
    if-nez p3, :cond_44

    .line 62
    new-instance p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 64
    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    .line 67
    iput-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 69
    :cond_44
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 71
    invoke-static {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->access$300(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;)Z

    .line 74
    move-result p3

    .line 75
    if-nez p3, :cond_5b

    .line 77
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 79
    iput p2, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 81
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 83
    invoke-static {p1, p3}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 86
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 88
    invoke-static {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->access$302(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;Z)Z

    .line 91
    goto :goto_63

    .line 92
    :cond_5b
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 94
    iput p2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 96
    goto :goto_63

    .line 97
    :cond_60
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 100
    :goto_63
    return-void
.end method
