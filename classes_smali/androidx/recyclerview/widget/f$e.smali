.class public abstract Landroidx/recyclerview/widget/f$e;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field public static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/f$e$a;

    .line 3
    invoke-direct {v0}, Landroidx/recyclerview/widget/f$e$a;-><init>()V

    .line 6
    sput-object v0, Landroidx/recyclerview/widget/f$e;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 8
    new-instance v0, Landroidx/recyclerview/widget/f$e$b;

    .line 10
    invoke-direct {v0}, Landroidx/recyclerview/widget/f$e$b;-><init>()V

    .line 13
    sput-object v0, Landroidx/recyclerview/widget/f$e;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/f$e;->mCachedMaxScrollSpeed:I

    .line 7
    return-void
.end method

.method public static convertToRelativeDirection(II)I
    .registers 5

    const v0, 0xc0c0c

    and-int v1, p0, v0

    if-nez v1, :cond_8

    return p0

    :cond_8
    not-int v2, v1

    and-int/2addr p0, v2

    if-nez p1, :cond_10

    shl-int/lit8 p1, v1, 0x2

    :goto_e
    or-int/2addr p0, p1

    return p0

    :cond_10
    shl-int/lit8 p1, v1, 0x1

    const v1, -0xc0c0d

    and-int/2addr v1, p1

    or-int/2addr p0, v1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    goto :goto_e
.end method

.method public static getDefaultUIUtil()Landroidx/recyclerview/widget/h;
    .registers 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/i;

    .line 3
    return-object v0
.end method

.method private getMaxDragScroll(Landroidx/recyclerview/widget/RecyclerView;)I
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/f$e;->mCachedMaxScrollSpeed:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_11

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p1

    .line 10
    sget v0, Lb1/b;->item_touch_helper_max_drag_scroll_per_frame:I

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result p1

    .line 16
    iput p1, p0, Landroidx/recyclerview/widget/f$e;->mCachedMaxScrollSpeed:I

    .line 18
    :cond_11
    iget p1, p0, Landroidx/recyclerview/widget/f$e;->mCachedMaxScrollSpeed:I

    .line 20
    return p1
.end method

.method public static makeFlag(II)I
    .registers 2

    mul-int/lit8 p0, p0, 0x8

    shl-int p0, p1, p0

    return p0
.end method

.method public static makeMovementFlags(II)I
    .registers 4

    .line 1
    or-int v0, p1, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/f$e;->makeFlag(II)I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1, p1}, Landroidx/recyclerview/widget/f$e;->makeFlag(II)I

    .line 12
    move-result p1

    .line 13
    or-int/2addr p1, v0

    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-static {v0, p0}, Landroidx/recyclerview/widget/f$e;->makeFlag(II)I

    .line 18
    move-result p0

    .line 19
    or-int/2addr p0, p1

    .line 20
    return p0
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 4

    const/4 p1, 0x1

    return p1
.end method

