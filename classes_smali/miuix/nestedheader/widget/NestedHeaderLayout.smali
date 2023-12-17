.class public Lmiuix/nestedheader/widget/NestedHeaderLayout;
.super Lmiuix/nestedheader/widget/NestedScrollingLayout;
.source "NestedHeaderLayout.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NestedHeaderLayout"


# instance fields
.field private mAcceptHeaderRootViewAlpha:Z

.field private mAcceptTriggerRootViewAlpha:Z

.field private mAutoAnim:Z

.field private mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

.field private mClipOverBgBounds:Landroid/graphics/Rect;

.field private mEnableHeaderAutoClose:Z

.field private mHeaderBottomMargin:I

.field private mHeaderContentBottomMargin:I

.field private mHeaderContentId:I

.field private mHeaderContentMinHeight:F

.field private mHeaderContentView:Landroid/view/View;

.field private mHeaderMeasuredHeight:I

.field private mHeaderTopMargin:I

.field private mHeaderTotalHeight:I

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewId:I

.field private mHeaderVisibleHeight:I

.field private mIsCommonLiteStrategy:Z

.field private mIsMaskBitmapFromWindowBg:Z

.field private mIsShowOverBg:Z

.field private mIsStickyBeyondTrigger:Z

.field private mIsTouchStart:Z

.field private mLastScrollingProgress:I

.field private mMaskBackground:Landroid/graphics/drawable/Drawable;

.field private mMaskBackgroundInBlur:Landroid/graphics/drawable/Drawable;

.field private mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

.field private mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

.field private mOverBgView:Landroid/view/View;

.field private mRangeOffset:F

.field private mRootView:Landroid/view/View;

.field private mStickyTotalHeight:I

.field private mStickyView:Landroid/view/View;

