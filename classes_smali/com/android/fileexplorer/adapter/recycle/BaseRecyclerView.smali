.class public Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
.super Lmiuix/recyclerview/widget/RecyclerView;
.source "BaseRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;,
        Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_DISTANCE:I = 0x10

.field private static final SCROLL_FECTOR:I = 0x6

.field private static final TAG:Ljava/lang/String; = "BaseRecyclerView"


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private inBottomSpot:Z

.field private inTopSpot:Z

.field public lastVisibleItemPosition:I

.field private mBottomBound:I

.field private mCanDrag:Z

.field private mIsActionMode:Z

.field private mIsPendingAnim:Z

.field private mNeedShowBoxChoose:Z

.field private mRightClickListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;

.field private mSelectListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;

.field private mTopBound:I

.field private point:[F

.field public pos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rectF:Landroid/graphics/RectF;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollDistance:I

.field private scrollRun:Ljava/lang/Runnable;

.field private scroller:Landroidx/core/widget/j;

.field private temp_rectF:Landroid/graphics/RectF;

.field private view_list:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    const/16 p1, -0x14

    .line 7
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mTopBound:I

    const/4 p1, 0x5

    new-array p1, p1, [F

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mCanDrag:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    .line 12
    new-instance p2, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollRun:Ljava/lang/Runnable;

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 14
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x3f800000  # 1.0f

    .line 15
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    .line 17
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    .line 18
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 19
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    :cond_5f
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mRightClickListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Landroidx/core/widget/j;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollDistance:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollBy(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollRun:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method private canDrag()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mCanDrag:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private handleBoxChoose(Landroid/view/MotionEvent;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const-string v1, "BaseRecyclerView"

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v0, :cond_67

    .line 13
    if-eq v0, v5, :cond_3a

    .line 15
    if-eq v0, v3, :cond_14

    .line 17
    if-eq v0, v2, :cond_3a

    .line 19
    goto/16 :goto_a2

    .line 21
    :cond_14
    const-string v0, "handleBoxChoose: action move"

    .line 23
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    .line 28
    if-nez v0, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 36
    move-result v1

    .line 37
    aput v1, v0, v3

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 44
    move-result v1

    .line 45
    aput v1, v0, v2

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 49
    invoke-virtual {p0, v0, v5}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->findChildViewUnder([FZ)V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->processAutoScroll(Landroid/view/MotionEvent;)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    goto :goto_a2

    .line 59
    :cond_3a
    const-string v0, "handleBoxChoose: action up"

    .line 61
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    .line 66
    if-nez v0, :cond_44

    .line 68
    return-void

    .line 69
    :cond_44
    iput-boolean v4, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    .line 71
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 76
    move-result v1

    .line 77
    aput v1, v0, v3

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 84
    move-result p1

    .line 85
    aput p1, v0, v2

    .line 87
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 89
    invoke-virtual {p0, p1, v4}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->findChildViewUnder([FZ)V

    .line 92
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    .line 94
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 100
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->stopAutoScroll()V

    .line 103
    goto :goto_a2

    .line 104
    :cond_67
    const-string v0, "handleBoxChoose: action down"

    .line 106
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->isEventInSelectedRegion(Landroid/view/MotionEvent;)Z

    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_75

    .line 115
    iput-boolean v4, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    .line 117
    return-void

    .line 118
    :cond_75
    iput-boolean v5, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    .line 120
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 122
    const/high16 v1, -0x40800000  # -1.0f

    .line 124
    aput v1, v0, v2

    .line 126
    aput v1, v0, v3

    .line 128
    aput v1, v0, v5

    .line 130
    aput v1, v0, v4

    .line 132
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mBottomBound:I

    .line 134
    if-nez v0, :cond_8f

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 139
    move-result v0

    .line 140
    add-int/lit8 v0, v0, 0x14

    .line 142
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mBottomBound:I

    .line 144
    :cond_8f
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 149
    move-result v1

    .line 150
    aput v1, v0, v4

    .line 152
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 157
    move-result p1

    .line 158
    aput p1, v0, v5

    .line 160
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->checkIfClearSelected()V

    .line 163
    :goto_a2
    return-void
.end method

.method private initScroller(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    .line 3
    if-nez v0, :cond_10

    .line 5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 7
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 10
    new-instance v1, Landroidx/core/widget/j;

    .line 12
    invoke-direct {v1, p1, v0}, Landroidx/core/widget/j;-><init>(Landroid/content/Context;Landroid/view/animation/LinearInterpolator;)V

    .line 15
    iput-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    .line 17
    :cond_10
    return-void
.end method

.method private isEventInSelectedRegion(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 9
    move-result p1

    .line 10
    float-to-int p1, p1

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_6a

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v1

    .line 29
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_6a

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 47
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->isGroupHeader()Z

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1c

    .line 53
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getL()I

    .line 56
    move-result v3

    .line 57
    if-lt v0, v3, :cond_1c

    .line 59
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getR()I

    .line 62
    move-result v3

    .line 63
    if-gt v0, v3, :cond_1c

    .line 65
    int-to-float v3, p1

    .line 66
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getT()I

    .line 69
    move-result v4

    .line 70
    int-to-float v4, v4

    .line 71
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    .line 74
    move-result v5

    .line 75
    add-float/2addr v5, v4

    .line 76
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 78
    const/4 v6, 0x4

    .line 79
    aget v4, v4, v6

    .line 81
    sub-float/2addr v5, v4

    .line 82
    cmpl-float v4, v3, v5

    .line 84
    if-ltz v4, :cond_1c

    .line 86
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getB()I

    .line 89
    move-result v4

    .line 90
    int-to-float v4, v4

    .line 91
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    .line 94
    move-result v2

    .line 95
    add-float/2addr v2, v4

    .line 96
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 98
    aget v4, v4, v6

    .line 100
    sub-float/2addr v2, v4

    .line 101
    cmpg-float v2, v3, v2

    .line 103
    if-gtz v2, :cond_1c

    .line 105
    const/4 p1, 0x1

    .line 106
    return p1

    .line 107
    :cond_6a
    const/4 p1, 0x0

    .line 108
    return p1
.end method

.method private processAutoScroll(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 4
    move-result p1

    .line 5
    float-to-int p1, p1

    .line 6
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mTopBound:I

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ge p1, v0, :cond_1a

    .line 11
    sub-int/2addr v0, p1

    .line 12
    neg-int p1, v0

    .line 13
    div-int/lit8 p1, p1, 0x6

    .line 15
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollDistance:I

    .line 17
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inTopSpot:Z

    .line 19
    if-nez p1, :cond_35

    .line 21
    iput-boolean v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inTopSpot:Z

    .line 23
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->startAutoScroll()V

    .line 26
    goto :goto_35

    .line 27
    :cond_1a
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mBottomBound:I

    .line 29
    if-le p1, v0, :cond_2d

    .line 31
    sub-int/2addr p1, v0

    .line 32
    div-int/lit8 p1, p1, 0x6

    .line 34
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollDistance:I

    .line 36
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inBottomSpot:Z

    .line 38
    if-nez p1, :cond_35

    .line 40
    iput-boolean v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inBottomSpot:Z

    .line 42
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->startAutoScroll()V

    .line 45
    goto :goto_35

    .line 46
    :cond_2d
    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inBottomSpot:Z

    .line 49
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inTopSpot:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->stopAutoScroll()V

    .line 54
    :cond_35
    :goto_35
    return-void
.end method

.method private scrollBy(I)V
    .registers 3

    .line 1
    if-lez p1, :cond_9

    .line 3
    const/16 v0, 0x10

    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    move-result p1

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    const/16 v0, -0x10

    .line 12
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result p1

    .line 16
    :goto_f
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->findChildViewUnder([FZ)V

    .line 26
    return-void
.end method


# virtual methods
.method public canDrag(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mCanDrag:Z

    return-void
.end method

.method public checkIfClearSelected()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x5

    .line 5
    if-ne v1, v2, :cond_81

    .line 7
    const/4 v1, 0x0

    .line 8
    aget v1, v0, v1

    .line 10
    const/high16 v2, -0x40800000  # -1.0f

    .line 12
    cmpl-float v3, v1, v2

    .line 14
    if-eqz v3, :cond_81

    .line 16
    const/4 v3, 0x1

    .line 17
    aget v0, v0, v3

    .line 19
    cmpl-float v2, v0, v2

    .line 21
    if-nez v2, :cond_17

    .line 23
    goto :goto_81

    .line 24
    :cond_17
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    .line 26
    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_71

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 57
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    .line 59
    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getL()I

    .line 62
    move-result v3

    .line 63
    int-to-float v3, v3

    .line 64
    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getT()I

    .line 67
    move-result v4

    .line 68
    int-to-float v4, v4

    .line 69
    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    .line 72
    move-result v5

    .line 73
    add-float/2addr v5, v4

    .line 74
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 76
    const/4 v6, 0x4

    .line 77
    aget v4, v4, v6

    .line 79
    sub-float/2addr v5, v4

    .line 80
    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getR()I

    .line 83
    move-result v4

    .line 84
    int-to-float v4, v4

    .line 85
    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getB()I

    .line 88
    move-result v7

    .line 89
    int-to-float v7, v7

    .line 90
    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    .line 93
    move-result v1

    .line 94
    add-float/2addr v1, v7

    .line 95
    iget-object v7, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 97
    aget v6, v7, v6

    .line 99
    sub-float/2addr v1, v6

    .line 100
    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 103
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    .line 105
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    .line 107
    invoke-static {v1, v2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_26

    .line 113
    return-void

    .line 114
    :cond_71
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mSelectListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;

    .line 116
    if-eqz v0, :cond_81

    .line 118
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    .line 120
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mSelectListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;

    .line 125
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    .line 127
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;->onSelectChange(Ljava/util/List;)V

    .line 130
    :cond_81
    :goto_81
    return-void
.end method

.method public clear()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    const-string v0, "BaseRecyclerView"

    .line 9
    const-string v1, "clear"

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x5

    .line 15
    new-array v0, v0, [F

    .line 17
    fill-array-data v0, :array_1c

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 24
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 27
    :cond_1a
    return-void

    .line 28
    nop

    .line 29
    :array_1c
    .array-data 4
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        0x0
    .end array-data
.end method

.method public findChildViewUnder([FZ)V
    .registers 12

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x5

    .line 3
    if-ne v0, v1, :cond_c7

    .line 5
    const/4 v0, 0x0

    .line 6
    aget v1, p1, v0

    .line 8
    const/high16 v2, -0x40800000  # -1.0f

    .line 10
    cmpl-float v1, v1, v2

    .line 12
    if-eqz v1, :cond_c7

    .line 14
    const/4 v1, 0x1

    .line 15
    aget v3, p1, v1

    .line 17
    cmpl-float v3, v3, v2

    .line 19
    if-eqz v3, :cond_c7

    .line 21
    const/4 v3, 0x2

    .line 22
    aget v4, p1, v3

    .line 24
    cmpl-float v4, v4, v2

    .line 26
    if-eqz v4, :cond_c7

    .line 28
    const/4 v4, 0x3

    .line 29
    aget v5, p1, v4

    .line 31
    cmpl-float v2, v5, v2

    .line 33
    if-nez v2, :cond_24

    .line 35
    goto/16 :goto_c7

    .line 37
    :cond_24
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    .line 39
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 42
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    .line 44
    aget v5, p1, v0

    .line 46
    aget v6, p1, v3

    .line 48
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 51
    move-result v5

    .line 52
    aget v6, p1, v1

    .line 54
    aget v7, p1, v4

    .line 56
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    .line 59
    move-result v6

    .line 60
    aget v0, p1, v0

    .line 62
    aget v3, p1, v3

    .line 64
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    .line 67
    move-result v0

    .line 68
    aget v1, p1, v1

    .line 70
    aget v3, p1, v4

    .line 72
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 75
    move-result v1

    .line 76
    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 81
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object v0

    .line 89
    :cond_58
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_b2

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 107
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    .line 109
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getL()I

    .line 112
    move-result v4

    .line 113
    int-to-float v4, v4

    .line 114
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getT()I

    .line 117
    move-result v5

    .line 118
    int-to-float v5, v5

    .line 119
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    .line 122
    move-result v6

    .line 123
    add-float/2addr v6, v5

    .line 124
    const/4 v5, 0x4

    .line 125
    aget v7, p1, v5

    .line 127
    sub-float/2addr v6, v7

    .line 128
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getR()I

    .line 131
    move-result v7

    .line 132
    int-to-float v7, v7

    .line 133
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getB()I

    .line 136
    move-result v8

    .line 137
    int-to-float v8, v8

    .line 138
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    .line 141
    move-result v2

    .line 142
    add-float/2addr v2, v8

    .line 143
    aget v5, p1, v5

    .line 145
    sub-float/2addr v2, v5

    .line 146
    invoke-virtual {v3, v4, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 149
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    .line 151
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    .line 153
    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_58

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Ljava/lang/Integer;

    .line 165
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 168
    move-result v1

    .line 169
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    move-result-object v1

    .line 175
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    goto :goto_58

    .line 179
    :cond_b2
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mSelectListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;

    .line 181
    if-eqz p1, :cond_c7

    .line 183
    if-eqz p2, :cond_c7

    .line 185
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    .line 187
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 190
    move-result p1

    .line 191
    if-nez p1, :cond_c7

    .line 193
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mSelectListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;

    .line 195
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    .line 197
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;->onSelectChange(Ljava/util/List;)V

    .line 200
    :cond_c7
    :goto_c7
    return-void
.end method

.method public isActionMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mIsActionMode:Z

    .line 3
    return v0
.end method

.method public isPendingActionModeAnim()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mIsPendingAnim:Z

    .line 3
    return v0
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    .line 13
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v1

    .line 24
    const v2, 0x7f060032

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v1

    .line 40
    const v2, 0x7f060105

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    .line 52
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    .line 54
    const/high16 v2, 0x40000000  # 2.0f

    .line 56
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 59
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    .line 61
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object v1

    .line 72
    const v3, 0x7f060102

    .line 75
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    .line 84
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    .line 86
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 89
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->detector:Landroid/view/GestureDetector;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 11
    if-eq v0, v1, :cond_13

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->detector:Landroid/view/GestureDetector;

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public onScrolled(II)V
    .registers 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onScrolled: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BaseRecyclerView"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_20

    .line 29
    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 32
    return-void

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 35
    const/4 v2, 0x4

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v0, :cond_37

    .line 39
    aget v4, v0, v2

    .line 41
    int-to-float v5, p2

    .line 42
    add-float/2addr v4, v5

    .line 43
    aput v4, v0, v2

    .line 45
    aget v4, v0, v3

    .line 47
    sub-float/2addr v4, v5

    .line 48
    aput v4, v0, v3

    .line 50
    const/4 v4, 0x3

    .line 51
    aget v6, v0, v4

    .line 53
    add-float/2addr v6, v5

    .line 54
    aput v6, v0, v4

    .line 56
    :cond_37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 59
    move-result v0

    .line 60
    const/4 v4, 0x0

    .line 61
    move v5, v4

    .line 62
    :goto_3d
    if-ge v5, v0, :cond_9f

    .line 64
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 71
    move-result v7

    .line 72
    const/4 v8, -0x1

    .line 73
    if-eq v7, v8, :cond_9c

    .line 75
    iget-object v8, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 77
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 84
    move-result v8

    .line 85
    if-nez v8, :cond_9c

    .line 87
    iget-object v8, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v7

    .line 93
    new-instance v9, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 95
    invoke-direct {v9}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;-><init>()V

    .line 98
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 101
    move-result v10

    .line 102
    invoke-virtual {v9, v10}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->l(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 105
    move-result-object v9

    .line 106
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 109
    move-result v10

    .line 110
    invoke-virtual {v9, v10}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->r(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 117
    move-result v10

    .line 118
    invoke-virtual {v9, v10}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->t(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 121
    move-result-object v9

    .line 122
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 125
    move-result v10

    .line 126
    invoke-virtual {v9, v10}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->b(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 129
    move-result-object v9

    .line 130
    iget-object v10, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 132
    aget v10, v10, v2

    .line 134
    invoke-virtual {v9, v10}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->y(F)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 137
    move-result-object v9

    .line 138
    instance-of v10, v6, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    .line 140
    if-nez v10, :cond_94

    .line 142
    instance-of v6, v6, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    .line 144
    if-eqz v6, :cond_92

    .line 146
    goto :goto_94

    .line 147
    :cond_92
    move v6, v4

    .line 148
    goto :goto_95

    .line 149
    :cond_94
    :goto_94
    move v6, v3

    .line 150
    :goto_95
    invoke-virtual {v9, v6}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->setGroupHeader(Z)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_9c
    add-int/lit8 v5, v5, 0x1

    .line 159
    goto :goto_3d

    .line 160
    :cond_9f
    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_b4

    .line 166
    instance-of v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 168
    if-eqz v0, :cond_b4

    .line 170
    const-string v0, "onScrolled: onLoadMore"

    .line 172
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object v0, p0

    .line 176
    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 178
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMore()V

    .line 181
    :cond_b4
    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 184
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManagerImpl;->get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManagerImpl;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/xiaomi/mirror/MirrorManagerImpl;->isEventFromMirror(Landroid/view/InputEvent;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_17

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_17

    .line 21
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->handleBoxChoose(Landroid/view/MotionEvent;)V

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x2

    .line 29
    if-ne v0, v1, :cond_34

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManagerImpl;->get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManagerImpl;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/xiaomi/mirror/MirrorManagerImpl;->isEventFromMirror(Landroid/view/InputEvent;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_34

    .line 45
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_34

    .line 51
    const/4 p1, 0x0

    .line 52
    return p1

    .line 53
    :cond_34
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    move-result p1

    .line 57
    return p1
.end method

.method public refreshPosInfoList()V
    .registers 10

    .line 1
    const-string v0, "BaseRecyclerView"

    .line 3
    const-string v1, "refreshPosInfoList"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_12
    if-ge v2, v0, :cond_75

    .line 21
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 28
    move-result v4

    .line 29
    const/4 v5, -0x1

    .line 30
    if-eq v4, v5, :cond_72

    .line 32
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_72

    .line 44
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v4

    .line 50
    new-instance v6, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 52
    invoke-direct {v6}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;-><init>()V

    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 58
    move-result v7

    .line 59
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->l(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 66
    move-result v7

    .line 67
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->r(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 74
    move-result v7

    .line 75
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->t(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 82
    move-result v7

    .line 83
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->b(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 86
    move-result-object v6

    .line 87
    iget-object v7, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 89
    const/4 v8, 0x4

    .line 90
    aget v7, v7, v8

    .line 92
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->y(F)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 95
    move-result-object v6

    .line 96
    instance-of v7, v3, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    .line 98
    if-nez v7, :cond_6a

    .line 100
    instance-of v3, v3, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    .line 102
    if-eqz v3, :cond_68

    .line 104
    goto :goto_6a

    .line 105
    :cond_68
    move v3, v1

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    :goto_6a
    const/4 v3, 0x1

    .line 108
    :goto_6b
    invoke-virtual {v6, v3}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->setGroupHeader(Z)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_72
    add-int/lit8 v2, v2, 0x1

    .line 117
    goto :goto_12

    .line 118
    :cond_75
    return-void
.end method

.method public setActionMode(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mIsActionMode:Z

    .line 3
    return-void
.end method

.method public setIsPendingActionModeAnim(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mIsPendingAnim:Z

    .line 3
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_16

    .line 10
    const/4 p1, 0x5

    .line 11
    new-array p1, p1, [F

    .line 13
    fill-array-data p1, :array_18

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    .line 20
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 23
    :cond_16
    return-void

    .line 24
    nop

    .line 25
    :array_18
    .array-data 4
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        0x0
    .end array-data
.end method

.method public setOnRightClickListener(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mRightClickListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;

    .line 3
    new-instance p1, Landroid/view/GestureDetector;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$1;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 14
    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 17
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->detector:Landroid/view/GestureDetector;

    .line 19
    return-void
.end method

.method public setOnSelectListener(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mSelectListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;

    .line 3
    return-void
.end method

.method public startAutoScroll()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->initScroller(Landroid/content/Context;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    .line 10
    iget-object v0, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    .line 12
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_31

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollRun:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    .line 25
    const/4 v2, 0x0

    .line 26
    iget-object v1, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    .line 28
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    const/16 v5, 0x1388

    .line 35
    const v6, 0x186a0

    .line 38
    iget-object v1, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    .line 40
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollRun:Ljava/lang/Runnable;

    .line 45
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 47
    invoke-static {p0, v0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 50
    :cond_31
    return-void
.end method

.method public stopAutoScroll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    iget-object v0, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    .line 7
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_18

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollRun:Ljava/lang/Runnable;

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    .line 20
    iget-object v0, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    .line 22
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 25
    :cond_18
    return-void
.end method