.method public chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;II)",
            "Landroidx/recyclerview/widget/RecyclerView$b0;"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 7
    move-result v1

    .line 8
    add-int v1, v1, p3

    .line 10
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v2

    .line 16
    add-int v2, v2, p4

    .line 18
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 23
    move-result v3

    .line 24
    sub-int v3, p3, v3

    .line 26
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 28
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 31
    move-result v4

    .line 32
    sub-int v4, p4, v4

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, -0x1

    .line 40
    const/4 v8, 0x0

    .line 41
    :goto_28
    if-ge v8, v5, :cond_bc

    .line 43
    move-object/from16 v9, p2

    .line 45
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v10

    .line 49
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 51
    if-lez v3, :cond_53

    .line 53
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 55
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    .line 58
    move-result v11

    .line 59
    sub-int/2addr v11, v1

    .line 60
    if-gez v11, :cond_53

    .line 62
    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 64
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    .line 67
    move-result v12

    .line 68
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 70
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    .line 73
    move-result v13

    .line 74
    if-le v12, v13, :cond_53

    .line 76
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 79
    move-result v11

    .line 80
    if-le v11, v7, :cond_53

    .line 82
    move-object v6, v10

    .line 83
    move v7, v11

    .line 84
    :cond_53
    if-gez v3, :cond_75

    .line 86
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 88
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 91
    move-result v11

    .line 92
    sub-int v11, v11, p3

    .line 94
    if-lez v11, :cond_75

    .line 96
    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 98
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    .line 101
    move-result v12

    .line 102
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 104
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    .line 107
    move-result v13

    .line 108
    if-ge v12, v13, :cond_75

    .line 110
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 113
    move-result v11

    .line 114
    if-le v11, v7, :cond_75

    .line 116
    move-object v6, v10

    .line 117
    move v7, v11

    .line 118
    :cond_75
    if-gez v4, :cond_97

    .line 120
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 122
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 125
    move-result v11

    .line 126
    sub-int v11, v11, p4

    .line 128
    if-lez v11, :cond_97

    .line 130
    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 132
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    .line 135
    move-result v12

    .line 136
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 138
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    .line 141
    move-result v13

    .line 142
    if-ge v12, v13, :cond_97

    .line 144
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 147
    move-result v11

    .line 148
    if-le v11, v7, :cond_97

    .line 150
    move-object v6, v10

    .line 151
    move v7, v11

    .line 152
    :cond_97
    if-lez v4, :cond_b8

    .line 154
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 156
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    .line 159
    move-result v11

    .line 160
    sub-int/2addr v11, v2

    .line 161
    if-gez v11, :cond_b8

    .line 163
    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 165
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    .line 168
    move-result v12

    .line 169
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 171
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    .line 174
    move-result v13

    .line 175
    if-le v12, v13, :cond_b8

    .line 177
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 180
    move-result v11

    .line 181
    if-le v11, v7, :cond_b8

    .line 183
    move-object v6, v10

    .line 184
    move v7, v11

    .line 185
    :cond_b8
    add-int/lit8 v8, v8, 0x1

    .line 187
    goto/16 :goto_28

    .line 189
    :cond_bc
    return-object v6
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 5

    .line 1
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    sget p2, Lb1/c;->item_touch_helper_previous_elevation:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/lang/Float;

    .line 11
    if-eqz v1, :cond_17

    .line 13
    check-cast v0, Ljava/lang/Float;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 18
    move-result v0

    .line 19
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 21
    invoke-static {p1, v0}, Lm0/g0$i;->s(Landroid/view/View;F)V

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 35
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .registers 6

    const v0, 0x303030

    and-int v1, p1, v0

    if-nez v1, :cond_8

    return p1

    :cond_8
    not-int v2, v1

    and-int/2addr p1, v2

    if-nez p2, :cond_10

    shr-int/lit8 p2, v1, 0x2

    :goto_e
    or-int/2addr p1, p2

    return p1

    :cond_10
    shr-int/lit8 p2, v1, 0x1

    const v1, -0x303031

    and-int/2addr v1, p2

    or-int/2addr p1, v1

    and-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x2

    goto :goto_e
.end method

.method public final getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/f$e;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 4
    move-result p2

    .line 5
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p1}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/f$e;->convertToAbsoluteDirection(II)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    .line 4
    move-result-object p1

    .line 5
    const/16 p3, 0x8

    .line 7
    if-nez p1, :cond_10

    .line 9
    if-ne p2, p3, :cond_d

    .line 11
    const-wide/16 p1, 0xc8

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const-wide/16 p1, 0xfa

    .line 16
    :goto_f
    return-wide p1

    .line 17
    :cond_10
    if-ne p2, p3, :cond_17

    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$l;->getMoveDuration()J

    .line 22
    move-result-wide p1

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$l;->getRemoveDuration()J

    .line 27
    move-result-wide p1

    .line 28
    :goto_1b
    return-wide p1
.end method

