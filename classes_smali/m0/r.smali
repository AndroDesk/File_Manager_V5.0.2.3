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
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lm0/r;->mView:Landroid/view/View;

    .line 6
    return-void
.end method

.method private dispatchNestedScrollInternal(IIII[II[I)Z
    .registers 23

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v10, p5

    .line 4
    move/from16 v0, p6

    .line 6
    invoke-virtual {p0}, Lm0/r;->isNestedScrollingEnabled()Z

    .line 9
    move-result v2

    .line 10
    const/4 v11, 0x0

    .line 11
    if-eqz v2, :cond_b9

    .line 13
    invoke-direct {p0, v0}, Lm0/r;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 16
    move-result-object v8

    .line 17
    if-nez v8, :cond_13

    .line 19
    return v11

    .line 20
    :cond_13
    const/4 v12, 0x1

    .line 21
    if-nez p1, :cond_25

    .line 23
    if-nez p2, :cond_25

    .line 25
    if-nez p3, :cond_25

    .line 27
    if-eqz p4, :cond_1d

    .line 29
    goto :goto_25

    .line 30
    :cond_1d
    if-eqz v10, :cond_b9

    .line 32
    aput v11, v10, v11

    .line 34
    aput v11, v10, v12

    .line 36
    goto/16 :goto_b9

    .line 38
    :cond_25
    :goto_25
    if-eqz v10, :cond_33

    .line 40
    iget-object v2, v1, Lm0/r;->mView:Landroid/view/View;

    .line 42
    invoke-virtual {v2, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 45
    aget v2, v10, v11

    .line 47
    aget v3, v10, v12

    .line 49
    move v13, v2

    .line 50
    move v14, v3

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    move v13, v11

    .line 53
    move v14, v13

    .line 54
    :goto_35
    if-nez p7, :cond_41

    .line 56
    invoke-direct {p0}, Lm0/r;->getTempNestedScrollConsumed()[I

    .line 59
    move-result-object v2

    .line 60
    aput v11, v2, v11

    .line 62
    aput v11, v2, v12

    .line 64
    move-object v9, v2

    .line 65
    goto :goto_43

    .line 66
    :cond_41
    move-object/from16 v9, p7

    .line 68
    :goto_43
    iget-object v3, v1, Lm0/r;->mView:Landroid/view/View;

    .line 70
    instance-of v2, v8, Lm0/t;

    .line 72
    if-eqz v2, :cond_5a

    .line 74
    move-object v2, v8

    .line 75
    check-cast v2, Lm0/t;

    .line 77
    move/from16 v4, p1

    .line 79
    move/from16 v5, p2

    .line 81
    move/from16 v6, p3

    .line 83
    move/from16 v7, p4

    .line 85
    move/from16 v8, p6

    .line 87
    invoke-interface/range {v2 .. v9}, Lm0/t;->onNestedScroll(Landroid/view/View;IIIII[I)V

    .line 90
    goto :goto_a7

    .line 91
    :cond_5a
    aget v2, v9, v11

    .line 93
    add-int v2, v2, p3

    .line 95
    aput v2, v9, v11

    .line 97
    aget v2, v9, v12

    .line 99
    add-int v2, v2, p4

    .line 101
    aput v2, v9, v12

    .line 103
    instance-of v2, v8, Lm0/s;

    .line 105
    if-eqz v2, :cond_7b

    .line 107
    move-object v2, v8

    .line 108
    check-cast v2, Lm0/s;

    .line 110
    move/from16 v4, p1

    .line 112
    move/from16 v5, p2

    .line 114
    move/from16 v6, p3

    .line 116
    move/from16 v7, p4

    .line 118
    move/from16 v8, p6

    .line 120
    invoke-interface/range {v2 .. v8}, Lm0/s;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 123
    goto :goto_a7

    .line 124
    :cond_7b
    if-nez v0, :cond_a7

    .line 126
    move-object v2, v8

    .line 127
    move/from16 v4, p1

    .line 129
    move/from16 v5, p2

    .line 131
    move/from16 v6, p3

    .line 133
    move/from16 v7, p4

    .line 135
    :try_start_86
    invoke-static/range {v2 .. v7}, Lm0/l0;->d(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    :try_end_89
    .catch Ljava/lang/AbstractMethodError; {:try_start_86 .. :try_end_89} :catch_8a

    .line 138
    goto :goto_a7

    .line 139
    :catch_8a
    move-exception v0

    .line 140
    move-object v2, v0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    const-string v3, "ViewParent "

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, " does not implement interface method onNestedScroll"

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    const-string v3, "ViewParentCompat"

    .line 165
    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_a7
    :goto_a7
    if-eqz v10, :cond_b8

    .line 170
    iget-object v0, v1, Lm0/r;->mView:Landroid/view/View;

    .line 172
    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 175
    aget v0, v10, v11

    .line 177
    sub-int/2addr v0, v13

    .line 178
    aput v0, v10, v11

    .line 180
    aget v0, v10, v12

    .line 182
    sub-int/2addr v0, v14

    .line 183
    aput v0, v10, v12

    .line 185
    :cond_b8
    return v12

    .line 186
    :cond_b9
    :goto_b9
    return v11
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
    iget-object p1, p0, Lm0/r;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    .line 10
    return-object p1

    .line 11
    :cond_a
    iget-object p1, p0, Lm0/r;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 13
    return-object p1
.end method

.method private getTempNestedScrollConsumed()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r;->mTempNestedScrollConsumed:[I

    .line 3
    if-nez v0, :cond_9

    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lm0/r;->mTempNestedScrollConsumed:[I

    .line 10
    :cond_9
    iget-object v0, p0, Lm0/r;->mTempNestedScrollConsumed:[I

    .line 12
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
    iput-object p2, p0, Lm0/r;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iput-object p2, p0, Lm0/r;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 12
    :goto_b
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lm0/r;->isNestedScrollingEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_30

    .line 8
    invoke-direct {p0, v1}, Lm0/r;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_30

    .line 14
    iget-object v2, p0, Lm0/r;->mView:Landroid/view/View;

    .line 16
    :try_start_f
    invoke-static {v0, v2, p1, p2, p3}, Lm0/l0;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    .line 19
    move-result v1
    :try_end_13
    .catch Ljava/lang/AbstractMethodError; {:try_start_f .. :try_end_13} :catch_14

    .line 20
    goto :goto_30

    .line 21
    :catch_14
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string p3, "ViewParent "

    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string p3, " does not implement interface method onNestedFling"

    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    const-string p3, "ViewParentCompat"

    .line 46
    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_30
    :goto_30
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lm0/r;->isNestedScrollingEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_30

    .line 8
    invoke-direct {p0, v1}, Lm0/r;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_30

    .line 14
    iget-object v2, p0, Lm0/r;->mView:Landroid/view/View;

    .line 16
    :try_start_f
    invoke-static {v0, v2, p1, p2}, Lm0/l0;->b(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    .line 19
    move-result v1
    :try_end_13
    .catch Ljava/lang/AbstractMethodError; {:try_start_f .. :try_end_13} :catch_14

    .line 20
    goto :goto_30

    .line 21
    :catch_14
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v2, "ViewParent "

    .line 29
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, " does not implement interface method onNestedPreFling"

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    const-string v0, "ViewParentCompat"

    .line 46
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
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

    .line 1
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

    .line 2
    invoke-virtual {p0}, Lm0/r;->isNestedScrollingEnabled()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_91

    .line 3
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

    .line 4
    aput v9, v8, v9

    .line 5
    aput v9, v8, v10

    goto/16 :goto_91

    :cond_24
    :goto_24
    if-eqz v8, :cond_32

    .line 6
    iget-object v3, v1, Lm0/r;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    aget v3, v8, v9

    .line 8
    aget v4, v8, v10

    move v11, v3

    move v12, v4

    goto :goto_34

    :cond_32
    move v11, v9

    move v12, v11

    :goto_34
    if-nez p3, :cond_3c

    .line 9
    invoke-direct {p0}, Lm0/r;->getTempNestedScrollConsumed()[I

    move-result-object v3

    move-object v13, v3

    goto :goto_3e

    :cond_3c
    move-object/from16 v13, p3

    .line 10
    :goto_3e
    aput v9, v13, v9

    .line 11
    aput v9, v13, v10

    .line 12
    iget-object v3, v1, Lm0/r;->mView:Landroid/view/View;

    .line 13
    instance-of v4, v2, Lm0/s;

    if-eqz v4, :cond_54

    .line 14
    check-cast v2, Lm0/s;

    move v4, p1

    move/from16 v5, p2

    move-object v6, v13

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lm0/s;->onNestedPreScroll(Landroid/view/View;II[II)V

    goto :goto_77

    :cond_54
    if-nez v7, :cond_77

    .line 15
    :try_start_56
    invoke-static {v2, v3, p1, v5, v13}, Lm0/l0;->c(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    :try_end_59
    .catch Ljava/lang/AbstractMethodError; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_77

    :catch_5a
    move-exception v0

    move-object v3, v0

    .line 16
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

    .line 17
    iget-object v0, v1, Lm0/r;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    aget v0, v8, v9

    sub-int/2addr v0, v11

    aput v0, v8, v9

    .line 19
    aget v0, v8, v10

    sub-int/2addr v0, v12

    aput v0, v8, v10

    .line 20
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

    .line 3
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

    .line 1
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

    .line 2
    invoke-direct/range {v0 .. v7}, Lm0/r;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lm0/r;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 2

    .line 2
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

    .line 1
    iget-boolean v0, p0, Lm0/r;->mIsNestedScrollingEnabled:Z

    .line 3
    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/r;->mView:Landroid/view/View;

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
    iget-object p1, p0, Lm0/r;->mView:Landroid/view/View;

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
    iget-boolean v0, p0, Lm0/r;->mIsNestedScrollingEnabled:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lm0/r;->mView:Landroid/view/View;

    .line 7
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 9
    invoke-static {v0}, Lm0/g0$i;->z(Landroid/view/View;)V

    .line 12
    :cond_b
    iput-boolean p1, p0, Lm0/r;->mIsNestedScrollingEnabled:Z

    .line 14
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lm0/r;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 13

    .line 2
    invoke-virtual {p0, p2}, Lm0/r;->hasNestedScrollingParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 3
    :cond_8
    invoke-virtual {p0}, Lm0/r;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_85

    .line 4
    iget-object v0, p0, Lm0/r;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5
    iget-object v3, p0, Lm0/r;->mView:Landroid/view/View;

    :goto_17
    if-eqz v0, :cond_85

    .line 6
    iget-object v4, p0, Lm0/r;->mView:Landroid/view/View;

    .line 7
    instance-of v5, v0, Lm0/s;

    const-string v6, "ViewParentCompat"

    const-string v7, "ViewParent "

    if-eqz v5, :cond_2b

    .line 8
    move-object v8, v0

    check-cast v8, Lm0/s;

    invoke-interface {v8, v3, v4, p1, p2}, Lm0/s;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    goto :goto_4b

    :cond_2b
    if-nez p2, :cond_4a

    .line 9
    :try_start_2d
    invoke-static {v0, v3, v4, p1}, Lm0/l0;->f(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v4
    :try_end_31
    .catch Ljava/lang/AbstractMethodError; {:try_start_2d .. :try_end_31} :catch_32

    goto :goto_4b

    :catch_32
    move-exception v4

    .line 10
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

    .line 11
    invoke-direct {p0, p2, v0}, Lm0/r;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 12
    iget-object v2, p0, Lm0/r;->mView:Landroid/view/View;

    if-eqz v5, :cond_5a

    .line 13
    check-cast v0, Lm0/s;

    invoke-interface {v0, v3, v2, p1, p2}, Lm0/s;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_78

    :cond_5a
    if-nez p2, :cond_78

    .line 14
    :try_start_5c
    invoke-static {v0, v3, v2, p1}, Lm0/l0;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_5f
    .catch Ljava/lang/AbstractMethodError; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_78

    :catch_60
    move-exception p1

    .line 15
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

    .line 16
    :cond_79
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_80

    .line 17
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 18
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

    .line 1
    invoke-virtual {p0, v0}, Lm0/r;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 6

    .line 2
    invoke-direct {p0, p1}, Lm0/r;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 3
    iget-object v1, p0, Lm0/r;->mView:Landroid/view/View;

    .line 4
    instance-of v2, v0, Lm0/s;

    if-eqz v2, :cond_12

    .line 5
    check-cast v0, Lm0/s;

    invoke-interface {v0, v1, p1}, Lm0/s;->onStopNestedScroll(Landroid/view/View;I)V

    goto :goto_34

    :cond_12
    if-nez p1, :cond_34

    .line 6
    :try_start_14
    invoke-static {v0, v1}, Lm0/l0;->g(Landroid/view/ViewParent;Landroid/view/View;)V
    :try_end_17
    .catch Ljava/lang/AbstractMethodError; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_34

    :catch_18
    move-exception v1

    .line 7
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

    .line 8
    invoke-direct {p0, p1, v0}, Lm0/r;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    :cond_38
    return-void
.end method
