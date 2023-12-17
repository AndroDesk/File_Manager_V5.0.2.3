.class public Lmiuix/navigation/SplitLayout;
.super Landroid/view/ViewGroup;
.source "SplitLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigation/SplitLayout$SavedState;,
        Lmiuix/navigation/SplitLayout$SplitTransitionListener;,
        Lmiuix/navigation/SplitLayout$WidthDescription;,
        Lmiuix/navigation/SplitLayout$SplitListenerAdapter;,
        Lmiuix/navigation/SplitLayout$SplitListener;
    }
.end annotation


# static fields
.field private static final ABSOLUTE:I

.field private static final PROPERTY:Ljava/lang/String; = "ratio"

.field private static final RELATIVE_TO_PARENT:I

.field public static final SPLIT_MODE_OVERLAY:I

.field public static final SPLIT_MODE_PUSH_AWAY:I

.field public static final SPLIT_MODE_SQUEEZED:I

.field public static final TAG_CLOSE:Ljava/lang/String; = "close"

.field public static final TAG_OPEN:Ljava/lang/String; = "open"


# instance fields
.field private final mAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mCollapseOnTouchOutside:Z

.field private mContentIdString:Ljava/lang/String;

.field private mContentView:Landroid/view/View;

.field private mDividerColor:I

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mFirstMeasure:Z

.field private mIsContentEnable:Z

.field private mIsContentOpen:Z

.field private mIsNavigationEnable:Z

.field private mIsNavigationOpen:Z

.field private mIsShowDivider:Z

.field private final mMaskPaint:Landroid/graphics/Paint;

.field private final mMaskRect:Landroid/graphics/RectF;

.field private mNavigationDefaultRatio:F

.field private mNavigationIdString:Ljava/lang/String;

.field private mNavigationView:Landroid/view/View;

.field private final mOverlayWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

.field private mRatio:F

.field private mSplitListener:Lmiuix/navigation/SplitLayout$SplitListener;

.field private mSplitMode:I

.field private final mSqueezedWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

.field private final mStateStyle:Lmiuix/animation/IStateStyle;

