.class public Landroidx/recyclerview/widget/x;
.super Landroidx/recyclerview/widget/f;
.source "SpringItemTouchHelper.java"


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field public mSpringEnabled:Z

.field private final mTmpPosition:[F

.field private final mUseFolmeRecoverAnimation:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    .line 6
    const v1, 0x3f733333  # 0.95f

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 12
    move-result-object v0

    .line 13
    const v1, 0x3e99999a  # 0.3f

    .line 16
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/recyclerview/widget/x;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/f$e;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/f$e;)V

    .line 4
    const/4 p1, 0x2

    .line 5
    new-array p1, p1, [F

    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/x;->mTmpPosition:[F

    .line 9
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_16

    .line 15
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_16

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    iput-boolean p1, p0, Landroidx/recyclerview/widget/x;->mUseFolmeRecoverAnimation:Z

    .line 26
    return-void
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .registers 6

    .line 1
    cmpl-float v0, p1, p3

    .line 3
    if-ltz v0, :cond_1e

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    add-float/2addr p3, v0

    .line 11
    cmpg-float p1, p1, p3

    .line 13
    if-gtz p1, :cond_1e

    .line 15
    cmpl-float p1, p2, p4

    .line 17
    if-ltz p1, :cond_1e

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    add-float/2addr p4, p0

    .line 25
    cmpg-float p0, p2, p4

    .line 27
    if-gtz p0, :cond_1e

    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p0, 0x0

    .line 32
    :goto_1f
    return p0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    :cond_a
    return-void
.end method

.method private super_select_overwrite()V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .line 1
    const-class v0, Landroidx/recyclerview/widget/f;

    .line 3
    const-string v1, "mDragScrollStartTimeInMs"

    .line 5
    invoke-static {v0, v1}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    move-result-object v1

    .line 9
    const-wide/high16 v2, -0x8000000000000000L

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {p0, v1, v2}, Lmiuix/reflect/Reflects;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/f;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 23
    const-string v3, "mActionState"

    .line 25
    invoke-static {v0, v3}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v5

    .line 34
    invoke-static {p0, v3, v5}, Lmiuix/reflect/Reflects;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 37
    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 39
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 41
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    move-result-object v5

    .line 45
    if-eqz v5, :cond_6b

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/x;->releaseVelocityTracker()V

    .line 50
    new-array v5, v2, [Ljava/lang/Class;

    .line 52
    const-class v6, [F

    .line 54
    aput-object v6, v5, v4

    .line 56
    const-string v6, "getSelectedDxDy"

    .line 58
    invoke-static {v0, v6, v5}, Lmiuix/reflect/Reflects;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    move-result-object v0

    .line 62
    new-array v5, v2, [Ljava/lang/Object;

    .line 64
    iget-object v6, p0, Landroidx/recyclerview/widget/x;->mTmpPosition:[F

    .line 66
    aput-object v6, v5, v4

    .line 68
    invoke-static {p0, v0, v5}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Landroidx/recyclerview/widget/x;->mTmpPosition:[F

    .line 73
    aget v9, v0, v4

    .line 75
    aget v10, v0, v2

    .line 77
    new-instance v0, Landroidx/recyclerview/widget/x$a;

    .line 79
    move-object v6, v0

    .line 80
    move-object v7, p0

    .line 81
    move-object v8, v3

    .line 82
    move-object v11, v3

    .line 83
    invoke-direct/range {v6 .. v11}, Landroidx/recyclerview/widget/x$a;-><init>(Landroidx/recyclerview/widget/x;Landroidx/recyclerview/widget/RecyclerView$b0;FFLandroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 86
    iget-object v5, v0, Landroidx/recyclerview/widget/f$g;->g:Landroid/animation/ValueAnimator;

    .line 88
    sget-object v6, Landroidx/recyclerview/widget/x;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 90
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget-object v5, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 95
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    .line 101
    iget-object v0, v0, Landroidx/recyclerview/widget/f$g;->g:Landroid/animation/ValueAnimator;

    .line 103
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 106
    move v0, v2

    .line 107
    goto :goto_78

    .line 108
    :cond_6b
    iget-object v0, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 110
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/f;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 115
    iget-object v5, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    invoke-virtual {v0, v5, v3}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 120
    move v0, v4

    .line 121
    :goto_78
    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 123
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 128
    move-result-object v1

    .line 129
    if-eqz v1, :cond_8b

    .line 131
    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 133
    if-eqz v3, :cond_87

    .line 135
    goto :goto_88

    .line 136
    :cond_87
    move v2, v4

    .line 137
    :goto_88
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 140
    :cond_8b
    if-nez v0, :cond_96

    .line 142
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 151
    :cond_96
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 153
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 155
    invoke-virtual {v0, v1, v4}, Landroidx/recyclerview/widget/f$e;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 158
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 163
    return-void
.end method


# virtual methods
.method public findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    if-nez v0, :cond_41

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 12
    move-result p1

    .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 21
    :goto_14
    if-ltz v1, :cond_3a

    .line 23
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 25
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroidx/recyclerview/widget/f$g;

    .line 31
    iget-object v3, v2, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 33
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    .line 38
    move-result v4

    .line 39
    iget v5, v2, Landroidx/recyclerview/widget/f$g;->i:F

    .line 41
    add-float/2addr v4, v5

    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 45
    move-result v5

    .line 46
    iget v2, v2, Landroidx/recyclerview/widget/f$g;->j:F

    .line 48
    add-float/2addr v5, v2

    .line 49
    invoke-static {v3, v0, p1, v4, v5}, Landroidx/recyclerview/widget/x;->hitTest(Landroid/view/View;FFFF)Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_37

    .line 55
    return-object v3

    .line 56
    :cond_37
    add-int/lit8 v1, v1, -0x1

    .line 58
    goto :goto_14

    .line 59
    :cond_3a
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_41
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/f;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public onStartDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    instance-of v0, p1, Lmiuix/recyclerview/widget/RecyclerView;

    .line 5
    if-eqz v0, :cond_16

    .line 7
    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->getSpringEnabled()Z

    .line 12
    move-result p1

    .line 13
    iput-boolean p1, p0, Landroidx/recyclerview/widget/x;->mSpringEnabled:Z

    .line 15
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 23
    :cond_16
    return-void
.end method

.method public onStopDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    instance-of v0, p1, Lmiuix/recyclerview/widget/RecyclerView;

    .line 5
    if-eqz v0, :cond_d

    .line 7
    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    .line 9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/x;->mSpringEnabled:Z

    .line 11
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 14
    :cond_d
    return-void
.end method

.method public select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p2, v1, :cond_18

    .line 5
    if-eqz p1, :cond_30

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-static {v1}, Lmiuix/animation/Folme;->isInDraggingState(Landroid/view/View;)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_30

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v1, v2}, Lmiuix/animation/Folme;->setDraggingState(Landroid/view/View;Z)V

    .line 21
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/x;->onStartDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 24
    goto :goto_30

    .line 25
    :cond_18
    if-nez p2, :cond_30

    .line 27
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    invoke-static {v1}, Lmiuix/animation/Folme;->isInDraggingState(Landroid/view/View;)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_30

    .line 35
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    invoke-static {v1, v0}, Lmiuix/animation/Folme;->setDraggingState(Landroid/view/View;Z)V

    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 42
    if-eqz v1, :cond_30

    .line 44
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/x;->onStopDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 47
    iget-boolean v0, p0, Landroidx/recyclerview/widget/x;->mUseFolmeRecoverAnimation:Z

    .line 49
    :cond_30
    :goto_30
    if-eqz v0, :cond_36

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/x;->super_select_overwrite()V

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 58
    :goto_39
    return-void
.end method
