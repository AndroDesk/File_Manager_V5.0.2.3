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
.field private static final MAX_SCROLL_DISTANCE:I

.field private static final SCROLL_FECTOR:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->MAX_SCROLL_DISTANCE:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->SCROLL_FECTOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    const/16 p1, -0x14

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mTopBound:I

    const/4 p1, 0x5

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mCanDrag:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    new-instance p2, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollRun:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    move-result p2

    if-eqz p2, :cond_5f

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x3f800000  # 1.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    :cond_5f
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mRightClickListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Landroidx/core/widget/j;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollDistance:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollBy(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method private canDrag()Z
    .registers 2

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

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "BaseRecyclerView"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_67

    if-eq v0, v5, :cond_3a

    if-eq v0, v3, :cond_14

    if-eq v0, v2, :cond_3a

    goto/16 :goto_a2

    :cond_14
    const-string v0, "handleBoxChoose: action move"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    invoke-virtual {p0, v0, v5}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->findChildViewUnder([FZ)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->processAutoScroll(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_a2

    :cond_3a
    const-string v0, "handleBoxChoose: action up"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    if-nez v0, :cond_44

    return-void

    :cond_44
    iput-boolean v4, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v0, v2

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    invoke-virtual {p0, p1, v4}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->findChildViewUnder([FZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->stopAutoScroll()V

    goto :goto_a2

    :cond_67
    const-string v0, "handleBoxChoose: action down"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->isEventInSelectedRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_75

    iput-boolean v4, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    return-void

    :cond_75
    iput-boolean v5, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mNeedShowBoxChoose:Z

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    const/high16 v1, -0x40800000  # -1.0f

    aput v1, v0, v2

    aput v1, v0, v3

    aput v1, v0, v5

    aput v1, v0, v4

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mBottomBound:I

    if-nez v0, :cond_8f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mBottomBound:I

    :cond_8f
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v0, v5

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->checkIfClearSelected()V

    :goto_a2
    return-void
.end method

.method private initScroller(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    if-nez v0, :cond_10

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v1, Landroidx/core/widget/j;

    invoke-direct {v1, p1, v0}, Landroidx/core/widget/j;-><init>(Landroid/content/Context;Landroid/view/animation/LinearInterpolator;)V

    iput-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    :cond_10
    return-void
.end method

.method private isEventInSelectedRegion(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->isGroupHeader()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getL()I

    move-result v3

    if-lt v0, v3, :cond_1c

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getR()I

    move-result v3

    if-gt v0, v3, :cond_1c

    int-to-float v3, p1

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getT()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    move-result v5

    add-float/2addr v5, v4

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    const/4 v6, 0x4

    aget v4, v4, v6

    sub-float/2addr v5, v4

    cmpl-float v4, v3, v5

    if-ltz v4, :cond_1c

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getB()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    move-result v2

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    aget v4, v4, v6

    sub-float/2addr v2, v4

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_6a
    const/4 p1, 0x0

    return p1
.end method

.method private processAutoScroll(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mTopBound:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1a

    sub-int/2addr v0, p1

    neg-int p1, v0

    div-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollDistance:I

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inTopSpot:Z

    if-nez p1, :cond_35

    iput-boolean v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inTopSpot:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->startAutoScroll()V

    goto :goto_35

    :cond_1a
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mBottomBound:I

    if-le p1, v0, :cond_2d

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollDistance:I

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inBottomSpot:Z

    if-nez p1, :cond_35

    iput-boolean v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inBottomSpot:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->startAutoScroll()V

    goto :goto_35

    :cond_2d
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inBottomSpot:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->inTopSpot:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->stopAutoScroll()V

    :cond_35
    :goto_35
    return-void
.end method

.method private scrollBy(I)V
    .registers 3

    if-lez p1, :cond_9

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_f

    :cond_9
    const/16 v0, -0x10

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->findChildViewUnder([FZ)V

    return-void
.end method


# virtual methods
.method public canDrag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mCanDrag:Z

    return-void
.end method

.method public checkIfClearSelected()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_81

    const/4 v1, 0x0

    aget v1, v0, v1

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_81

    const/4 v3, 0x1

    aget v0, v0, v3

    cmpl-float v2, v0, v2

    if-nez v2, :cond_17

    goto :goto_81

    :cond_17
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getL()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getT()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    move-result v5

    add-float/2addr v5, v4

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    const/4 v6, 0x4

    aget v4, v4, v6

    sub-float/2addr v5, v4

    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getR()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getB()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    move-result v1

    add-float/2addr v1, v7

    iget-object v7, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    aget v6, v7, v6

    sub-float/2addr v1, v6

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    invoke-static {v1, v2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_26

    return-void

    :cond_71
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mSelectListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mSelectListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;->onSelectChange(Ljava/util/List;)V

    :cond_81
    :goto_81
    return-void
.end method

.method public clear()V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "BaseRecyclerView"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1a
    return-void

    nop

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

    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c7

    const/4 v0, 0x0

    aget v1, p1, v0

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_c7

    const/4 v1, 0x1

    aget v3, p1, v1

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_c7

    const/4 v3, 0x2

    aget v4, p1, v3

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_c7

    const/4 v4, 0x3

    aget v5, p1, v4

    cmpl-float v2, v5, v2

    if-nez v2, :cond_24

    goto/16 :goto_c7

    :cond_24
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    aget v5, p1, v0

    aget v6, p1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aget v6, p1, v1

    aget v7, p1, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aget v0, p1, v0

    aget v3, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aget v1, p1, v1

    aget v3, p1, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_58
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getL()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getT()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    move-result v6

    add-float/2addr v6, v5

    const/4 v5, 0x4

    aget v7, p1, v5

    sub-float/2addr v6, v7

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getR()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getB()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->getY()F

    move-result v2

    add-float/2addr v2, v8

    aget v5, p1, v5

    sub-float/2addr v2, v5

    invoke-virtual {v3, v4, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->temp_rectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_b2
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mSelectListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;

    if-eqz p1, :cond_c7

    if-eqz p2, :cond_c7

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c7

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mSelectListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->pos:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;->onSelectChange(Ljava/util/List;)V

    :cond_c7
    :goto_c7
    return-void
.end method

.method public isActionMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mIsActionMode:Z

    return v0
.end method

.method public isPendingActionModeAnim()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mIsPendingAnim:Z

    return v0
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->onDrawForeground(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f2da4

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f2c93

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f2c94

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->detector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_13
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScrolled(II)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrolled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseRecyclerView"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/widget/RecyclerView;->onScrolled(II)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_37

    aget v4, v0, v2

    int-to-float v5, p2

    add-float/2addr v4, v5

    aput v4, v0, v2

    aget v4, v0, v3

    sub-float/2addr v4, v5

    aput v4, v0, v3

    const/4 v4, 0x3

    aget v6, v0, v4

    add-float/2addr v6, v5

    aput v6, v0, v4

    :cond_37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    move v5, v4

    :goto_3d
    if-ge v5, v0, :cond_9f

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9c

    iget-object v8, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9c

    iget-object v8, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    invoke-direct {v9}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;-><init>()V

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->l(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v9

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->r(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v9

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->t(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v9

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->b(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v9

    iget-object v10, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->y(F)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v9

    instance-of v10, v6, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    if-nez v10, :cond_94

    instance-of v6, v6, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    if-eqz v6, :cond_92

    goto :goto_94

    :cond_92
    move v6, v4

    goto :goto_95

    :cond_94
    :goto_94
    move v6, v3

    :goto_95
    invoke-virtual {v9, v6}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->setGroupHeader(Z)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_9f
    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_b4

    instance-of v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v0, :cond_b4

    const-string v0, "onScrolled: onLoadMore"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMore()V

    :cond_b4
    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/widget/RecyclerView;->onScrolled(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManagerImpl;->get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mirror/MirrorManagerImpl;->isEventFromMirror(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->handleBoxChoose(Landroid/view/MotionEvent;)V

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManagerImpl;->get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mirror/MirrorManagerImpl;->isEventFromMirror(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 p1, 0x0

    return p1

    :cond_34
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public refreshPosInfoList()V
    .registers 10

    const-string v0, "BaseRecyclerView"

    const-string v1, "refreshPosInfoList"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_75

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_72

    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    invoke-direct {v6}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;-><init>()V

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->l(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->r(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->t(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->b(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->y(F)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v6

    instance-of v7, v3, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    if-nez v7, :cond_6a

    instance-of v3, v3, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    if-eqz v3, :cond_68

    goto :goto_6a

    :cond_68
    move v3, v1

    goto :goto_6b

    :cond_6a
    :goto_6a
    const/4 v3, 0x1

    :goto_6b
    invoke-virtual {v6, v3}, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->setGroupHeader(Z)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_75
    return-void
.end method

.method public setActionMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mIsActionMode:Z

    return-void
.end method

.method public setIsPendingActionModeAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mIsPendingAnim:Z

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x5

    new-array p1, p1, [F

    fill-array-data p1, :array_18

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->point:[F

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->view_list:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_16
    return-void

    nop

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

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mRightClickListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->detector:Landroid/view/GestureDetector;

    return-void
.end method

.method public setOnSelectListener(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->mSelectListener:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;

    return-void
.end method

.method public startAutoScroll()V
    .registers 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->initScroller(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    iget-object v0, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollRun:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    const/4 v2, 0x0

    iget-object v1, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x1388

    const v6, 0x186a0

    iget-object v1, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollRun:Ljava/lang/Runnable;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_31
    return-void
.end method

.method public stopAutoScroll()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    if-eqz v0, :cond_18

    iget-object v0, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scrollRun:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->scroller:Landroidx/core/widget/j;

    iget-object v0, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_18
    return-void
.end method
