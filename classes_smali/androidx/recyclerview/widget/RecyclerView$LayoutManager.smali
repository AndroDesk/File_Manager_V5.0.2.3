.class public abstract Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;,
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;
    }
.end annotation


# instance fields
.field public mAutoMeasure:Z

.field public mChildHelper:Landroidx/recyclerview/widget/b;

.field private mHeight:I

.field private mHeightMode:I

.field public mHorizontalBoundCheck:Landroidx/recyclerview/widget/y;

.field private final mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/y$b;

.field public mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field public mPrefetchMaxCountObserved:I

.field public mPrefetchMaxObservedInInitialPrefetch:Z

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRequestedSimpleAnimations:Z

.field public mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

.field public mVerticalBoundCheck:Landroidx/recyclerview/widget/y;

.field private final mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/y$b;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$a;

    .line 6
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$a;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/y$b;

    .line 11
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;

    .line 13
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/y$b;

    .line 18
    new-instance v2, Landroidx/recyclerview/widget/y;

    .line 20
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/y;-><init>(Landroidx/recyclerview/widget/y$b;)V

    .line 23
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/y;

    .line 25
    new-instance v0, Landroidx/recyclerview/widget/y;

    .line 27
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/y;-><init>(Landroidx/recyclerview/widget/y$b;)V

    .line 30
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/y;

    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 35
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 37
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 42
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 44
    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .registers 9

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p3, :cond_16

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_e

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 19
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/z;->c(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 22
    goto :goto_32

    .line 23
    :cond_16
    :goto_16
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 27
    iget-object v2, p3, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 29
    invoke-virtual {v2, v0}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/recyclerview/widget/z$a;

    .line 35
    if-nez v2, :cond_2d

    .line 37
    invoke-static {}, Landroidx/recyclerview/widget/z$a;->a()Landroidx/recyclerview/widget/z$a;

    .line 40
    move-result-object v2

    .line 41
    iget-object p3, p3, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 43
    invoke-virtual {p3, v0, v2}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_2d
    iget p3, v2, Landroidx/recyclerview/widget/z$a;->a:I

    .line 48
    or-int/2addr p3, v1

    .line 49
    iput p3, v2, Landroidx/recyclerview/widget/z$a;->a:I

    .line 51
    :goto_32
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    move-result-object p3

    .line 55
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 57
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x0

    .line 62
    if-nez v2, :cond_9b

    .line 64
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isScrap()Z

    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_46

    .line 70
    goto :goto_9b

    .line 71
    :cond_46
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 74
    move-result-object v2

    .line 75
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    if-ne v2, v4, :cond_84

    .line 79
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 81
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/b;->j(Landroid/view/View;)I

    .line 84
    move-result v1

    .line 85
    const/4 v2, -0x1

    .line 86
    if-ne p2, v2, :cond_5d

    .line 88
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 90
    invoke-virtual {p2}, Landroidx/recyclerview/widget/b;->e()I

    .line 93
    move-result p2

    .line 94
    :cond_5d
    if-eq v1, v2, :cond_69

    .line 96
    if-eq v1, p2, :cond_b1

    .line 98
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 102
    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->moveView(II)V

    .line 105
    goto :goto_b1

    .line 106
    :cond_69
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 108
    const-string p3, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    .line 110
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    move-result-object p3

    .line 114
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 119
    move-result p1

    .line 120
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    invoke-static {p1, p3}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p2

    .line 133
    :cond_84
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 135
    invoke-virtual {v2, p1, p2, v3}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;IZ)V

    .line 138
    iput-boolean v1, p3, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    .line 140
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 142
    if-eqz p2, :cond_b1

    .line 144
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$x;->isRunning()Z

    .line 147
    move-result p2

    .line 148
    if-eqz p2, :cond_b1

    .line 150
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 152
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$x;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 155
    goto :goto_b1

    .line 156
    :cond_9b
    :goto_9b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isScrap()Z

    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_a5

    .line 162
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->unScrap()V

    .line 165
    goto :goto_a8

    .line 166
    :cond_a5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearReturnedFromScrapFlag()V

    .line 169
    :goto_a8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, p1, p2, v2, v3}, Landroidx/recyclerview/widget/b;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 178
    :cond_b1
    :goto_b1
    iget-boolean p1, p3, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    .line 180
    if-eqz p1, :cond_bc

    .line 182
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 187
    iput-boolean v3, p3, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    .line 189
    :cond_bc
    return-void
