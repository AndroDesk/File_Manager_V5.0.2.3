.class public Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "EmptyTriggerRelativeLayout.java"


# instance fields
.field private mEmptyTrigger:Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private isTriggerClick(FF)Z
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchY:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getTouchSlop()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    goto :goto_5b

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mEmptyTrigger:Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;

    if-eqz v0, :cond_5b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->isTriggerClick(FF)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mEmptyTrigger:Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;->onDeActive()V

    goto :goto_5b

    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getTouchSlop()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5b

    iget-object v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mEmptyTrigger:Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;

    if-eqz v0, :cond_5b

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;->onReverse()V

    goto :goto_5b

    :cond_4f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mTouchY:F

    :cond_5b
    :goto_5b
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->mEmptyTrigger:Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;

    return-void
.end method
