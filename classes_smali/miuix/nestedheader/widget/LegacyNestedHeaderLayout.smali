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
.field public static final SCROLL_COMPRESS_TYPE:I = 0x1

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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderBottomMargin:I

    .line 5
    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTopMargin:I

    .line 6
    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    .line 7
    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    .line 8
    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderInitTop:I

    .line 9
    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentBottomMargin:I

    .line 10
    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentBottomMargin:I

    .line 11
    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    .line 12
    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderMeasuredHeight:I

    .line 13
    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerMeasuredHeight:I

    .line 14
    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mLastScrollingProgress:I

    .line 15
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->isTouch:Z

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAutoAnim:Z

    .line 17
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    .line 18
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mValueTag:Ljava/lang/String;

    .line 20
    new-instance p3, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;

    invoke-direct {p3, p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;-><init>(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V

    iput-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    .line 21
    sget-object p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 22
    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerView:I

    sget v0, Lmiuix/nestedheader/R$id;->header_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderViewId:I

    .line 23
    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerView:I

    sget v0, Lmiuix/nestedheader/R$id;->trigger_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerViewId:I

    .line 24
    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentId:I

    sget v0, Lmiuix/nestedheader/R$id;->header_content_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentId:I

    .line 25
    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentId:I

    sget v0, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentId:I

    .line 26
    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentMinHeight:I

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/nestedheader/R$dimen;->miuix_nested_header_layout_content_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 28
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentMinHeight:F

    .line 29
    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentMinHeight:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 31
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentMinHeight:F

    .line 32
    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_rangeOffset:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mRangeOffset:F

    .line 33
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->addOnScrollListener(Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateTouch(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateTag()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAutoAnim:Z

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateAdsorption()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->isScrolling(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$500(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    .line 4
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

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const/4 v0, 0x0

    .line 5
    const/high16 v1, 0x3f800000  # 1.0f

    .line 7
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    .line 10
    move-result p2

    .line 11
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    .line 14
    move-result p2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_22

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/View;

    .line 31
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    return-void
.end method

.method private autoAdsorption(I)V
    .registers 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mValueTag:Ljava/lang/String;

    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v2, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x2

    .line 19
    new-array v4, v3, [Ljava/lang/Object;

    .line 21
    aput-object v0, v4, v1

    .line 23
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 26
    move-result v5

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v5

    .line 31
    const/4 v6, 0x1

    .line 32
    aput-object v5, v4, v6

    .line 34
    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 37
    move-result-object v2

    .line 38
    const/4 v4, 0x3

    .line 39
    new-array v4, v4, [Ljava/lang/Object;

    .line 41
    aput-object v0, v4, v1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p1

    .line 47
    aput-object p1, v4, v6

    .line 49
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 51
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 54
    new-array v5, v6, [Lmiuix/animation/listener/TransitionListener;

    .line 56
    new-instance v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$2;

    .line 58
    invoke-direct {v6, p0, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$2;-><init>(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Ljava/lang/String;)V

    .line 61
    aput-object v6, v5, v1

    .line 63
    invoke-virtual {p1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 66
    move-result-object p1

    .line 67
    aput-object p1, v4, v3

    .line 69
    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 72
    return-void
.end method

.method private checkSendHeaderChangeListener(IIZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz p3, :cond_3c

    .line 8
    if-nez p2, :cond_17

    .line 10
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_17

    .line 16
    iget-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    .line 18
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 20
    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onHeaderOpened(Landroid/view/View;)V

    .line 23
    goto :goto_2a

    .line 24
    :cond_17
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 27
    move-result p3

    .line 28
    if-ne p2, p3, :cond_2a

    .line 30
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_2a

    .line 36
    iget-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    .line 38
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 40
    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onTriggerOpened(Landroid/view/View;)V

    .line 43
    :cond_2a
    :goto_2a
    if-gez p1, :cond_90

    .line 45
    if-lez p2, :cond_90

    .line 47
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_90

    .line 53
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    .line 55
    iget-object p2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 57
    invoke-interface {p1, p2}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onHeaderOpened(Landroid/view/View;)V

    .line 60
    goto :goto_90

    .line 61
    :cond_3c
    if-nez p2, :cond_4c

    .line 63
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    .line 66
    move-result p3

    .line 67
    if-eqz p3, :cond_4c

    .line 69
    iget-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    .line 71
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 73
    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    .line 76
    goto :goto_73

    .line 77
    :cond_4c
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 80
    move-result p3

    .line 81
    if-ne p2, p3, :cond_60

    .line 83
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 86
    move-result p3

    .line 87
    if-eqz p3, :cond_60

    .line 89
    iget-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    .line 91
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 93
    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onHeaderClosed(Landroid/view/View;)V

    .line 96
    goto :goto_73

    .line 97
    :cond_60
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 100
    move-result p3

    .line 101
    if-ne p2, p3, :cond_73

    .line 103
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 106
    move-result p3

    .line 107
    if-nez p3, :cond_73

    .line 109
    iget-object p3, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    .line 111
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 113
    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    .line 116
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 119
    move-result p3

    .line 120
    if-eqz p3, :cond_7b

    .line 122
    const/4 p3, 0x0

    .line 123
    goto :goto_7f

    .line 124
    :cond_7b
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 127
    move-result p3

    .line 128
    :goto_7f
    if-le p1, p3, :cond_90

    .line 130
    if-ge p2, p3, :cond_90

    .line 132
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_90

    .line 138
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    .line 140
    iget-object p2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 142
    invoke-interface {p1, p2}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    .line 145
    :cond_90
    :goto_90
    return-void
.end method

.method private isScrolling(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->isTouch:Z

    .line 3
    if-nez v0, :cond_14

    .line 5
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mValueTag:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_14

    .line 13
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getAcceptedNestedFlingInConsumedProgress()Z

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
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

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    if-eqz p2, :cond_26

    .line 12
    instance-of p2, p1, Landroid/view/ViewGroup;

    .line 14
    if-eqz p2, :cond_22

    .line 16
    check-cast p1, Landroid/view/ViewGroup;

    .line 18
    const/4 p2, 0x0

    .line 19
    :goto_12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result v1

    .line 23
    if-ge p2, v1, :cond_25

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 p2, p2, 0x1

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_25
    return-object v0

    .line 39
    :cond_26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
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

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentId:I

    .line 3
    sget v1, Lmiuix/nestedheader/R$id;->header_content_view:I

    .line 5
    if-eq v0, v1, :cond_d

    .line 7
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
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

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentId:I

    .line 3
    sget v1, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    .line 5
    if-eq v0, v1, :cond_d

    .line 7
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method private relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p3

    .line 6
    add-int/2addr v0, p4

    .line 7
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {p1, v1, p3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 22
    if-eq p1, p2, :cond_3d

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 27
    move-result p1

    .line 28
    const/4 p3, 0x0

    .line 29
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result p1

    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 36
    move-result p3

    .line 37
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    move-result v0

    .line 41
    add-int/2addr v0, p1

    .line 42
    if-eqz p5, :cond_2d

    .line 44
    div-int/lit8 p4, p4, 0x2

    .line 46
    :cond_2d
    add-int/2addr v0, p4

    .line 47
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 50
    move-result p3

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 54
    move-result p4

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 58
    move-result p5

    .line 59
    invoke-virtual {p2, p4, p1, p5, p3}, Landroid/view/View;->layout(IIII)V

    .line 62
    :cond_3d
    return-void
.end method

.method private syncScrollingProgress(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->onScrollingProgressUpdated(I)V

    .line 7
    return-void
.end method

.method private updateAdsorption()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_87

    .line 7
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_87

    .line 17
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 24
    move-result v1

    .line 25
    if-le v0, v1, :cond_87

    .line 27
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    const/high16 v3, 0x3f000000  # 0.5f

    .line 38
    if-le v0, v1, :cond_3b

    .line 40
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 43
    move-result v0

    .line 44
    int-to-float v0, v0

    .line 45
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 48
    move-result v1

    .line 49
    int-to-float v1, v1

    .line 50
    mul-float/2addr v1, v3

    .line 51
    cmpg-float v0, v0, v1

    .line 53
    if-gez v0, :cond_3b

    .line 55
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 58
    move-result v2

    .line 59
    goto :goto_84

    .line 60
    :cond_3b
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 63
    move-result v0

    .line 64
    int-to-float v0, v0

    .line 65
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 68
    move-result v1

    .line 69
    int-to-float v1, v1

    .line 70
    mul-float/2addr v1, v3

    .line 71
    cmpl-float v0, v0, v1

    .line 73
    if-ltz v0, :cond_51

    .line 75
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 78
    move-result v0

    .line 79
    if-gez v0, :cond_51

    .line 81
    goto :goto_84

    .line 82
    :cond_51
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 85
    move-result v0

    .line 86
    if-lez v0, :cond_67

    .line 88
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 91
    move-result v0

    .line 92
    int-to-float v0, v0

    .line 93
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 96
    move-result v1

    .line 97
    int-to-float v1, v1

    .line 98
    mul-float/2addr v1, v3

    .line 99
    cmpg-float v0, v0, v1

    .line 101
    if-gez v0, :cond_67

    .line 103
    goto :goto_84

    .line 104
    :cond_67
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 107
    move-result v0

    .line 108
    int-to-float v0, v0

    .line 109
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 112
    move-result v1

    .line 113
    int-to-float v1, v1

    .line 114
    mul-float/2addr v1, v3

    .line 115
    cmpl-float v0, v0, v1

    .line 117
    if-ltz v0, :cond_84

    .line 119
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 122
    move-result v0

    .line 123
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 126
    move-result v1

    .line 127
    if-ge v0, v1, :cond_84

    .line 129
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 132
    move-result v2

    .line 133
    :cond_84
    :goto_84
    invoke-direct {p0, v2}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    .line 136
    :cond_87
    return-void
.end method

.method private updateScrollingRange(ZZZ)V
    .registers 14

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x8

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_46

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result v0

    .line 13
    if-eq v0, v2, :cond_46

    .line 15
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 25
    iput v4, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderBottomMargin:I

    .line 27
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 29
    iput v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTopMargin:I

    .line 31
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderMeasuredHeight:I

    .line 39
    iget v4, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTopMargin:I

    .line 41
    add-int/2addr v4, v0

    .line 42
    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderBottomMargin:I

    .line 44
    add-int/2addr v4, v0

    .line 45
    iput v4, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    .line 47
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 49
    if-eqz v0, :cond_3c

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 57
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 59
    iput v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentBottomMargin:I

    .line 61
    :cond_3c
    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mRangeOffset:F

    .line 63
    iget v4, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    .line 65
    int-to-float v4, v4

    .line 66
    sub-float/2addr v0, v4

    .line 67
    float-to-int v0, v0

    .line 68
    add-int/2addr v0, v3

    .line 69
    move v4, v1

    .line 70
    goto :goto_48

    .line 71
    :cond_46
    move v0, v3

    .line 72
    move v4, v0

    .line 73
    :goto_48
    iget-object v5, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 75
    if-eqz v5, :cond_8a

    .line 77
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 80
    move-result v5

    .line 81
    if-eq v5, v2, :cond_8a

    .line 83
    iget-object v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 91
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 93
    iput v5, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    .line 95
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 97
    iput v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    .line 99
    iget-object v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 104
    move-result v2

    .line 105
    iput v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerMeasuredHeight:I

    .line 107
    iget-object v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 109
    if-eqz v2, :cond_78

    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 117
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 119
    iput v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentBottomMargin:I

    .line 121
    :cond_78
    iget v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerMeasuredHeight:I

    .line 123
    iget v5, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    .line 125
    add-int/2addr v2, v5

    .line 126
    iget v5, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    .line 128
    add-int/2addr v2, v5

    .line 129
    add-int/2addr v2, v3

    .line 130
    if-nez v4, :cond_87

    .line 132
    neg-int v0, v2

    .line 133
    move v5, v1

    .line 134
    move v2, v3

    .line 135
    goto :goto_88

    .line 136
    :cond_87
    move v5, v1

    .line 137
    :goto_88
    move v1, v0

    .line 138
    goto :goto_8d

    .line 139
    :cond_8a
    move v1, v0

    .line 140
    move v2, v3

    .line 141
    move v5, v2

    .line 142
    :goto_8d
    const/4 v6, 0x0

    .line 143
    const/4 v8, 0x0

    .line 144
    move-object v0, p0

    .line 145
    move v3, v4

    .line 146
    move v4, v5

    .line 147
    move v5, v6

    .line 148
    move v6, p1

    .line 149
    move v7, p2

    .line 150
    move v9, p3

    .line 151
    invoke-virtual/range {v0 .. v9}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->setScrollingRange(IIZZZZZZZ)V

    .line 154
    return-void
.end method

.method private updateTag()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mValueTag:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private updateTouch(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->isTouch:Z

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-direct {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateTag()V

    .line 8
    :cond_7
    return-void
.end method


# virtual methods
.method public getHeaderProgressFrom()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    iget v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    .line 10
    add-int/2addr v0, v1

    .line 11
    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getHeaderViewVisible()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_c
    return v1
.end method

.method public getScrollableView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getTriggerViewVisible()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_c
    return v1
.end method

.method public isAcceptHeaderRootViewAlpha()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    .line 3
    return v0
.end method

.method public isAcceptTriggerRootViewAlpha()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    .line 3
    return v0
.end method

.method public isAutoAnim()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAutoAnim:Z

    .line 3
    return v0
.end method

.method public isHeaderOpen()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public isTriggerOpen()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_24

    .line 7
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_16

    .line 13
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_22

    .line 23
    :cond_16
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_24

    .line 29
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 32
    move-result v0

    .line 33
    if-ltz v0, :cond_24

    .line 35
    :cond_22
    const/4 v0, 0x1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    :goto_25
    return v0
.end method

.method public onFinishInflate()V
    .registers 4

    .line 1
    invoke-super {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onFinishInflate()V

    .line 4
    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderViewId:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 12
    iget v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerViewId:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 20
    iget-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 22
    if-nez v1, :cond_22

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    goto :goto_22

    .line 27
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    const-string v1, "The headerView or triggerView attribute is required and must refer to a valid child."

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0

    .line 35
    :cond_22
    :goto_22
    const v0, 0x102001e

    .line 38
    if-eqz v1, :cond_39

    .line 40
    iget v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentId:I

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 48
    if-nez v1, :cond_39

    .line 50
    iget-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 52
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 58
    :cond_39
    iget-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 60
    if-eqz v1, :cond_4f

    .line 62
    iget v2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentId:I

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 70
    if-nez v1, :cond_4f

    .line 72
    iget-object v1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 74
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 80
    :cond_4f
    return-void
.end method

.method public onScrollingProgressUpdated(I)V
    .registers 18

    .line 1
    move-object/from16 v6, p0

    .line 3
    move/from16 v7, p1

    .line 5
    invoke-super/range {p0 .. p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    .line 8
    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 10
    const/4 v8, 0x0

    .line 11
    const/16 v9, 0x8

    .line 13
    const/high16 v10, 0x3f800000  # 1.0f

    .line 15
    const/4 v11, 0x0

    .line 16
    if-eqz v0, :cond_c5

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result v0

    .line 22
    if-eq v0, v9, :cond_c5

    .line 24
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 27
    move-result v0

    .line 28
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    .line 31
    move-result v0

    .line 32
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result v0

    .line 36
    sub-int v12, v7, v0

    .line 38
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 41
    move-result v0

    .line 42
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 45
    move-result v1

    .line 46
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 49
    move-result v1

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 53
    move-result v0

    .line 54
    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    .line 56
    iget-object v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 58
    if-eqz v2, :cond_4a

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 63
    move-result v2

    .line 64
    if-eq v2, v9, :cond_4a

    .line 66
    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    .line 68
    iget v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    .line 70
    add-int/2addr v1, v2

    .line 71
    move v13, v0

    .line 72
    move v3, v1

    .line 73
    move v14, v11

    .line 74
    goto :goto_56

    .line 75
    :cond_4a
    iget v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    .line 77
    iget v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    .line 79
    add-int/2addr v2, v3

    .line 80
    iget v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerMeasuredHeight:I

    .line 82
    add-int/2addr v2, v3

    .line 83
    add-int/2addr v0, v2

    .line 84
    move v13, v0

    .line 85
    move v3, v1

    .line 86
    move v14, v2

    .line 87
    :goto_56
    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 89
    if-nez v0, :cond_5c

    .line 91
    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 93
    :cond_5c
    move-object v15, v0

    .line 94
    iget-object v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 96
    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    .line 98
    sub-int v0, v13, v0

    .line 100
    iget v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerTopMargin:I

    .line 102
    sub-int/2addr v0, v2

    .line 103
    iget v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerMeasuredHeight:I

    .line 105
    sub-int v4, v0, v2

    .line 107
    const/4 v5, 0x0

    .line 108
    move-object/from16 v0, p0

    .line 110
    move-object v2, v15

    .line 111
    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V

    .line 114
    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 116
    if-nez v0, :cond_7c

    .line 118
    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerBottomMargin:I

    .line 120
    sub-int/2addr v13, v0

    .line 121
    int-to-float v0, v13

    .line 122
    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentMinHeight:F

    .line 124
    goto :goto_82

    .line 125
    :cond_7c
    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentBottomMargin:I

    .line 127
    sub-int/2addr v13, v0

    .line 128
    int-to-float v0, v13

    .line 129
    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerContentMinHeight:F

    .line 131
    :goto_82
    div-float/2addr v0, v1

    .line 132
    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    .line 135
    move-result v1

    .line 136
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    .line 139
    move-result v1

    .line 140
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    .line 142
    if-eqz v2, :cond_95

    .line 144
    iget-object v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 146
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 149
    goto :goto_bc

    .line 150
    :cond_95
    iget-object v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 152
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 154
    if-eqz v3, :cond_bc

    .line 156
    check-cast v2, Landroid/view/ViewGroup;

    .line 158
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 161
    move-result v2

    .line 162
    if-lez v2, :cond_bc

    .line 164
    move v2, v11

    .line 165
    :goto_a4
    iget-object v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 167
    check-cast v3, Landroid/view/ViewGroup;

    .line 169
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 172
    move-result v3

    .line 173
    if-ge v2, v3, :cond_bc

    .line 175
    iget-object v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 177
    check-cast v3, Landroid/view/ViewGroup;

    .line 179
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 188
    goto :goto_a4

    .line 189
    :cond_bc
    :goto_bc
    invoke-direct {v6, v15}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->makeTriggerContentViewList(Landroid/view/View;)Ljava/util/List;

    .line 192
    move-result-object v1

    .line 193
    sub-float/2addr v0, v10

    .line 194
    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    .line 197
    goto :goto_c7

    .line 198
    :cond_c5
    move v12, v7

    .line 199
    move v14, v11

    .line 200
    :goto_c7
    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 202
    if-eqz v0, :cond_13f

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 207
    move-result v0

    .line 208
    if-eq v0, v9, :cond_13f

    .line 210
    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderInitTop:I

    .line 212
    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTopMargin:I

    .line 214
    add-int v3, v0, v1

    .line 216
    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 218
    if-nez v0, :cond_dd

    .line 220
    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 222
    :cond_dd
    move-object v9, v0

    .line 223
    iget-object v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 225
    const/4 v5, 0x0

    .line 226
    move-object/from16 v0, p0

    .line 228
    move-object v2, v9

    .line 229
    move v4, v12

    .line 230
    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V

    .line 233
    iget-object v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 235
    if-nez v0, :cond_f3

    .line 237
    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderBottomMargin:I

    .line 239
    sub-int/2addr v12, v0

    .line 240
    int-to-float v0, v12

    .line 241
    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentMinHeight:F

    .line 243
    goto :goto_f9

    .line 244
    :cond_f3
    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentBottomMargin:I

    .line 246
    sub-int/2addr v12, v0

    .line 247
    int-to-float v0, v12

    .line 248
    iget v1, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderContentMinHeight:F

    .line 250
    :goto_f9
    add-float/2addr v0, v1

    .line 251
    div-float/2addr v0, v1

    .line 252
    add-float v1, v0, v10

    .line 254
    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    .line 257
    move-result v1

    .line 258
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    .line 261
    move-result v1

    .line 262
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    .line 264
    if-eqz v2, :cond_10f

    .line 266
    iget-object v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 268
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 271
    goto :goto_136

    .line 272
    :cond_10f
    iget-object v2, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 274
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 276
    if-eqz v3, :cond_136

    .line 278
    check-cast v2, Landroid/view/ViewGroup;

    .line 280
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 283
    move-result v2

    .line 284
    if-lez v2, :cond_136

    .line 286
    move v2, v11

    .line 287
    :goto_11e
    iget-object v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 289
    check-cast v3, Landroid/view/ViewGroup;

    .line 291
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 294
    move-result v3

    .line 295
    if-ge v2, v3, :cond_136

    .line 297
    iget-object v3, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 299
    check-cast v3, Landroid/view/ViewGroup;

    .line 301
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 308
    add-int/lit8 v2, v2, 0x1

    .line 310
    goto :goto_11e

    .line 311
    :cond_136
    :goto_136
    invoke-direct {v6, v9}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->makeHeaderContentViewList(Landroid/view/View;)Ljava/util/List;

    .line 314
    move-result-object v1

    .line 315
    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    .line 318
    iget v14, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderTotalHeight:I

    .line 320
    :cond_13f
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 322
    add-int v1, v7, v14

    .line 324
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 327
    move-result v2

    .line 328
    sub-int/2addr v1, v2

    .line 329
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 332
    iget v0, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mLastScrollingProgress:I

    .line 334
    sub-int v1, v7, v0

    .line 336
    if-lez v1, :cond_156

    .line 338
    const/4 v1, 0x1

    .line 339
    invoke-direct {v6, v0, v7, v1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    .line 342
    goto :goto_15d

    .line 343
    :cond_156
    sub-int v1, v7, v0

    .line 345
    if-gez v1, :cond_15d

    .line 347
    invoke-direct {v6, v0, v7, v11}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    .line 350
    :cond_15d
    :goto_15d
    iput v7, v6, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mLastScrollingProgress:I

    .line 352
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->isHeaderOpen()Z

    .line 355
    move-result v0

    .line 356
    invoke-virtual {v6, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateHeaderOpen(Z)V

    .line 359
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 6
    if-eqz p1, :cond_d

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderInitTop:I

    .line 14
    :cond_d
    return-void
.end method

.method public onUpdateScrollingRangeOnLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onUpdateScrollingRangeOnLayout(ZIIII)V

    .line 4
    const/4 p1, 0x1

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p2}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateScrollingRange(ZZZ)V

    .line 9
    return-void
.end method

.method public removeNestedHeaderChangedListener()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    .line 4
    return-void
.end method

.method public setAcceptTriggerRootViewAlpha(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    .line 3
    return-void
.end method

.method public setAutoAllClose(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_14

    .line 3
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 10
    move-result v0

    .line 11
    if-le p1, v0, :cond_14

    .line 13
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 16
    move-result p1

    .line 17
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    .line 20
    goto :goto_1b

    .line 21
    :cond_14
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    .line 28
    :goto_1b
    return-void
.end method

.method public setAutoAllOpen(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_14

    .line 3
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_14

    .line 13
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 16
    move-result p1

    .line 17
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    .line 20
    goto :goto_1b

    .line 21
    :cond_14
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    .line 28
    :goto_1b
    return-void
.end method

.method public setAutoAnim(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAutoAnim:Z

    .line 3
    return-void
.end method

.method public setAutoHeaderClose(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_27

    .line 7
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 14
    move-result v1

    .line 15
    if-le v0, v1, :cond_27

    .line 17
    if-eqz p1, :cond_1a

    .line 19
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 22
    move-result p1

    .line 23
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    .line 26
    goto :goto_27

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_27

    .line 33
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 36
    move-result p1

    .line 37
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method public setAutoHeaderOpen(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_16

    .line 7
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 10
    move-result v0

    .line 11
    if-gez v0, :cond_16

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_13

    .line 16
    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    .line 19
    goto :goto_16

    .line 20
    :cond_13
    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method

.method public setAutoTriggerClose(Z)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_15

    .line 8
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_15

    .line 14
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_15

    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_31

    .line 22
    :cond_15
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_30

    .line 28
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getHeaderViewVisible()Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_30

    .line 34
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 41
    move-result v2

    .line 42
    if-le v0, v2, :cond_30

    .line 44
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 47
    move-result v0

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v0, v1

    .line 50
    :goto_31
    if-eq v0, v1, :cond_39

    .line 52
    if-eqz p1, :cond_39

    .line 54
    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    .line 57
    goto :goto_3e

    .line 58
    :cond_39
    if-eq v0, v1, :cond_3e

    .line 60
    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setAutoTriggerOpen(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->getTriggerViewVisible()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_21

    .line 7
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_21

    .line 17
    if-eqz p1, :cond_1a

    .line 19
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 22
    move-result p1

    .line 23
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V

    .line 26
    goto :goto_21

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 30
    move-result p1

    .line 31
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->syncScrollingProgress(I)V

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method public setHeaderRootViewAcceptAlpha(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    .line 3
    return-void
.end method

.method public setHeaderViewVisible(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 8
    move v2, v1

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 v2, 0x8

    .line 12
    :goto_b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-direct {p0, v1, v1, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateScrollingRange(ZZZ)V

    .line 18
    :cond_11
    return-void
.end method

.method public setNestedHeaderChangedListener(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;

    .line 3
    return-void
.end method

.method public setTriggerViewVisible(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 8
    move v2, v1

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 v2, 0x8

    .line 12
    :goto_b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-direct {p0, v1, p1, v1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->updateScrollingRange(ZZZ)V

    .line 18
    :cond_11
    return-void
.end method
