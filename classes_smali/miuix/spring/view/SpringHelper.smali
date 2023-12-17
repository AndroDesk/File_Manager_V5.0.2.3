.class public abstract Lmiuix/spring/view/SpringHelper;
.super Ljava/lang/Object;
.source "SpringHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/spring/view/SpringHelper$AxisHandler;
    }
.end annotation


# instance fields
.field private mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

.field private mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/spring/view/SpringHelper$1;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lmiuix/spring/view/SpringHelper$1;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    .line 10
    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    .line 12
    new-instance v0, Lmiuix/spring/view/SpringHelper$2;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Lmiuix/spring/view/SpringHelper$2;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    .line 18
    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract canScrollHorizontally()Z
.end method

.method public abstract canScrollVertically()Z
.end method

.method public abstract dispatchNestedPreScroll(II[I[II)Z
.end method

.method public abstract dispatchNestedScroll(IIII[II[I)V
.end method

.method public abstract getHeight()I
.end method

.method public getHorizontalDistance()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    .line 3
    iget v0, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 5
    float-to-int v0, v0

    .line 6
    return v0
.end method

.method public getVerticalDistance()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    .line 3
    iget v0, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 5
    float-to-int v0, v0

    .line 6
    return v0
.end method

.method public abstract getWidth()I
.end method

.method public handleNestedPreScroll(II[I[II)Z
    .registers 17

    .line 1
    move-object v6, p0

    .line 2
    const/4 v0, 0x2

    .line 3
    new-array v7, v0, [I

    .line 5
    fill-array-data v7, :array_56

    .line 8
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->springAvailable()Z

    .line 11
    move-result v1

    .line 12
    const/4 v8, 0x1

    .line 13
    const/4 v9, 0x0

    .line 14
    if-eqz v1, :cond_2d

    .line 16
    if-nez p5, :cond_13

    .line 18
    move v1, v8

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v9

    .line 21
    :goto_14
    new-array v0, v0, [I

    .line 23
    aput p1, v0, v9

    .line 25
    aput p2, v0, v8

    .line 27
    iget-object v2, v6, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    .line 29
    invoke-virtual {v2, v0, v7, v1}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedPreScroll([I[IZ)Z

    .line 32
    move-result v2

    .line 33
    iget-object v3, v6, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    .line 35
    invoke-virtual {v3, v0, v7, v1}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedPreScroll([I[IZ)Z

    .line 38
    move-result v1

    .line 39
    or-int/2addr v1, v2

    .line 40
    aget v2, v0, v9

    .line 42
    aget v0, v0, v8

    .line 44
    move v10, v1

    .line 45
    goto :goto_30

    .line 46
    :cond_2d
    move v2, p1

    .line 47
    move v0, p2

    .line 48
    move v10, v9

    .line 49
    :goto_30
    if-eqz v10, :cond_38

    .line 51
    aget v1, v7, v9

    .line 53
    sub-int/2addr v2, v1

    .line 54
    aget v1, v7, v8

    .line 56
    sub-int/2addr v0, v1

    .line 57
    :cond_38
    move v1, v2

    .line 58
    move v2, v0

    .line 59
    move-object v0, p0

    .line 60
    move-object v3, p3

    .line 61
    move-object v4, p4

    .line 62
    move/from16 v5, p5

    .line 64
    invoke-virtual/range {v0 .. v5}, Lmiuix/spring/view/SpringHelper;->dispatchNestedPreScroll(II[I[II)Z

    .line 67
    move-result v0

    .line 68
    or-int/2addr v0, v10

    .line 69
    if-eqz p3, :cond_54

    .line 71
    aget v1, p3, v9

    .line 73
    aget v2, v7, v9

    .line 75
    add-int/2addr v1, v2

    .line 76
    aput v1, p3, v9

    .line 78
    aget v1, p3, v8

    .line 80
    aget v2, v7, v8

    .line 82
    add-int/2addr v1, v2

    .line 83
    aput v1, p3, v8

    .line 85
    :cond_54
    return v0

    .line 86
    nop

    .line 87
    :array_56
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public handleNestedScroll(IIII[II[I)V
    .registers 16

    if-nez p7, :cond_8

    const/4 p7, 0x2

    new-array p7, p7, [I

    .line 1
    fill-array-data p7, :array_2a

    :cond_8
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 2
    invoke-virtual/range {v0 .. v7}, Lmiuix/spring/view/SpringHelper;->dispatchNestedScroll(IIII[II[I)V

    const/4 p1, 0x0

    .line 3
    aget p1, p7, p1

    sub-int/2addr p3, p1

    const/4 p1, 0x1

    .line 4
    aget p1, p7, p1

    sub-int/2addr p4, p1

    if-nez p3, :cond_1f

    if-eqz p4, :cond_29

    .line 5
    :cond_1f
    iget-object p1, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {p1, p3, p5, p6, p7}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedScroll(I[II[I)V

    .line 6
    iget-object p1, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {p1, p4, p5, p6, p7}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedScroll(I[II[I)V

    :cond_29
    return-void

    :array_2a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public abstract springAvailable()Z
.end method

.method public abstract vibrate()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
