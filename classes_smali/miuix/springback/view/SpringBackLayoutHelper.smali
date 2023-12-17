.class public Lmiuix/springback/view/SpringBackLayoutHelper;
.super Ljava/lang/Object;
.source "SpringBackLayoutHelper.java"


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field public mActivePointerId:I

.field public mInitialDownX:F

.field public mInitialDownY:F

.field public mScrollOrientation:I

.field private mTarget:Landroid/view/ViewGroup;

.field public mTargetScrollOrientation:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    .line 7
    iput-object p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    .line 9
    iput p2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    .line 25
    return-void
.end method


# virtual methods
.method public checkOrientation(Landroid/view/MotionEvent;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_5b

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_53

    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_11

    .line 14
    const/4 p1, 0x3

    .line 15
    if-eq v0, p1, :cond_53

    .line 17
    goto :goto_76

    .line 18
    :cond_11
    iget v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    .line 20
    const/4 v1, -0x1

    .line 21
    if-ne v0, v1, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 27
    move-result v0

    .line 28
    if-gez v0, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 38
    move-result p1

    .line 39
    iget v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    .line 41
    sub-float/2addr v1, v0

    .line 42
    iget v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    .line 44
    sub-float/2addr p1, v0

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 48
    move-result v0

    .line 49
    iget v4, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    .line 51
    int-to-float v4, v4

    .line 52
    cmpl-float v0, v0, v4

    .line 54
    if-gtz v0, :cond_42

    .line 56
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 59
    move-result v0

    .line 60
    iget v4, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    .line 62
    int-to-float v4, v4

    .line 63
    cmpl-float v0, v0, v4

    .line 65
    if-lez v0, :cond_76

    .line 67
    :cond_42
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 70
    move-result p1

    .line 71
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 74
    move-result v0

    .line 75
    cmpl-float p1, p1, v0

    .line 77
    if-lez p1, :cond_4f

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move v2, v3

    .line 81
    :goto_50
    iput v2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    .line 83
    goto :goto_76

    .line 84
    :cond_53
    iput v1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    .line 86
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 91
    goto :goto_76

    .line 92
    :cond_5b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 95
    move-result v0

    .line 96
    iput v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 101
    move-result v0

    .line 102
    if-gez v0, :cond_68

    .line 104
    return-void

    .line 105
    :cond_68
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 108
    move-result v2

    .line 109
    iput v2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 114
    move-result p1

    .line 115
    iput p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    .line 117
    iput v1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    .line 119
    :cond_76
    :goto_76
    return-void
.end method

.method public isTouchInTarget(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 5
    move-result v1

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 9
    move-result v1

    .line 10
    if-ltz v1, :cond_3d

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [I

    .line 23
    fill-array-data v1, :array_3e

    .line 26
    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 31
    aget v0, v1, v0

    .line 33
    const/4 v3, 0x1

    .line 34
    aget v1, v1, v3

    .line 36
    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 41
    move-result v3

    .line 42
    add-int/2addr v3, v1

    .line 43
    iget-object v4, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 48
    move-result v4

    .line 49
    add-int/2addr v4, v0

    .line 50
    new-instance v5, Landroid/graphics/Rect;

    .line 52
    invoke-direct {v5, v0, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 55
    float-to-int p1, p1

    .line 56
    float-to-int v0, v2

    .line 57
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    :cond_3d
    return v0

    .line 63
    :array_3e
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayoutHelper;->checkOrientation(Landroid/view/MotionEvent;)V

    .line 4
    iget p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_13

    .line 10
    iget v2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    .line 12
    if-eq p1, v2, :cond_13

    .line 14
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    return v1

    .line 20
    :cond_13
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 25
    return v0
.end method