.method public getBoundingBoxMargin()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$b0;)F
    .registers 2

    const/high16 p1, 0x3f000000  # 0.5f

    return p1
.end method

.method public abstract getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I
.end method

.method public getSwipeEscapeVelocity(F)F
    .registers 2

    return p1
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$b0;)F
    .registers 2

    const/high16 p1, 0x3f000000  # 0.5f

    return p1
.end method

.method public getSwipeVelocityThreshold(F)F
    .registers 2

    return p1
.end method

.method public hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/f$e;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 4
    move-result p1

    .line 5
    const/high16 p2, 0xff0000

    .line 7
    and-int/2addr p1, p2

    .line 8
    if-eqz p1, :cond_b

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    return p1
.end method

.method public hasSwipeFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/f$e;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 4
    move-result p1

    .line 5
    const p2, 0xff00

    .line 8
    and-int/2addr p1, p2

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .registers 11

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f$e;->getMaxDragScroll(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 4
    move-result p1

    .line 5
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 8
    move-result p4

    .line 9
    int-to-float v0, p3

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 13
    move-result v0

    .line 14
    float-to-int v0, v0

    .line 15
    int-to-float p4, p4

    .line 16
    const/high16 v1, 0x3f800000  # 1.0f

    .line 18
    mul-float/2addr p4, v1

    .line 19
    int-to-float p2, p2

    .line 20
    div-float/2addr p4, p2

    .line 21
    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    .line 24
    move-result p2

    .line 25
    mul-int/2addr v0, p1

    .line 26
    int-to-float p1, v0

    .line 27
    sget-object p4, Landroidx/recyclerview/widget/f$e;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 29
    invoke-interface {p4, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 32
    move-result p2

    .line 33
    mul-float/2addr p2, p1

    .line 34
    float-to-int p1, p2

    .line 35
    const-wide/16 v2, 0x7d0

    .line 37
    cmp-long p2, p5, v2

    .line 39
    if-lez p2, :cond_29

    .line 41
    goto :goto_2e

    .line 42
    :cond_29
    long-to-float p2, p5

    .line 43
    const/high16 p4, 0x44fa0000  # 2000.0f

    .line 45
    div-float v1, p2, p4

    .line 47
    :goto_2e
    int-to-float p1, p1

    .line 48
    sget-object p2, Landroidx/recyclerview/widget/f$e;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 50
    invoke-interface {p2, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 53
    move-result p2

    .line 54
    mul-float/2addr p2, p1

    .line 55
    float-to-int p1, p2

    .line 56
    if-nez p1, :cond_3e

    .line 58
    if-lez p3, :cond_3d

    .line 60
    const/4 p1, 0x1

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    const/4 p1, -0x1

    .line 63
    :cond_3e
    :goto_3e
    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V
    .registers 12

    .line 1
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    if-eqz p7, :cond_3e

    .line 5
    sget p3, Lb1/c;->item_touch_helper_previous_elevation:I

    .line 7
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 10
    move-result-object p3

    .line 11
    if-nez p3, :cond_3e

    .line 13
    sget-object p3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 15
    invoke-static {p1}, Lm0/g0$i;->i(Landroid/view/View;)F

    .line 18
    move-result p3

    .line 19
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    move-result-object p3

    .line 23
    const/high16 p6, 0x3f800000  # 1.0f

    .line 25
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    move-result p7

    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_1e
    if-ge v1, p7, :cond_35

    .line 33
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    move-result-object v2

    .line 37
    if-ne v2, p1, :cond_27

    .line 39
    goto :goto_32

    .line 40
    :cond_27
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 42
    invoke-static {v2}, Lm0/g0$i;->i(Landroid/view/View;)F

    .line 45
    move-result v2

    .line 46
    cmpl-float v3, v2, v0

    .line 48
    if-lez v3, :cond_32

    .line 50
    move v0, v2

    .line 51
    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_1e

    .line 54
    :cond_35
    add-float/2addr v0, p6

    .line 55
    invoke-static {p1, v0}, Lm0/g0$i;->s(Landroid/view/View;F)V

    .line 58
    sget p2, Lb1/c;->item_touch_helper_previous_elevation:I

    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 63
    :cond_3e
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 66
    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 69
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V
    .registers 8

    .line 1
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;IFF)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/f$g;",
            ">;IFF)V"
        }
    .end annotation

    .line 1
    move-object v8, p1

    .line 2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 5
    move-result v9

    .line 6
    const/4 v0, 0x0

    .line 7
    move v10, v0

    .line 8
    :goto_7
    if-ge v10, v9, :cond_60

    .line 10
    move-object/from16 v11, p4

    .line 12
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/recyclerview/widget/f$g;

    .line 18
    iget v1, v0, Landroidx/recyclerview/widget/f$g;->a:F

    .line 20
    iget v2, v0, Landroidx/recyclerview/widget/f$g;->c:F

    .line 22
    cmpl-float v3, v1, v2

    .line 24
    if-nez v3, :cond_24

    .line 26
    iget-object v1, v0, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 28
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 33
    move-result v1

    .line 34
    iput v1, v0, Landroidx/recyclerview/widget/f$g;->i:F

    .line 36
    goto :goto_2c

    .line 37
    :cond_24
    iget v3, v0, Landroidx/recyclerview/widget/f$g;->m:F

    .line 39
    invoke-static {v2, v1, v3, v1}, Lf0/e;->a(FFFF)F

    .line 42
    move-result v1

    .line 43
    iput v1, v0, Landroidx/recyclerview/widget/f$g;->i:F

    .line 45
    :goto_2c
    iget v1, v0, Landroidx/recyclerview/widget/f$g;->b:F

    .line 47
    iget v2, v0, Landroidx/recyclerview/widget/f$g;->d:F

    .line 49
    cmpl-float v3, v1, v2

    .line 51
    if-nez v3, :cond_3f

    .line 53
    iget-object v1, v0, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 55
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 60
    move-result v1

    .line 61
    iput v1, v0, Landroidx/recyclerview/widget/f$g;->j:F

    .line 63
    goto :goto_47

    .line 64
    :cond_3f
    iget v3, v0, Landroidx/recyclerview/widget/f$g;->m:F

    .line 66
    invoke-static {v2, v1, v3, v1}, Lf0/e;->a(FFFF)F

    .line 69
    move-result v1

    .line 70
    iput v1, v0, Landroidx/recyclerview/widget/f$g;->j:F

    .line 72
    :goto_47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    move-result v12

    .line 76
    iget-object v3, v0, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 78
    iget v4, v0, Landroidx/recyclerview/widget/f$g;->i:F

    .line 80
    iget v5, v0, Landroidx/recyclerview/widget/f$g;->j:F

    .line 82
    iget v6, v0, Landroidx/recyclerview/widget/f$g;->f:I

    .line 84
    const/4 v7, 0x0

    .line 85
    move-object v0, p0

    .line 86
    move-object v1, p1

    .line 87
    move-object v2, p2

    .line 88
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/f$e;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V

    .line 91
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 94
    add-int/lit8 v10, v10, 0x1

    .line 96
    goto :goto_7

    .line 97
    :cond_60
    if-eqz p3, :cond_78

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    move-result v9

    .line 103
    const/4 v7, 0x1

    .line 104
    move-object v0, p0

    .line 105
    move-object v1, p1

    .line 106
    move-object v2, p2

    .line 107
    move-object/from16 v3, p3

    .line 109
    move/from16 v4, p6

    .line 111
    move/from16 v5, p7

    .line 113
    move/from16 v6, p5

    .line 115
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/f$e;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V

    .line 118
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 121
    :cond_78
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;IFF)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/f$g;",
            ">;IFF)V"
        }
    .end annotation

    .line 1
    move-object v8, p1

    .line 2
    move-object/from16 v9, p4

    .line 4
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 7
    move-result v10

    .line 8
    const/4 v11, 0x0

    .line 9
    move v12, v11

    .line 10
    :goto_9
    if-ge v12, v10, :cond_2b

    .line 12
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/recyclerview/widget/f$g;

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 21
    move-result v13

    .line 22
    iget-object v3, v0, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 24
    iget v4, v0, Landroidx/recyclerview/widget/f$g;->i:F

    .line 26
    iget v5, v0, Landroidx/recyclerview/widget/f$g;->j:F

    .line 28
    iget v6, v0, Landroidx/recyclerview/widget/f$g;->f:I

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v0, p0

    .line 32
    move-object v1, p1

    .line 33
    move-object/from16 v2, p2

    .line 35
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/f$e;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V

    .line 38
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 41
    add-int/lit8 v12, v12, 0x1

    .line 43
    goto :goto_9

    .line 44
    :cond_2b
    if-eqz p3, :cond_44

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    move-result v12

    .line 50
    const/4 v7, 0x1

    .line 51
    move-object v0, p0

    .line 52
    move-object v1, p1

    .line 53
    move-object/from16 v2, p2

    .line 55
    move-object/from16 v3, p3

    .line 57
    move/from16 v4, p6

    .line 59
    move/from16 v5, p7

    .line 61
    move/from16 v6, p5

    .line 63
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/f$e;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V

    .line 66
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 69
    :cond_44
    const/4 v0, 0x1

    .line 70
    sub-int/2addr v10, v0

    .line 71
    :goto_46
    if-ltz v10, :cond_60

    .line 73
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroidx/recyclerview/widget/f$g;

    .line 79
    iget-boolean v2, v1, Landroidx/recyclerview/widget/f$g;->l:Z

    .line 81
    if-eqz v2, :cond_5a

    .line 83
    iget-boolean v1, v1, Landroidx/recyclerview/widget/f$g;->h:Z

    .line 85
    if-nez v1, :cond_5a

    .line 87
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    goto :goto_5d

    .line 91
    :cond_5a
    if-nez v2, :cond_5d

    .line 93
    move v11, v0

    .line 94
    :cond_5d
    :goto_5d
    add-int/lit8 v10, v10, -0x1

    .line 96
    goto :goto_46

    .line 97
    :cond_60
    if-eqz v11, :cond_65

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->invalidate()V

    .line 102
    :cond_65
    return-void
