.class public Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;
.super Lmiuix/nestedheader/widget/NestedScrollingLayout;
.source "LegacyNestedHeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;
    }
.end annotation


# static fields
.field public static final SCROLL_COMPRESS_TYPE:I

.field private static final TAG:Ljava/lang/String; = "NestedHeaderLayout"


# instance fields
.field private isTouch:Z

.field private mAcceptHeaderRootViewAlpha:Z

.field private mAcceptTriggerRootViewAlpha:Z

.field private mAutoAnim:Z

.field private mHeaderBottomMargin:I

.field private mHeaderContentBottomMargin:I

.field private mHeaderContentId:I

.field private mHeaderContentMinHeight:F

.field private mHeaderContentView:Landroid/view/View;

.field private mHeaderInitTop:I

.field private mHeaderMeasuredHeight:I

.field private mHeaderTopMargin:I

.field private mHeaderTotalHeight:I

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewId:I

.field private mLastScrollingProgress:I

.field private mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

.field private mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

.field private mRangeOffset:F

.field private mTriggerBottomMargin:I

.field private mTriggerContentBottomMargin:I

.field private mTriggerContentId:I

.field private mTriggerContentMinHeight:F

.field private mTriggerContentView:Landroid/view/View;

.field private mTriggerMeasuredHeight:I

.field private mTriggerTopMargin:I

.field private mTriggerView:Landroid/view/View;

.field private mTriggerViewId:I