.field private mTrackingPointerId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/SplitLayout;->ABSOLUTE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/SplitLayout;->RELATIVE_TO_PARENT:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/SplitLayout;->SPLIT_MODE_OVERLAY:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/SplitLayout;->SPLIT_MODE_PUSH_AWAY:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/SplitLayout;->SPLIT_MODE_SQUEEZED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/navigation/SplitLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiuix/navigation/R$attr;->splitLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/navigation/SplitLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mFirstMeasure:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mCollapseOnTouchOutside:Z

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    sget-object v1, Lmiuix/navigation/R$styleable;->SplitLayout:[I

    sget v2, Lmiuix/navigation/R$style;->Widget_SplitLayout:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_overlayNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    invoke-static {p2, p3, v1}, Lmiuix/navigation/SplitLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;F)Lmiuix/navigation/SplitLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/SplitLayout;->mOverlayWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_squeezedNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    invoke-static {p2, p3, v1}, Lmiuix/navigation/SplitLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;F)Lmiuix/navigation/SplitLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/SplitLayout;->mSqueezedWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_splitMode:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_isShowDivider:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/navigation/SplitLayout;->mIsShowDivider:Z

    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_dividerWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/SplitLayout;->mDividerWidth:I

    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_dividerColor:I

    const/high16 v1, 0x1a000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/SplitLayout;->mDividerColor:I

    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_navigationId:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/SplitLayout;->mNavigationIdString:Ljava/lang/String;

    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_contentId:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/SplitLayout;->mContentIdString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p0, p1, p3

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigation/SplitLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_b6

    const/4 v1, -0x2

    invoke-static {v1, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v0, Lmiuix/navigation/SplitLayout$SplitTransitionListener;

    invoke-direct {v0, p0}, Lmiuix/navigation/SplitLayout$SplitTransitionListener;-><init>(Lmiuix/navigation/SplitLayout;)V

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigation/SplitLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    return-void

    nop

    :array_b6
    .array-data 4
        0x3f666666  # 0.9f
        0x3ecccccd  # 0.4f
    .end array-data
.end method

.method public static synthetic access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;
    .registers 1

    iget-object p0, p0, Lmiuix/navigation/SplitLayout;->mSplitListener:Lmiuix/navigation/SplitLayout$SplitListener;

    return-object p0
.end method

.method private checkMode()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    if-nez v2, :cond_22

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lmiuix/navigation/R$id;->miuix_content:I

    if-ne v1, v2, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_2d

    :cond_22
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lmiuix/navigation/R$id;->miuix_navigation:I

    if-ne v1, v2, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->shouldDrawDivider()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/navigation/SplitLayout;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mDividerWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1e
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    iget-object v2, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v0, v1

    :cond_35
    move v5, v1

    const/4 v4, 0x0

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lmiuix/navigation/SplitLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_45
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .registers 11

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    const/high16 v2, 0x437f0000  # 255.0f

    const v3, 0x3e99999a  # 0.3f

    const/4 v4, 0x0

    if-nez v1, :cond_56

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    iget-object v5, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v1, v5

    iget-object v5, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_2c

    move v6, v4

    goto :goto_2d

    :cond_2c
    move v6, v1

    :goto_2d
    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    goto :goto_3b

    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_3b
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v6, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    mul-float/2addr v1, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_14f

    :cond_56
    const/4 v5, 0x2

    const/high16 v6, 0x3f800000  # 1.0f

    if-ne v1, v5, :cond_81

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v5, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    mul-float/2addr v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    sub-float/2addr v6, v1

    mul-float/2addr v6, v3

    mul-float/2addr v6, v2

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_14f

    :cond_81
    const/4 v5, 0x1

    if-ne v1, v5, :cond_14f

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_99

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    goto :goto_9a

    :cond_99
    move v5, v4

    :goto_9a
    if-eqz v0, :cond_a2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    goto :goto_ac

    :cond_a2
    iget-object v7, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    mul-float/2addr v7, v8

    :goto_ac
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v5, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    iget v5, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v3

    mul-float/2addr v6, v2

    float-to-int v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-boolean v1, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    if-nez v1, :cond_108

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/navigation/R$color;->miuix_split_mask_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_ea

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    goto :goto_eb

    :cond_ea
    move v2, v4

    :goto_eb
    if-eqz v0, :cond_f2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_f8

    :cond_f2
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :goto_f8
    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_108
    iget-boolean v1, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    if-nez v1, :cond_14f

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/navigation/R$color;->miuix_split_mask_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->shouldDrawDivider()Z

    move-result v2

    if-eqz v2, :cond_12a

    iget v2, p0, Lmiuix/navigation/SplitLayout;->mDividerWidth:I

    goto :goto_12b

    :cond_12a
    const/4 v2, 0x0

    :goto_12b
    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_138

    move v1, v4

    :cond_138
    if-eqz v0, :cond_13b

    goto :goto_140

    :cond_13b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    :goto_140
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v1, v4, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_14f
    :goto_14f
    return-void
.end method

.method private getNavigationWidth(I)I
    .registers 5

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return p1

    :cond_6
    const/4 v1, 0x1

    if-eqz v0, :cond_b

    if-ne v0, v1, :cond_27

    :cond_b
    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mSqueezedWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    goto :goto_12

    :cond_10
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mOverlayWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    :goto_12
    iget-boolean v2, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    if-nez v2, :cond_27

    iget v2, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    if-eqz v2, :cond_23

    if-eq v2, v1, :cond_1d

    goto :goto_27

    :cond_1d
    iget v0, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_23
    iget p1, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    float-to-int p1, p1

    return p1

    :cond_27
    :goto_27
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->getNavigationDefaultRatio()F

    move-result v0

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private isPointInView(Landroid/view/View;II)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v2

    int-to-float p2, p2

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_28

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_28

    int-to-float p2, p3

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_28

    cmpl-float p1, p2, v2

    if-ltz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    return p1
.end method

.method private measureChildWithPadding(Landroid/view/View;III)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private onRatioUpdated(F)V
    .registers 8

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000  # 1.0f

    if-nez v1, :cond_39

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    sub-float p1, v5, p1

    if-eqz v0, :cond_1e

    move v2, v4

    :cond_1e
    int-to-float v0, v2

    mul-float/2addr p1, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_2e
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_35

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_9d

    :cond_39
    if-ne v1, v4, :cond_68

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    if-eqz v1, :cond_60

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    sub-float/2addr v5, p1

    if-eqz v0, :cond_4b

    move v2, v4

    :cond_4b
    int-to-float p1, v2

    mul-float/2addr v5, p1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v5, p1

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_60
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_9d

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_9d

    :cond_68
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    if-eqz v0, :cond_85

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    sub-float v1, v5, p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_85
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_9a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9d
    :goto_9d
    return-void
.end method

.method private prepareChildView()V
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_56

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_3a

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_37

    const/4 v4, 0x0

    :try_start_16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_1e} :catch_1e

    :catch_1e
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationIdString:Ljava/lang/String;

    if-eqz v3, :cond_2b

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iput-object v2, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    goto :goto_37

    :cond_2b
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mContentIdString:Ljava/lang/String;

    if-eqz v3, :cond_37

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iput-object v2, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3a
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_46

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    return-void

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set contentId in layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set navigationId in layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SplitLayout must have at least two child views!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldDrawDivider()Z
    .registers 4

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsShowDivider:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_11

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private switchNavigationInternal(ZZ)V
    .registers 10

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mFirstMeasure:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move p2, v1

    goto :goto_c

    :cond_7
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    if-ne v0, p1, :cond_c

    return-void

    :cond_c
    :goto_c
    const/4 v0, 0x3

    const-string v2, "ratio"

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_5e

    iput-boolean v5, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    iget p1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    if-eq p1, v4, :cond_1c

    move p1, v5

    goto :goto_1d

    :cond_1c
    move p1, v1

    :goto_1d
    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    const/high16 p1, 0x3f800000  # 1.0f

    const-string v6, "open"

    if-eqz p2, :cond_3e

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object p2, p0, Lmiuix/navigation/SplitLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v1

    aput-object v2, v3, v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p1, v3, v0

    invoke-interface {p2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_99

    :cond_3e
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object p2, p0, Lmiuix/navigation/SplitLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v1

    aput-object v2, v3, v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p1, v3, v0

    invoke-interface {p2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mSplitListener:Lmiuix/navigation/SplitLayout$SplitListener;

    if-eqz p1, :cond_99

    invoke-interface {p1}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitOpen()V

    goto :goto_99

    :cond_5e
    iput-boolean v1, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    iput-boolean v5, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    const/4 p1, 0x0

    const-string v6, "close"

    if-eqz p2, :cond_7d

    iget-object p2, p0, Lmiuix/navigation/SplitLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v1

    aput-object v2, v3, v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p1, v3, v0

    invoke-interface {p2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_99

    :cond_7d
    iget-object p2, p0, Lmiuix/navigation/SplitLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v1

    aput-object v2, v3, v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p1, v3, v0

    invoke-interface {p2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mSplitListener:Lmiuix/navigation/SplitLayout$SplitListener;

    if-eqz p1, :cond_99

    invoke-interface {p1}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitClose()V

    :cond_99
    :goto_99
    return-void
.end method


# virtual methods
.method public closeNavigation()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigation/SplitLayout;->closeNavigation(Z)V

    return-void
.end method

.method public closeNavigation(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiuix/navigation/SplitLayout;->switchNavigationInternal(ZZ)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiuix/navigation/SplitLayout;->drawDivider(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiuix/navigation/SplitLayout;->drawMask(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mCollapseOnTouchOutside:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isNavigationOpen()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lt v0, v3, :cond_d1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt v0, v3, :cond_d1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lt v2, v0, :cond_d1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-gt v2, v0, :cond_d1

    invoke-virtual {p0, v1}, Lmiuix/navigation/SplitLayout;->closeNavigation(Z)V

    return v1

    :cond_37
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    if-ne v0, v1, :cond_d1

    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isContentEnable()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isNavigationEnable()Z

    move-result v0

    if-nez v0, :cond_d1

    :cond_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7c

    const/4 v2, 0x5

    if-eq v0, v2, :cond_71

    const/4 v2, 0x6

    if-eq v0, v2, :cond_54

    goto :goto_83

    :cond_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    if-ne v3, v4, :cond_83

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_6a

    add-int/lit8 v3, v0, -0x2

    :cond_6a
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    goto :goto_83

    :cond_71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    goto :goto_83

    :cond_7c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    :cond_83
    :goto_83
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_91

    if-gez v0, :cond_9c

    :cond_91
    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    :cond_9c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isContentEnable()Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_bc

    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    invoke-direct {p0, v3, v2, v0}, Lmiuix/navigation/SplitLayout;->isPointInView(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_bc

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_bc
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isNavigationEnable()Z

    move-result v3

    if-nez v3, :cond_d1

    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-direct {p0, v3, v2, v0}, Lmiuix/navigation/SplitLayout;->isPointInView(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_d1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getNavigationDefaultRatio()F
    .registers 3

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowSizeDp(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_19

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_19

    invoke-static {v0}, Lmiuix/navigation/utils/Utils;->getNaviRatio(Landroid/graphics/Point;)F

    move-result v0

    iput v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    :cond_19
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    return v0
.end method

.method public getRatio()F
    .registers 2

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    return v0
.end method

.method public getSplitMode()I
    .registers 2

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    return v0
.end method

.method public isContentEnable()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    return v0
.end method

.method public isContentOpen()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    return v0
.end method

.method public isNavigationEnable()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    return v0
.end method

.method public isNavigationOpen()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->prepareChildView()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 12

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    iget-object v2, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->shouldDrawDivider()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v2, p0, Lmiuix/navigation/SplitLayout;->mDividerWidth:I

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v2, v0

    const/4 v3, 0x0

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    move v4, p4

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    goto :goto_7f

    :cond_3d
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_7f

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7f

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-direct {p0, v0}, Lmiuix/navigation/SplitLayout;->getNavigationWidth(I)I

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {p0, v3, v4, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    const/4 v3, 0x0

    if-nez v1, :cond_29

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    invoke-direct {p0, v1, p1, v0, p2}, Lmiuix/navigation/SplitLayout;->measureChildWithPadding(Landroid/view/View;III)V

    goto :goto_4f

    :cond_29
    const/4 v4, 0x1

    if-ne v1, v4, :cond_47

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    const/high16 v4, 0x3f000000  # 0.5f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_35

    goto :goto_41

    :cond_35
    sub-int/2addr v0, v2

    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->shouldDrawDivider()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mDividerWidth:I

    goto :goto_40

    :cond_3f
    move v1, v3

    :goto_40
    sub-int/2addr v0, v1

    :goto_41
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    invoke-direct {p0, v1, p1, v0, p2}, Lmiuix/navigation/SplitLayout;->measureChildWithPadding(Landroid/view/View;III)V

    goto :goto_4f

    :cond_47
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4f

    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    invoke-direct {p0, v1, p1, v0, p2}, Lmiuix/navigation/SplitLayout;->measureChildWithPadding(Landroid/view/View;III)V

    :cond_4f
    :goto_4f
    iget-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mFirstMeasure:Z

    if-eqz p1, :cond_5a

    iget p1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    invoke-direct {p0, p1}, Lmiuix/navigation/SplitLayout;->onRatioUpdated(F)V

    iput-boolean v3, p0, Lmiuix/navigation/SplitLayout;->mFirstMeasure:Z

    :cond_5a
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lmiuix/navigation/SplitLayout$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-static {p1}, Lmiuix/navigation/SplitLayout$SavedState;->access$000(Lmiuix/navigation/SplitLayout$SavedState;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    invoke-static {p1}, Lmiuix/navigation/SplitLayout$SavedState;->access$100(Lmiuix/navigation/SplitLayout$SavedState;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    invoke-static {p1}, Lmiuix/navigation/SplitLayout$SavedState;->access$200(Lmiuix/navigation/SplitLayout$SavedState;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    invoke-static {p1}, Lmiuix/navigation/SplitLayout$SavedState;->access$300(Lmiuix/navigation/SplitLayout$SavedState;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    invoke-static {p1}, Lmiuix/navigation/SplitLayout$SavedState;->access$400(Lmiuix/navigation/SplitLayout$SavedState;)F

    move-result p1

    iput p1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiuix/navigation/SplitLayout$SavedState;

    invoke-direct {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    invoke-static {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;->access$002(Lmiuix/navigation/SplitLayout$SavedState;Z)Z

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    invoke-static {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;->access$102(Lmiuix/navigation/SplitLayout$SavedState;Z)Z

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    invoke-static {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;->access$202(Lmiuix/navigation/SplitLayout$SavedState;Z)Z

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    invoke-static {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;->access$302(Lmiuix/navigation/SplitLayout$SavedState;Z)Z

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    invoke-static {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;->access$402(Lmiuix/navigation/SplitLayout$SavedState;F)F

    return-object v1
.end method

.method public openNavigation()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigation/SplitLayout;->openNavigation(Z)V

    return-void
.end method

.method public openNavigation(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lmiuix/navigation/SplitLayout;->switchNavigationInternal(ZZ)V

    return-void
.end method

.method public resetToDefaultNavigationRatio()V
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->getSplitMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/navigation/SplitLayout;->resetToDefaultNavigationRatio(I)V

    return-void
.end method

.method public resetToDefaultNavigationRatio(I)V
    .registers 3

    const/4 v0, 0x1

    if-nez p1, :cond_e

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mOverlayWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    iput-boolean v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    goto :goto_1a

    :cond_e
    if-ne p1, v0, :cond_1a

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mSqueezedWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    iput-boolean v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setCollapseOnTouchOutside(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mCollapseOnTouchOutside:Z

    return-void
.end method

.method public setContentEnable(Z)V
    .registers 3

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    const/4 v0, 0x1

    if-nez p1, :cond_7

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    :cond_7
    iget p1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    return-void
.end method

.method public setNavigationEnable(Z)V
    .registers 3

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    const/4 v0, 0x1

    if-nez p1, :cond_7

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    :cond_7
    iget p1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    return-void
.end method

.method public setNavigationWidth(I)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->getSplitMode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lmiuix/navigation/SplitLayout;->setNavigationWidth(II)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNavigationWidth(IF)V
    .registers 7

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_18

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mOverlayWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v3, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    iput-boolean v2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    goto :goto_2a

    :cond_18
    if-ne p1, v3, :cond_2a

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mSqueezedWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v3, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    iput-boolean v2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNavigationWidth(II)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_d

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mOverlayWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    iput-boolean v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    int-to-float p2, p2

    iput p2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    goto :goto_19

    :cond_d
    const/4 v1, 0x1

    if-ne p1, v1, :cond_19

    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mSqueezedWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    iput-boolean v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    int-to-float p2, p2

    iput p2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    :cond_19
    :goto_19
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNavigationWidthPercent(F)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->getSplitMode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lmiuix/navigation/SplitLayout;->setNavigationWidth(IF)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setRatio(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_11

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_c

    goto :goto_11

    :cond_c
    iput p1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    invoke-direct {p0, p1}, Lmiuix/navigation/SplitLayout;->onRatioUpdated(F)V

    :cond_11
    :goto_11
    return-void
.end method

.method public setShowDivider(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsShowDivider:Z

    if-eq p1, v0, :cond_e

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mIsShowDivider:Z

    iget p1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_e
    return-void
.end method

.method public setSplitListener(Lmiuix/navigation/SplitLayout$SplitListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigation/SplitLayout;->mSplitListener:Lmiuix/navigation/SplitLayout$SplitListener;

    return-void
.end method

.method public setSplitMode(I)V
    .registers 3

    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    if-eq v0, p1, :cond_c

    iput p1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->checkMode()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_c
    iget p1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    invoke-virtual {p0, p1}, Lmiuix/navigation/SplitLayout;->setRatio(F)V

    return-void
.end method

.method public toggle()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigation/SplitLayout;->toggle(Z)V

    return-void
.end method

.method public toggle(Z)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isNavigationOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lmiuix/navigation/SplitLayout;->closeNavigation(Z)V

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Lmiuix/navigation/SplitLayout;->openNavigation(Z)V

    :goto_d
    return-void
.end method
