.class public Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "EmptyTriggerRelativeLayout.java"


# instance fields
.field private mEmptyTrigger:Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private isTriggerClick(FF)Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchX:F

    .line 3
    sub-float/2addr p1, v0

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 7
    move-result p1

    .line 8
    iget v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchY:F

    .line 10
    sub-float/2addr p2, v0

    .line 11
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 14
    move-result p2

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 18
    move-result p1

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getTouchSlop()F

    .line 22
    move-result p2

    .line 23
    cmpg-float p1, p1, p2

    .line 25
    if-gez p1, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    :goto_1d
    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4f

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_25

    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_d

    .line 13
    goto :goto_5b

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mEmptyTrigger:Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;

    .line 16
    if-eqz v0, :cond_5b

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 25
    move-result v1

    .line 26
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->isTriggerClick(FF)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_5b

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mEmptyTrigger:Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;

    .line 34
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;->onDeActive()V

    .line 37
    goto :goto_5b

    .line 38
    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 45
    move-result v1

    .line 46
    iget v2, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchX:F

    .line 48
    sub-float/2addr v0, v2

    .line 49
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 52
    move-result v0

    .line 53
    iget v2, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchY:F

    .line 55
    sub-float/2addr v1, v2

    .line 56
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 59
    move-result v1

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 63
    move-result v0

    .line 64
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getTouchSlop()F

    .line 67
    move-result v1

    .line 68
    cmpg-float v0, v0, v1

    .line 70
    if-gez v0, :cond_5b

    .line 72
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mEmptyTrigger:Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;

    .line 74
    if-eqz v0, :cond_5b

    .line 76
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;->onReverse()V

    .line 79
    goto :goto_5b

    .line 80
    :cond_4f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 83
    move-result v0

    .line 84
    iput v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchX:F

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchY:F

    .line 92
    :cond_5b
    :goto_5b
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    move-result p1

    .line 96
    return p1
.end method

.method public setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mEmptyTrigger:Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;

    .line 3
    return-void
.end method