.field private mValueTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->SCROLL_COMPRESS_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderBottomMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTopMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderInitTop:I

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentBottomMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentBottomMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderMeasuredHeight:I

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerMeasuredHeight:I

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mLastScrollingProgress:I

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->isTouch:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAutoAnim:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mValueTag:Ljava/lang/String;

    new-instance p3, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;

    invoke-direct {p3, p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;-><init>(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V

    iput-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    sget-object p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerView:I

    sget v0, Lmiuix/nestedheader/R$id;->header_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderViewId:I

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerView:I

    sget v0, Lmiuix/nestedheader/R$id;->trigger_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerViewId:I

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentId:I

    sget v0, Lmiuix/nestedheader/R$id;->header_content_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentId:I

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentId:I

    sget v0, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentId:I

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/nestedheader/R$dimen;->miuix_nested_header_layout_content_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentMinHeight:F

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentMinHeight:F

    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_rangeOffset:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mRangeOffset:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->addOnScrollListener(Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateTouch(Z)V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateTag()V

    return-void
.end method

.method public static synthetic access$200(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAutoAnim:Z

    return p0
.end method

.method public static synthetic access$300(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateAdsorption()V

    return-void
.end method

.method public static synthetic access$400(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->isScrolling(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    return-void
.end method

.method private applyContentAlpha(Ljava/util/List;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;F)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method private autoAdsorption(I)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mValueTag:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v6

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v6, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$2;

    invoke-direct {v6, p0, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$2;-><init>(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Ljava/lang/String;)V

    aput-object v6, v5, v1

    invoke-virtual {p1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private checkSendHeaderChangeListener(IIZ)V
    .registers 5

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p3, :cond_3c

    if-nez p2, :cond_17

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-eqz p3, :cond_17

    iget-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onHeaderOpened(Landroid/view/View;)V

    goto :goto_2a

    :cond_17
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result p3

    if-ne p2, p3, :cond_2a

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p3

    if-eqz p3, :cond_2a

    iget-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onTriggerOpened(Landroid/view/View;)V

    :cond_2a
    :goto_2a
    if-gez p1, :cond_90

    if-lez p2, :cond_90

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p1

    if-eqz p1, :cond_90

    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    iget-object p2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {p1, p2}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onHeaderOpened(Landroid/view/View;)V

    goto :goto_90

    :cond_3c
    if-nez p2, :cond_4c

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p3

    if-eqz p3, :cond_4c

    iget-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    goto :goto_73

    :cond_4c
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result p3

    if-ne p2, p3, :cond_60

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-eqz p3, :cond_60

    iget-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onHeaderClosed(Landroid/view/View;)V

    goto :goto_73

    :cond_60
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result p3

    if-ne p2, p3, :cond_73

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-nez p3, :cond_73

    iget-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    :cond_73
    :goto_73
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-eqz p3, :cond_7b

    const/4 p3, 0x0

    goto :goto_7f

    :cond_7b
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result p3

    :goto_7f
    if-le p1, p3, :cond_90

    if-ge p2, p3, :cond_90

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p1

    if-eqz p1, :cond_90

    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    iget-object p2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-interface {p1, p2}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    :cond_90
    :goto_90
    return-void
.end method

.method private isScrolling(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->isTouch:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mValueTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getAcceptedNestedFlingInConsumedProgress()Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private makeContentViewList(Landroid/view/View;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_26

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_22

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    :goto_12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_25

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    return-object v0

    :cond_26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private makeHeaderContentViewList(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentId:I

    sget v1, Lmiuix/nestedheader/R$id;->header_content_view:I

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private makeTriggerContentViewList(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentId:I

    sget v1, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    add-int/2addr v0, p4

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2, v0}, Landroid/view/View;->layout(IIII)V

    if-eq p1, p2, :cond_3d

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    if-eqz p5, :cond_2d

    div-int/lit8 p4, p4, 0x2

    :cond_2d
    add-int/2addr v0, p4

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p5

    invoke-virtual {p2, p4, p1, p5, p3}, Landroid/view/View;->layout(IIII)V

    :cond_3d
    return-void
.end method

.method private syncScrollingProgress(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method

.method private updateAdsorption()V
    .registers 5

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    if-ge v0, v1, :cond_87

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v1

    if-le v0, v1, :cond_87

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000  # 0.5f

    if-le v0, v1, :cond_3b

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3b

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v2

    goto :goto_84

    :cond_3b
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_51

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    if-gez v0, :cond_51

    goto :goto_84

    :cond_51
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    if-lez v0, :cond_67

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_67

    goto :goto_84

    :cond_67
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_84

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    if-ge v0, v1, :cond_84

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v2

    :cond_84
    :goto_84
    invoke-direct {p0, v2}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    :cond_87
    return-void
.end method

.method private updateScrollingRange(ZZZ)V
    .registers 14

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_46

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v4, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderBottomMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTopMargin:I

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderMeasuredHeight:I

    iget v4, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTopMargin:I

    add-int/2addr v4, v0

    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderBottomMargin:I

    add-int/2addr v4, v0

    iput v4, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentBottomMargin:I

    :cond_3c
    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mRangeOffset:F

    iget v4, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v3

    move v4, v1

    goto :goto_48

    :cond_46
    move v0, v3

    move v4, v0

    :goto_48
    iget-object v5, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v5, :cond_8a

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_8a

    iget-object v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v5, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    iget-object v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerMeasuredHeight:I

    iget-object v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-eqz v2, :cond_78

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentBottomMargin:I

    :cond_78
    iget v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerMeasuredHeight:I

    iget v5, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    add-int/2addr v2, v5

    iget v5, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    if-nez v4, :cond_87

    neg-int v0, v2

    move v5, v1

    move v2, v3

    goto :goto_88

    :cond_87
    move v5, v1

    :goto_88
    move v1, v0

    goto :goto_8d

    :cond_8a
    move v1, v0

    move v2, v3

    move v5, v2

    :goto_8d
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, p1

    move v7, p2

    move v9, p3

    invoke-virtual/range {v0 .. v9}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->setScrollingRange(IIZZZZZZZ)V

    return-void
.end method

.method private updateTag()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mValueTag:Ljava/lang/String;

    return-void
.end method

.method private updateTouch(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->isTouch:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateTag()V

    :cond_7
    return-void
.end method


# virtual methods
.method public getHeaderProgressFrom()I
    .registers 3

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderViewVisible()Z
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public getScrollableView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    return-object v0
.end method

.method public getTriggerViewVisible()Z
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public isAcceptHeaderRootViewAlpha()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    return v0
.end method

.method public isAcceptTriggerRootViewAlpha()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    return v0
.end method

.method public isAutoAnim()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAutoAnim:Z

    return v0
.end method

.method public isHeaderOpen()Z
    .registers 2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isTriggerOpen()Z
    .registers 3

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    if-ge v0, v1, :cond_22

    :cond_16
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    if-ltz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onFinishInflate()V

    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderViewId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerViewId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    iget-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_22

    if-eqz v0, :cond_1a

    goto :goto_22

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The headerView or triggerView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_22
    const v0, 0x102001e

    if-eqz v1, :cond_39

    iget v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-nez v1, :cond_39

    iget-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    :cond_39
    iget-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v1, :cond_4f

    iget v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-nez v1, :cond_4f

    iget-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    :cond_4f
    return-void
.end method

.method public onScrollingProgressUpdated(I)V
    .registers 18

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-super/range {p0 .. p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/high16 v10, 0x3f800000  # 1.0f

    const/4 v11, 0x0

    if-eqz v0, :cond_c5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_c5

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v12, v7, v0

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    iget-object v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v9, :cond_4a

    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    iget v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    add-int/2addr v1, v2

    move v13, v0

    move v3, v1

    move v14, v11

    goto :goto_56

    :cond_4a
    iget v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    iget v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    add-int/2addr v2, v3

    iget v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerMeasuredHeight:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    move v13, v0

    move v3, v1

    move v14, v2

    :goto_56
    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-nez v0, :cond_5c

    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    :cond_5c
    move-object v15, v0

    iget-object v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    sub-int v0, v13, v0

    iget v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    sub-int/2addr v0, v2

    iget v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerMeasuredHeight:I

    sub-int v4, v0, v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v2, v15

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V

    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-nez v0, :cond_7c

    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    sub-int/2addr v13, v0

    int-to-float v0, v13

    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentMinHeight:F

    goto :goto_82

    :cond_7c
    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentBottomMargin:I

    sub-int/2addr v13, v0

    int-to-float v0, v13

    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentMinHeight:F

    :goto_82
    div-float/2addr v0, v1

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-boolean v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    if-eqz v2, :cond_95

    iget-object v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_bc

    :cond_95
    iget-object v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_bc

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_bc

    move v2, v11

    :goto_a4
    iget-object v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_bc

    iget-object v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    :cond_bc
    :goto_bc
    invoke-direct {v6, v15}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->makeTriggerContentViewList(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    sub-float/2addr v0, v10

    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    goto :goto_c7

    :cond_c5
    move v12, v7

    move v14, v11

    :goto_c7
    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_13f

    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderInitTop:I

    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTopMargin:I

    add-int v3, v0, v1

    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-nez v0, :cond_dd

    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    :cond_dd
    move-object v9, v0

    iget-object v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v2, v9

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V

    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-nez v0, :cond_f3

    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderBottomMargin:I

    sub-int/2addr v12, v0

    int-to-float v0, v12

    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentMinHeight:F

    goto :goto_f9

    :cond_f3
    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentBottomMargin:I

    sub-int/2addr v12, v0

    int-to-float v0, v12

    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentMinHeight:F

    :goto_f9
    add-float/2addr v0, v1

    div-float/2addr v0, v1

    add-float v1, v0, v10

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-boolean v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    if-eqz v2, :cond_10f

    iget-object v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_136

    :cond_10f
    iget-object v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_136

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_136

    move v2, v11

    :goto_11e
    iget-object v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_136

    iget-object v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11e

    :cond_136
    :goto_136
    invoke-direct {v6, v9}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->makeHeaderContentViewList(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    iget v14, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    :cond_13f
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    add-int v1, v7, v14

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mLastScrollingProgress:I

    sub-int v1, v7, v0

    if-lez v1, :cond_156

    const/4 v1, 0x1

    invoke-direct {v6, v0, v7, v1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    goto :goto_15d

    :cond_156
    sub-int v1, v7, v0

    if-gez v1, :cond_15d

    invoke-direct {v6, v0, v7, v11}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    :cond_15d
    :goto_15d
    iput v7, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mLastScrollingProgress:I

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->isHeaderOpen()Z

    move-result v0

    invoke-virtual {v6, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateHeaderOpen(Z)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderInitTop:I

    :cond_d
    return-void
.end method

.method public onUpdateScrollingRangeOnLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onUpdateScrollingRangeOnLayout(ZIIII)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateScrollingRange(ZZZ)V

    return-void
.end method

.method public removeNestedHeaderChangedListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    return-void
.end method

.method public setAcceptTriggerRootViewAlpha(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    return-void
.end method

.method public setAutoAllClose(Z)V
    .registers 3

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    if-le p1, v0, :cond_14

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_1b

    :cond_14
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    :goto_1b
    return-void
.end method

.method public setAutoAllOpen(Z)V
    .registers 3

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v0

    if-ge p1, v0, :cond_14

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_1b

    :cond_14
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    :goto_1b
    return-void
.end method

.method public setAutoAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAutoAnim:Z

    return-void
.end method

.method public setAutoHeaderClose(Z)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v1

    if-le v0, v1, :cond_27

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_27

    :cond_1a
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_27
    :goto_27
    return-void
.end method

.method public setAutoHeaderOpen(Z)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    if-gez v0, :cond_16

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_16

    :cond_13
    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method public setAutoTriggerClose(Z)V
    .registers 5

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_31

    :cond_15
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v2

    if-le v0, v2, :cond_30

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    if-eq v0, v1, :cond_39

    if-eqz p1, :cond_39

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_3e

    :cond_39
    if-eq v0, v1, :cond_3e

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public setAutoTriggerOpen(Z)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    if-ge v0, v1, :cond_21

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_21

    :cond_1a
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_21
    :goto_21
    return-void
.end method

.method public setHeaderRootViewAcceptAlpha(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    return-void
.end method

.method public setHeaderViewVisible(Z)V
    .registers 5

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v1

    goto :goto_b

    :cond_9
    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1, v1, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateScrollingRange(ZZZ)V

    :cond_11
    return-void
.end method

.method public setNestedHeaderChangedListener(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    return-void
.end method

.method public setTriggerViewVisible(Z)V
    .registers 5

    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v1

    goto :goto_b

    :cond_9
    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1, p1, v1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateScrollingRange(ZZZ)V

    :cond_11
    return-void
.end method
