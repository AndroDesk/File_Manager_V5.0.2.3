.class public Lm0/r;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/r;->mView:Landroid/view/View;

    return-void
.end method

.method private dispatchNestedScrollInternal(IIII[II[I)Z
    .registers 23

    move-object v1, p0

    move-object/from16 v10, p5

    move/from16 v0, p6

    invoke-virtual {p0}, Lm0/r;->isNestedScrollingEnabled()Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_b9

    invoke-direct {p0, v0}, Lm0/r;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_13

    return v11

    :cond_13
    const/4 v12, 0x1

    if-nez p1, :cond_25

    if-nez p2, :cond_25

    if-nez p3, :cond_25

    if-eqz p4, :cond_1d

    goto :goto_25

    :cond_1d
    if-eqz v10, :cond_b9

    aput v11, v10, v11

    aput v11, v10, v12

    goto/16 :goto_b9

    :cond_25
    :goto_25
    if-eqz v10, :cond_33

    iget-object v2, v1, Lm0/r;->mView:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v10, v11

    aget v3, v10, v12

    move v13, v2

    move v14, v3

    goto :goto_35

    :cond_33
    move v13, v11

    move v14, v13

    :goto_35
    if-nez p7, :cond_41

    invoke-direct {p0}, Lm0/r;->getTempNestedScrollConsumed()[I

    move-result-object v2

    aput v11, v2, v11

    aput v11, v2, v12

    move-object v9, v2

    goto :goto_43

    :cond_41
    move-object/from16 v9, p7

    :goto_43
    iget-object v3, v1, Lm0/r;->mView:Landroid/view/View;

    instance-of v2, v8, Lm0/t;

    if-eqz v2, :cond_5a

    move-object v2, v8

    check-cast v2, Lm0/t;

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lm0/t;->onNestedScroll(Landroid/view/View;IIIII[I)V

    goto :goto_a7

    :cond_5a
    aget v2, v9, v11

    add-int v2, v2, p3

    aput v2, v9, v11

    aget v2, v9, v12

    add-int v2, v2, p4

    aput v2, v9, v12

    instance-of v2, v8, Lm0/s;

    if-eqz v2, :cond_7b

    move-object v2, v8

    check-cast v2, Lm0/s;

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lm0/s;->onNestedScroll(Landroid/view/View;IIIII)V

    goto :goto_a7

    :cond_7b
    if-nez v0, :cond_a7

    move-object v2, v8

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    :try_start_86
    invoke-static/range {v2 .. v7}, Lm0/l0;->d(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    :try_end_89
    .catch Ljava/lang/AbstractMethodError; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_a7

    :catch_8a
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewParent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not implement interface method onNestedScroll"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ViewParentCompat"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a7
    :goto_a7
    if-eqz v10, :cond_b8

    iget-object v0, v1, Lm0/r;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v10, v11

    sub-int/2addr v0, v13

    aput v0, v10, v11

    aget v0, v10, v12

    sub-int/2addr v0, v14

    aput v0, v10, v12

    :cond_b8
    return v12

    :cond_b9
    :goto_b9
    return v11
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    iget-object p1, p0, Lm0/r;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    return-object p1

    :cond_a
    iget-object p1, p0, Lm0/r;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    return-object p1
.end method

.method private getTempNestedScrollConsumed()[I
    .registers 2

    iget-object v0, p0, Lm0/r;->mTempNestedScrollConsumed:[I

    if-nez v0, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lm0/r;->mTempNestedScrollConsumed:[I

    :cond_9
    iget-object v0, p0, Lm0/r;->mTempNestedScrollConsumed:[I

    return-object v0
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    :cond_6
    iput-object p2, p0, Lm0/r;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_b

    :cond_9
    iput-object p2, p0, Lm0/r;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    :goto_b
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 7

    invoke-virtual {p0}, Lm0/r;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-direct {p0, v1}, Lm0/r;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v2, p0, Lm0/r;->mView:Landroid/view/View;

    :try_start_f
    invoke-static {v0, v2, p1, p2, p3}, Lm0/l0;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/AbstractMethodError; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_30

    :catch_14
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewParent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " does not implement interface method onNestedFling"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ViewParentCompat"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    :goto_30
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 6

    invoke-virtual {p0}, Lm0/r;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-direct {p0, v1}, Lm0/r;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v2, p0, Lm0/r;->mView:Landroid/view/View;

    :try_start_f
    invoke-static {v0, v2, p1, p2}, Lm0/l0;->b(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/AbstractMethodError; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_30

    :catch_14
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedPreFling"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ViewParentCompat"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    :goto_30
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

    invoke-virtual/range {v0 .. v5}, Lm0/r;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 20

    move-object v1, p0

    move v0, p1

    move/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v7, p5

    invoke-virtual {p0}, Lm0/r;->isNestedScrollingEnabled()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_91

    invoke-direct {p0, v7}, Lm0/r;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_16

    return v9

    :cond_16
    const/4 v10, 0x1

    if-nez v0, :cond_24

    if-eqz v5, :cond_1c

    goto :goto_24

    :cond_1c
    if-eqz v8, :cond_91

    aput v9, v8, v9

    aput v9, v8, v10

    goto/16 :goto_91

    :cond_24
    :goto_24
    if-eqz v8, :cond_32

    iget-object v3, v1, Lm0/r;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v8, v9

    aget v4, v8, v10

    move v11, v3

    move v12, v4

    goto :goto_34

    :cond_32
    move v11, v9

    move v12, v11

    :goto_34
    if-nez p3, :cond_3c

    invoke-direct {p0}, Lm0/r;->getTempNestedScrollConsumed()[I

    move-result-object v3

    move-object v13, v3

    goto :goto_3e

    :cond_3c
    move-object/from16 v13, p3

    :goto_3e
    aput v9, v13, v9

    aput v9, v13, v10

    iget-object v3, v1, Lm0/r;->mView:Landroid/view/View;

    instance-of v4, v2, Lm0/s;

    if-eqz v4, :cond_54

    check-cast v2, Lm0/s;

    move v4, p1

    move/from16 v5, p2

    move-object v6, v13

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lm0/s;->onNestedPreScroll(Landroid/view/View;II[II)V

    goto :goto_77

    :cond_54
    if-nez v7, :cond_77

    :try_start_56
    invoke-static {v2, v3, p1, v5, v13}, Lm0/l0;->c(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    :try_end_59
    .catch Ljava/lang/AbstractMethodError; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_77

    :catch_5a
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewParent "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not implement interface method onNestedPreScroll"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewParentCompat"

    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_77
    :goto_77
    if-eqz v8, :cond_88

    iget-object v0, v1, Lm0/r;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v8, v9

    sub-int/2addr v0, v11

    aput v0, v8, v9

    aget v0, v8, v10

    sub-int/2addr v0, v12

    aput v0, v8, v10

    :cond_88
    aget v0, v13, v9

    if-nez v0, :cond_90

    aget v0, v13, v10

    if-eqz v0, :cond_91

    :cond_90
    move v9, v10

    :cond_91
    :goto_91
    return v9
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lm0/r;->dispatchNestedScrollInternal(IIII[II[I)Z

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

    invoke-direct/range {v0 .. v7}, Lm0/r;->dispatchNestedScrollInternal(IIII[II[I)Z

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

    invoke-direct/range {v0 .. v7}, Lm0/r;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm0/r;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 2

    invoke-direct {p0, p1}, Lm0/r;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

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

    iget-boolean v0, p0, Lm0/r;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    iget-object v0, p0, Lm0/r;->mView:Landroid/view/View;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$i;->z(Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lm0/r;->mView:Landroid/view/View;

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$i;->z(Landroid/view/View;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 4

    iget-boolean v0, p0, Lm0/r;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lm0/r;->mView:Landroid/view/View;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$i;->z(Landroid/view/View;)V

    :cond_b
    iput-boolean p1, p0, Lm0/r;->mIsNestedScrollingEnabled:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm0/r;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 13

    invoke-virtual {p0, p2}, Lm0/r;->hasNestedScrollingParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lm0/r;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lm0/r;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v3, p0, Lm0/r;->mView:Landroid/view/View;

    :goto_17
    if-eqz v0, :cond_85

    iget-object v4, p0, Lm0/r;->mView:Landroid/view/View;

    instance-of v5, v0, Lm0/s;

    const-string v6, "ViewParentCompat"

    const-string v7, "ViewParent "

    if-eqz v5, :cond_2b

    move-object v8, v0

    check-cast v8, Lm0/s;

    invoke-interface {v8, v3, v4, p1, p2}, Lm0/s;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    goto :goto_4b

    :cond_2b
    if-nez p2, :cond_4a

    :try_start_2d
    invoke-static {v0, v3, v4, p1}, Lm0/l0;->f(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v4
    :try_end_31
    .catch Ljava/lang/AbstractMethodError; {:try_start_2d .. :try_end_31} :catch_32

    goto :goto_4b

    :catch_32
    move-exception v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " does not implement interface method onStartNestedScroll"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    move v4, v2

    :goto_4b
    if-eqz v4, :cond_79

    invoke-direct {p0, p2, v0}, Lm0/r;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    iget-object v2, p0, Lm0/r;->mView:Landroid/view/View;

    if-eqz v5, :cond_5a

    check-cast v0, Lm0/s;

    invoke-interface {v0, v3, v2, p1, p2}, Lm0/s;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_78

    :cond_5a
    if-nez p2, :cond_78

    :try_start_5c
    invoke-static {v0, v3, v2, p1}, Lm0/l0;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_5f
    .catch Ljava/lang/AbstractMethodError; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_78

    :catch_60
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_78
    :goto_78
    return v1

    :cond_79
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_80

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    :cond_80
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_17

    :cond_85
    return v2
.end method

.method public stopNestedScroll()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm0/r;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 6

    invoke-direct {p0, p1}, Lm0/r;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v1, p0, Lm0/r;->mView:Landroid/view/View;

    instance-of v2, v0, Lm0/s;

    if-eqz v2, :cond_12

    check-cast v0, Lm0/s;

    invoke-interface {v0, v1, p1}, Lm0/s;->onStopNestedScroll(Landroid/view/View;I)V

    goto :goto_34

    :cond_12
    if-nez p1, :cond_34

    :try_start_14
    invoke-static {v0, v1}, Lm0/l0;->g(Landroid/view/ViewParent;Landroid/view/View;)V
    :try_end_17
    .catch Ljava/lang/AbstractMethodError; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_34

    :catch_18
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onStopNestedScroll"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewParentCompat"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    :goto_34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lm0/r;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    :cond_38
    return-void
.end method