.end method

.method public static chooseSize(III)I
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p0

    .line 9
    const/high16 v1, -0x80000000

    .line 11
    if-eq v0, v1, :cond_15

    .line 13
    const/high16 v1, 0x40000000  # 2.0f

    .line 15
    if-eq v0, v1, :cond_14

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result p0

    .line 21
    :cond_14
    return p0

    .line 22
    :cond_15
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result p1

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .registers 3

    .line 1
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/b;->c(I)V

    .line 6
    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .registers 9

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    .line 3
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz p4, :cond_1a

    if-ltz p3, :cond_11

    goto :goto_1c

    :cond_11
    if-ne p3, v1, :cond_2f

    if-eq p1, v2, :cond_20

    if-eqz p1, :cond_2f

    if-eq p1, v3, :cond_20

    goto :goto_2f

    :cond_1a
    if-ltz p3, :cond_1e

    :goto_1c
    move p1, v3

    goto :goto_31

    :cond_1e
    if-ne p3, v1, :cond_22

    :cond_20
    move p3, p0

    goto :goto_31

    :cond_22
    if-ne p3, v0, :cond_2f

    if-eq p1, v2, :cond_2c

    if-ne p1, v3, :cond_29

    goto :goto_2c

    :cond_29
    move p3, p0

    move p1, p2

    goto :goto_31

    :cond_2c
    :goto_2c
    move p3, p0

    move p1, v2

    goto :goto_31

    :cond_2f
    :goto_2f
    move p1, p2

    move p3, p1

    .line 4
    :goto_31
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 1
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v0, 0x40000000  # 2.0f

    if-eqz p3, :cond_f

    if-ltz p2, :cond_d

    goto :goto_11

    :cond_d
    move p2, p1

    goto :goto_1e

    :cond_f
    if-ltz p2, :cond_13

    :goto_11
    move p1, v0

    goto :goto_1e

    :cond_13
    const/4 p3, -0x1

    if-ne p2, p3, :cond_18

    move p2, p0

    goto :goto_11

    :cond_18
    const/4 p3, -0x2

    if-ne p2, p3, :cond_d

    const/high16 p1, -0x80000000

    move p2, p0

    .line 2
    :goto_1e
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I
    .registers 12

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 7
    move-result v1

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 11
    move-result v2

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 15
    move-result v3

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 19
    move-result v4

    .line 20
    sub-int/2addr v3, v4

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 24
    move-result v4

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 28
    move-result v5

    .line 29
    sub-int/2addr v4, v5

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 33
    move-result v5

    .line 34
    iget v6, p2, Landroid/graphics/Rect;->left:I

    .line 36
    add-int/2addr v5, v6

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 40
    move-result v6

    .line 41
    sub-int/2addr v5, v6

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 45
    move-result v6

    .line 46
    iget v7, p2, Landroid/graphics/Rect;->top:I

    .line 48
    add-int/2addr v6, v7

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 52
    move-result p1

    .line 53
    sub-int/2addr v6, p1

    .line 54
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 57
    move-result p1

    .line 58
    add-int/2addr p1, v5

    .line 59
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 62
    move-result p2

    .line 63
    add-int/2addr p2, v6

    .line 64
    sub-int/2addr v5, v1

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result v7

    .line 70
    sub-int/2addr v6, v2

    .line 71
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 74
    move-result v2

    .line 75
    sub-int/2addr p1, v3

    .line 76
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 79
    move-result v3

    .line 80
    sub-int/2addr p2, v4

    .line 81
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 84
    move-result p2

    .line 85
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 88
    move-result v4

    .line 89
    const/4 v8, 0x1

    .line 90
    if-ne v4, v8, :cond_63

    .line 92
    if-eqz v3, :cond_5e

    .line 94
    goto :goto_6b

    .line 95
    :cond_5e
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    .line 98
    move-result v3

    .line 99
    goto :goto_6b

    .line 100
    :cond_63
    if-eqz v7, :cond_66

    .line 102
    goto :goto_6a

    .line 103
    :cond_66
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 106
    move-result v7

    .line 107
    :goto_6a
    move v3, v7

    .line 108
    :goto_6b
    if-eqz v2, :cond_6e

    .line 110
    goto :goto_72

    .line 111
    :cond_6e
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    .line 114
    move-result v2

    .line 115
    :goto_72
    aput v3, v0, v1

    .line 117
    aput v2, v0, v8

    .line 119
    return-object v0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    .registers 6

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    .line 3
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    .line 6
    sget-object v1, Lb1/d;->RecyclerView:[I

    .line 8
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p0

    .line 12
    sget p1, Lb1/d;->RecyclerView_android_orientation:I

    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 18
    move-result p1

    .line 19
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 21
    sget p1, Lb1/d;->RecyclerView_spanCount:I

    .line 23
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 26
    move-result p1

    .line 27
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 29
    sget p1, Lb1/d;->RecyclerView_reverseLayout:I

    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 35
    move-result p1

    .line 36
    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 38
    sget p1, Lb1/d;->RecyclerView_stackFromEnd:I

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 43
    move-result p1

    .line 44
    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 46
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-object v0
.end method

.method private isFocusedChildVisibleAfterScrolling(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 24
    move-result v4

    .line 25
    sub-int/2addr v3, v4

    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 29
    move-result v4

    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 33
    move-result v5

    .line 34
    sub-int/2addr v4, v5

    .line 35
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {p0, p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 42
    iget p1, v5, Landroid/graphics/Rect;->left:I

    .line 44
    sub-int/2addr p1, p2

    .line 45
    if-ge p1, v3, :cond_40

    .line 47
    iget p1, v5, Landroid/graphics/Rect;->right:I

    .line 49
    sub-int/2addr p1, p2

    .line 50
    if-le p1, v1, :cond_40

    .line 52
    iget p1, v5, Landroid/graphics/Rect;->top:I

    .line 54
    sub-int/2addr p1, p3

    .line 55
    if-ge p1, v4, :cond_40

    .line 57
    iget p1, v5, Landroid/graphics/Rect;->bottom:I

    .line 59
    sub-int/2addr p1, p3

    .line 60
    if-gt p1, v2, :cond_3e

    .line 62
    goto :goto_40

    .line 63
    :cond_3e
    const/4 p1, 0x1

    .line 64
    return p1

    .line 65
    :cond_40
    :goto_40
    return v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-lez p2, :cond_e

    .line 12
    if-eq p0, p2, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    const/high16 p2, -0x80000000

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, p2, :cond_1f

    .line 20
    if-eqz v0, :cond_1e

    .line 22
    const/high16 p2, 0x40000000  # 2.0f

    .line 24
    if-eq v0, p2, :cond_1a

    .line 26
    return v1

    .line 27
    :cond_1a
    if-ne p1, p0, :cond_1d

    .line 29
    move v1, v2

    .line 30
    :cond_1d
    return v1

    .line 31
    :cond_1e
    return v2

    .line 32
    :cond_1f
    if-lt p1, p0, :cond_22

    .line 34
    move v1, v2

    .line 35
    :cond_22
    return v1
.end method

.method private scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$u;ILandroid/view/View;)V
    .registers 6

    .line 1
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_28

    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_28

    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 28
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_28

    .line 34
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 37
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->i(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 40
    goto :goto_35

    .line 41
    :cond_28
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 44
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$u;->j(Landroid/view/View;)V

    .line 47
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 51
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/z;->c(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 54
    :goto_35
    return-void
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .registers 4

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$o;)V

    return-void
.end method

.method public attachView(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$o;)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 4
    iget-object v2, v1, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 5
    invoke-virtual {v2, v0}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/z$a;

    if-nez v2, :cond_21

    .line 6
    invoke-static {}, Landroidx/recyclerview/widget/z$a;->a()Landroidx/recyclerview/widget/z$a;

    move-result-object v2

    .line 7
    iget-object v1, v1, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    invoke-virtual {v1, v0, v2}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_21
    iget v1, v2, Landroidx/recyclerview/widget/z$a;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Landroidx/recyclerview/widget/z$a;->a:I

    goto :goto_2f

    .line 9
    :cond_28
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/z;->c(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 10
    :goto_2f
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroidx/recyclerview/widget/b;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-nez v0, :cond_9

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 17
    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$o;)Z
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;)V
    .registers 5

    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$c;)V
    .registers 3

    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    if-ltz v0, :cond_12

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$u;ILandroid/view/View;)V

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 18
    goto :goto_6

    .line 19
    :cond_12
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->j(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$u;ILandroid/view/View;)V

    .line 10
    return-void