.end method

.method public abstract onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)Z
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroidx/recyclerview/widget/RecyclerView$b0;III)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    move-result-object p3

    .line 5
    instance-of v0, p3, Landroidx/recyclerview/widget/f$h;

    .line 7
    if-eqz v0, :cond_12

    .line 9
    check-cast p3, Landroidx/recyclerview/widget/f$h;

    .line 11
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 13
    iget-object p2, p4, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 15
    invoke-interface {p3, p1, p2, p6, p7}, Landroidx/recyclerview/widget/f$h;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 18
    return-void

    .line 19
    :cond_12
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_3b

    .line 25
    iget-object p2, p4, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 27
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    move-result p6

    .line 35
    if-gt p2, p6, :cond_27

    .line 37
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 40
    :cond_27
    iget-object p2, p4, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 42
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 45
    move-result p2

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 49
    move-result p6

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 53
    move-result p7

    .line 54
    sub-int/2addr p6, p7

    .line 55
    if-lt p2, p6, :cond_3b

    .line 57
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 60
    :cond_3b
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_64

    .line 66
    iget-object p2, p4, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 68
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 71
    move-result p2

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 75
    move-result p6

    .line 76
    if-gt p2, p6, :cond_50

    .line 78
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 81
    :cond_50
    iget-object p2, p4, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 83
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 86
    move-result p2

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 90
    move-result p3

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 94
    move-result p4

    .line 95
    sub-int/2addr p3, p4

    .line 96
    if-lt p2, p3, :cond_64

    .line 98
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 101
    :cond_64
    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    return-void
.end method

.method public abstract onSwiped(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end method
