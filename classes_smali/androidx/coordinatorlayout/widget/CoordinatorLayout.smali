.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Lm0/s;
.implements Lm0/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
    }
.end annotation


# static fields
.field public static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final EVENT_NESTED_SCROLL:I = 0x1

.field public static final EVENT_PRE_DRAW:I = 0x0

.field public static final EVENT_VIEW_REMOVED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field public static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field public static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field public static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sRectPool:Ll0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/d<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Lm0/v;

.field private final mBehaviorConsumed:[I

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Lb0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/a<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Lm0/r0;

.field private mNeedsPreDrawListener:Z

.field private final mNestedScrollingParentHelper:Lm0/u;

.field private mNestedScrollingTarget:Landroid/view/View;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field public mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 17
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;

    .line 19
    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;-><init>()V

    .line 22
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 24
    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [Ljava/lang/Class;

    .line 27
    const/4 v1, 0x0

    .line 28
    const-class v2, Landroid/content/Context;

    .line 30
    aput-object v2, v0, v1

    .line 32
    const/4 v1, 0x1

    .line 33
    const-class v2, Landroid/util/AttributeSet;

    .line 35
    aput-object v2, v0, v1

    .line 37
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 41
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 44
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    .line 46
    new-instance v0, Ll0/e;

    .line 48
    const/16 v1, 0xc

    .line 50
    invoke-direct {v0, v1}, Ll0/e;-><init>(I)V

    .line 53
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Ll0/d;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, La0/a;->coordinatorLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 5
    new-instance v0, Lb0/a;

    invoke-direct {v0}, Lb0/a;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Lb0/a;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    .line 10
    new-instance v0, Lm0/u;

    invoke-direct {v0}, Lm0/u;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lm0/u;

    const/4 v0, 0x0

    if-nez p3, :cond_3b

    .line 11
    sget-object v1, La0/c;->CoordinatorLayout:[I

    sget v2, La0/b;->Widget_Support_CoordinatorLayout:I

    .line 12
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_41

    :cond_3b
    sget-object v1, La0/c;->CoordinatorLayout:[I

    .line 13
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 14
    :goto_41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_61

    if-nez p3, :cond_56

    .line 15
    sget-object v4, La0/c;->CoordinatorLayout:[I

    const/4 v7, 0x0

    sget v8, La0/b;->Widget_Support_CoordinatorLayout:I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto :goto_61

    .line 16
    :cond_56
    sget-object v4, La0/c;->CoordinatorLayout:[I

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v1

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 17
    :cond_61
    :goto_61
    sget p2, La0/c;->CoordinatorLayout_keylines:I

    invoke-virtual {v1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_8a

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 21
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    array-length p2, p2

    :goto_7c
    if-ge v0, p2, :cond_8a

    .line 22
    iget-object p3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    aget v2, p3, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 23
    :cond_8a
    sget p1, La0/c;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    .line 26
    new-instance p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    invoke-direct {p1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 27
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 28
    invoke-static {p0}, Lm0/g0$d;->c(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_ac

    const/4 p1, 0x1

    .line 29
    invoke-static {p0, p1}, Lm0/g0$d;->s(Landroid/view/View;I)V

    :cond_ac
    return-void
.end method

.method private static acquireTempRect()Landroid/graphics/Rect;
    .registers 1

    .line 1
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Ll0/d;

    .line 3
    invoke-interface {v0}, Ll0/d;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Rect;

    .line 9
    if-nez v0, :cond_f

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    :cond_f
    return-object v0
.end method

.method private static clamp(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    if-le p0, p2, :cond_6

    return p2

    :cond_6
    return p0
.end method

.method private constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;Landroid/graphics/Rect;II)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    move-result v2

    .line 13
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 15
    add-int/2addr v2, v3

    .line 16
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 21
    move-result v4

    .line 22
    sub-int/2addr v0, v4

    .line 23
    sub-int/2addr v0, p3

    .line 24
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 26
    sub-int/2addr v0, v4

    .line 27
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v0

    .line 31
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 38
    move-result v2

    .line 39
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 41
    add-int/2addr v2, v3

    .line 42
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    move-result v4

    .line 48
    sub-int/2addr v1, v4

    .line 49
    sub-int/2addr v1, p4

    .line 50
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 52
    sub-int/2addr v1, p1

    .line 53
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 56
    move-result p1

    .line 57
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result p1

    .line 61
    add-int/2addr p3, v0

    .line 62
    add-int/2addr p4, p1

    .line 63
    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Lm0/r0;)Lm0/r0;
    .registers 6

    .line 1
    iget-object v0, p1, Lm0/r0;->a:Lm0/r0$k;

    .line 3
    invoke-virtual {v0}, Lm0/r0$k;->m()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object p1

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    :goto_e
    if-ge v0, v1, :cond_36

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 23
    invoke-static {v2}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_33

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 35
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 37
    if-eqz v3, :cond_33

    .line 39
    invoke-virtual {v3, p0, v2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onApplyWindowInsets(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Lm0/r0;)Lm0/r0;

    .line 42
    move-result-object p1

    .line 43
    iget-object v2, p1, Lm0/r0;->a:Lm0/r0$k;

    .line 45
    invoke-virtual {v2}, Lm0/r0$k;->m()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_33

    .line 51
    goto :goto_36

    .line 52
    :cond_33
    add-int/lit8 v0, v0, 0x1

    .line 54
    goto :goto_e

    .line 55
    :cond_36
    :goto_36
    return-object p1
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;II)V
    .registers 13

    .line 1
    iget p1, p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I

    .line 3
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    .line 6
    move-result p1

    .line 7
    invoke-static {p1, p2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 10
    move-result p1

    .line 11
    iget p5, p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I

    .line 13
    invoke-static {p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveGravity(I)I

    .line 16
    move-result p5

    .line 17
    invoke-static {p5, p2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 20
    move-result p2

    .line 21
    and-int/lit8 p5, p1, 0x7

    .line 23
    and-int/lit8 p1, p1, 0x70

    .line 25
    and-int/lit8 v0, p2, 0x7

    .line 27
    and-int/lit8 p2, p2, 0x70

    .line 29
    const/4 v1, 0x5

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eq v0, v2, :cond_28

    .line 33
    if-eq v0, v1, :cond_25

    .line 35
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 37
    goto :goto_31

    .line 38
    :cond_25
    iget v0, p3, Landroid/graphics/Rect;->right:I

    .line 40
    goto :goto_31

    .line 41
    :cond_28
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 43
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 46
    move-result v3

    .line 47
    div-int/lit8 v3, v3, 0x2

    .line 49
    add-int/2addr v0, v3

    .line 50
    :goto_31
    const/16 v3, 0x50

    .line 52
    const/16 v4, 0x10

    .line 54
    if-eq p2, v4, :cond_3f

    .line 56
    if-eq p2, v3, :cond_3c

    .line 58
    iget p2, p3, Landroid/graphics/Rect;->top:I

    .line 60
    goto :goto_48

    .line 61
    :cond_3c
    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 63
    goto :goto_48

    .line 64
    :cond_3f
    iget p2, p3, Landroid/graphics/Rect;->top:I

    .line 66
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 69
    move-result p3

    .line 70
    div-int/lit8 p3, p3, 0x2

    .line 72
    add-int/2addr p2, p3

    .line 73
    :goto_48
    if-eq p5, v2, :cond_4e

    .line 75
    if-eq p5, v1, :cond_51

    .line 77
    sub-int/2addr v0, p6

    .line 78
    goto :goto_51

    .line 79
    :cond_4e
    div-int/lit8 p3, p6, 0x2

    .line 81
    sub-int/2addr v0, p3

    .line 82
    :cond_51
    :goto_51
    if-eq p1, v4, :cond_57

    .line 84
    if-eq p1, v3, :cond_5a

    .line 86
    sub-int/2addr p2, p7

    .line 87
    goto :goto_5a

    .line 88
    :cond_57
    div-int/lit8 p1, p7, 0x2

    .line 90
    sub-int/2addr p2, p1

    .line 91
    :cond_5a
    :goto_5a
    add-int/2addr p6, v0

    .line 92
    add-int/2addr p7, p2

    .line 93
    invoke-virtual {p4, v0, p2, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 96
    return-void
.end method

.method private getKeyline(I)I
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CoordinatorLayout"

    .line 6
    if-nez v0, :cond_24

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v3, "No keylines defined for "

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v3, " - attempted index lookup "

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return v1

    .line 37
    :cond_24
    if-ltz p1, :cond_2d

    .line 39
    array-length v3, v0

    .line 40
    if-lt p1, v3, :cond_2a

    .line 42
    goto :goto_2d

    .line 43
    :cond_2a
    aget p1, v0, p1

    .line 45
    return p1

    .line 46
    :cond_2d
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v3, "Keyline index "

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string p1, " out of range for "

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v1
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    move-result v1

    .line 12
    add-int/lit8 v2, v1, -0x1

    .line 14
    :goto_d
    if-ltz v2, :cond_21

    .line 16
    if-eqz v0, :cond_16

    .line 18
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 21
    move-result v3

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v3, v2

    .line 24
    :goto_17
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v3

    .line 28
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v2, v2, -0x1

    .line 33
    goto :goto_d

    .line 34
    :cond_21
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 36
    if-eqz v0, :cond_28

    .line 38
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    :cond_28
    return-void
.end method

.method private hasDependencies(Landroid/view/View;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Lb0/a;

    .line 3
    iget-object v1, v0, Lb0/a;->b:Landroidx/collection/f;

    .line 5
    invoke-virtual {v1}, Landroidx/collection/f;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_a
    if-ge v3, v1, :cond_21

    .line 13
    iget-object v4, v0, Lb0/a;->b:Landroidx/collection/f;

    .line 15
    invoke-virtual {v4, v3}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Ljava/util/ArrayList;

    .line 21
    if-eqz v4, :cond_1e

    .line 23
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1e

    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_a

    .line 34
    :cond_21
    :goto_21
    return v2
.end method

.method private layoutChild(Landroid/view/View;I)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 10
    move-result-object v7

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 14
    move-result v1

    .line 15
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    add-int/2addr v1, v2

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 21
    move-result v2

    .line 22
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    add-int/2addr v2, v3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v3

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 32
    move-result v4

    .line 33
    sub-int/2addr v3, v4

    .line 34
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 36
    sub-int/2addr v3, v4

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    move-result v4

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 44
    move-result v5

    .line 45
    sub-int/2addr v4, v5

    .line 46
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 48
    sub-int/2addr v4, v5

    .line 49
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 54
    if-eqz v1, :cond_71

    .line 56
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 58
    invoke-static {p0}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_71

    .line 64
    invoke-static {p1}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_71

    .line 70
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 72
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 74
    invoke-virtual {v2}, Lm0/r0;->c()I

    .line 77
    move-result v2

    .line 78
    add-int/2addr v2, v1

    .line 79
    iput v2, v7, Landroid/graphics/Rect;->left:I

    .line 81
    iget v1, v7, Landroid/graphics/Rect;->top:I

    .line 83
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 85
    invoke-virtual {v2}, Lm0/r0;->e()I

    .line 88
    move-result v2

    .line 89
    add-int/2addr v2, v1

    .line 90
    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 92
    iget v1, v7, Landroid/graphics/Rect;->right:I

    .line 94
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 96
    invoke-virtual {v2}, Lm0/r0;->d()I

    .line 99
    move-result v2

    .line 100
    sub-int/2addr v1, v2

    .line 101
    iput v1, v7, Landroid/graphics/Rect;->right:I

    .line 103
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 105
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 107
    invoke-virtual {v2}, Lm0/r0;->b()I

    .line 110
    move-result v2

    .line 111
    sub-int/2addr v1, v2

    .line 112
    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 114
    :cond_71
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 117
    move-result-object v8

    .line 118
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I

    .line 120
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveGravity(I)I

    .line 123
    move-result v1

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 127
    move-result v2

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 131
    move-result v3

    .line 132
    move-object v4, v7

    .line 133
    move-object v5, v8

    .line 134
    move v6, p2

    .line 135
    invoke-static/range {v1 .. v6}, Lm0/g;->b(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 138
    iget p2, v8, Landroid/graphics/Rect;->left:I

    .line 140
    iget v0, v8, Landroid/graphics/Rect;->top:I

    .line 142
    iget v1, v8, Landroid/graphics/Rect;->right:I

    .line 144
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 146
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 149
    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 152
    invoke-static {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 155
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .registers 8

    .line 1
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    invoke-virtual {p0, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12
    invoke-virtual {p0, p1, p3, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 15
    iget p2, v1, Landroid/graphics/Rect;->left:I

    .line 17
    iget p3, v1, Landroid/graphics/Rect;->top:I

    .line 19
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 21
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 23
    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/view/View;->layout(IIII)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_20

    .line 26
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 29
    invoke-static {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 32
    return-void

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 37
    invoke-static {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 40
    throw p1
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I

    .line 9
    invoke-static {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    .line 12
    move-result v1

    .line 13
    invoke-static {v1, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 16
    move-result v1

    .line 17
    and-int/lit8 v2, v1, 0x7

    .line 19
    and-int/lit8 v1, v1, 0x70

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    move-result v3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    move-result v4

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 32
    move-result v5

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x1

    .line 38
    if-ne p3, v7, :cond_29

    .line 40
    sub-int p2, v3, p2

    .line 42
    :cond_29
    invoke-direct {p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    .line 45
    move-result p2

    .line 46
    sub-int/2addr p2, v5

    .line 47
    const/4 p3, 0x0

    .line 48
    if-eq v2, v7, :cond_37

    .line 50
    const/4 v7, 0x5

    .line 51
    if-eq v2, v7, :cond_35

    .line 53
    goto :goto_3a

    .line 54
    :cond_35
    add-int/2addr p2, v5

    .line 55
    goto :goto_3a

    .line 56
    :cond_37
    div-int/lit8 v2, v5, 0x2

    .line 58
    add-int/2addr p2, v2

    .line 59
    :goto_3a
    const/16 v2, 0x10

    .line 61
    if-eq v1, v2, :cond_46

    .line 63
    const/16 v2, 0x50

    .line 65
    if-eq v1, v2, :cond_43

    .line 67
    goto :goto_49

    .line 68
    :cond_43
    add-int/lit8 p3, v6, 0x0

    .line 70
    goto :goto_49

    .line 71
    :cond_46
    div-int/lit8 v1, v6, 0x2

    .line 73
    add-int/2addr p3, v1

    .line 74
    :goto_49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 77
    move-result v1

    .line 78
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 80
    add-int/2addr v1, v2

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 84
    move-result v2

    .line 85
    sub-int/2addr v3, v2

    .line 86
    sub-int/2addr v3, v5

    .line 87
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 89
    sub-int/2addr v3, v2

    .line 90
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 93
    move-result p2

    .line 94
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 97
    move-result p2

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 101
    move-result v1

    .line 102
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 104
    add-int/2addr v1, v2

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 108
    move-result v2

    .line 109
    sub-int/2addr v4, v2

    .line 110
    sub-int/2addr v4, v6

    .line 111
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 113
    sub-int/2addr v4, v0

    .line 114
    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    .line 117
    move-result p3

    .line 118
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 121
    move-result p3

    .line 122
    add-int/2addr v5, p2

    .line 123
    add-int/2addr v6, p3

    .line 124
    invoke-virtual {p1, p2, p3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 127
    return-void
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .registers 12

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p1}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_f9

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 19
    move-result v0

    .line 20
    if-gtz v0, :cond_17

    .line 22
    goto/16 :goto_f9

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 30
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 32
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 43
    move-result v4

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 47
    move-result v5

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 51
    move-result v6

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 55
    move-result v7

    .line 56
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    if-eqz v1, :cond_6c

    .line 61
    invoke-virtual {v1, p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_6c

    .line 67
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_49

    .line 73
    goto :goto_6f

    .line 74
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    const-string p2, "Rect should be within the child\'s bounds. Rect:"

    .line 78
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string p3, " | Bounds:"

    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p1

    .line 109
    :cond_6c
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    :goto_6f
    invoke-static {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 115
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_7c

    .line 121
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 124
    return-void

    .line 125
    :cond_7c
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I

    .line 127
    invoke-static {v1, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 130
    move-result p3

    .line 131
    and-int/lit8 v1, p3, 0x30

    .line 133
    const/16 v3, 0x30

    .line 135
    const/4 v4, 0x1

    .line 136
    const/4 v5, 0x0

    .line 137
    if-ne v1, v3, :cond_9c

    .line 139
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 141
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 143
    sub-int/2addr v1, v3

    .line 144
    iget v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j:I

    .line 146
    sub-int/2addr v1, v3

    .line 147
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 149
    if-ge v1, v3, :cond_9c

    .line 151
    sub-int/2addr v3, v1

    .line 152
    invoke-direct {p0, p1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 155
    move v1, v4

    .line 156
    goto :goto_9d

    .line 157
    :cond_9c
    move v1, v5

    .line 158
    :goto_9d
    and-int/lit8 v3, p3, 0x50

    .line 160
    const/16 v6, 0x50

    .line 162
    if-ne v3, v6, :cond_b9

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 167
    move-result v3

    .line 168
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 170
    sub-int/2addr v3, v6

    .line 171
    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 173
    sub-int/2addr v3, v6

    .line 174
    iget v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j:I

    .line 176
    add-int/2addr v3, v6

    .line 177
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    .line 179
    if-ge v3, v6, :cond_b9

    .line 181
    sub-int/2addr v3, v6

    .line 182
    invoke-direct {p0, p1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 185
    move v1, v4

    .line 186
    :cond_b9
    if-nez v1, :cond_be

    .line 188
    invoke-direct {p0, p1, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 191
    :cond_be
    and-int/lit8 v1, p3, 0x3

    .line 193
    const/4 v3, 0x3

    .line 194
    if-ne v1, v3, :cond_d5

    .line 196
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 198
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 200
    sub-int/2addr v1, v3

    .line 201
    iget v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->i:I

    .line 203
    sub-int/2addr v1, v3

    .line 204
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 206
    if-ge v1, v3, :cond_d5

    .line 208
    sub-int/2addr v3, v1

    .line 209
    invoke-direct {p0, p1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 212
    move v1, v4

    .line 213
    goto :goto_d6

    .line 214
    :cond_d5
    move v1, v5

    .line 215
    :goto_d6
    const/4 v3, 0x5

    .line 216
    and-int/2addr p3, v3

    .line 217
    if-ne p3, v3, :cond_f0

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 222
    move-result p3

    .line 223
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 225
    sub-int/2addr p3, v3

    .line 226
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 228
    sub-int/2addr p3, v3

    .line 229
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->i:I

    .line 231
    add-int/2addr p3, v0

    .line 232
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 234
    if-ge p3, p2, :cond_f0

    .line 236
    sub-int/2addr p3, p2

    .line 237
    invoke-direct {p0, p1, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 240
    goto :goto_f1

    .line 241
    :cond_f0
    move v4, v1

    .line 242
    :goto_f1
    if-nez v4, :cond_f6

    .line 244
    invoke-direct {p0, p1, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 247
    :cond_f6
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 250
    :cond_f9
    :goto_f9
    return-void
.end method

.method public static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    .registers 8

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    const-string v0, "."

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_24

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    goto :goto_47

    .line 37
    :cond_24
    const/16 v0, 0x2e

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 42
    move-result v1

    .line 43
    if-ltz v1, :cond_2d

    .line 45
    goto :goto_47

    .line 46
    :cond_2d
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_47

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    :cond_47
    :goto_47
    :try_start_47
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    .line 74
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/util/Map;

    .line 80
    if-nez v1, :cond_59

    .line 82
    new-instance v1, Ljava/util/HashMap;

    .line 84
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 90
    :cond_59
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 96
    const/4 v2, 0x1

    .line 97
    const/4 v3, 0x0

    .line 98
    if-nez v0, :cond_77

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 103
    move-result-object v0

    .line 104
    invoke-static {p2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 107
    move-result-object v0

    .line 108
    sget-object v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 110
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 117
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_77
    const/4 v1, 0x2

    .line 121
    new-array v1, v1, [Ljava/lang/Object;

    .line 123
    aput-object p0, v1, v3

    .line 125
    aput-object p1, v1, v2

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object p0

    .line 131
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_84} :catch_85

    .line 133
    return-object p0

    .line 134
    :catch_85
    move-exception p0

    .line 135
    new-instance p1, Ljava/lang/RuntimeException;

    .line 137
    const-string v0, "Could not inflate Behavior subclass "

    .line 139
    invoke-static {v0, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object p2

    .line 143
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    throw p1
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .registers 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    move-result v3

    .line 11
    iget-object v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 13
    invoke-direct {v0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 16
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    move v8, v6

    .line 23
    move v9, v8

    .line 24
    move v10, v9

    .line 25
    :goto_18
    if-ge v8, v5, :cond_8e

    .line 27
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v11

    .line 31
    check-cast v11, Landroid/view/View;

    .line 33
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object v12

    .line 37
    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 39
    iget-object v13, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 41
    const/4 v14, 0x1

    .line 42
    if-nez v9, :cond_2d

    .line 44
    if-eqz v10, :cond_52

    .line 46
    :cond_2d
    if-eqz v3, :cond_52

    .line 48
    if-eqz v13, :cond_8b

    .line 50
    if-nez v7, :cond_45

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 55
    move-result-wide v17

    .line 56
    const/16 v19, 0x3

    .line 58
    const/16 v20, 0x0

    .line 60
    const/16 v21, 0x0

    .line 62
    const/16 v22, 0x0

    .line 64
    move-wide/from16 v15, v17

    .line 66
    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 69
    move-result-object v7

    .line 70
    :cond_45
    if-eqz v2, :cond_4e

    .line 72
    if-eq v2, v14, :cond_4a

    .line 74
    goto :goto_8b

    .line 75
    :cond_4a
    invoke-virtual {v13, v0, v11, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 78
    goto :goto_8b

    .line 79
    :cond_4e
    invoke-virtual {v13, v0, v11, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 82
    goto :goto_8b

    .line 83
    :cond_52
    if-nez v9, :cond_68

    .line 85
    if-eqz v13, :cond_68

    .line 87
    if-eqz v2, :cond_60

    .line 89
    if-eq v2, v14, :cond_5b

    .line 91
    goto :goto_64

    .line 92
    :cond_5b
    invoke-virtual {v13, v0, v11, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 95
    move-result v9

    .line 96
    goto :goto_64

    .line 97
    :cond_60
    invoke-virtual {v13, v0, v11, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 100
    move-result v9

    .line 101
    :goto_64
    if-eqz v9, :cond_68

    .line 103
    iput-object v11, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 105
    :cond_68
    iget-object v10, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 107
    if-nez v10, :cond_6e

    .line 109
    iput-boolean v6, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->m:Z

    .line 111
    :cond_6e
    iget-boolean v13, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->m:Z

    .line 113
    if-eqz v13, :cond_74

    .line 115
    move v10, v14

    .line 116
    goto :goto_7f

    .line 117
    :cond_74
    if-eqz v10, :cond_7b

    .line 119
    invoke-virtual {v10, v0, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->blocksInteractionBelow(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z

    .line 122
    move-result v10

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    move v10, v6

    .line 125
    :goto_7c
    or-int/2addr v10, v13

    .line 126
    iput-boolean v10, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->m:Z

    .line 128
    :goto_7f
    if-eqz v10, :cond_84

    .line 130
    if-nez v13, :cond_84

    .line 132
    goto :goto_85

    .line 133
    :cond_84
    move v14, v6

    .line 134
    :goto_85
    if-eqz v10, :cond_8a

    .line 136
    if-nez v14, :cond_8a

    .line 138
    goto :goto_8e

    .line 139
    :cond_8a
    move v10, v14

    .line 140
    :cond_8b
    :goto_8b
    add-int/lit8 v8, v8, 0x1

    .line 142
    goto :goto_18

    .line 143
    :cond_8e
    :goto_8e
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 146
    return v9
.end method

.method private prepareChildren()V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Lb0/a;

    .line 8
    iget-object v1, v0, Lb0/a;->b:Landroidx/collection/f;

    .line 10
    invoke-virtual {v1}, Landroidx/collection/f;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_f
    if-ge v3, v1, :cond_26

    .line 18
    iget-object v4, v0, Lb0/a;->b:Landroidx/collection/f;

    .line 20
    invoke-virtual {v4, v3}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/util/ArrayList;

    .line 26
    if-eqz v4, :cond_23

    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 31
    iget-object v5, v0, Lb0/a;->a:Lt/c;

    .line 33
    invoke-virtual {v5, v4}, Lt/c;->release(Ljava/lang/Object;)Z

    .line 36
    :cond_23
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_f

    .line 39
    :cond_26
    iget-object v0, v0, Lb0/a;->b:Landroidx/collection/f;

    .line 41
    invoke-virtual {v0}, Landroidx/collection/f;->clear()V

    .line 44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    move-result v0

    .line 48
    move v1, v2

    .line 49
    :goto_30
    if-ge v1, v0, :cond_19f

    .line 51
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 58
    move-result-object v4

    .line 59
    iget v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I

    .line 61
    const/4 v6, -0x1

    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v8, 0x1

    .line 64
    if-ne v5, v6, :cond_47

    .line 66
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;

    .line 68
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 70
    goto/16 :goto_cd

    .line 72
    :cond_47
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 74
    if-eqz v5, :cond_78

    .line 76
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 79
    move-result v5

    .line 80
    iget v6, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I

    .line 82
    if-eq v5, v6, :cond_54

    .line 84
    goto :goto_71

    .line 85
    :cond_54
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 87
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 90
    move-result-object v6

    .line 91
    :goto_5a
    if-eq v6, p0, :cond_73

    .line 93
    if-eqz v6, :cond_6d

    .line 95
    if-ne v6, v3, :cond_61

    .line 97
    goto :goto_6d

    .line 98
    :cond_61
    instance-of v9, v6, Landroid/view/View;

    .line 100
    if-eqz v9, :cond_68

    .line 102
    move-object v5, v6

    .line 103
    check-cast v5, Landroid/view/View;

    .line 105
    :cond_68
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 108
    move-result-object v6

    .line 109
    goto :goto_5a

    .line 110
    :cond_6d
    :goto_6d
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;

    .line 112
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 114
    :goto_71
    move v5, v2

    .line 115
    goto :goto_76

    .line 116
    :cond_73
    iput-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;

    .line 118
    move v5, v8

    .line 119
    :goto_76
    if-nez v5, :cond_cd

    .line 121
    :cond_78
    iget v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I

    .line 123
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v5

    .line 127
    iput-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 129
    if-eqz v5, :cond_c3

    .line 131
    if-ne v5, p0, :cond_97

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_8f

    .line 139
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;

    .line 141
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 143
    goto :goto_cd

    .line 144
    :cond_8f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 146
    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    throw v0

    .line 152
    :cond_97
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 155
    move-result-object v6

    .line 156
    :goto_9b
    if-eq v6, p0, :cond_c0

    .line 158
    if-eqz v6, :cond_c0

    .line 160
    if-ne v6, v3, :cond_b4

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_ac

    .line 168
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;

    .line 170
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 172
    goto :goto_cd

    .line 173
    :cond_ac
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 175
    const-string v1, "Anchor must not be a descendant of the anchored view"

    .line 177
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    throw v0

    .line 181
    :cond_b4
    instance-of v9, v6, Landroid/view/View;

    .line 183
    if-eqz v9, :cond_bb

    .line 185
    move-object v5, v6

    .line 186
    check-cast v5, Landroid/view/View;

    .line 188
    :cond_bb
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 191
    move-result-object v6

    .line 192
    goto :goto_9b

    .line 193
    :cond_c0
    iput-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;

    .line 195
    goto :goto_cd

    .line 196
    :cond_c3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_17a

    .line 202
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;

    .line 204
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 206
    :cond_cd
    :goto_cd
    iget-object v5, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Lb0/a;

    .line 208
    iget-object v6, v5, Lb0/a;->b:Landroidx/collection/f;

    .line 210
    invoke-virtual {v6, v3}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 213
    move-result v6

    .line 214
    if-nez v6, :cond_dc

    .line 216
    iget-object v5, v5, Lb0/a;->b:Landroidx/collection/f;

    .line 218
    invoke-virtual {v5, v3, v7}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_dc
    move v5, v2

    .line 222
    :goto_dd
    if-ge v5, v0, :cond_176

    .line 224
    if-ne v5, v1, :cond_e3

    .line 226
    goto/16 :goto_172

    .line 228
    :cond_e3
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 231
    move-result-object v6

    .line 232
    iget-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;

    .line 234
    if-eq v6, v9, :cond_11a

    .line 236
    sget-object v9, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 238
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 241
    move-result v9

    .line 242
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 245
    move-result-object v10

    .line 246
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 248
    iget v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I

    .line 250
    invoke-static {v10, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 253
    move-result v10

    .line 254
    if-eqz v10, :cond_10a

    .line 256
    iget v11, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I

    .line 258
    invoke-static {v11, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 261
    move-result v9

    .line 262
    and-int/2addr v9, v10

    .line 263
    if-ne v9, v10, :cond_10a

    .line 265
    move v9, v8

    .line 266
    goto :goto_10b

    .line 267
    :cond_10a
    move v9, v2

    .line 268
    :goto_10b
    if-nez v9, :cond_11a

    .line 270
    iget-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 272
    if-eqz v9, :cond_118

    .line 274
    invoke-virtual {v9, p0, v3, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 277
    move-result v9

    .line 278
    if-eqz v9, :cond_118

    .line 280
    goto :goto_11a

    .line 281
    :cond_118
    move v9, v2

    .line 282
    goto :goto_11b

    .line 283
    :cond_11a
    :goto_11a
    move v9, v8

    .line 284
    :goto_11b
    if-eqz v9, :cond_172

    .line 286
    iget-object v9, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Lb0/a;

    .line 288
    iget-object v9, v9, Lb0/a;->b:Landroidx/collection/f;

    .line 290
    invoke-virtual {v9, v6}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 293
    move-result v9

    .line 294
    if-nez v9, :cond_136

    .line 296
    iget-object v9, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Lb0/a;

    .line 298
    iget-object v10, v9, Lb0/a;->b:Landroidx/collection/f;

    .line 300
    invoke-virtual {v10, v6}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 303
    move-result v10

    .line 304
    if-nez v10, :cond_136

    .line 306
    iget-object v9, v9, Lb0/a;->b:Landroidx/collection/f;

    .line 308
    invoke-virtual {v9, v6, v7}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_136
    iget-object v9, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Lb0/a;

    .line 313
    iget-object v10, v9, Lb0/a;->b:Landroidx/collection/f;

    .line 315
    invoke-virtual {v10, v6}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 318
    move-result v10

    .line 319
    if-eqz v10, :cond_16a

    .line 321
    iget-object v10, v9, Lb0/a;->b:Landroidx/collection/f;

    .line 323
    invoke-virtual {v10, v3}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 326
    move-result v10

    .line 327
    if-eqz v10, :cond_16a

    .line 329
    iget-object v10, v9, Lb0/a;->b:Landroidx/collection/f;

    .line 331
    invoke-virtual {v10, v6}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    move-result-object v10

    .line 335
    check-cast v10, Ljava/util/ArrayList;

    .line 337
    if-nez v10, :cond_166

    .line 339
    iget-object v10, v9, Lb0/a;->a:Lt/c;

    .line 341
    invoke-virtual {v10}, Lt/c;->acquire()Ljava/lang/Object;

    .line 344
    move-result-object v10

    .line 345
    check-cast v10, Ljava/util/ArrayList;

    .line 347
    if-nez v10, :cond_161

    .line 349
    new-instance v10, Ljava/util/ArrayList;

    .line 351
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 354
    :cond_161
    iget-object v9, v9, Lb0/a;->b:Landroidx/collection/f;

    .line 356
    invoke-virtual {v9, v6, v10}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_166
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    goto :goto_172

    .line 363
    :cond_16a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 365
    const-string v1, "All nodes must be present in the graph before being added as an edge"

    .line 367
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 370
    throw v0

    .line 371
    :cond_172
    :goto_172
    add-int/lit8 v5, v5, 0x1

    .line 373
    goto/16 :goto_dd

    .line 375
    :cond_176
    add-int/lit8 v1, v1, 0x1

    .line 377
    goto/16 :goto_30

    .line 379
    :cond_17a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 381
    const-string v1, "Could not find CoordinatorLayout descendant view with id "

    .line 383
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 390
    move-result-object v2

    .line 391
    iget v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I

    .line 393
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v2, " to anchor view "

    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    move-result-object v1

    .line 412
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 415
    throw v0

    .line 416
    :cond_19f
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 418
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Lb0/a;

    .line 420
    iget-object v3, v1, Lb0/a;->c:Ljava/util/ArrayList;

    .line 422
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 425
    iget-object v3, v1, Lb0/a;->d:Ljava/util/HashSet;

    .line 427
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 430
    iget-object v3, v1, Lb0/a;->b:Landroidx/collection/f;

    .line 432
    invoke-virtual {v3}, Landroidx/collection/f;->size()I

    .line 435
    move-result v3

    .line 436
    :goto_1b3
    if-ge v2, v3, :cond_1c5

    .line 438
    iget-object v4, v1, Lb0/a;->b:Landroidx/collection/f;

    .line 440
    invoke-virtual {v4, v2}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 443
    move-result-object v4

    .line 444
    iget-object v5, v1, Lb0/a;->c:Ljava/util/ArrayList;

    .line 446
    iget-object v6, v1, Lb0/a;->d:Ljava/util/HashSet;

    .line 448
    invoke-virtual {v1, v4, v5, v6}, Lb0/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 451
    add-int/lit8 v2, v2, 0x1

    .line 453
    goto :goto_1b3

    .line 454
    :cond_1c5
    iget-object v1, v1, Lb0/a;->c:Ljava/util/ArrayList;

    .line 456
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 459
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 461
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 464
    return-void
.end method

.method private static releaseTempRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Ll0/d;

    .line 6
    invoke-interface {v0, p0}, Ll0/d;->release(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method private resetTouchBehaviors(Z)V
    .registers 15

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
    if-ge v2, v0, :cond_32

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 19
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 21
    if-eqz v4, :cond_2f

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    move-result-wide v7

    .line 27
    const/4 v9, 0x3

    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v11, 0x0

    .line 30
    const/4 v12, 0x0

    .line 31
    move-wide v5, v7

    .line 32
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 35
    move-result-object v5

    .line 36
    if-eqz p1, :cond_29

    .line 38
    invoke-virtual {v4, p0, v3, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    invoke-virtual {v4, p0, v3, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 45
    :goto_2c
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 48
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_6

    .line 51
    :cond_32
    move p1, v1

    .line 52
    :goto_33
    if-ge p1, v0, :cond_44

    .line 54
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 64
    iput-boolean v1, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->m:Z

    .line 66
    add-int/lit8 p1, p1, 0x1

    .line 68
    goto :goto_33

    .line 69
    :cond_44
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 72
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 74
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .registers 1

    if-nez p0, :cond_4

    const/16 p0, 0x11

    :cond_4
    return p0
.end method

.method private static resolveGravity(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_8

    const v0, 0x800003

    or-int/2addr p0, v0

    :cond_8
    and-int/lit8 v0, p0, 0x70

    if-nez v0, :cond_e

    or-int/lit8 p0, p0, 0x30

    :cond_e
    return p0
.end method

.method private static resolveKeylineGravity(I)I
    .registers 1

    if-nez p0, :cond_5

    const p0, 0x800035

    :cond_5
    return p0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->i:I

    .line 9
    if-eq v1, p2, :cond_13

    .line 11
    sub-int v1, p2, v1

    .line 13
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 18
    iput p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->i:I

    .line 20
    :cond_13
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j:I

    .line 9
    if-eq v1, p2, :cond_13

    .line 11
    sub-int v1, p2, v1

    .line 13
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 18
    iput p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j:I

    .line 20
    :cond_13
    return-void
.end method

.method private setupForInsets()V
    .registers 2

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1e

    .line 9
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Lm0/v;

    .line 11
    if-nez v0, :cond_13

    .line 13
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 15
    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 18
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Lm0/v;

    .line 20
    :cond_13
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Lm0/v;

    .line 22
    invoke-static {p0, v0}, Lm0/g0$i;->u(Landroid/view/View;Lm0/v;)V

    .line 25
    const/16 v0, 0x500

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 30
    goto :goto_22

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Lm0/g0$i;->u(Landroid/view/View;Lm0/v;)V

    .line 35
    :goto_22
    return-void
.end method


# virtual methods
.method public addPreDrawListener()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 7
    if-nez v0, :cond_f

    .line 9
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 11
    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 14
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 25
    :cond_18
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 28
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Lb0/a;

    .line 3
    iget-object v0, v0, Lb0/a;->b:Landroidx/collection/f;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/List;

    .line 11
    if-eqz v0, :cond_2f

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2f

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_2f

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/view/View;

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 38
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 40
    if-eqz v3, :cond_2c

    .line 42
    invoke-virtual {v3, p0, v2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 45
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_13

    .line 48
    :cond_2f
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_56

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_56

    .line 14
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v2, p0, :cond_1a

    .line 25
    move v2, v3

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v2, v1

    .line 28
    :goto_1b
    invoke-virtual {p0, p1, v2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 31
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    move-result-object v2

    .line 39
    if-eq v2, p0, :cond_2a

    .line 41
    move v2, v3

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v2, v1

    .line 44
    :goto_2b
    invoke-virtual {p0, p2, v2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 47
    :try_start_2e
    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 49
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 51
    if-gt p2, v2, :cond_47

    .line 53
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 55
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 57
    if-gt p2, v2, :cond_47

    .line 59
    iget p2, v0, Landroid/graphics/Rect;->right:I

    .line 61
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 63
    if-lt p2, v2, :cond_47

    .line 65
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 67
    iget v2, p1, Landroid/graphics/Rect;->top:I
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_4e

    .line 69
    if-lt p2, v2, :cond_47

    .line 71
    move v1, v3

    .line 72
    :cond_47
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 75
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 78
    return v1

    .line 79
    :catchall_4e
    move-exception p2

    .line 80
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 83
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 86
    throw p2

    .line 87
    :cond_56
    return v1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 13

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 9
    if-eqz v1, :cond_87

    .line 11
    invoke-virtual {v1, p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->getScrimOpacity(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)F

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    cmpl-float v2, v1, v2

    .line 18
    if-lez v2, :cond_87

    .line 20
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 22
    if-nez v2, :cond_1e

    .line 24
    new-instance v2, Landroid/graphics/Paint;

    .line 26
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 29
    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 31
    :cond_1e
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 35
    invoke-virtual {v0, p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->getScrimColor(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)I

    .line 38
    move-result v0

    .line 39
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 44
    const/high16 v2, 0x437f0000  # 255.0f

    .line 46
    mul-float/2addr v1, v2

    .line 47
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    const/16 v3, 0xff

    .line 54
    invoke-static {v1, v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->clamp(III)I

    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 64
    move-result v0

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_60

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 74
    move-result v1

    .line 75
    int-to-float v3, v1

    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 79
    move-result v1

    .line 80
    int-to-float v4, v1

    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 84
    move-result v1

    .line 85
    int-to-float v5, v1

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 89
    move-result v1

    .line 90
    int-to-float v6, v1

    .line 91
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 93
    move-object v2, p1

    .line 94
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 97
    :cond_60
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 100
    move-result v1

    .line 101
    int-to-float v3, v1

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 105
    move-result v1

    .line 106
    int-to-float v4, v1

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 110
    move-result v1

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 114
    move-result v2

    .line 115
    sub-int/2addr v1, v2

    .line 116
    int-to-float v5, v1

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 120
    move-result v1

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 124
    move-result v2

    .line 125
    sub-int/2addr v1, v2

    .line 126
    int-to-float v6, v1

    .line 127
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 129
    move-object v2, p1

    .line 130
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 136
    :cond_87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 139
    move-result p1

    .line 140
    return p1
.end method

.method public drawableStateChanged()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_17

    .line 13
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_17

    .line 19
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 22
    move-result v0

    .line 23
    or-int/2addr v2, v0

    .line 24
    :cond_17
    if-eqz v2, :cond_1c

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    :cond_1c
    return-void
.end method

.method public ensurePreDrawListener()V
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
    if-ge v2, v0, :cond_17

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    invoke-direct {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_14

    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_6

    .line 24
    :cond_17
    :goto_17
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 26
    if-eq v1, v0, :cond_24

    .line 28
    if-eqz v1, :cond_21

    .line 30
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addPreDrawListener()V

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removePreDrawListener()V

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateDefaultLayoutParams()Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    .registers 2

    .line 2
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    .registers 4

    .line 3
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    .registers 3

    .line 4
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v0, :cond_c

    .line 5
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V

    return-object v0

    .line 6
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    .line 7
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 8
    :cond_18
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_29

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x8

    .line 13
    if-ne v0, v1, :cond_f

    .line 15
    goto :goto_29

    .line 16
    :cond_f
    if-eqz p2, :cond_15

    .line 18
    invoke-virtual {p0, p1, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 21
    goto :goto_28

    .line 22
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 25
    move-result p2

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 37
    move-result p1

    .line 38
    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    :goto_28
    return-void

    .line 42
    :cond_29
    :goto_29
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 45
    return-void
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Lb0/a;

    .line 3
    iget-object v1, v0, Lb0/a;->b:Landroidx/collection/f;

    .line 5
    invoke-virtual {v1}, Landroidx/collection/f;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_a
    if-ge v3, v1, :cond_2f

    .line 13
    iget-object v4, v0, Lb0/a;->b:Landroidx/collection/f;

    .line 15
    invoke-virtual {v4, v3}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Ljava/util/ArrayList;

    .line 21
    if-eqz v4, :cond_2c

    .line 23
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_2c

    .line 29
    if-nez v2, :cond_23

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    :cond_23
    iget-object v4, v0, Lb0/a;->b:Landroidx/collection/f;

    .line 38
    invoke-virtual {v4, v3}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_a

    .line 48
    :cond_2f
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 50
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 53
    if-eqz v2, :cond_3b

    .line 55
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 57
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_3b
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 62
    return-object p1
.end method

.method public final getDependencySortedChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    .line 4
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Lb0/a;

    .line 3
    iget-object v0, v0, Lb0/a;->b:Landroidx/collection/f;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/List;

    .line 11
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    if-eqz p1, :cond_16

    .line 18
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    :cond_16
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 25
    return-object p1
.end method

.method public getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    sget-object v0, Lb0/b;->a:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 15
    sget-object v0, Lb0/b;->a:Ljava/lang/ThreadLocal;

    .line 17
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/graphics/Matrix;

    .line 23
    if-nez v1, :cond_21

    .line 25
    new-instance v1, Landroid/graphics/Matrix;

    .line 27
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 37
    :goto_24
    invoke-static {p0, p1, v1}, Lb0/b;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 40
    sget-object p1, Lb0/b;->b:Ljava/lang/ThreadLocal;

    .line 42
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/graphics/RectF;

    .line 48
    if-nez v0, :cond_39

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    .line 52
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 58
    :cond_39
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 61
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 64
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 66
    const/high16 v1, 0x3f000000  # 0.5f

    .line 68
    add-float/2addr p1, v1

    .line 69
    float-to-int p1, p1

    .line 70
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 72
    add-float/2addr v2, v1

    .line 73
    float-to-int v2, v2

    .line 74
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 76
    add-float/2addr v3, v1

    .line 77
    float-to-int v3, v3

    .line 78
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 80
    add-float/2addr v0, v1

    .line 81
    float-to-int v0, v0

    .line 82
    invoke-virtual {p2, p1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    return-void
.end method

.method public getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 16

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    move-result v9

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    move-result v10

    .line 15
    move-object v1, p0

    .line 16
    move-object v2, p1

    .line 17
    move v3, p2

    .line 18
    move-object v4, p3

    .line 19
    move-object v5, p4

    .line 20
    move-object v6, v0

    .line 21
    move v7, v9

    .line 22
    move v8, v10

    .line 23
    invoke-direct/range {v1 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;II)V

    .line 26
    invoke-direct {p0, v0, p4, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;Landroid/graphics/Rect;II)V

    .line 29
    return-void
.end method

.method public getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->q:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    return-void
.end method

.method public final getLastWindowInsets()Lm0/r0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 3
    return-object v0
.end method

.method public getNestedScrollAxes()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lm0/u;

    .line 3
    iget v1, v0, Lm0/u;->a:I

    .line 5
    iget v0, v0, Lm0/u;->b:I

    .line 7
    or-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z

    .line 9
    if-nez v1, :cond_73

    .line 11
    instance-of v1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    .line 13
    const-string v2, "CoordinatorLayout"

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_24

    .line 18
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    .line 20
    invoke-interface {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_1e

    .line 26
    const-string v1, "Attached behavior class is null"

    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_1e
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    .line 34
    iput-boolean v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z

    .line 36
    goto :goto_73

    .line 37
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-result-object p1

    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_29
    if-eqz p1, :cond_3a

    .line 44
    const-class v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 52
    if-nez v1, :cond_3a

    .line 54
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 57
    move-result-object p1

    .line 58
    goto :goto_29

    .line 59
    :cond_3a
    if-eqz v1, :cond_71

    .line 61
    :try_start_3c
    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->value()Ljava/lang/Class;

    .line 64
    move-result-object p1

    .line 65
    const/4 v4, 0x0

    .line 66
    new-array v5, v4, [Ljava/lang/Class;

    .line 68
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 71
    move-result-object p1

    .line 72
    new-array v4, v4, [Ljava/lang/Object;

    .line 74
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 80
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_52} :catch_53

    .line 83
    goto :goto_71

    .line 84
    :catch_53
    move-exception p1

    .line 85
    const-string v4, "Default behavior class "

    .line 87
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    move-result-object v4

    .line 91
    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->value()Ljava/lang/Class;

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, " could not be instantiated. Did you forget a default constructor?"

    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :cond_71
    :goto_71
    iput-boolean v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z

    .line 116
    :cond_73
    :goto_73
    return-object v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v1

    .line 14
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v1

    .line 14
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .registers 5

    .line 1
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8
    :try_start_7
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    .line 11
    move-result p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 12
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 15
    return p1

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 20
    throw p1
.end method

.method public offsetChildToAnchor(Landroid/view/View;I)V
    .registers 19

    .line 1
    move-object/from16 v8, p0

    .line 3
    move-object/from16 v9, p1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    move-object v10, v0

    .line 10
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 12
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 14
    if-eqz v0, :cond_79

    .line 16
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 19
    move-result-object v11

    .line 20
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 23
    move-result-object v12

    .line 24
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 27
    move-result-object v13

    .line 28
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 30
    invoke-virtual {v8, v0, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 33
    const/4 v14, 0x0

    .line 34
    invoke-virtual {v8, v9, v14, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 40
    move-result v15

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    move-result v7

    .line 45
    move-object/from16 v0, p0

    .line 47
    move-object/from16 v1, p1

    .line 49
    move/from16 v2, p2

    .line 51
    move-object v3, v11

    .line 52
    move-object v4, v13

    .line 53
    move-object v5, v10

    .line 54
    move v6, v15

    .line 55
    move/from16 p2, v7

    .line 57
    invoke-direct/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;II)V

    .line 60
    iget v0, v13, Landroid/graphics/Rect;->left:I

    .line 62
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 64
    if-ne v0, v1, :cond_47

    .line 66
    iget v0, v13, Landroid/graphics/Rect;->top:I

    .line 68
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 70
    if-eq v0, v1, :cond_48

    .line 72
    :cond_47
    const/4 v14, 0x1

    .line 73
    :cond_48
    move/from16 v0, p2

    .line 75
    invoke-direct {v8, v10, v13, v15, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;Landroid/graphics/Rect;II)V

    .line 78
    iget v0, v13, Landroid/graphics/Rect;->left:I

    .line 80
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 82
    sub-int/2addr v0, v1

    .line 83
    iget v1, v13, Landroid/graphics/Rect;->top:I

    .line 85
    iget v2, v12, Landroid/graphics/Rect;->top:I

    .line 87
    sub-int/2addr v1, v2

    .line 88
    if-eqz v0, :cond_5e

    .line 90
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 92
    invoke-virtual {v9, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 95
    :cond_5e
    if-eqz v1, :cond_65

    .line 97
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 99
    invoke-virtual {v9, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 102
    :cond_65
    if-eqz v14, :cond_70

    .line 104
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 106
    if-eqz v0, :cond_70

    .line 108
    iget-object v1, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 110
    invoke-virtual {v0, v8, v9, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 113
    :cond_70
    invoke-static {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 116
    invoke-static {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 119
    invoke-static {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 122
    :cond_79
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 8
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 10
    if-eqz v0, :cond_1f

    .line 12
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 14
    if-nez v0, :cond_16

    .line 16
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 18
    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 21
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 32
    :cond_1f
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 34
    if-nez v0, :cond_2e

    .line 36
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 38
    invoke-static {p0}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2e

    .line 44
    invoke-static {p0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 47
    :cond_2e
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 50
    return-void
.end method

.method public final onChildViewsChanged(I)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static/range {p0 .. p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 10
    move-result v2

    .line 11
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 16
    move-result v3

    .line 17
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 20
    move-result-object v4

    .line 21
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 24
    move-result-object v5

    .line 25
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 28
    move-result-object v6

    .line 29
    const/4 v7, 0x0

    .line 30
    move v8, v7

    .line 31
    :goto_1e
    if-ge v8, v3, :cond_108

    .line 33
    iget-object v9, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 35
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v9

    .line 39
    check-cast v9, Landroid/view/View;

    .line 41
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    move-result-object v10

    .line 45
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 47
    if-nez v1, :cond_3a

    .line 49
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 52
    move-result v11

    .line 53
    const/16 v12, 0x8

    .line 55
    if-ne v11, v12, :cond_3a

    .line 57
    goto/16 :goto_104

    .line 59
    :cond_3a
    move v11, v7

    .line 60
    :goto_3b
    if-ge v11, v8, :cond_4f

    .line 62
    iget-object v12, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 64
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v12

    .line 68
    check-cast v12, Landroid/view/View;

    .line 70
    iget-object v13, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;

    .line 72
    if-ne v13, v12, :cond_4c

    .line 74
    invoke-virtual {v0, v9, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 77
    :cond_4c
    add-int/lit8 v11, v11, 0x1

    .line 79
    goto :goto_3b

    .line 80
    :cond_4f
    const/4 v11, 0x1

    .line 81
    invoke-virtual {v0, v9, v11, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 84
    iget v12, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I

    .line 86
    if-eqz v12, :cond_ab

    .line 88
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 91
    move-result v12

    .line 92
    if-nez v12, :cond_ab

    .line 94
    iget v12, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I

    .line 96
    invoke-static {v12, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 99
    move-result v12

    .line 100
    and-int/lit8 v13, v12, 0x70

    .line 102
    const/16 v14, 0x30

    .line 104
    if-eq v13, v14, :cond_7e

    .line 106
    const/16 v14, 0x50

    .line 108
    if-eq v13, v14, :cond_6e

    .line 110
    goto :goto_88

    .line 111
    :cond_6e
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 116
    move-result v14

    .line 117
    iget v15, v5, Landroid/graphics/Rect;->top:I

    .line 119
    sub-int/2addr v14, v15

    .line 120
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    .line 123
    move-result v13

    .line 124
    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 126
    goto :goto_88

    .line 127
    :cond_7e
    iget v13, v4, Landroid/graphics/Rect;->top:I

    .line 129
    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    .line 131
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    .line 134
    move-result v13

    .line 135
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 137
    :goto_88
    and-int/lit8 v12, v12, 0x7

    .line 139
    const/4 v13, 0x3

    .line 140
    if-eq v12, v13, :cond_a1

    .line 142
    const/4 v13, 0x5

    .line 143
    if-eq v12, v13, :cond_91

    .line 145
    goto :goto_ab

    .line 146
    :cond_91
    iget v12, v4, Landroid/graphics/Rect;->right:I

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 151
    move-result v13

    .line 152
    iget v14, v5, Landroid/graphics/Rect;->left:I

    .line 154
    sub-int/2addr v13, v14

    .line 155
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 158
    move-result v12

    .line 159
    iput v12, v4, Landroid/graphics/Rect;->right:I

    .line 161
    goto :goto_ab

    .line 162
    :cond_a1
    iget v12, v4, Landroid/graphics/Rect;->left:I

    .line 164
    iget v13, v5, Landroid/graphics/Rect;->right:I

    .line 166
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 169
    move-result v12

    .line 170
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 172
    :cond_ab
    :goto_ab
    iget v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I

    .line 174
    if-eqz v10, :cond_b8

    .line 176
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 179
    move-result v10

    .line 180
    if-nez v10, :cond_b8

    .line 182
    invoke-direct {v0, v9, v4, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 185
    :cond_b8
    const/4 v10, 0x2

    .line 186
    if-eq v1, v10, :cond_c8

    .line 188
    invoke-virtual {v0, v9, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 191
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v12

    .line 195
    if-eqz v12, :cond_c5

    .line 197
    goto :goto_104

    .line 198
    :cond_c5
    invoke-virtual {v0, v9, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 201
    :cond_c8
    add-int/lit8 v12, v8, 0x1

    .line 203
    :goto_ca
    if-ge v12, v3, :cond_104

    .line 205
    iget-object v13, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 207
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v13

    .line 211
    check-cast v13, Landroid/view/View;

    .line 213
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 216
    move-result-object v14

    .line 217
    check-cast v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 219
    iget-object v15, v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 221
    if-eqz v15, :cond_ff

    .line 223
    invoke-virtual {v15, v0, v13, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 226
    move-result v16

    .line 227
    if-eqz v16, :cond_ff

    .line 229
    if-nez v1, :cond_ee

    .line 231
    iget-boolean v11, v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->p:Z

    .line 233
    if-eqz v11, :cond_ee

    .line 235
    iput-boolean v7, v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->p:Z

    .line 237
    const/4 v13, 0x1

    .line 238
    goto :goto_100

    .line 239
    :cond_ee
    if-eq v1, v10, :cond_f5

    .line 241
    invoke-virtual {v15, v0, v13, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 244
    move-result v11

    .line 245
    goto :goto_f9

    .line 246
    :cond_f5
    invoke-virtual {v15, v0, v13, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 249
    const/4 v11, 0x1

    .line 250
    :goto_f9
    const/4 v13, 0x1

    .line 251
    if-ne v1, v13, :cond_100

    .line 253
    iput-boolean v11, v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->p:Z

    .line 255
    goto :goto_100

    .line 256
    :cond_ff
    move v13, v11

    .line 257
    :cond_100
    :goto_100
    add-int/lit8 v12, v12, 0x1

    .line 259
    move v11, v13

    .line 260
    goto :goto_ca

    .line 261
    :cond_104
    :goto_104
    add-int/lit8 v8, v8, 0x1

    .line 263
    goto/16 :goto_1e

    .line 265
    :cond_108
    invoke-static {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 268
    invoke-static {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 271
    invoke-static {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 274
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 8
    iget-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 10
    if-eqz v1, :cond_18

    .line 12
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 14
    if-eqz v1, :cond_18

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 25
    :cond_18
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 27
    if-eqz v1, :cond_1f

    .line 29
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 32
    :cond_1f
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 34
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 6
    if-eqz v0, :cond_26

    .line 8
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz v0, :cond_26

    .line 12
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_15

    .line 17
    invoke-virtual {v0}, Lm0/r0;->e()I

    .line 20
    move-result v0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v0, v1

    .line 23
    :goto_16
    if-lez v0, :cond_26

    .line 25
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    :cond_26
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_a

    .line 8
    invoke-direct {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 11
    :cond_a
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    .line 15
    move-result p1

    .line 16
    if-eq v0, v1, :cond_14

    .line 18
    const/4 v2, 0x3

    .line 19
    if-ne v0, v2, :cond_17

    .line 21
    :cond_14
    invoke-direct {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 24
    :cond_17
    return p1
.end method

.method public onLayout(ZIIII)V
    .registers 7

    .line 1
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    move-result p2

    .line 13
    const/4 p3, 0x0

    .line 14
    :goto_d
    if-ge p3, p2, :cond_36

    .line 16
    iget-object p4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 18
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p4

    .line 22
    check-cast p4, Landroid/view/View;

    .line 24
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result p5

    .line 28
    const/16 v0, 0x8

    .line 30
    if-ne p5, v0, :cond_20

    .line 32
    goto :goto_33

    .line 33
    :cond_20
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object p5

    .line 37
    check-cast p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 39
    iget-object p5, p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 41
    if-eqz p5, :cond_30

    .line 43
    invoke-virtual {p5, p0, p4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    .line 46
    move-result p5

    .line 47
    if-nez p5, :cond_33

    .line 49
    :cond_30
    invoke-virtual {p0, p4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 52
    :cond_33
    :goto_33
    add-int/lit8 p3, p3, 0x1

    .line 54
    goto :goto_d

    .line 55
    :cond_36
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;

    .line 9
    if-nez v1, :cond_11

    .line 11
    iget v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I

    .line 13
    const/4 v3, -0x1

    .line 14
    if-eq v2, v3, :cond_11

    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v2, 0x0

    .line 19
    :goto_12
    if-nez v2, :cond_26

    .line 21
    if-eqz v1, :cond_1a

    .line 23
    invoke-direct {p0, p1, v1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    .line 26
    goto :goto_25

    .line 27
    :cond_1a
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->e:I

    .line 29
    if-ltz v0, :cond_22

    .line 31
    invoke-direct {p0, p1, v0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    .line 34
    goto :goto_25

    .line 35
    :cond_22
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    .line 38
    :goto_25
    return-void

    .line 39
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    const-string p2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1
.end method

.method public onMeasure(II)V
    .registers 33

    .line 1
    move-object/from16 v7, p0

    .line 3
    invoke-direct/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    move-result v0

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    move-result v9

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    move-result v1

    .line 25
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 27
    invoke-static/range {p0 .. p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 30
    move-result v10

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v10, v2, :cond_23

    .line 34
    move v12, v2

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 v12, 0x0

    .line 37
    :goto_24
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 40
    move-result v13

    .line 41
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 44
    move-result v14

    .line 45
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 48
    move-result v15

    .line 49
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 52
    move-result v16

    .line 53
    add-int v17, v8, v9

    .line 55
    add-int v18, v0, v1

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    .line 60
    move-result v0

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    .line 64
    move-result v1

    .line 65
    iget-object v3, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 67
    if-eqz v3, :cond_4d

    .line 69
    invoke-static/range {p0 .. p0}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_4d

    .line 75
    move/from16 v19, v2

    .line 77
    goto :goto_4f

    .line 78
    :cond_4d
    const/16 v19, 0x0

    .line 80
    :goto_4f
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 82
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 85
    move-result v6

    .line 86
    move v5, v0

    .line 87
    move v4, v1

    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    :goto_59
    if-ge v3, v6, :cond_16f

    .line 92
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 94
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 98
    move-object/from16 v20, v0

    .line 100
    check-cast v20, Landroid/view/View;

    .line 102
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    .line 105
    move-result v0

    .line 106
    const/16 v1, 0x8

    .line 108
    if-ne v0, v1, :cond_75

    .line 110
    move/from16 v22, v3

    .line 112
    move/from16 v29, v6

    .line 114
    move/from16 v28, v8

    .line 116
    goto/16 :goto_167

    .line 118
    :cond_75
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 121
    move-result-object v0

    .line 122
    move-object v1, v0

    .line 123
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 125
    iget v0, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->e:I

    .line 127
    if-ltz v0, :cond_bc

    .line 129
    if-eqz v13, :cond_bc

    .line 131
    invoke-direct {v7, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    .line 134
    move-result v0

    .line 135
    iget v11, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I

    .line 137
    invoke-static {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    .line 140
    move-result v11

    .line 141
    invoke-static {v11, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 144
    move-result v11

    .line 145
    and-int/lit8 v11, v11, 0x7

    .line 147
    move/from16 v22, v2

    .line 149
    const/4 v2, 0x3

    .line 150
    if-ne v11, v2, :cond_99

    .line 152
    if-eqz v12, :cond_9e

    .line 154
    :cond_99
    const/4 v2, 0x5

    .line 155
    if-ne v11, v2, :cond_aa

    .line 157
    if-eqz v12, :cond_aa

    .line 159
    :cond_9e
    sub-int v2, v14, v9

    .line 161
    sub-int/2addr v2, v0

    .line 162
    const/4 v0, 0x0

    .line 163
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 166
    move-result v2

    .line 167
    move v11, v0

    .line 168
    move/from16 v21, v2

    .line 170
    goto :goto_c1

    .line 171
    :cond_aa
    if-ne v11, v2, :cond_ae

    .line 173
    if-eqz v12, :cond_b3

    .line 175
    :cond_ae
    const/4 v2, 0x3

    .line 176
    if-ne v11, v2, :cond_be

    .line 178
    if-eqz v12, :cond_be

    .line 180
    :cond_b3
    sub-int/2addr v0, v8

    .line 181
    const/4 v11, 0x0

    .line 182
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 185
    move-result v0

    .line 186
    move/from16 v21, v0

    .line 188
    goto :goto_c1

    .line 189
    :cond_bc
    move/from16 v22, v2

    .line 191
    :cond_be
    const/4 v11, 0x0

    .line 192
    move/from16 v21, v11

    .line 194
    :goto_c1
    if-eqz v19, :cond_f3

    .line 196
    invoke-static/range {v20 .. v20}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_f3

    .line 202
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 204
    invoke-virtual {v0}, Lm0/r0;->c()I

    .line 207
    move-result v0

    .line 208
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 210
    invoke-virtual {v2}, Lm0/r0;->d()I

    .line 213
    move-result v2

    .line 214
    add-int/2addr v2, v0

    .line 215
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 217
    invoke-virtual {v0}, Lm0/r0;->e()I

    .line 220
    move-result v0

    .line 221
    iget-object v11, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 223
    invoke-virtual {v11}, Lm0/r0;->b()I

    .line 226
    move-result v11

    .line 227
    add-int/2addr v11, v0

    .line 228
    sub-int v0, v14, v2

    .line 230
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 233
    move-result v0

    .line 234
    sub-int v2, v16, v11

    .line 236
    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 239
    move-result v2

    .line 240
    move v11, v0

    .line 241
    move/from16 v23, v2

    .line 243
    goto :goto_f7

    .line 244
    :cond_f3
    move/from16 v11, p1

    .line 246
    move/from16 v23, p2

    .line 248
    :goto_f7
    iget-object v0, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 250
    if-eqz v0, :cond_11d

    .line 252
    const/16 v24, 0x0

    .line 254
    move-object v2, v1

    .line 255
    move-object/from16 v1, p0

    .line 257
    move-object/from16 v26, v2

    .line 259
    move/from16 v25, v22

    .line 261
    move-object/from16 v2, v20

    .line 263
    move/from16 v22, v3

    .line 265
    move v3, v11

    .line 266
    move/from16 v27, v4

    .line 268
    move/from16 v4, v21

    .line 270
    move/from16 v28, v8

    .line 272
    move v8, v5

    .line 273
    move/from16 v5, v23

    .line 275
    move/from16 v29, v6

    .line 277
    move/from16 v6, v24

    .line 279
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_137

    .line 285
    goto :goto_12a

    .line 286
    :cond_11d
    move-object/from16 v26, v1

    .line 288
    move/from16 v27, v4

    .line 290
    move/from16 v29, v6

    .line 292
    move/from16 v28, v8

    .line 294
    move/from16 v25, v22

    .line 296
    move/from16 v22, v3

    .line 298
    move v8, v5

    .line 299
    :goto_12a
    const/4 v5, 0x0

    .line 300
    move-object/from16 v0, p0

    .line 302
    move-object/from16 v1, v20

    .line 304
    move v2, v11

    .line 305
    move/from16 v3, v21

    .line 307
    move/from16 v4, v23

    .line 309
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 312
    :cond_137
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    .line 315
    move-result v0

    .line 316
    add-int v0, v0, v17

    .line 318
    move-object/from16 v1, v26

    .line 320
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 322
    add-int/2addr v0, v2

    .line 323
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 325
    add-int/2addr v0, v2

    .line 326
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 329
    move-result v0

    .line 330
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    .line 333
    move-result v2

    .line 334
    add-int v2, v2, v18

    .line 336
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 338
    add-int/2addr v2, v3

    .line 339
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 341
    add-int/2addr v2, v1

    .line 342
    move/from16 v1, v27

    .line 344
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 347
    move-result v1

    .line 348
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredState()I

    .line 351
    move-result v2

    .line 352
    move/from16 v11, v25

    .line 354
    invoke-static {v11, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 357
    move-result v2

    .line 358
    move v5, v0

    .line 359
    move v4, v1

    .line 360
    :goto_167
    add-int/lit8 v3, v22, 0x1

    .line 362
    move/from16 v8, v28

    .line 364
    move/from16 v6, v29

    .line 366
    goto/16 :goto_59

    .line 368
    :cond_16f
    move v11, v2

    .line 369
    move v1, v4

    .line 370
    move v8, v5

    .line 371
    const/high16 v0, -0x1000000

    .line 373
    and-int/2addr v0, v11

    .line 374
    move/from16 v2, p1

    .line 376
    invoke-static {v8, v2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 379
    move-result v0

    .line 380
    shl-int/lit8 v2, v11, 0x10

    .line 382
    move/from16 v3, p2

    .line 384
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 387
    move-result v1

    .line 388
    invoke-virtual {v7, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 391
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .registers 6

    .line 1
    invoke-virtual/range {p0 .. p5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 4
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 16

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_7
    if-ge v2, v0, :cond_34

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v6

    .line 14
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x8

    .line 20
    if-ne v4, v5, :cond_16

    .line 22
    goto :goto_31

    .line 23
    :cond_16
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 29
    invoke-virtual {v4, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a(I)Z

    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_23

    .line 35
    goto :goto_31

    .line 36
    :cond_23
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 38
    if-eqz v4, :cond_31

    .line 40
    move-object v5, p0

    .line 41
    move-object v7, p1

    .line 42
    move v8, p2

    .line 43
    move v9, p3

    .line 44
    move v10, p4

    .line 45
    invoke-virtual/range {v4 .. v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    .line 48
    move-result v4

    .line 49
    or-int/2addr v3, v4

    .line 50
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_7

    .line 53
    :cond_34
    if-eqz v3, :cond_3a

    .line 55
    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 59
    :cond_3a
    return v3
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_7
    if-ge v2, v0, :cond_33

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v6

    .line 14
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x8

    .line 20
    if-ne v4, v5, :cond_16

    .line 22
    goto :goto_30

    .line 23
    :cond_16
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 29
    invoke-virtual {v4, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a(I)Z

    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_23

    .line 35
    goto :goto_30

    .line 36
    :cond_23
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 38
    if-eqz v4, :cond_30

    .line 40
    move-object v5, p0

    .line 41
    move-object v7, p1

    .line 42
    move v8, p2

    .line 43
    move v9, p3

    .line 44
    invoke-virtual/range {v4 .. v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    .line 47
    move-result v4

    .line 48
    or-int/2addr v3, v4

    .line 49
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_7

    .line 52
    :cond_33
    return v3
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 22

    move-object/from16 v8, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    move v0, v10

    move v11, v0

    move v12, v11

    move v13, v12

    :goto_b
    const/4 v14, 0x1

    if-ge v11, v9, :cond_6c

    .line 3
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1d

    move/from16 v15, p5

    goto :goto_69

    .line 5
    :cond_1d
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    move/from16 v15, p5

    .line 6
    invoke-virtual {v1, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a(I)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_69

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    if-eqz v1, :cond_69

    .line 8
    iget-object v6, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aput v10, v6, v10

    .line 9
    aput v10, v6, v14

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    .line 10
    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 11
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    if-lez p2, :cond_4f

    aget v0, v0, v10

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_55

    :cond_4f
    aget v0, v0, v10

    .line 12
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_55
    move v12, v0

    .line 13
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    if-lez p3, :cond_61

    aget v0, v0, v14

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_67

    :cond_61
    aget v0, v0, v14

    .line 14
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_67
    move v13, v0

    move v0, v14

    :cond_69
    :goto_69
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 15
    :cond_6c
    aput v12, p4, v10

    .line 16
    aput v13, p4, v14

    if-eqz v0, :cond_75

    .line 17
    invoke-virtual {v8, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_75
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 15

    .line 2
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 25

    move-object/from16 v10, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    move v0, v12

    move v13, v0

    move v14, v13

    move v15, v14

    :goto_b
    const/4 v9, 0x1

    if-ge v13, v11, :cond_76

    .line 4
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1b

    goto :goto_73

    .line 6
    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    move/from16 v8, p6

    .line 7
    invoke-virtual {v1, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a(I)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_73

    .line 8
    :cond_2a
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    if-eqz v1, :cond_73

    .line 9
    iget-object v7, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aput v12, v7, v12

    .line 10
    aput v12, v7, v9

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v16, v7

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, v16

    .line 11
    invoke-virtual/range {v0 .. v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V

    .line 12
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    if-lez p4, :cond_55

    aget v0, v0, v12

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5b

    :cond_55
    aget v0, v0, v12

    .line 13
    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_5b
    move v14, v0

    if-lez p5, :cond_68

    .line 14
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_71

    :cond_68
    const/4 v1, 0x1

    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v1

    .line 15
    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_71
    move v15, v0

    move v0, v1

    :cond_73
    :goto_73
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_76
    move v1, v9

    .line 16
    aget v2, p7, v12

    add-int/2addr v2, v14

    aput v2, p7, v12

    .line 17
    aget v2, p7, v1

    add-int/2addr v2, v15

    aput v2, p7, v1

    if-eqz v0, :cond_86

    .line 18
    invoke-virtual {v10, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_86
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 14

    .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lm0/u;

    invoke-virtual {v0, p3, p4}, Lm0/u;->a(II)V

    .line 3
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_2e

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    invoke-virtual {v2, p4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a(I)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_2b

    .line 8
    :cond_1f
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    if-eqz v2, :cond_2b

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    .line 9
    invoke-virtual/range {v2 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onNestedScrollAccepted(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2e
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8

    .line 1
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    .line 11
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->a:Landroid/util/SparseArray;

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v1

    .line 25
    :goto_18
    if-ge v0, v1, :cond_3b

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 34
    move-result v3

    .line 35
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 38
    move-result-object v4

    .line 39
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 41
    const/4 v5, -0x1

    .line 42
    if-eq v3, v5, :cond_38

    .line 44
    if-eqz v4, :cond_38

    .line 46
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/os/Parcelable;

    .line 52
    if-eqz v3, :cond_38

    .line 54
    invoke-virtual {v4, p0, v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 57
    :cond_38
    add-int/lit8 v0, v0, 0x1

    .line 59
    goto :goto_18

    .line 60
    :cond_3b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    .line 3
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_13
    if-ge v3, v2, :cond_36

    .line 22
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 29
    move-result v5

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 36
    iget-object v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 38
    const/4 v7, -0x1

    .line 39
    if-eq v5, v7, :cond_33

    .line 41
    if-eqz v6, :cond_33

    .line 43
    invoke-virtual {v6, p0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    .line 46
    move-result-object v4

    .line 47
    if-eqz v4, :cond_33

    .line 49
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 52
    :cond_33
    add-int/lit8 v3, v3, 0x1

    .line 54
    goto :goto_13

    .line 55
    :cond_36
    iput-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->a:Landroid/util/SparseArray;

    .line 57
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 20

    move/from16 v7, p4

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_9
    if-ge v10, v8, :cond_4b

    move-object v12, p0

    .line 3
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_19

    goto :goto_48

    .line 5
    :cond_19
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 6
    iget-object v0, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    const/4 v14, 0x1

    if-eqz v0, :cond_3e

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 7
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    or-int/2addr v11, v0

    if-eqz v7, :cond_3b

    if-eq v7, v14, :cond_38

    goto :goto_48

    .line 8
    :cond_38
    iput-boolean v0, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o:Z

    goto :goto_48

    .line 9
    :cond_3b
    iput-boolean v0, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->n:Z

    goto :goto_48

    :cond_3e
    if-eqz v7, :cond_46

    if-eq v7, v14, :cond_43

    goto :goto_48

    .line 10
    :cond_43
    iput-boolean v9, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o:Z

    goto :goto_48

    .line 11
    :cond_46
    iput-boolean v9, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->n:Z

    :goto_48
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_4b
    move-object v12, p0

    return v11
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 10

    .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lm0/u;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_9

    .line 3
    iput v1, v0, Lm0/u;->b:I

    goto :goto_b

    .line 4
    :cond_9
    iput v1, v0, Lm0/u;->a:I

    .line 5
    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_10
    if-ge v3, v0, :cond_39

    .line 6
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 8
    invoke-virtual {v5, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a(I)Z

    move-result v6

    if-nez v6, :cond_23

    goto :goto_36

    .line 9
    :cond_23
    iget-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    if-eqz v6, :cond_2a

    .line 10
    invoke-virtual {v6, p0, v4, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    :cond_2a
    if-eqz p2, :cond_32

    if-eq p2, v2, :cond_2f

    goto :goto_34

    .line 11
    :cond_2f
    iput-boolean v1, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o:Z

    goto :goto_34

    .line 12
    :cond_32
    iput-boolean v1, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->n:Z

    .line 13
    :goto_34
    iput-boolean v1, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->p:Z

    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_39
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
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
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-nez v3, :cond_15

    .line 15
    invoke-direct {v0, v1, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_29

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v3, v5

    .line 23
    :goto_16
    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 25
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object v6

    .line 29
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 31
    iget-object v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 33
    if-eqz v6, :cond_29

    .line 35
    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 37
    invoke-virtual {v6, v0, v7, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 40
    move-result v6

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v6, v5

    .line 43
    :goto_2a
    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 45
    const/4 v8, 0x0

    .line 46
    if-nez v7, :cond_35

    .line 48
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 51
    move-result v1

    .line 52
    or-int/2addr v6, v1

    .line 53
    goto :goto_48

    .line 54
    :cond_35
    if-eqz v3, :cond_48

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 59
    move-result-wide v11

    .line 60
    const/4 v13, 0x3

    .line 61
    const/4 v14, 0x0

    .line 62
    const/4 v15, 0x0

    .line 63
    const/16 v16, 0x0

    .line 65
    move-wide v9, v11

    .line 66
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 69
    move-result-object v8

    .line 70
    invoke-super {v0, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 73
    :cond_48
    :goto_48
    if-eqz v8, :cond_4d

    .line 75
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 78
    :cond_4d
    if-eq v2, v4, :cond_52

    .line 80
    const/4 v1, 0x3

    .line 81
    if-ne v2, v1, :cond_55

    .line 83
    :cond_52
    invoke-direct {v0, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 86
    :cond_55
    return v6
.end method

.method public recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->q:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    return-void
.end method

.method public removePreDrawListener()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 7
    if-eqz v0, :cond_11

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 21
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onRequestChildRectangleOnScreen(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 4
    if-eqz p1, :cond_10

    .line 6
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 8
    if-nez p1, :cond_10

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 17
    :cond_10
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 4
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    .line 7
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eq v0, p1, :cond_47

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
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 19
    if-eqz v1, :cond_42

    .line 21
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_23

    .line 27
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 36
    :cond_23
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 38
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 40
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 43
    move-result v0

    .line 44
    invoke-static {p1, v0}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 47
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

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
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 67
    :cond_42
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 69
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 72
    :cond_47
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
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
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v1, :cond_18

    .line 14
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 17
    move-result v1

    .line 18
    if-eq v1, p1, :cond_18

    .line 20
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 25
    :cond_18
    return-void
.end method

.method public final setWindowInsets(Lm0/r0;)Lm0/r0;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 3
    invoke-static {v0, p1}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2d

    .line 9
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Lm0/r0;

    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_16

    .line 15
    invoke-virtual {p1}, Lm0/r0;->e()I

    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_16

    .line 21
    move v2, v0

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v2, v1

    .line 24
    :goto_17
    iput-boolean v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 26
    if-nez v2, :cond_22

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move v0, v1

    .line 36
    :goto_23
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 39
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Lm0/r0;)Lm0/r0;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 46
    :cond_2d
    return-object p1
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
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

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
