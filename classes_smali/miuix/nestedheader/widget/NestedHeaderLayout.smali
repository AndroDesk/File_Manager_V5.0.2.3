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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    .line 5
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    .line 6
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    .line 7
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    .line 8
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentBottomMargin:I

    .line 9
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentBottomMargin:I

    .line 10
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 11
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    .line 12
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    .line 13
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    .line 14
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 15
    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    .line 16
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    .line 18
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    .line 19
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    .line 20
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mClipOverBgBounds:Landroid/graphics/Rect;

    .line 21
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

    .line 23
    new-instance v1, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;

    invoke-direct {v1, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    .line 24
    sget-object v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 25
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerView:I

    sget v2, Lmiuix/nestedheader/R$id;->header_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderViewId:I

    .line 26
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_stickyView:I

    sget v2, Lmiuix/nestedheader/R$id;->sticky_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyViewId:I

    .line 27
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerView:I

    sget v2, Lmiuix/nestedheader/R$id;->trigger_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerViewId:I

    .line 28
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentId:I

    sget v2, Lmiuix/nestedheader/R$id;->header_content_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    .line 29
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentId:I

    sget v2, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    .line 30
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentMinHeight:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/nestedheader/R$dimen;->miuix_nested_header_layout_content_min_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 32
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentMinHeight:F

    .line 33
    sget v1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentMinHeight:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 35
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentMinHeight:F

    .line 36
    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_rangeOffset:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRangeOffset:F

    .line 37
    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerAutoClose:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mEnableHeaderAutoClose:Z

    .line 38
    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_stickyBeyondTrigger:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    .line 39
    :try_start_b2
    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_maskBackground:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_eb

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x1010054

    invoke-static {p1, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    .line 41
    instance-of p1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_eb

    .line 42
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d3} :catch_d4

    goto :goto_eb

    :catch_d4
    move-exception p1

    .line 43
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maskBackground error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "NestedHeaderLayout"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_eb
    :goto_eb
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->addOnScrollListener(Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/nestedheader/widget/NestedHeaderLayout;ZZZZ)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lmiuix/nestedheader/widget/NestedHeaderLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 3
    return p0
.end method

.method public static synthetic access$1000(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1002(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1102(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1200(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isScrolling(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1300(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncOverScrollTo(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$402(Lmiuix/nestedheader/widget/NestedHeaderLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p1
.end method

.method public static synthetic access$500(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    .line 3
    return p0
.end method

.method public static synthetic access$800(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mEnableHeaderAutoClose:Z

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

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
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

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
    new-instance v6, Lmiuix/nestedheader/widget/NestedHeaderLayout$4;

    .line 58
    invoke-direct {v6, p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$4;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)V

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
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    if-eqz p3, :cond_43

    .line 9
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 12
    move-result p3

    .line 13
    if-ne p2, p3, :cond_1b

    .line 15
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_1b

    .line 21
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 23
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 25
    invoke-interface {p3, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onTriggerOpened(Landroid/view/View;)V

    .line 28
    :cond_1b
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    .line 31
    move-result p3

    .line 32
    if-ge p1, p3, :cond_35

    .line 34
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    .line 37
    move-result p1

    .line 38
    if-lt p2, p1, :cond_35

    .line 40
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_35

    .line 46
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 48
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 50
    invoke-interface {p1, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onHeaderOpened(Landroid/view/View;)V

    .line 53
    goto :goto_9c

    .line 54
    :cond_35
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    .line 57
    move-result p1

    .line 58
    if-ne p2, p1, :cond_9c

    .line 60
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 62
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 64
    invoke-interface {p1, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onHeaderOpened(Landroid/view/View;)V

    .line 67
    goto :goto_9c

    .line 68
    :cond_43
    if-nez p2, :cond_53

    .line 70
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_53

    .line 76
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 78
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 80
    invoke-interface {p3, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    .line 83
    goto :goto_66

    .line 84
    :cond_53
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 87
    move-result p3

    .line 88
    if-ne p2, p3, :cond_66

    .line 90
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    .line 93
    move-result p3

    .line 94
    if-nez p3, :cond_66

    .line 96
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 98
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 100
    invoke-interface {p3, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    .line 103
    :cond_66
    :goto_66
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    .line 106
    move-result p3

    .line 107
    if-eqz p3, :cond_6e

    .line 109
    move p3, v0

    .line 110
    goto :goto_72

    .line 111
    :cond_6e
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 114
    move-result p3

    .line 115
    :goto_72
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressFrom()I

    .line 118
    move-result v1

    .line 119
    if-le p1, v1, :cond_8b

    .line 121
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressFrom()I

    .line 124
    move-result v1

    .line 125
    if-gt p2, v1, :cond_8b

    .line 127
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_8b

    .line 133
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 135
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 137
    invoke-interface {v1, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onHeaderClosed(Landroid/view/View;)V

    .line 140
    :cond_8b
    if-le p1, p3, :cond_9c

    .line 142
    if-ge p2, p3, :cond_9c

    .line 144
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_9c

    .line 150
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 152
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 154
    invoke-interface {p1, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    .line 157
    :cond_9c
    :goto_9c
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressFrom()I

    .line 160
    move-result p1

    .line 161
    if-ge p2, p1, :cond_a4

    .line 163
    const/4 p1, 0x1

    .line 164
    goto :goto_a5

    .line 165
    :cond_a4
    move p1, v0

    .line 166
    :goto_a5
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 168
    if-eqz p3, :cond_bf

    .line 170
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 173
    move-result p3

    .line 174
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 176
    invoke-virtual {v1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 179
    move-result-object v1

    .line 180
    if-eqz v1, :cond_be

    .line 182
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 185
    move-result p3

    .line 186
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 189
    move-result v0

    .line 190
    goto :goto_bf

    .line 191
    :cond_be
    move v0, p3

    .line 192
    :cond_bf
    :goto_bf
    const/4 p3, 0x0

    .line 193
    int-to-float v1, v0

    .line 194
    const/high16 v2, 0x3f800000  # 1.0f

    .line 196
    mul-float/2addr v1, v2

    .line 197
    iget v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 199
    int-to-float v3, v3

    .line 200
    div-float/2addr v1, v3

    .line 201
    sub-float/2addr v2, v1

    .line 202
    invoke-static {p3, v2}, Ljava/lang/Math;->max(FF)F

    .line 205
    move-result p3

    .line 206
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 208
    invoke-interface {v1, p2, p1, v0, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onScrollingProgressChanged(IZIF)V

    .line 211
    return-void
.end method

.method private isScrolling(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsTouchStart:Z

    .line 3
    if-nez v0, :cond_14

    .line 5
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mValueTag:Ljava/lang/String;

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
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    .line 3
    sget v1, Lmiuix/nestedheader/R$id;->header_content_view:I

    .line 5
    if-eq v0, v1, :cond_d

    .line 7
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

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
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

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
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    .line 3
    sget v1, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    .line 5
    if-eq v0, v1, :cond_d

    .line 7
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

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
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

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

.method private syncOverScrollTo(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    .line 3
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    .line 10
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->onScrollingProgressUpdated(I)V

    .line 17
    return-void
.end method

.method private syncScrollingProgress(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->onScrollingProgressUpdated(I)V

    .line 7
    return-void
.end method

.method private updateOverBgState(II)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_f5

    .line 5
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_ab

    .line 12
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    .line 14
    if-eqz v0, :cond_27

    .line 16
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    .line 18
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getNestedScrollableValue()I

    .line 21
    move-result v4

    .line 22
    if-lt v0, v4, :cond_1d

    .line 24
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    .line 26
    if-ne p1, v0, :cond_1d

    .line 28
    move p1, v3

    .line 29
    goto :goto_27

    .line 30
    :cond_1d
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 32
    neg-int v0, v0

    .line 33
    iget v4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    .line 35
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result v0

    .line 39
    sub-int/2addr p1, v0

    .line 40
    :cond_27
    :goto_27
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 43
    move-result v0

    .line 44
    if-gtz v0, :cond_3f

    .line 46
    neg-int v0, p2

    .line 47
    if-ge p1, v0, :cond_3f

    .line 49
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 51
    if-nez v0, :cond_3f

    .line 53
    iput-boolean v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 55
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 57
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    invoke-virtual {p0, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyBlur(Z)V

    .line 63
    goto :goto_56

    .line 64
    :cond_3f
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 67
    move-result v0

    .line 68
    if-gtz v0, :cond_48

    .line 70
    neg-int p2, p2

    .line 71
    if-lt p1, p2, :cond_56

    .line 73
    :cond_48
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 75
    if-eqz p1, :cond_56

    .line 77
    iput-boolean v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 79
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {p0, v3}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyBlur(Z)V

    .line 87
    :cond_56
    :goto_56
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_66

    .line 95
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 97
    const/4 p2, 0x0

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 101
    goto/16 :goto_f5

    .line 103
    :cond_66
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 108
    move-result p1

    .line 109
    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z

    .line 111
    if-eqz p2, :cond_82

    .line 113
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 115
    invoke-virtual {p2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 118
    move-result-object p2

    .line 119
    if-eqz p2, :cond_82

    .line 121
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 130
    move-result p1

    .line 131
    :cond_82
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 136
    move-result-object p2

    .line 137
    if-nez p2, :cond_8f

    .line 139
    new-instance p2, Landroid/graphics/Rect;

    .line 141
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 144
    :cond_8f
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 149
    move-result v0

    .line 150
    sub-int/2addr p1, v0

    .line 151
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 156
    move-result v0

    .line 157
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 162
    move-result v1

    .line 163
    invoke-virtual {p2, v3, p1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 171
    goto :goto_f5

    .line 172
    :cond_ab
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 175
    move-result v0

    .line 176
    if-gtz v0, :cond_c0

    .line 178
    neg-int v0, p2

    .line 179
    if-ge p1, v0, :cond_c0

    .line 181
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 183
    if-nez v0, :cond_c0

    .line 185
    iput-boolean v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 187
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 189
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    goto :goto_d4

    .line 193
    :cond_c0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 196
    move-result v0

    .line 197
    if-gtz v0, :cond_c9

    .line 199
    neg-int p2, p2

    .line 200
    if-lt p1, p2, :cond_d4

    .line 202
    :cond_c9
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 204
    if-eqz p1, :cond_d4

    .line 206
    iput-boolean v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsShowOverBg:Z

    .line 208
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 210
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_d4
    :goto_d4
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 218
    move-result-object p1

    .line 219
    if-nez p1, :cond_e1

    .line 221
    new-instance p1, Landroid/graphics/Rect;

    .line 223
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 226
    :cond_e1
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 228
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 231
    move-result p2

    .line 232
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 237
    move-result v0

    .line 238
    invoke-virtual {p1, v3, v3, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 243
    invoke-virtual {p2, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 246
    :cond_f5
    :goto_f5
    return-void
.end method

.method private updateScrollingRange(ZZZZ)V
    .registers 15

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_b

    .line 10
    move v1, v2

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 15
    move-result v1

    .line 16
    :goto_f
    add-int/2addr v0, v1

    .line 17
    iget-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 19
    if-eqz v1, :cond_17

    .line 21
    neg-int v0, v0

    .line 22
    add-int/2addr v0, v2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v0, v2

    .line 25
    :goto_18
    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 27
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 29
    const/4 v3, 0x1

    .line 30
    const/16 v4, 0x8

    .line 32
    if-eqz v1, :cond_60

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 37
    move-result v1

    .line 38
    if-eq v1, v4, :cond_60

    .line 40
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 50
    iput v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    .line 52
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 54
    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    .line 56
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    move-result v1

    .line 62
    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    .line 64
    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    .line 66
    add-int/2addr v1, v5

    .line 67
    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    .line 69
    add-int/2addr v1, v5

    .line 70
    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 72
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 74
    if-eqz v1, :cond_55

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 82
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 84
    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentBottomMargin:I

    .line 86
    :cond_55
    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 88
    neg-int v1, v1

    .line 89
    int-to-float v1, v1

    .line 90
    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRangeOffset:F

    .line 92
    add-float/2addr v1, v5

    .line 93
    float-to-int v1, v1

    .line 94
    add-int/2addr v0, v1

    .line 95
    move v5, v3

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move v5, v2

    .line 98
    :goto_61
    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 100
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 102
    if-eqz v1, :cond_8c

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 107
    move-result v1

    .line 108
    if-eq v1, v4, :cond_8c

    .line 110
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 118
    iget-object v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 120
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 123
    move-result v6

    .line 124
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 126
    add-int/2addr v6, v7

    .line 127
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 129
    add-int/2addr v6, v1

    .line 130
    iput v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 132
    iget-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 134
    if-eqz v1, :cond_89

    .line 136
    neg-int v1, v6

    .line 137
    add-int/2addr v0, v1

    .line 138
    :cond_89
    move v1, v0

    .line 139
    move v6, v3

    .line 140
    goto :goto_8e

    .line 141
    :cond_8c
    move v1, v0

    .line 142
    move v6, v2

    .line 143
    :goto_8e
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 145
    if-eqz v0, :cond_c9

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 150
    move-result v0

    .line 151
    if-eq v0, v4, :cond_c9

    .line 153
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 161
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 163
    iput v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    .line 165
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 167
    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    .line 169
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 171
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 174
    move-result v0

    .line 175
    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    .line 177
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 179
    if-eqz v0, :cond_be

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 187
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 189
    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentBottomMargin:I

    .line 191
    :cond_be
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    .line 193
    iget v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    .line 195
    add-int/2addr v0, v4

    .line 196
    iget v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    .line 198
    add-int/2addr v0, v4

    .line 199
    add-int/2addr v2, v0

    .line 200
    move v4, v3

    .line 201
    goto :goto_ca

    .line 202
    :cond_c9
    move v4, v2

    .line 203
    :goto_ca
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    .line 205
    if-eqz v0, :cond_e0

    .line 207
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 209
    neg-int v0, v0

    .line 210
    if-eqz v6, :cond_df

    .line 212
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 214
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 217
    move-result v2

    .line 218
    const/4 v3, 0x4

    .line 219
    if-ne v2, v3, :cond_df

    .line 221
    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 223
    sub-int/2addr v0, v2

    .line 224
    :cond_df
    move v2, v0

    .line 225
    :cond_e0
    move-object v0, p0

    .line 226
    move v3, v5

    .line 227
    move v5, v6

    .line 228
    move v6, p1

    .line 229
    move v7, p2

    .line 230
    move v8, p3

    .line 231
    move v9, p4

    .line 232
    invoke-virtual/range {v0 .. v9}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->setScrollingRange(IIZZZZZZZ)V

    .line 235
    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public getHeaderCloseProgress()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 11
    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 14
    add-int/2addr v0, v1

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getHeaderProgressFrom()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 11
    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 14
    add-int/2addr v0, v1

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getHeaderProgressTo()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 3
    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 11
    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 14
    add-int/2addr v0, v1

    .line 15
    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 17
    :goto_10
    add-int/2addr v0, v1

    .line 18
    return v0

    .line 19
    :cond_12
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 25
    goto :goto_10
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getHeaderViewVisible()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

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

.method public getNestedScrollableValue()I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 3
    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTotalHeight:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    neg-int v0, v0

    .line 7
    return v0
.end method

.method public getScrollableView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getScrollableViewMaxHeightWithoutOverlay()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    .line 3
    if-eqz v0, :cond_16

    .line 5
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 7
    if-eqz v0, :cond_16

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_16

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 21
    :goto_14
    sub-int/2addr v0, v1

    .line 22
    return v0

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 25
    if-eqz v0, :cond_38

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 30
    move-result v0

    .line 31
    const/16 v1, 0x8

    .line 33
    if-eq v0, v1, :cond_38

    .line 35
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 43
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 48
    move-result v1

    .line 49
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 51
    add-int/2addr v1, v2

    .line 52
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 54
    add-int/2addr v1, v0

    .line 55
    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 57
    :cond_38
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 60
    move-result v0

    .line 61
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 63
    sub-int/2addr v0, v1

    .line 64
    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 66
    goto :goto_14
.end method

.method public getStickyScrollToOnNested()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    .line 3
    if-eqz v0, :cond_17

    .line 5
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 7
    if-eqz v0, :cond_17

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x4

    .line 14
    if-ne v0, v1, :cond_17

    .line 16
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 22
    :goto_15
    add-int/2addr v0, v1

    .line 23
    return v0

    .line 24
    :cond_17
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 27
    move-result v0

    .line 28
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 30
    add-int/2addr v0, v1

    .line 31
    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyTotalHeight:I

    .line 33
    goto :goto_15
.end method

.method public getStickyView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getStickyViewVisible()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

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

.method public getTriggerViewVisible()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

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
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    .line 3
    return v0
.end method

.method public isAcceptTriggerRootViewAlpha()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    .line 3
    return v0
.end method

.method public isApplyBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isAutoAnim()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    .line 3
    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isHeaderOpen()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_12

    .line 7
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    .line 14
    move-result v1

    .line 15
    if-lt v0, v1, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public isOverlayMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 3
    return v0
.end method

.method public isSupportBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isSupportBlur()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isTriggerOpen()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_24

    .line 7
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

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
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

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

.method public offsetTopAndBottom(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 7
    move-result p1

    .line 8
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    .line 10
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateOverBgState(II)V

    .line 13
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRootView:Landroid/view/View;

    .line 10
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    .line 11
    :cond_a
    return-void
.end method

.method public onFinishInflate()V
    .registers 7

    .line 1
    invoke-super {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onFinishInflate()V

    .line 4
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderViewId:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 12
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyViewId:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 20
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerViewId:I

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 30
    if-eqz v0, :cond_27

    .line 32
    new-instance v1, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;

    .line 34
    invoke-direct {v1, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 40
    :cond_27
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 42
    if-nez v0, :cond_3c

    .line 44
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 46
    if-nez v1, :cond_3c

    .line 48
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 50
    if-eqz v1, :cond_34

    .line 52
    goto :goto_3c

    .line 53
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    const-string v1, "The headerView or triggerView or stickyView attribute is required and must refer to a valid child."

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0

    .line 61
    :cond_3c
    :goto_3c
    const v1, 0x102001e

    .line 64
    if-eqz v0, :cond_53

    .line 66
    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 74
    if-nez v0, :cond_53

    .line 76
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 84
    :cond_53
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 86
    if-eqz v0, :cond_69

    .line 88
    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 96
    if-nez v0, :cond_69

    .line 98
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 106
    :cond_69
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 108
    const/4 v1, 0x1

    .line 109
    if-nez v0, :cond_a1

    .line 111
    new-instance v0, Landroid/view/View;

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    move-result-object v2

    .line 117
    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 120
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 122
    const/4 v2, 0x4

    .line 123
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 131
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 133
    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mMaskBackground:Landroid/graphics/drawable/Drawable;

    .line 135
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 140
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 143
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 145
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 147
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 150
    move-result v2

    .line 151
    add-int/2addr v2, v1

    .line 152
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 154
    const/4 v4, -0x1

    .line 155
    const/4 v5, -0x2

    .line 156
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 159
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 162
    :cond_a1
    iput-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 164
    new-instance v0, Lmiuix/view/MiuiBlurUiHelper;

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 169
    move-result-object v2

    .line 170
    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 172
    new-instance v4, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;

    .line 174
    invoke-direct {v4, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    .line 177
    const/4 v5, 0x0

    .line 178
    invoke-direct {v0, v2, v3, v5, v4}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    .line 181
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 183
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_cb

    .line 189
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_cb

    .line 195
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_c9

    .line 201
    goto :goto_cb

    .line 202
    :cond_c9
    move v0, v5

    .line 203
    goto :goto_cc

    .line 204
    :cond_cb
    :goto_cb
    move v0, v1

    .line 205
    :goto_cc
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsCommonLiteStrategy:Z

    .line 207
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_e9

    .line 213
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsCommonLiteStrategy:Z

    .line 215
    if-nez v0, :cond_e9

    .line 217
    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setSupportBlur(Z)V

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 223
    move-result-object v0

    .line 224
    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_eb

    .line 230
    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setEnableBlur(Z)V

    .line 233
    goto :goto_eb

    .line 234
    :cond_e9
    iput-boolean v5, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 236
    :cond_eb
    :goto_eb
    return-void
.end method

.method public onScrollingProgressUpdated(I)V
    .registers 24

    .line 1
    move-object/from16 v6, p0

    .line 3
    move/from16 v7, p1

    .line 5
    invoke-super/range {p0 .. p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 11
    move-result v0

    .line 12
    const/4 v8, 0x0

    .line 13
    if-nez v0, :cond_13

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    move-result v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v0, v8

    .line 21
    :goto_14
    iget-boolean v1, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    .line 23
    if-eqz v1, :cond_1c

    .line 25
    iget v1, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    .line 27
    move v9, v1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v9, v8

    .line 30
    :goto_1d
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 32
    const/16 v2, 0x8

    .line 34
    if-eqz v1, :cond_2b

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 39
    move-result v1

    .line 40
    if-eq v1, v2, :cond_2b

    .line 42
    const/4 v11, 0x1

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v11, v8

    .line 45
    :goto_2c
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 47
    if-eqz v1, :cond_38

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 52
    move-result v1

    .line 53
    if-eq v1, v2, :cond_38

    .line 55
    const/4 v12, 0x1

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v12, v8

    .line 58
    :goto_39
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 60
    if-eqz v1, :cond_45

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 65
    move-result v1

    .line 66
    if-eq v1, v2, :cond_45

    .line 68
    const/4 v1, 0x1

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v1, v8

    .line 71
    :goto_46
    iget v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 73
    add-int v13, v0, v2

    .line 75
    if-eqz v11, :cond_56

    .line 77
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    .line 79
    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    .line 81
    add-int/2addr v0, v2

    .line 82
    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    .line 84
    add-int/2addr v0, v2

    .line 85
    move v14, v0

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move v14, v8

    .line 88
    :goto_57
    if-eqz v12, :cond_6f

    .line 90
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 103
    move-result v2

    .line 104
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 106
    add-int/2addr v2, v3

    .line 107
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 109
    add-int/2addr v2, v0

    .line 110
    move v15, v2

    .line 111
    goto :goto_70

    .line 112
    :cond_6f
    move v15, v8

    .line 113
    :goto_70
    const/4 v5, 0x0

    .line 114
    const/high16 v4, 0x3f800000  # 1.0f

    .line 116
    if-eqz v1, :cond_11b

    .line 118
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    .line 120
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    .line 122
    add-int/2addr v0, v1

    .line 123
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    .line 125
    add-int/2addr v0, v1

    .line 126
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 129
    move-result v1

    .line 130
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 133
    move-result v1

    .line 134
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 137
    move-result v1

    .line 138
    sub-int v16, v7, v1

    .line 140
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 143
    move-result v1

    .line 144
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 147
    move-result v2

    .line 148
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 151
    move-result v2

    .line 152
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 155
    move-result v17

    .line 156
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopMargin:I

    .line 158
    add-int v2, v13, v9

    .line 160
    add-int/2addr v2, v14

    .line 161
    add-int/2addr v2, v1

    .line 162
    iget-boolean v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    .line 164
    if-eqz v1, :cond_a6

    .line 166
    add-int/2addr v2, v15

    .line 167
    :cond_a6
    move v3, v2

    .line 168
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 170
    if-nez v1, :cond_ad

    .line 172
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 174
    :cond_ad
    sub-int v18, v17, v0

    .line 176
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 178
    const/16 v19, 0x0

    .line 180
    move-object/from16 v0, p0

    .line 182
    move-object/from16 v20, v1

    .line 184
    move-object v1, v2

    .line 185
    move-object/from16 v2, v20

    .line 187
    move v8, v4

    .line 188
    move/from16 v4, v18

    .line 190
    move v10, v5

    .line 191
    move/from16 v5, v19

    .line 193
    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V

    .line 196
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    .line 198
    if-nez v0, :cond_cf

    .line 200
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    .line 202
    sub-int v0, v17, v0

    .line 204
    int-to-float v0, v0

    .line 205
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentMinHeight:F

    .line 207
    goto :goto_d6

    .line 208
    :cond_cf
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentBottomMargin:I

    .line 210
    sub-int v0, v17, v0

    .line 212
    int-to-float v0, v0

    .line 213
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentMinHeight:F

    .line 215
    :goto_d6
    div-float/2addr v0, v1

    .line 216
    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    .line 219
    move-result v1

    .line 220
    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    .line 223
    move-result v1

    .line 224
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    .line 226
    if-eqz v2, :cond_e9

    .line 228
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 230
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 233
    goto :goto_110

    .line 234
    :cond_e9
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 236
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 238
    if-eqz v3, :cond_110

    .line 240
    check-cast v2, Landroid/view/ViewGroup;

    .line 242
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 245
    move-result v2

    .line 246
    if-lez v2, :cond_110

    .line 248
    const/4 v2, 0x0

    .line 249
    :goto_f8
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 251
    check-cast v3, Landroid/view/ViewGroup;

    .line 253
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 256
    move-result v3

    .line 257
    if-ge v2, v3, :cond_110

    .line 259
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    .line 261
    check-cast v3, Landroid/view/ViewGroup;

    .line 263
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 270
    add-int/lit8 v2, v2, 0x1

    .line 272
    goto :goto_f8

    .line 273
    :cond_110
    :goto_110
    move-object/from16 v1, v20

    .line 275
    invoke-direct {v6, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeTriggerContentViewList(Landroid/view/View;)Ljava/util/List;

    .line 278
    move-result-object v1

    .line 279
    sub-float/2addr v0, v8

    .line 280
    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    .line 283
    goto :goto_11f

    .line 284
    :cond_11b
    move v8, v4

    .line 285
    move v10, v5

    .line 286
    move/from16 v16, v7

    .line 288
    :goto_11f
    if-eqz v11, :cond_1fe

    .line 290
    add-int v11, v13, v14

    .line 292
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 294
    if-nez v0, :cond_129

    .line 296
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 298
    :cond_129
    move-object v5, v0

    .line 299
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollType()I

    .line 302
    move-result v0

    .line 303
    const/4 v1, 0x1

    .line 304
    if-ne v0, v1, :cond_180

    .line 306
    add-int v0, v13, v9

    .line 308
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 310
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 313
    move-result v1

    .line 314
    neg-int v1, v1

    .line 315
    neg-int v2, v14

    .line 316
    add-int v0, v16, v0

    .line 318
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 321
    move-result v0

    .line 322
    add-int/2addr v1, v0

    .line 323
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 325
    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 328
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    .line 330
    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    .line 332
    add-int/2addr v1, v2

    .line 333
    iget v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 335
    sub-int/2addr v2, v0

    .line 336
    const/4 v0, 0x0

    .line 337
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 340
    move-result v2

    .line 341
    sub-int/2addr v1, v2

    .line 342
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 344
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 347
    move-result-object v0

    .line 348
    if-nez v0, :cond_162

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    .line 352
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 355
    :cond_162
    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    .line 357
    sub-int/2addr v2, v1

    .line 358
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 360
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 363
    move-result v3

    .line 364
    iget v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    .line 366
    const/4 v5, 0x0

    .line 367
    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 372
    invoke-virtual {v2, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 375
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    .line 377
    add-int/2addr v1, v0

    .line 378
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    .line 380
    add-int/2addr v1, v0

    .line 381
    iput v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    .line 383
    goto/16 :goto_1ff

    .line 385
    :cond_180
    add-int v0, v13, v9

    .line 387
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    .line 389
    add-int v3, v0, v1

    .line 391
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 393
    const/16 v17, 0x0

    .line 395
    move-object/from16 v0, p0

    .line 397
    move-object v2, v5

    .line 398
    move/from16 v4, v16

    .line 400
    move-object/from16 v21, v5

    .line 402
    move/from16 v5, v17

    .line 404
    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;IIZ)V

    .line 407
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    .line 409
    if-nez v0, :cond_1a2

    .line 411
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    .line 413
    sub-int v0, v16, v0

    .line 415
    int-to-float v0, v0

    .line 416
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentMinHeight:F

    .line 418
    goto :goto_1a9

    .line 419
    :cond_1a2
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentBottomMargin:I

    .line 421
    sub-int v0, v16, v0

    .line 423
    int-to-float v0, v0

    .line 424
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentMinHeight:F

    .line 426
    :goto_1a9
    add-float/2addr v0, v1

    .line 427
    div-float/2addr v0, v1

    .line 428
    add-float v4, v0, v8

    .line 430
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    .line 433
    move-result v1

    .line 434
    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    .line 437
    move-result v1

    .line 438
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    .line 440
    if-eqz v2, :cond_1bf

    .line 442
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 444
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 447
    goto :goto_1e6

    .line 448
    :cond_1bf
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 450
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 452
    if-eqz v3, :cond_1e6

    .line 454
    check-cast v2, Landroid/view/ViewGroup;

    .line 456
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 459
    move-result v2

    .line 460
    if-lez v2, :cond_1e6

    .line 462
    const/4 v2, 0x0

    .line 463
    :goto_1ce
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 465
    check-cast v3, Landroid/view/ViewGroup;

    .line 467
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 470
    move-result v3

    .line 471
    if-ge v2, v3, :cond_1e6

    .line 473
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 475
    check-cast v3, Landroid/view/ViewGroup;

    .line 477
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 480
    move-result-object v3

    .line 481
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 484
    add-int/lit8 v2, v2, 0x1

    .line 486
    goto :goto_1ce

    .line 487
    :cond_1e6
    :goto_1e6
    move-object/from16 v1, v21

    .line 489
    invoke-direct {v6, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeHeaderContentViewList(Landroid/view/View;)Ljava/util/List;

    .line 492
    move-result-object v1

    .line 493
    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    .line 496
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    .line 498
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 501
    move-result v0

    .line 502
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopMargin:I

    .line 504
    add-int/2addr v0, v1

    .line 505
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    .line 507
    add-int/2addr v0, v1

    .line 508
    iput v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    .line 510
    goto :goto_1ff

    .line 511
    :cond_1fe
    move v11, v13

    .line 512
    :goto_1ff
    add-int/2addr v14, v13

    .line 513
    add-int/2addr v14, v9

    .line 514
    if-eqz v12, :cond_223

    .line 516
    add-int/2addr v11, v15

    .line 517
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 519
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 522
    move-result v0

    .line 523
    neg-int v0, v0

    .line 524
    iget-boolean v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    .line 526
    if-eqz v1, :cond_216

    .line 528
    add-int v1, v16, v14

    .line 530
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    .line 533
    move-result v1

    .line 534
    goto :goto_21c

    .line 535
    :cond_216
    add-int v1, v7, v14

    .line 537
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    .line 540
    move-result v1

    .line 541
    :goto_21c
    add-int/2addr v0, v1

    .line 542
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 544
    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 547
    goto :goto_234

    .line 548
    :cond_223
    iget-boolean v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsStickyBeyondTrigger:Z

    .line 550
    if-eqz v0, :cond_22e

    .line 552
    add-int v0, v16, v14

    .line 554
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    .line 557
    move-result v1

    .line 558
    goto :goto_234

    .line 559
    :cond_22e
    add-int v0, v7, v14

    .line 561
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    .line 564
    move-result v1

    .line 565
    :goto_234
    add-int v0, v1, v15

    .line 567
    if-eqz v12, :cond_254

    .line 569
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

    .line 571
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 574
    move-result v2

    .line 575
    const/4 v3, 0x4

    .line 576
    if-ne v2, v3, :cond_245

    .line 578
    move v0, v1

    .line 579
    const/4 v2, 0x0

    .line 580
    const/4 v15, 0x0

    .line 581
    goto :goto_255

    .line 582
    :cond_245
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    .line 584
    if-eqz v2, :cond_254

    .line 586
    iget v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    .line 588
    if-gez v2, :cond_254

    .line 590
    add-int/2addr v15, v2

    .line 591
    const/4 v2, 0x0

    .line 592
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    .line 595
    move-result v15

    .line 596
    goto :goto_255

    .line 597
    :cond_254
    const/4 v2, 0x0

    .line 598
    :goto_255
    add-int/2addr v1, v15

    .line 599
    add-int v3, v7, v11

    .line 601
    add-int/2addr v3, v2

    .line 602
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 604
    if-nez v2, :cond_26a

    .line 606
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    .line 608
    if-eqz v2, :cond_266

    .line 610
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 613
    move-result v3

    .line 614
    goto :goto_26a

    .line 615
    :cond_266
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 618
    move-result v3

    .line 619
    :cond_26a
    :goto_26a
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 621
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 624
    move-result v1

    .line 625
    neg-int v1, v1

    .line 626
    add-int/2addr v1, v3

    .line 627
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 629
    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 632
    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    .line 634
    sub-int v2, v7, v1

    .line 636
    if-lez v2, :cond_282

    .line 638
    const/4 v2, 0x1

    .line 639
    invoke-direct {v6, v1, v7, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    .line 642
    goto :goto_28b

    .line 643
    :cond_282
    sub-int v2, v7, v1

    .line 645
    if-gez v2, :cond_28b

    .line 647
    const/4 v2, 0x0

    .line 648
    invoke-direct {v6, v1, v7, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    .line 651
    goto :goto_28c

    .line 652
    :cond_28b
    :goto_28b
    const/4 v2, 0x0

    .line 653
    :goto_28c
    iput v7, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    .line 655
    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isHeaderOpen()Z

    .line 658
    move-result v1

    .line 659
    invoke-virtual {v6, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateHeaderOpen(Z)V

    .line 662
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 664
    if-eqz v1, :cond_2e7

    .line 666
    iget-boolean v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mIsMaskBitmapFromWindowBg:Z

    .line 668
    if-eqz v3, :cond_2cf

    .line 670
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 673
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 675
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 678
    move-result v3

    .line 679
    iget-object v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 681
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 684
    move-result v4

    .line 685
    iget-object v5, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRootView:Landroid/view/View;

    .line 687
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 690
    move-result v5

    .line 691
    add-int/2addr v5, v4

    .line 692
    iget-object v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRootView:Landroid/view/View;

    .line 694
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 697
    move-result v4

    .line 698
    invoke-virtual {v1, v3, v2, v5, v4}, Landroid/view/View;->layout(IIII)V

    .line 701
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mClipOverBgBounds:Landroid/graphics/Rect;

    .line 703
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 705
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 708
    move-result v3

    .line 709
    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 712
    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 714
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mClipOverBgBounds:Landroid/graphics/Rect;

    .line 716
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 719
    goto :goto_2e2

    .line 720
    :cond_2cf
    const/4 v3, 0x1

    .line 721
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 724
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 726
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 729
    move-result v3

    .line 730
    iget-object v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOverBgView:Landroid/view/View;

    .line 732
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 735
    move-result v4

    .line 736
    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 739
    :goto_2e2
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    .line 741
    invoke-direct {v6, v7, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateOverBgState(II)V

    .line 744
    :cond_2e7
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
    invoke-direct {p0, p1, p2, p2, p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    .line 9
    return-void
.end method

.method public removeNestedHeaderChangedListener()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 4
    return-void
.end method

.method public setAcceptTriggerRootViewAlpha(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptTriggerRootViewAlpha:Z

    .line 3
    return-void
.end method

.method public setAutoAllClose(Z)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    .line 10
    const/4 v3, 0x0

    .line 11
    iget v4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    .line 13
    new-array v5, v0, [I

    .line 15
    new-array v6, v0, [I

    .line 17
    const/4 v7, 0x1

    .line 18
    move-object v2, p0

    .line 19
    invoke-virtual/range {v2 .. v7}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedPreScroll(II[I[II)Z

    .line 22
    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    .line 25
    :cond_18
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    .line 32
    move-result v1

    .line 33
    if-le v0, v1, :cond_33

    .line 35
    if-eqz p1, :cond_2c

    .line 37
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    .line 40
    move-result p1

    .line 41
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    .line 44
    goto :goto_33

    .line 45
    :cond_2c
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    .line 48
    move-result p1

    .line 49
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    .line 52
    :cond_33
    :goto_33
    return-void
.end method

.method public setAutoAllOpen(Z)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    .line 3
    if-eqz v0, :cond_19

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    .line 15
    neg-int v6, v0

    .line 16
    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    .line 18
    const/4 v8, 0x1

    .line 19
    move-object v2, p0

    .line 20
    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedScroll(IIII[II)Z

    .line 23
    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    .line 26
    :cond_19
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 33
    move-result v1

    .line 34
    if-ge v0, v1, :cond_34

    .line 36
    if-eqz p1, :cond_2d

    .line 38
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 41
    move-result p1

    .line 42
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    .line 45
    goto :goto_34

    .line 46
    :cond_2d
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 49
    move-result p1

    .line 50
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    .line 53
    :cond_34
    :goto_34
    return-void
.end method

.method public setAutoAnim(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    .line 3
    return-void
.end method

.method public setAutoHeaderClose(Z)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    .line 10
    const/4 v3, 0x0

    .line 11
    iget v4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    .line 13
    new-array v5, v0, [I

    .line 15
    new-array v6, v0, [I

    .line 17
    const/4 v7, 0x1

    .line 18
    move-object v2, p0

    .line 19
    invoke-virtual/range {v2 .. v7}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedPreScroll(II[I[II)Z

    .line 22
    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    .line 25
    :cond_18
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3f

    .line 31
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 38
    move-result v1

    .line 39
    if-le v0, v1, :cond_3f

    .line 41
    if-eqz p1, :cond_32

    .line 43
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    .line 46
    move-result p1

    .line 47
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    .line 50
    goto :goto_3f

    .line 51
    :cond_32
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3f

    .line 57
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    .line 60
    move-result p1

    .line 61
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method public setAutoHeaderOpen(Z)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    .line 3
    if-eqz v0, :cond_19

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    .line 15
    neg-int v6, v0

    .line 16
    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    .line 18
    const/4 v8, 0x1

    .line 19
    move-object v2, p0

    .line 20
    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedScroll(IIII[II)Z

    .line 23
    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    .line 26
    :cond_19
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_36

    .line 32
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 35
    move-result v0

    .line 36
    if-gez v0, :cond_36

    .line 38
    if-eqz p1, :cond_2f

    .line 40
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    .line 43
    move-result p1

    .line 44
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    .line 51
    move-result p1

    .line 52
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    .line 55
    :cond_36
    :goto_36
    return-void
.end method

.method public setAutoTriggerClose(Z)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_15

    .line 8
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

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
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_30

    .line 28
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

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
    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    .line 57
    goto :goto_3e

    .line 58
    :cond_39
    if-eq v0, v1, :cond_3e

    .line 60
    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setAutoTriggerOpen(Z)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    .line 3
    if-eqz v0, :cond_1f

    .line 5
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isHeaderOpen()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1f

    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    .line 21
    neg-int v6, v0

    .line 22
    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    .line 24
    const/4 v8, 0x1

    .line 25
    move-object v2, p0

    .line 26
    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedScroll(IIII[II)Z

    .line 29
    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_40

    .line 38
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 45
    move-result v1

    .line 46
    if-ge v0, v1, :cond_40

    .line 48
    if-eqz p1, :cond_39

    .line 50
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 53
    move-result p1

    .line 54
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    .line 57
    goto :goto_40

    .line 58
    :cond_39
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 61
    move-result p1

    .line 62
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setHeaderAutoCloseEnable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mEnableHeaderAutoClose:Z

    .line 3
    return-void
.end method

.method public setHeaderRootViewAcceptAlpha(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAcceptHeaderRootViewAlpha:Z

    .line 3
    return-void
.end method

.method public setHeaderViewVisible(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

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
    invoke-direct {p0, v1, v1, v1, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    .line 18
    :cond_11
    return-void
.end method

.method public setInSearchMode(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1, p1, p1, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    return-void
.end method

.method public setNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 3
    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 3
    return-void
.end method

.method public setSelfScrollFirst(Z)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    .line 3
    if-eq v0, p1, :cond_25

    .line 5
    if-eqz v0, :cond_25

    .line 7
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isHeaderOpen()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_25

    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(II)Z

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    .line 23
    neg-int v6, v0

    .line 24
    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    .line 26
    const/4 v8, 0x1

    .line 27
    move-object v2, p0

    .line 28
    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedScroll(IIII[II)Z

    .line 31
    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    .line 38
    :cond_25
    invoke-super {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->setSelfScrollFirst(Z)V

    .line 41
    return-void
.end method

.method public setStickyViewVisible(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mStickyView:Landroid/view/View;

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
    invoke-direct {p0, v1, v1, p1, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    .line 18
    :cond_11
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setTriggerViewVisible(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

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
    invoke-direct {p0, v1, p1, v1, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZZ)V

    .line 18
    :cond_11
    return-void
.end method

.method public updateCoordinatorHeightGapInfo(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateCoordinatorHeightGapInfo(II)V

    .line 4
    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    .line 6
    if-eqz p2, :cond_10

    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingProgressImmediately(I)V

    .line 16
    goto :goto_19

    .line 17
    :cond_10
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 20
    move-result p1

    .line 21
    iget p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderVisibleHeight:I

    .line 23
    invoke-direct {p0, p1, p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateOverBgState(II)V

    .line 26
    :goto_19
    return-void
.end method

.method public updateScrollingProgressImmediately(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->onScrollingProgressUpdated(I)V

    .line 7
    return-void
.end method
