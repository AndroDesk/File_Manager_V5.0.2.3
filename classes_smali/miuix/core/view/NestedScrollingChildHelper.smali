.class public Lmiuix/core/view/NestedScrollingChildHelper;
.super Lm0/r;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lm0/r;-><init>(Landroid/view/View;)V

    .line 4
    iput-object p1, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 6
    return-void
.end method

.method private dispatchNestedScrollInternal(IIII[II[I)Z
    .registers 23

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p5

    .line 4
    invoke-virtual {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_63

    .line 11
    move/from16 v2, p6

    .line 13
    invoke-direct {p0, v2}, Lmiuix/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 16
    move-result-object v4

    .line 17
    if-nez v4, :cond_13

    .line 19
    return v3

    .line 20
    :cond_13
    const/4 v12, 0x1

    .line 21
    if-nez p1, :cond_24

    .line 23
    if-nez p2, :cond_24

    .line 25
    if-nez p3, :cond_24

    .line 27
    if-eqz p4, :cond_1d

    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    if-eqz v1, :cond_63

    .line 32
    aput v3, v1, v3

    .line 34
    aput v3, v1, v12

    .line 36
    goto :goto_63

    .line 37
    :cond_24
    :goto_24
    if-eqz v1, :cond_32

    .line 39
    iget-object v5, v0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 41
    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 44
    aget v5, v1, v3

    .line 46
    aget v6, v1, v12

    .line 48
    move v13, v5

    .line 49
    move v14, v6

    .line 50
    goto :goto_34

    .line 51
    :cond_32
    move v13, v3

    .line 52
    move v14, v13

    .line 53
    :goto_34
    if-nez p7, :cond_40

    .line 55
    invoke-direct {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->getTempNestedScrollConsumed()[I

    .line 58
    move-result-object v5

    .line 59
    aput v3, v5, v3

    .line 61
    aput v3, v5, v12

    .line 63
    move-object v11, v5

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    move-object/from16 v11, p7

    .line 67
    :goto_42
    iget-object v5, v0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 69
    move/from16 v6, p1

    .line 71
    move/from16 v7, p2

    .line 73
    move/from16 v8, p3

    .line 75
    move/from16 v9, p4

    .line 77
    move/from16 v10, p6

    .line 79
    invoke-static/range {v4 .. v11}, Lmiuix/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    .line 82
    if-eqz v1, :cond_62

    .line 84
    iget-object v2, v0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 86
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 89
    aget v2, v1, v3

    .line 91
    sub-int/2addr v2, v13

    .line 92
    aput v2, v1, v3

    .line 94
    aget v2, v1, v12

    .line 96
    sub-int/2addr v2, v14

    .line 97
    aput v2, v1, v12

    .line 99
    :cond_62
    return v12

    .line 100
    :cond_63
    :goto_63
    return v3
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .registers 3

    .line 1
    if-eqz p1, :cond_a

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_7

    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_7
    iget-object p1, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    .line 10
    return-object p1

    .line 11
    :cond_a
    iget-object p1, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 13
    return-object p1
.end method

.method private getTempNestedScrollConsumed()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 3
    if-nez v0, :cond_9

    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 12
    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Lm0/r;
    .registers 2

    .line 1
    new-instance v0, Lm0/r;

    .line 3
    invoke-direct {v0, p0}, Lm0/r;-><init>(Landroid/view/View;)V

    .line 6
    return-object v0
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_9

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_6

    .line 6
    goto :goto_b

    .line 7
    :cond_6
    iput-object p2, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iput-object p2, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 12
    :goto_b
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_14

    .line 8
    invoke-direct {p0, v1}, Lmiuix/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_14

    .line 14
    iget-object v1, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 16
    invoke-static {v0, v1, p1, p2, p3}, Lmiuix/core/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_14
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_14

    .line 8
    invoke-direct {p0, v1}, Lmiuix/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_14

    .line 14
    iget-object v1, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 16
    invoke-static {v0, v1, p1, p2}, Lmiuix/core/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_14
    return v1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 16

    .line 2
    invoke-virtual {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 3
    invoke-direct {p0, p5}, Lmiuix/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x1

    if-nez p1, :cond_1b

    if-eqz p2, :cond_14

    goto :goto_1b

    :cond_14
    if-eqz p4, :cond_58

    .line 4
    aput v1, p4, v1

    .line 5
    aput v1, p4, v0

    goto :goto_58

    :cond_1b
    :goto_1b
    if-eqz p4, :cond_29

    .line 6
    iget-object v3, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    aget v3, p4, v1

    .line 8
    aget v4, p4, v0

    move v8, v3

    move v9, v4

    goto :goto_2b

    :cond_29
    move v8, v1

    move v9, v8

    :goto_2b
    if-nez p3, :cond_31

    .line 9
    invoke-direct {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->getTempNestedScrollConsumed()[I

    move-result-object p3

    .line 10
    :cond_31
    aput v1, p3, v1

    .line 11
    aput v1, p3, v0

    .line 12
    iget-object v3, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    invoke-static/range {v2 .. v7}, Lmiuix/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz p4, :cond_4f

    .line 13
    iget-object p1, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 14
    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    .line 15
    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    .line 16
    :cond_4f
    aget p1, p3, v1

    if-nez p1, :cond_57

    aget p1, p3, v0

    if-eqz p1, :cond_58

    :cond_57
    move v1, v0

    :cond_58
    :goto_58
    return v1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .registers 8

    .line 3
    invoke-direct/range {p0 .. p7}, Lmiuix/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lmiuix/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lmiuix/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lmiuix/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 3
    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 3
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0}, Lm0/g0$i;->z(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 3
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {p1}, Lm0/g0$i;->z(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 7
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 9
    invoke-static {v0}, Lm0/g0$i;->z(Landroid/view/View;)V

    .line 12
    :cond_b
    iput-boolean p1, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 14
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 7

    .line 2
    invoke-virtual {p0, p2}, Lmiuix/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 3
    :cond_8
    invoke-virtual {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 4
    iget-object v0, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    :goto_16
    if-eqz v0, :cond_35

    .line 6
    iget-object v3, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Lmiuix/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 7
    invoke-direct {p0, p2, v0}, Lmiuix/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 8
    iget-object v3, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Lmiuix/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return v1

    .line 9
    :cond_29
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_30

    .line 10
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 11
    :cond_30
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_16

    :cond_35
    const/4 p1, 0x0

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 4

    .line 2
    invoke-direct {p0, p1}, Lmiuix/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    iget-object v1, p0, Lmiuix/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lmiuix/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lmiuix/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    :cond_f
    return-void
.end method
