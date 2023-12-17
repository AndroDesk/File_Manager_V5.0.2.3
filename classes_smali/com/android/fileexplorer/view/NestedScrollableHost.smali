.class public final Lcom/android/fileexplorer/view/NestedScrollableHost;
.super Landroid/widget/FrameLayout;
.source "NestedScrollableHost.kt"


# instance fields
.field private initialX:F

.field private initialY:F

.field private touchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/NestedScrollableHost;->touchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/NestedScrollableHost;->touchSlop:I

    return-void
.end method

.method private final canChildScroll(IF)Z
    .registers 5

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 4
    move-result p2

    .line 5
    float-to-int p2, p2

    .line 6
    neg-int p2, p2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1d

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p1, v1, :cond_17

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/view/NestedScrollableHost;->getChild()Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_27

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 22
    move-result v0

    .line 23
    goto :goto_27

    .line 24
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 29
    throw p1

    .line 30
    :cond_1d
    invoke-direct {p0}, Lcom/android/fileexplorer/view/NestedScrollableHost;->getChild()Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_27

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 39
    move-result v0

    .line 40
    :cond_27
    :goto_27
    return v0
.end method

.method private final getChild()Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_c

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return-object v0
.end method

.method private final getParentViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/View;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_c

    .line 10
    check-cast v0, Landroid/view/View;

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move-object v0, v2

    .line 14
    :goto_d
    if-eqz v0, :cond_1e

    .line 16
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    if-nez v1, :cond_1e

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Landroid/view/View;

    .line 26
    if-eqz v1, :cond_c

    .line 28
    check-cast v0, Landroid/view/View;

    .line 30
    goto :goto_d

    .line 31
    :cond_1e
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 33
    if-eqz v1, :cond_25

    .line 35
    move-object v2, v0

    .line 36
    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 38
    :cond_25
    return-object v2
.end method

.method private final handleInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .registers 7

    .line 1
    const-string v0, "main1"

    .line 3
    const-string v1, "handleInterceptTouchEvent"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/NestedScrollableHost;->getParentViewPager()Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_6e

    .line 14
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-nez v1, :cond_2d

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/android/fileexplorer/view/NestedScrollableHost;->initialX:F

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/android/fileexplorer/view/NestedScrollableHost;->initialY:F

    .line 36
    invoke-direct {p0}, Lcom/android/fileexplorer/view/NestedScrollableHost;->getParentViewPager()Landroidx/viewpager2/widget/ViewPager2;

    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_6e

    .line 42
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 45
    goto :goto_6e

    .line 46
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 49
    move-result v1

    .line 50
    const/4 v3, 0x2

    .line 51
    if-ne v1, v3, :cond_6e

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 56
    move-result v1

    .line 57
    iget v3, p0, Lcom/android/fileexplorer/view/NestedScrollableHost;->initialX:F

    .line 59
    sub-float/2addr v1, v3

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 63
    move-result p1

    .line 64
    iget v3, p0, Lcom/android/fileexplorer/view/NestedScrollableHost;->initialY:F

    .line 66
    sub-float/2addr p1, v3

    .line 67
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 70
    move-result v1

    .line 71
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 74
    move-result p1

    .line 75
    iget v3, p0, Lcom/android/fileexplorer/view/NestedScrollableHost;->touchSlop:I

    .line 77
    int-to-float v4, v3

    .line 78
    cmpl-float v4, v1, v4

    .line 80
    if-gtz v4, :cond_56

    .line 82
    int-to-float v3, v3

    .line 83
    cmpl-float v3, p1, v3

    .line 85
    if-lez v3, :cond_6e

    .line 87
    :cond_56
    cmpl-float p1, p1, v1

    .line 89
    if-lez p1, :cond_69

    .line 91
    const-string p1, "yyyyyyyy"

    .line 93
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/android/fileexplorer/view/NestedScrollableHost;->getParentViewPager()Landroidx/viewpager2/widget/ViewPager2;

    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_6e

    .line 102
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 105
    goto :goto_6e

    .line 106
    :cond_69
    const-string p1, "xxxxxxx"

    .line 108
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_6e
    :goto_6e
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1  # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "e"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/NestedScrollableHost;->handleInterceptTouchEvent(Landroid/view/MotionEvent;)V

    .line 9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method
