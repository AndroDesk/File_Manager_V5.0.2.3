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

    new-instance v0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    const v1, 0x3f733333  # 0.95f

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    const v1, 0x3e99999a  # 0.3f

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/x;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/f$e;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/f$e;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/recyclerview/widget/x;->mTmpPosition:[F

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-boolean p1, p0, Landroidx/recyclerview/widget/x;->mUseFolmeRecoverAnimation:Z

    return-void
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .registers 6

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_1e

    cmpl-float p1, p2, p4

    if-ltz p1, :cond_1e

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p4, p0

    cmpg-float p0, p2, p4

    if-gtz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

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

    const-class v0, Landroidx/recyclerview/widget/f;

    const-string v1, "mDragScrollStartTimeInMs"

    invoke-static {v0, v1}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lmiuix/reflect/Reflects;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/f;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    const-string v3, "mActionState"

    invoke-static {v0, v3}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lmiuix/reflect/Reflects;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_6b

    invoke-direct {p0}, Landroidx/recyclerview/widget/x;->releaseVelocityTracker()V

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, [F

    aput-object v6, v5, v4

    const-string v6, "getSelectedDxDy"

    invoke-static {v0, v6, v5}, Lmiuix/reflect/Reflects;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/recyclerview/widget/x;->mTmpPosition:[F

    aput-object v6, v5, v4

    invoke-static {p0, v0, v5}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/recyclerview/widget/x;->mTmpPosition:[F

    aget v9, v0, v4

    aget v10, v0, v2

    new-instance v0, Landroidx/recyclerview/widget/x$a;

    move-object v6, v0

    move-object v7, p0

    move-object v8, v3

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Landroidx/recyclerview/widget/x$a;-><init>(Landroidx/recyclerview/widget/x;Landroidx/recyclerview/widget/RecyclerView$b0;FFLandroidx/recyclerview/widget/RecyclerView$b0;)V

    iget-object v5, v0, Landroidx/recyclerview/widget/f$g;->g:Landroid/animation/ValueAnimator;

    sget-object v6, Landroidx/recyclerview/widget/x;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    iget-object v0, v0, Landroidx/recyclerview/widget/f$g;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    move v0, v2

    goto :goto_78

    :cond_6b
    iget-object v0, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/f;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    iget-object v5, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5, v3}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    move v0, v4

    :goto_78
    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_8b

    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz v3, :cond_87

    goto :goto_88

    :cond_87
    move v2, v4

    :goto_88
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8b
    if-nez v0, :cond_96

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    :cond_96
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0, v1, v4}, Landroidx/recyclerview/widget/f$e;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

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

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-nez v0, :cond_41

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_3a

    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/f$g;

    iget-object v3, v2, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    iget v5, v2, Landroidx/recyclerview/widget/f$g;->i:F

    add-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    iget v2, v2, Landroidx/recyclerview/widget/f$g;->j:F

    add-float/2addr v5, v2

    invoke-static {v3, v0, p1, v4, v5}, Landroidx/recyclerview/widget/x;->hitTest(Landroid/view/View;FFFF)Z

    move-result v2

    if-eqz v2, :cond_37

    return-object v3

    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_3a
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_41
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/f;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStartDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v0, p1, Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_16

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->getSpringEnabled()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/x;->mSpringEnabled:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    :cond_16
    return-void
.end method

.method public onStopDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v0, p1, Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_d

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/x;->mSpringEnabled:Z

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    :cond_d
    return-void
.end method

.method public select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_18

    if-eqz p1, :cond_30

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Lmiuix/animation/Folme;->isInDraggingState(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lmiuix/animation/Folme;->setDraggingState(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/x;->onStartDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    goto :goto_30

    :cond_18
    if-nez p2, :cond_30

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Lmiuix/animation/Folme;->isInDraggingState(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v0}, Lmiuix/animation/Folme;->setDraggingState(Landroid/view/View;Z)V

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz v1, :cond_30

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/x;->onStopDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/x;->mUseFolmeRecoverAnimation:Z

    :cond_30
    :goto_30
    if-eqz v0, :cond_36

    invoke-direct {p0}, Landroidx/recyclerview/widget/x;->super_select_overwrite()V

    goto :goto_39

    :cond_36
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    :goto_39
    return-void
.end method