.end method

.method public detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$u;ILandroid/view/View;)V

    .line 8
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->j(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_b

    .line 9
    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 12
    :cond_b
    return-void
.end method

.method public detachViewAt(I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 8
    return-void
.end method

.method public dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    return-void
.end method

.method public dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 7
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$l;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 14
    :cond_d
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_d

    .line 13
    return-object v1

    .line 14
    :cond_d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 16
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->k(Landroid/view/View;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_16

    .line 22
    return-object v1

    .line 23
    :cond_16
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_30

    .line 8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_12

    .line 18
    goto :goto_2d

    .line 19
    :cond_12
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 22
    move-result v4

    .line 23
    if-ne v4, p1, :cond_2d

    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_2d

    .line 31
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 35
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 37
    if-nez v4, :cond_2c

    .line 39
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2d

    .line 45
    :cond_2c
    return-object v2

    .line 46
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_5

    .line 49
    :cond_30
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public abstract generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$o;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$o;
    .registers 4

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$o;
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$o;

    if-eqz v0, :cond_c

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    return-object v0

    .line 3
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 5
    :cond_18
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 9
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 11
    return p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public getClipToPadding()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 3

    const/4 p1, -0x1

    return p1
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p1, v0

    .line 10
    return p1
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    .line 8
    move-result p1

    .line 9
    sub-int/2addr v0, p1

    .line 10
    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    move-result p1

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 15
    add-int/2addr p1, v1

    .line 16
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 18
    add-int/2addr p1, v0

    .line 19
    return p1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 12
    move-result p1

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 15
    add-int/2addr p1, v1

    .line 16
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 18
    add-int/2addr p1, v0

    .line 19
    return p1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    .line 8
    move-result p1

    .line 9
    add-int/2addr p1, v0

    .line 10
    return p1
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 8
    move-result p1

    .line 9
    sub-int/2addr v0, p1

    .line 10
    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_16

    .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 15
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/b;->k(Landroid/view/View;)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    return-object v0

    .line 23
    :cond_16
    :goto_16
    return-object v1
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 3
    return v0
.end method

.method public getHeightMode()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 3
    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    if-eqz v0, :cond_11

    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 16
    move-result v0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    return v0
.end method

.method public getItemViewType(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getLayoutDirection()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 9
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 11
    return p1
.end method

.method public getMinimumHeight()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getMinimumWidth()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0}, Lm0/g0$d;->e(Landroid/view/View;)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public getPaddingEnd()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {v0}, Lm0/g0$e;->e(Landroid/view/View;)I

    .line 10
    move-result v0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method public getPaddingLeft()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public getPaddingStart()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {v0}, Lm0/g0$e;->f(Landroid/view/View;)I

    .line 10
    move-result v0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public getPosition(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 9
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 11
    return p1
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 3

    const/4 p1, -0x1

    return p1
.end method

.method public getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 9
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 11
    return p1
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .registers 9

    .line 1
    if-eqz p2, :cond_22

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 9
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 11
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 13
    neg-int v0, v0

    .line 14
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 16
    neg-int v1, v1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 20
    move-result v2

    .line 21
    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 23
    add-int/2addr v2, v3

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 27
    move-result v3

    .line 28
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 30
    add-int/2addr v3, p2

    .line 31
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 34
    goto :goto_2e

    .line 35
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 38
    move-result p2

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 47
    :goto_2e
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    if-eqz p2, :cond_6b

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_6b

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_6b

    .line 63
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 67
    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 70
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 73
    iget p2, v0, Landroid/graphics/RectF;->left:F

    .line 75
    float-to-double v1, p2

    .line 76
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 79
    move-result-wide v1

    .line 80
    double-to-int p2, v1

    .line 81
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 83
    float-to-double v1, v1

    .line 84
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 87
    move-result-wide v1

    .line 88
    double-to-int v1, v1

    .line 89
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 91
    float-to-double v2, v2

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 95
    move-result-wide v2

    .line 96
    double-to-int v2, v2

    .line 97
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 99
    float-to-double v3, v0

    .line 100
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 103
    move-result-wide v3

    .line 104
    double-to-int v0, v3

    .line 105
    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 108
    :cond_6b
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 111
    move-result p2

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 115
    move-result p1

    .line 116
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 119
    return-void
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 3
    return v0
.end method

.method public getWidthMode()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 3
    return v0
.end method

.method public hasFlexibleChildInBothOrientations()Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v2, v0, :cond_1d

    .line 9
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v3

    .line 17
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    if-gez v4, :cond_1a

    .line 21
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    if-gez v3, :cond_1a

    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_6

    .line 30
    :cond_1d
    return v1
.end method

.method public hasFocus()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public ignoreView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    if-ne v0, v1, :cond_20

    .line 9
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq v0, v1, :cond_20

    .line 16
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    move-result-object p1

    .line 20
    const/16 v0, 0x80

    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 25
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 29
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/z;->d(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 32
    return-void

    .line 33
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    const-string v0, "View should be fully attached to be ignored"

    .line 37
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    invoke-static {v1, v0}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method

.method public isAttachedToWindow()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 3
    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 3
    return v0
.end method

.method public isFocused()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public final isItemPrefetchEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 3
    return v0
.end method

.method public isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public isMeasurementCacheEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 3
    return v0
.end method

.method public isSmoothScrolling()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isViewPartiallyVisible(Landroid/view/View;ZZ)Z
    .registers 5

    .line 1
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/y;

    .line 3
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/y;->b(Landroid/view/View;)Z

    .line 6
    move-result p3

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p3, :cond_13

    .line 10
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/y;

    .line 12
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/y;->b(Landroid/view/View;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_13

    .line 18
    move p1, v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    if-eqz p2, :cond_17

    .line 23
    return p1

    .line 24
    :cond_17
    xor-int/2addr p1, v0

    .line 25
    return p1
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 9
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 11
    add-int/2addr p2, v1

    .line 12
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 14
    add-int/2addr p3, v1

    .line 15
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 17
    sub-int/2addr p4, v1

    .line 18
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 20
    sub-int/2addr p5, v0

    .line 21
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 24
    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 9
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 11
    add-int/2addr p2, v2

    .line 12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    add-int/2addr p2, v2

    .line 15
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 17
    add-int/2addr p3, v2

    .line 18
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 20
    add-int/2addr p3, v2

    .line 21
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 23
    sub-int/2addr p4, v2

    .line 24
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 26
    sub-int/2addr p4, v2

    .line 27
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 29
    sub-int/2addr p5, v1

    .line 30
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    sub-int/2addr p5, v0

    .line 33
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 36
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    .line 12
    move-result-object v1

    .line 13
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 15
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 17
    add-int/2addr v2, v3

    .line 18
    add-int/2addr v2, p2

    .line 19
    iget p2, v1, Landroid/graphics/Rect;->top:I

    .line 21
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 23
    add-int/2addr p2, v1

    .line 24
    add-int/2addr p2, p3

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 28
    move-result p3

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 36
    move-result v3

    .line 37
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 40
    move-result v4

    .line 41
    add-int/2addr v4, v3

    .line 42
    add-int/2addr v4, v2

    .line 43
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 48
    move-result v3

    .line 49
    invoke-static {p3, v1, v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 52
    move-result p3

    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 60
    move-result v2

    .line 61
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 64
    move-result v3

    .line 65
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 68
    move-result v4

    .line 69
    add-int/2addr v4, v3

    .line 70
    add-int/2addr v4, p2

    .line 71
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 73
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 76
    move-result v3

    .line 77
    invoke-static {v1, v2, v4, p2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 80
    move-result p2

    .line 81
    invoke-virtual {p0, p1, p3, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_59

    .line 87
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    .line 90
    :cond_59
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    .line 12
    move-result-object v1

    .line 13
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 15
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 17
    add-int/2addr v2, v3

    .line 18
    add-int/2addr v2, p2

    .line 19
    iget p2, v1, Landroid/graphics/Rect;->top:I

    .line 21
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 23
    add-int/2addr p2, v1

    .line 24
    add-int/2addr p2, p3

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 28
    move-result p3

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 36
    move-result v3

    .line 37
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 40
    move-result v4

    .line 41
    add-int/2addr v4, v3

    .line 42
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 44
    add-int/2addr v4, v3

    .line 45
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 47
    add-int/2addr v4, v3

    .line 48
    add-int/2addr v4, v2

    .line 49
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 54
    move-result v3

    .line 55
    invoke-static {p3, v1, v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 58
    move-result p3

    .line 59
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 62
    move-result v1

    .line 63
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 66
    move-result v2

    .line 67
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 70
    move-result v3

    .line 71
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 74
    move-result v4

    .line 75
    add-int/2addr v4, v3

    .line 76
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 78
    add-int/2addr v4, v3

    .line 79
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 81
    add-int/2addr v4, v3

    .line 82
    add-int/2addr v4, p2

    .line 83
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 85
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 88
    move-result v3

    .line 89
    invoke-static {v1, v2, v4, p2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 92
    move-result p2

    .line 93
    invoke-virtual {p0, p1, p3, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z

    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_65

    .line 99
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    .line 102
    :cond_65
    return-void
.end method

.method public moveView(II)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 10
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v1, "Cannot move a child from non-existing index:"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p2
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)Landroid/view/View;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_39

    if-nez p3, :cond_7

    goto :goto_39

    :cond_7
    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    const/4 p2, 0x0

    .line 7
    :cond_29
    :goto_29
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_39

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_39
    :goto_39
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Ln0/c;)V
    .registers 7

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    const/16 v0, 0x2000

    .line 3
    invoke-virtual {p3, v0}, Ln0/c;->a(I)V

    .line 4
    invoke-virtual {p3, v2}, Ln0/c;->n(Z)V

    .line 5
    :cond_1a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_2a
    const/16 v0, 0x1000

    .line 6
    invoke-virtual {p3, v0}, Ln0/c;->a(I)V

    .line 7
    invoke-virtual {p3, v2}, Ln0/c;->n(Z)V

    .line 8
    :cond_32
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result v0

    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result v1

    .line 10
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)Z

    move-result v2

    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    .line 12
    invoke-static {v0, v1, p1, v2}, Ln0/c$c;->a(IIIZ)Ln0/c$c;

    move-result-object p1

    .line 13
    invoke-virtual {p3, p1}, Ln0/c;->j(Ln0/c$c;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Ln0/c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Ln0/c;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Ln0/c;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/b;->k(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroid/view/View;Ln0/c;)V

    :cond_1f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroid/view/View;Ln0/c;)V
    .registers 5

    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .registers 5

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 3

    .line 1
    const-string p1, "RecyclerView"

    .line 3
    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 2

    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 6
    return-void
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .line 2
    invoke-virtual {p0, p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onSmoothScrollerStopped(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 3
    if-ne v0, p1, :cond_7

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 8
    :cond_7
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;ILandroid/os/Bundle;)Z
    .registers 12

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_6

    return p2

    :cond_6
    const/16 p4, 0x1000

    const/4 v0, 0x1

    if-eq p3, p4, :cond_42

    const/16 p4, 0x2000

    if-eq p3, p4, :cond_12

    move v2, p2

    move v3, v2

    goto :goto_73

    :cond_12
    const/4 p3, -0x1

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p1, p4

    neg-int p1, p1

    goto :goto_2a

    :cond_29
    move p1, p2

    .line 5
    :goto_2a
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_71

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    neg-int p3, p3

    goto :goto_6e

    .line 7
    :cond_42
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_58

    :cond_57
    move p1, p2

    .line 9
    :goto_58
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_71

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    :goto_6e
    move v3, p1

    move v2, p3

    goto :goto_73

    :cond_71
    move v3, p1

    move v2, p2

    :goto_73
    if-nez v3, :cond_78

    if-nez v2, :cond_78

    return p2

    .line 11
    :cond_78
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return v0
.end method

.method public performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 5
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 7
    move-object v1, p0

    .line 8
    move-object v4, p1

    .line 9
    move v5, p2

    .line 10
    move-object v6, p3

    .line 11
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    const/4 p1, 0x0

    return p1
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {v0, p1}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 10
    :cond_9
    return-void
.end method

.method public removeAllViews()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    if-ltz v0, :cond_10

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 11
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/b;->l(I)V

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    goto :goto_6

    .line 17
    :cond_10
    return-void
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    if-ltz v0, :cond_1c

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_19

    .line 23
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 26
    :cond_19
    add-int/lit8 v0, v0, -0x1

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    return-void
.end method

.method public removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 8

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 9
    :goto_8
    if-ltz v1, :cond_4d

    .line 11
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 21
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1f

    .line 31
    goto :goto_4a

    .line 32
    :cond_1f
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    .line 36
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isTmpDetached()Z

    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2e

    .line 42
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 47
    :cond_2e
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 51
    if-eqz v5, :cond_37

    .line 53
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView$l;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 56
    :cond_37
    const/4 v5, 0x1

    .line 57
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    .line 60
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 63
    move-result-object v2

    .line 64
    const/4 v3, 0x0

    .line 65
    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 67
    iput-boolean v4, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->mInChangeScrap:Z

    .line 69
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearReturnedFromScrapFlag()V

    .line 72
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$u;->i(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 75
    :goto_4a
    add-int/lit8 v1, v1, -0x1

    .line 77
    goto :goto_8

    .line 78
    :cond_4d
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 85
    if-eqz p1, :cond_59

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 90
    :cond_59
    if-lez v0, :cond_60

    .line 92
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 97
    :cond_60
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$u;->h(Landroid/view/View;)V

    .line 7
    return-void
.end method

.method public removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->h(Landroid/view/View;)V

    .line 11
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 7
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 5
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 12
    move-result v1

    .line 13
    if-gez v1, :cond_f

    .line 15
    goto :goto_21

    .line 16
    :cond_f
    iget-object v2, v0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 18
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b$a;->f(I)Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1a

    .line 24
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->m(Landroid/view/View;)V

    .line 27
    :cond_1a
    iget-object p1, v0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 29
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 31
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->b(I)V

    .line 34
    :goto_21
    return-void
.end method

.method public removeViewAt(I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->l(I)V

    .line 12
    :cond_b
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .registers 8

    .line 2
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object p2

    const/4 p3, 0x0

    .line 3
    aget v0, p2, p3

    const/4 v1, 0x1

    .line 4
    aget p2, p2, v1

    if-eqz p5, :cond_12

    .line 5
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isFocusedChildVisibleAfterScrolling(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result p5

    if-eqz p5, :cond_17

    :cond_12
    if-nez v0, :cond_18

    if-eqz p2, :cond_17

    goto :goto_18

    :cond_17
    return p3

    :cond_18
    :goto_18
    if-eqz p4, :cond_1e

    .line 6
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_21

    .line 7
    :cond_1e
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :goto_21
    return v1
.end method

.method public requestLayout()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 8
    :cond_7
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 4
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public scrollToPosition(I)V
    .registers 2

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public setAutoMeasureEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 3
    return-void
.end method

.method public setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000  # 2.0f

    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 14
    move-result p1

    .line 15
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 22
    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 3
    if-eq p1, v0, :cond_12

    .line 5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    if-eqz p1, :cond_12

    .line 14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->m()V

    .line 19
    :cond_12
    return-void
.end method

.method public setMeasureSpecs(II)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result p1

    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_15

    .line 16
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 18
    if-nez p1, :cond_15

    .line 20
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 22
    :cond_15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    move-result p1

    .line 26
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 28
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 31
    move-result p1

    .line 32
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 34
    if-nez p1, :cond_29

    .line 36
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 38
    if-nez p1, :cond_29

    .line 40
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 42
    :cond_29
    return-void
.end method

.method public setMeasuredDimension(II)V
    .registers 4

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v1

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 5
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMeasuredDimensionFromChildren(II)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_c

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 12
    return-void

    .line 13
    :cond_c
    const/4 v1, 0x0

    .line 14
    const/high16 v2, -0x80000000

    .line 16
    const v3, 0x7fffffff

    .line 19
    move v4, v3

    .line 20
    move v5, v4

    .line 21
    move v3, v2

    .line 22
    :goto_15
    if-ge v1, v0, :cond_39

    .line 24
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v6

    .line 28
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {p0, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 35
    iget v6, v7, Landroid/graphics/Rect;->left:I

    .line 37
    if-ge v6, v4, :cond_27

    .line 39
    move v4, v6

    .line 40
    :cond_27
    iget v6, v7, Landroid/graphics/Rect;->right:I

    .line 42
    if-le v6, v2, :cond_2c

    .line 44
    move v2, v6

    .line 45
    :cond_2c
    iget v6, v7, Landroid/graphics/Rect;->top:I

    .line 47
    if-ge v6, v5, :cond_31

    .line 49
    move v5, v6

    .line 50
    :cond_31
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    .line 52
    if-le v6, v3, :cond_36

    .line 54
    move v3, v6

    .line 55
    :cond_36
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_15

    .line 58
    :cond_39
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 62
    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 72
    return-void
.end method

.method public setMeasurementCacheEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 3
    return-void
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    if-nez p1, :cond_d

    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 13
    goto :goto_1f

    .line 14
    :cond_d
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 18
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 23
    move-result v0

    .line 24
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 29
    move-result p1

    .line 30
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 32
    :goto_1f
    const/high16 p1, 0x40000000  # 2.0f

    .line 34
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 36
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 38
    return-void
.end method

.method public shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_25

    .line 7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 9
    if-eqz v0, :cond_25

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v0

    .line 15
    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 17
    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_25

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 26
    move-result p1

    .line 27
    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 29
    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_23

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    const/4 p1, 0x0

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    :goto_25
    const/4 p1, 0x1

    .line 39
    :goto_26
    return p1
.end method

.method public shouldMeasureTwice()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 3
    if-eqz v0, :cond_1f

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    move-result v0

    .line 9
    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 11
    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1f

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    move-result p1

    .line 21
    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 23
    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1d

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    .line 33
    :goto_20
    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .registers 4

    .line 1
    const-string p1, "RecyclerView"

    .line 3
    const-string p2, "You must override smoothScrollToPosition to support smooth scrolling"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    if-eq p1, v0, :cond_11

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->isRunning()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    .line 18
    :cond_11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$x;->start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->stopIgnoring()V

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->resetInternal()V

    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 15
    return-void
.end method

.method public stopSmoothScroller()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    .line 8
    :cond_7
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