.field private mStickyViewId:I

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

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentBottomMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentBottomMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mClipOverBgBounds:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

    new-instance v1, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;

    invoke-direct {v1, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    sget-object v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerView:I

    sget v2, Lmiuix/nestedheader/R$id;->header_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderViewId:I

    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_stickyView:I

    sget v2, Lmiuix/nestedheader/R$id;->sticky_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyViewId:I

    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerView:I

    sget v2, Lmiuix/nestedheader/R$id;->trigger_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerViewId:I

    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentId:I

    sget v2, Lmiuix/nestedheader/R$id;->header_content_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentId:I

    sget v2, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/nestedheader/R$dimen;->miuix_nested_header_layout_content_min_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentMinHeight:F

    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentMinHeight:F

    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_rangeOffset:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRangeOffset:F

    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerAutoClose:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mEnableHeaderAutoClose:Z

    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_stickyBeyondTrigger:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    :try_start_b2
    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_maskBackground:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_eb

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x1010054

    invoke-static {p1, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    instance-of p1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_eb

    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d3} :catch_d4

    goto :goto_eb

    :catch_d4
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maskBackground error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "NestedHeaderLayout"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_eb
    :goto_eb
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->addOnScrollListener(Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/nestedheader/widget/NestedHeaderLayout;ZZZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/nestedheader/widget/NestedHeaderLayout;)I
    .registers 1

    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    return p0
.end method

.method public static synthetic access$1000(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    return p0
.end method

.method public static synthetic access$1002(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    return p1
.end method

.method public static synthetic access$1102(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1200(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isScrolling(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncOverScrollTo(I)V

    return-void
.end method

.method public static synthetic access$1400(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    return-void
.end method

.method public static synthetic access$200(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z

    return p0
.end method

.method public static synthetic access$400(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$402(Lmiuix/nestedheader/widget/NestedHeaderLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic access$500(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;
    .registers 1

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    return p0
.end method

.method public static synthetic access$800(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mEnableHeaderAutoClose:Z

    return p0
.end method

.method public static synthetic access$900(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

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

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

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

    new-instance v6, Lmiuix/nestedheader/widget/NestedHeaderLayout$4;

    invoke-direct {v6, p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$4;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)V

    aput-object v6, v5, v1

    invoke-virtual {p1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private checkSendHeaderChangeListener(IIZ)V
    .registers 8

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result p3

    if-ne p2, p3, :cond_1b

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p3

    if-eqz p3, :cond_1b

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-interface {p3, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onTriggerOpened(Landroid/view/View;)V

    :cond_1b
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result p3

    if-ge p1, p3, :cond_35

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result p1

    if-lt p2, p1, :cond_35

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {p1, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onHeaderOpened(Landroid/view/View;)V

    goto :goto_9c

    :cond_35
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result p1

    if-ne p2, p1, :cond_9c

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {p1, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onHeaderOpened(Landroid/view/View;)V

    goto :goto_9c

    :cond_43
    if-nez p2, :cond_53

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p3

    if-eqz p3, :cond_53

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-interface {p3, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    goto :goto_66

    :cond_53
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result p3

    if-ne p2, p3, :cond_66

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-nez p3, :cond_66

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-interface {p3, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    :cond_66
    :goto_66
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-eqz p3, :cond_6e

    move p3, v0

    goto :goto_72

    :cond_6e
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result p3

    :goto_72
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressFrom()I

    move-result v1

    if-le p1, v1, :cond_8b

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressFrom()I

    move-result v1

    if-gt p2, v1, :cond_8b

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {v1, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onHeaderClosed(Landroid/view/View;)V

    :cond_8b
    if-le p1, p3, :cond_9c

    if-ge p2, p3, :cond_9c

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p1

    if-eqz p1, :cond_9c

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-interface {p1, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    :cond_9c
    :goto_9c
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressFrom()I

    move-result p1

    if-ge p2, p1, :cond_a4

    const/4 p1, 0x1

    goto :goto_a5

    :cond_a4
    move p1, v0

    :goto_a5
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz p3, :cond_bf

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_be

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_bf

    :cond_be
    move v0, p3

    :cond_bf
    :goto_bf
    const/4 p3, 0x0

    int-to-float v1, v0

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float/2addr v1, v2

    iget v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    invoke-interface {v1, p2, p1, v0, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onScrollingProgressChanged(IZIF)V

    return-void
.end method

.method private isScrolling(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

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

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    sget v1, Lmiuix/nestedheader/R$id;->header_content_view:I

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

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

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    sget v1, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

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

.method private syncOverScrollTo(I)V
    .registers 2

    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method

.method private syncScrollingProgress(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method

.method private updateOverBgState(II)V
    .registers 8

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    if-eqz v0, :cond_f5

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_ab

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v0, :cond_27

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getNestedScrollableValue()I

    move-result v4

    if-lt v0, v4, :cond_1d

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    if-ne p1, v0, :cond_1d

    move p1, v3

    goto :goto_27

    :cond_1d
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    neg-int v0, v0

    iget v4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr p1, v0

    :cond_27
    :goto_27
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_3f

    neg-int v0, p2

    if-ge p1, v0, :cond_3f

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    if-nez v0, :cond_3f

    iput-boolean v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyBlur(Z)V

    goto :goto_56

    :cond_3f
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_48

    neg-int p2, p2

    if-lt p1, p2, :cond_56

    :cond_48
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    if-eqz p1, :cond_56

    iput-boolean v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyBlur(Z)V

    :cond_56
    :goto_56
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_66

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_f5

    :cond_66
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z

    if-eqz p2, :cond_82

    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_82

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    :cond_82
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_8f

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    :cond_8f
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v3, p1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_f5

    :cond_ab
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_c0

    neg-int v0, p2

    if-ge p1, v0, :cond_c0

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    if-nez v0, :cond_c0

    iput-boolean v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d4

    :cond_c0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_c9

    neg-int p2, p2

    if-lt p1, p2, :cond_d4

    :cond_c9
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    if-eqz p1, :cond_d4

    iput-boolean v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d4
    :goto_d4
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_e1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_e1
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v3, v3, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_f5
    :goto_f5
    return-void
.end method

.method private updateScrollingRange(ZZZZ)V
    .registers 15

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v1, :cond_17

    neg-int v0, v0

    add-int/2addr v0, v2

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eqz v1, :cond_60

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_60

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    add-int/2addr v1, v5

    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    add-int/2addr v1, v5

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentBottomMargin:I

    :cond_55
    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRangeOffset:F

    add-float/2addr v1, v5

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v5, v3

    goto :goto_61

    :cond_60
    move v5, v2

    :goto_61
    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_8c

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v1

    iput v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    iget-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v1, :cond_89

    neg-int v1, v6

    add-int/2addr v0, v1

    :cond_89
    move v1, v0

    move v6, v3

    goto :goto_8e

    :cond_8c
    move v1, v0

    move v6, v2

    :goto_8e
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v0, :cond_c9

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_c9

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-eqz v0, :cond_be

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentBottomMargin:I

    :cond_be
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    iget v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    add-int/2addr v0, v4

    iget v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    add-int/2addr v0, v4

    add-int/2addr v2, v0

    move v4, v3

    goto :goto_ca

    :cond_c9
    move v4, v2

    :goto_ca
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v0, :cond_e0

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    neg-int v0, v0

    if-eqz v6, :cond_df

    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_df

    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    sub-int/2addr v0, v2

    :cond_df
    move v2, v0

    :cond_e0
    move-object v0, p0

    move v3, v5

    move v5, v6

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->setScrollingRange(IIZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    :cond_7
    return-void
.end method

.method public getHeaderCloseProgress()I
    .registers 3

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    add-int/2addr v0, v1

    return v0

    :cond_f
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    return v0
.end method

.method public getHeaderProgressFrom()I
    .registers 3

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    add-int/2addr v0, v1

    return v0

    :cond_f
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    return v0
.end method

.method public getHeaderProgressTo()I
    .registers 3

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    :goto_10
    add-int/2addr v0, v1

    return v0

    :cond_12
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    goto :goto_10
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderViewVisible()Z
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public getNestedScrollableValue()I
    .registers 3

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    add-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method public getScrollableView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    return-object v0
.end method

.method public getScrollableViewMaxHeightWithoutOverlay()I
    .registers 4

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    :goto_14
    sub-int/2addr v0, v1

    return v0

    :cond_16
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    :cond_38
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    goto :goto_14
.end method

.method public getStickyScrollToOnNested()I
    .registers 3

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    :goto_15
    add-int/2addr v0, v1

    return v0

    :cond_17
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    goto :goto_15
.end method

.method public getStickyView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    return-object v0
.end method

.method public getStickyViewVisible()Z
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public getTriggerViewVisible()Z
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

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

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    return v0
.end method

.method public isAcceptTriggerRootViewAlpha()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    return v0
.end method

.method public isApplyBlur()Z
    .registers 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoAnim()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isHeaderOpen()Z
    .registers 3

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isOverlayMode()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    return v0
.end method

.method public isSupportBlur()Z
    .registers 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isSupportBlur()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isTriggerOpen()Z
    .registers 3

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    if-ge v0, v1, :cond_22

    :cond_16
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

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

.method public offsetTopAndBottom(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateOverBgState(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    :cond_a
    return-void
.end method

.method public onFinishInflate()V
    .registers 7

    invoke-super {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onFinishInflate()V

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderViewId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyViewId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerViewId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v0, :cond_27

    new-instance v1, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;

    invoke-direct {v1, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_27
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_3c

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-nez v1, :cond_3c

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v1, :cond_34

    goto :goto_3c

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The headerView or triggerView or stickyView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    const v1, 0x102001e

    if-eqz v0, :cond_53

    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-nez v0, :cond_53

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    :cond_53
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v0, :cond_69

    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-nez v0, :cond_69

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    :cond_69
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_a1

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_a1
    iput-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    new-instance v0, Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    new-instance v4, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;

    invoke-direct {v4, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-nez v0, :cond_cb

    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    move-result v0

    if-nez v0, :cond_cb

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    move-result v0

    if-eqz v0, :cond_c9

    goto :goto_cb

    :cond_c9
    move v0, v5

    goto :goto_cc

    :cond_cb
    :goto_cb
    move v0, v1

    :goto_cc
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsCommonLiteStrategy:Z

    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsCommonLiteStrategy:Z

    if-nez v0, :cond_e9

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setSupportBlur(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setEnableBlur(Z)V

    goto :goto_eb

    :cond_e9
    iput-boolean v5, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    :cond_eb
    :goto_eb
    return-void
.end method

.method public onScrollingProgressUpdated(I)V
    .registers 24

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-super/range {p0 .. p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    goto :goto_14

    :cond_13
    move v0, v8

    :goto_14
    iget-boolean v1, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    if-eqz v1, :cond_1c

    iget v1, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    move v9, v1

    goto :goto_1d

    :cond_1c
    move v9, v8

    :goto_1d
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_2b

    const/4 v11, 0x1

    goto :goto_2c

    :cond_2b
    move v11, v8

    :goto_2c
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_38

    const/4 v12, 0x1

    goto :goto_39

    :cond_38
    move v12, v8

    :goto_39
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_45

    const/4 v1, 0x1

    goto :goto_46

    :cond_45
    move v1, v8

    :goto_46
    iget v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int v13, v0, v2

    if-eqz v11, :cond_56

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    add-int/2addr v0, v2

    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    add-int/2addr v0, v2

    move v14, v0

    goto :goto_57

    :cond_56
    move v14, v8

    :goto_57
    if-eqz v12, :cond_6f

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    move v15, v2

    goto :goto_70

    :cond_6f
    move v15, v8

    :goto_70
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v1, :cond_11b

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v16, v7, v1

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    add-int v2, v13, v9

    add-int/2addr v2, v14

    add-int/2addr v2, v1

    iget-boolean v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    if-eqz v1, :cond_a6

    add-int/2addr v2, v15

    :cond_a6
    move v3, v2

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-nez v1, :cond_ad

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    :cond_ad
    sub-int v18, v17, v0

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move-object v1, v2

    move-object/from16 v2, v20

    move v8, v4

    move/from16 v4, v18

    move v10, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-nez v0, :cond_cf

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    sub-int v0, v17, v0

    int-to-float v0, v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentMinHeight:F

    goto :goto_d6

    :cond_cf
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentBottomMargin:I

    sub-int v0, v17, v0

    int-to-float v0, v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentMinHeight:F

    :goto_d6
    div-float/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    if-eqz v2, :cond_e9

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_110

    :cond_e9
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_110

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_110

    const/4 v2, 0x0

    :goto_f8
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_110

    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f8

    :cond_110
    :goto_110
    move-object/from16 v1, v20

    invoke-direct {v6, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeTriggerContentViewList(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    sub-float/2addr v0, v8

    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    goto :goto_11f

    :cond_11b
    move v8, v4

    move v10, v5

    move/from16 v16, v7

    :goto_11f
    if-eqz v11, :cond_1fe

    add-int v11, v13, v14

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-nez v0, :cond_129

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    :cond_129
    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_180

    add-int v0, v13, v9

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    neg-int v2, v14

    add-int v0, v16, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    add-int/2addr v1, v2

    iget v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_162

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_162
    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    sub-int/2addr v2, v1

    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    add-int/2addr v1, v0

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    add-int/2addr v1, v0

    iput v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    goto/16 :goto_1ff

    :cond_180
    add-int v0, v13, v9

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    add-int v3, v0, v1

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v21, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-nez v0, :cond_1a2

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    sub-int v0, v16, v0

    int-to-float v0, v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentMinHeight:F

    goto :goto_1a9

    :cond_1a2
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentBottomMargin:I

    sub-int v0, v16, v0

    int-to-float v0, v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentMinHeight:F

    :goto_1a9
    add-float/2addr v0, v1

    div-float/2addr v0, v1

    add-float v4, v0, v8

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    if-eqz v2, :cond_1bf

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1e6

    :cond_1bf
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1e6

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1e6

    const/4 v2, 0x0

    :goto_1ce
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1e6

    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1ce

    :cond_1e6
    :goto_1e6
    move-object/from16 v1, v21

    invoke-direct {v6, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeHeaderContentViewList(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    add-int/2addr v0, v1

    iput v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    goto :goto_1ff

    :cond_1fe
    move v11, v13

    :goto_1ff
    add-int/2addr v14, v13

    add-int/2addr v14, v9

    if-eqz v12, :cond_223

    add-int/2addr v11, v15

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    iget-boolean v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    if-eqz v1, :cond_216

    add-int v1, v16, v14

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_21c

    :cond_216
    add-int v1, v7, v14

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_21c
    add-int/2addr v0, v1

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_234

    :cond_223
    iget-boolean v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    if-eqz v0, :cond_22e

    add-int v0, v16, v14

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_234

    :cond_22e
    add-int v0, v7, v14

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_234
    add-int v0, v1, v15

    if-eqz v12, :cond_254

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_245

    move v0, v1

    const/4 v2, 0x0

    const/4 v15, 0x0

    goto :goto_255

    :cond_245
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v2, :cond_254

    iget v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    if-gez v2, :cond_254

    add-int/2addr v15, v2

    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_255

    :cond_254
    const/4 v2, 0x0

    :goto_255
    add-int/2addr v1, v15

    add-int v3, v7, v11

    add-int/2addr v3, v2

    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-nez v2, :cond_26a

    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz v2, :cond_266

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_26a

    :cond_266
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_26a
    :goto_26a
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, v3

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    sub-int v2, v7, v1

    if-lez v2, :cond_282

    const/4 v2, 0x1

    invoke-direct {v6, v1, v7, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    goto :goto_28b

    :cond_282
    sub-int v2, v7, v1

    if-gez v2, :cond_28b

    const/4 v2, 0x0

    invoke-direct {v6, v1, v7, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    goto :goto_28c

    :cond_28b
    :goto_28b
    const/4 v2, 0x0

    :goto_28c
    iput v7, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isHeaderOpen()Z

    move-result v1

    invoke-virtual {v6, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateHeaderOpen(Z)V

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    if-eqz v1, :cond_2e7

    iget-boolean v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z

    if-eqz v3, :cond_2cf

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v2, v5, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mClipOverBgBounds:Landroid/graphics/Rect;

    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mClipOverBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_2e2

    :cond_2cf
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/view/View;->layout(IIII)V

    :goto_2e2
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    invoke-direct {v6, v7, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateOverBgState(II)V

    :cond_2e7
    return-void
.end method

.method public onUpdateScrollingRangeOnLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onUpdateScrollingRangeOnLayout(ZIIII)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    return-void
.end method

.method public removeNestedHeaderChangedListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    return-void
.end method

.method public setAcceptTriggerRootViewAlpha(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    return-void
.end method

.method public setAutoAllClose(Z)V
    .registers 10

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    const/4 v3, 0x0

    iget v4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    new-array v5, v0, [I

    new-array v6, v0, [I

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedPreScroll(II[I[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    :cond_18
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result v1

    if-le v0, v1, :cond_33

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_33

    :cond_2c
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_33
    :goto_33
    return-void
.end method

.method public setAutoAllOpen(Z)V
    .registers 11

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    neg-int v6, v0

    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedScroll(IIII[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    :cond_19
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    if-ge v0, v1, :cond_34

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_34

    :cond_2d
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_34
    :goto_34
    return-void
.end method

.method public setAutoAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    return-void
.end method

.method public setAutoHeaderClose(Z)V
    .registers 10

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    const/4 v3, 0x0

    iget v4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    new-array v5, v0, [I

    new-array v6, v0, [I

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedPreScroll(II[I[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    :cond_18
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v1

    if-le v0, v1, :cond_3f

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_3f

    :cond_32
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public setAutoHeaderOpen(Z)V
    .registers 11

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    neg-int v6, v0

    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedScroll(IIII[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    :cond_19
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    if-gez v0, :cond_36

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_36

    :cond_2f
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_36
    :goto_36
    return-void
.end method

.method public setAutoTriggerClose(Z)V
    .registers 5

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_31

    :cond_15
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

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

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_3e

    :cond_39
    if-eq v0, v1, :cond_3e

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public setAutoTriggerOpen(Z)V
    .registers 11

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isHeaderOpen()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    neg-int v6, v0

    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedScroll(IIII[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    :cond_1f
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    if-ge v0, v1, :cond_40

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_40

    :cond_39
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_40
    :goto_40
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    :cond_7
    return-void
.end method

.method public setHeaderAutoCloseEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mEnableHeaderAutoClose:Z

    return-void
.end method

.method public setHeaderRootViewAcceptAlpha(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    return-void
.end method

.method public setHeaderViewVisible(Z)V
    .registers 5

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v1

    goto :goto_b

    :cond_9
    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1, v1, v1, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    :cond_11
    return-void
.end method

.method public setInSearchMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    return-void
.end method

.method public setSelfScrollFirst(Z)V
    .registers 11

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-eq v0, p1, :cond_25

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isHeaderOpen()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    neg-int v6, v0

    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedScroll(IIII[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_25
    invoke-super {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->setSelfScrollFirst(Z)V

    return-void
.end method

.method public setStickyViewVisible(Z)V
    .registers 5

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v1

    goto :goto_b

    :cond_9
    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1, v1, p1, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    :cond_11
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    :cond_7
    return-void
.end method

.method public setTriggerViewVisible(Z)V
    .registers 5

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v1

    goto :goto_b

    :cond_9
    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1, p1, v1, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    :cond_11
    return-void
.end method

.method public updateCoordinatorHeightGapInfo(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateCoordinatorHeightGapInfo(II)V

    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz p2, :cond_10

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingProgressImmediately(I)V

    goto :goto_19

    :cond_10
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    iget p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    invoke-direct {p0, p1, p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateOverBgState(II)V

    :goto_19
    return-void
.end method

.method public updateScrollingProgressImmediately(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method
