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
.field private static final ABSOLUTE:I = 0x0

.field private static final PROPERTY:Ljava/lang/String; = "ratio"

.field private static final RELATIVE_TO_PARENT:I = 0x1

.field public static final SPLIT_MODE_OVERLAY:I = 0x0

.field public static final SPLIT_MODE_PUSH_AWAY:I = 0x2

.field public static final SPLIT_MODE_SQUEEZED:I = 0x1

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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/navigation/SplitLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/navigation/R$attr;->splitLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/navigation/SplitLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mFirstMeasure:Z

    .line 6
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 7
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    .line 8
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mCollapseOnTouchOutside:Z

    .line 9
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    .line 10
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    .line 11
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    .line 12
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    const/high16 v1, 0x3f800000  # 1.0f

    .line 13
    iput v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 14
    sget-object v1, Lmiuix/navigation/R$styleable;->SplitLayout:[I

    sget v2, Lmiuix/navigation/R$style;->Widget_SplitLayout:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 15
    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_overlayNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    .line 17
    invoke-static {p2, p3, v1}, Lmiuix/navigation/SplitLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;F)Lmiuix/navigation/SplitLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/SplitLayout;->mOverlayWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    .line 18
    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_squeezedNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    .line 20
    invoke-static {p2, p3, v1}, Lmiuix/navigation/SplitLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;F)Lmiuix/navigation/SplitLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/SplitLayout;->mSqueezedWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    .line 21
    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_splitMode:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 22
    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_isShowDivider:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/navigation/SplitLayout;->mIsShowDivider:Z

    .line 23
    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_dividerWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/SplitLayout;->mDividerWidth:I

    .line 24
    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_dividerColor:I

    const/high16 v1, 0x1a000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/SplitLayout;->mDividerColor:I

    .line 25
    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_navigationId:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/SplitLayout;->mNavigationIdString:Ljava/lang/String;

    .line 26
    sget p2, Lmiuix/navigation/R$styleable;->SplitLayout_contentId:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/SplitLayout;->mContentIdString:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p0, p1, p3

    .line 28
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigation/SplitLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    .line 29
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_b6

    const/4 v1, -0x2

    .line 30
    invoke-static {v1, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v0, Lmiuix/navigation/SplitLayout$SplitTransitionListener;

    invoke-direct {v0, p0}, Lmiuix/navigation/SplitLayout$SplitTransitionListener;-><init>(Lmiuix/navigation/SplitLayout;)V

    aput-object v0, p2, p3

    .line 31
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

    .line 1
    iget-object p0, p0, Lmiuix/navigation/SplitLayout;->mSplitListener:Lmiuix/navigation/SplitLayout$SplitListener;

    .line 3
    return-object p0
.end method

.method private checkMode()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ge v0, v1, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    iget v2, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 21
    if-nez v2, :cond_22

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 26
    move-result v1

    .line 27
    sget v2, Lmiuix/navigation/R$id;->miuix_content:I

    .line 29
    if-ne v1, v2, :cond_2d

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 34
    goto :goto_2d

    .line 35
    :cond_22
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 38
    move-result v1

    .line 39
    sget v2, Lmiuix/navigation/R$id;->miuix_navigation:I

    .line 41
    if-ne v1, v2, :cond_2d

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->shouldDrawDivider()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_45

    .line 7
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 9
    if-nez v0, :cond_1e

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/navigation/SplitLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 18
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mDividerColor:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 25
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mDividerWidth:I

    .line 27
    int-to-float v1, v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    :cond_1e
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 34
    move-result v0

    .line 35
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 37
    iget-object v2, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 42
    move-result v2

    .line 43
    int-to-float v2, v2

    .line 44
    mul-float/2addr v1, v2

    .line 45
    if-eqz v0, :cond_35

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 50
    move-result v0

    .line 51
    int-to-float v0, v0

    .line 52
    sub-float v1, v0, v1

    .line 54
    :cond_35
    move v5, v1

    .line 55
    const/4 v4, 0x0

    .line 56
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    move-result v0

    .line 62
    int-to-float v6, v0

    .line 63
    iget-object v7, p0, Lmiuix/navigation/SplitLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 65
    move-object v2, p1

    .line 66
    move v3, v5

    .line 67
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    :cond_45
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 3
    const/high16 v1, -0x1000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 10
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 21
    const/high16 v2, 0x437f0000  # 255.0f

    .line 23
    const v3, 0x3e99999a  # 0.3f

    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v1, :cond_56

    .line 29
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 31
    iget-object v5, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 33
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 36
    move-result v5

    .line 37
    int-to-float v5, v5

    .line 38
    mul-float/2addr v1, v5

    .line 39
    iget-object v5, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    .line 41
    if-eqz v0, :cond_2c

    .line 43
    move v6, v4

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v6, v1

    .line 46
    :goto_2d
    if-eqz v0, :cond_36

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 51
    move-result v0

    .line 52
    int-to-float v0, v0

    .line 53
    sub-float/2addr v0, v1

    .line 54
    goto :goto_3b

    .line 55
    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 58
    move-result v0

    .line 59
    int-to-float v0, v0

    .line 60
    :goto_3b
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 63
    move-result v1

    .line 64
    int-to-float v1, v1

    .line 65
    invoke-virtual {v5, v6, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 70
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 72
    mul-float/2addr v1, v3

    .line 73
    mul-float/2addr v1, v2

    .line 74
    float-to-int v1, v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    .line 80
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 85
    goto/16 :goto_14f

    .line 87
    :cond_56
    const/4 v5, 0x2

    .line 88
    const/high16 v6, 0x3f800000  # 1.0f

    .line 90
    if-ne v1, v5, :cond_81

    .line 92
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 97
    move-result v1

    .line 98
    int-to-float v1, v1

    .line 99
    iget v5, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 101
    mul-float/2addr v1, v5

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 105
    move-result v5

    .line 106
    int-to-float v5, v5

    .line 107
    invoke-virtual {v0, v4, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 112
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 114
    sub-float/2addr v6, v1

    .line 115
    mul-float/2addr v6, v3

    .line 116
    mul-float/2addr v6, v2

    .line 117
    float-to-int v1, v6

    .line 118
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    .line 123
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 128
    goto/16 :goto_14f

    .line 130
    :cond_81
    const/4 v5, 0x1

    .line 131
    if-ne v1, v5, :cond_14f

    .line 133
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    .line 135
    if-eqz v0, :cond_99

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 140
    move-result v5

    .line 141
    int-to-float v5, v5

    .line 142
    iget-object v7, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 144
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 147
    move-result v7

    .line 148
    int-to-float v7, v7

    .line 149
    iget v8, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 151
    mul-float/2addr v7, v8

    .line 152
    sub-float/2addr v5, v7

    .line 153
    goto :goto_9a

    .line 154
    :cond_99
    move v5, v4

    .line 155
    :goto_9a
    if-eqz v0, :cond_a2

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 160
    move-result v7

    .line 161
    int-to-float v7, v7

    .line 162
    goto :goto_ac

    .line 163
    :cond_a2
    iget-object v7, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 165
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 168
    move-result v7

    .line 169
    int-to-float v7, v7

    .line 170
    iget v8, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 172
    mul-float/2addr v7, v8

    .line 173
    :goto_ac
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 176
    move-result v8

    .line 177
    int-to-float v8, v8

    .line 178
    invoke-virtual {v1, v5, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 181
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 183
    iget v5, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 185
    sub-float/2addr v6, v5

    .line 186
    mul-float/2addr v6, v3

    .line 187
    mul-float/2addr v6, v2

    .line 188
    float-to-int v2, v6

    .line 189
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 192
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    .line 194
    iget-object v2, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 196
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 199
    iget-boolean v1, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    .line 201
    if-nez v1, :cond_108

    .line 203
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 208
    move-result-object v2

    .line 209
    sget v3, Lmiuix/navigation/R$color;->miuix_split_mask_color:I

    .line 211
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 214
    move-result v2

    .line 215
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    .line 220
    if-eqz v0, :cond_ea

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 225
    move-result v2

    .line 226
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 228
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 231
    move-result v3

    .line 232
    sub-int/2addr v2, v3

    .line 233
    int-to-float v2, v2

    .line 234
    goto :goto_eb

    .line 235
    :cond_ea
    move v2, v4

    .line 236
    :goto_eb
    if-eqz v0, :cond_f2

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 241
    move-result v3

    .line 242
    goto :goto_f8

    .line 243
    :cond_f2
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 245
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 248
    move-result v3

    .line 249
    :goto_f8
    int-to-float v3, v3

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 253
    move-result v5

    .line 254
    int-to-float v5, v5

    .line 255
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 258
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    .line 260
    iget-object v2, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 262
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 265
    :cond_108
    iget-boolean v1, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    .line 267
    if-nez v1, :cond_14f

    .line 269
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 274
    move-result-object v2

    .line 275
    sget v3, Lmiuix/navigation/R$color;->miuix_split_mask_color:I

    .line 277
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 280
    move-result v2

    .line 281
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 286
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 289
    move-result v1

    .line 290
    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->shouldDrawDivider()Z

    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_12a

    .line 296
    iget v2, p0, Lmiuix/navigation/SplitLayout;->mDividerWidth:I

    .line 298
    goto :goto_12b

    .line 299
    :cond_12a
    const/4 v2, 0x0

    .line 300
    :goto_12b
    add-int/2addr v1, v2

    .line 301
    int-to-float v1, v1

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 305
    move-result v2

    .line 306
    int-to-float v2, v2

    .line 307
    sub-float/2addr v2, v1

    .line 308
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    .line 310
    if-eqz v0, :cond_138

    .line 312
    move v1, v4

    .line 313
    :cond_138
    if-eqz v0, :cond_13b

    .line 315
    goto :goto_140

    .line 316
    :cond_13b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 319
    move-result v0

    .line 320
    int-to-float v2, v0

    .line 321
    :goto_140
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 324
    move-result v0

    .line 325
    int-to-float v0, v0

    .line 326
    invoke-virtual {v3, v1, v4, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 329
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mMaskRect:Landroid/graphics/RectF;

    .line 331
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 333
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 336
    :cond_14f
    :goto_14f
    return-void
.end method

.method private getNavigationWidth(I)I
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    return p1

    .line 7
    :cond_6
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_b

    .line 10
    if-ne v0, v1, :cond_27

    .line 12
    :cond_b
    if-ne v0, v1, :cond_10

    .line 14
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mSqueezedWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mOverlayWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    .line 19
    :goto_12
    iget-boolean v2, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    .line 21
    if-nez v2, :cond_27

    .line 23
    iget v2, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    .line 25
    if-eqz v2, :cond_23

    .line 27
    if-eq v2, v1, :cond_1d

    .line 29
    goto :goto_27

    .line 30
    :cond_1d
    iget v0, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    .line 32
    int-to-float p1, p1

    .line 33
    mul-float/2addr v0, p1

    .line 34
    float-to-int p1, v0

    .line 35
    return p1

    .line 36
    :cond_23
    iget p1, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    .line 38
    float-to-int p1, p1

    .line 39
    return p1

    .line 40
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->getNavigationDefaultRatio()F

    .line 43
    move-result v0

    .line 44
    int-to-float p1, p1

    .line 45
    mul-float/2addr v0, p1

    .line 46
    float-to-int p1, v0

    .line 47
    return p1
.end method

.method private isPointInView(Landroid/view/View;II)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    add-float/2addr v1, v0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 18
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    add-float/2addr p1, v2

    .line 21
    int-to-float p2, p2

    .line 22
    cmpl-float v0, p2, v0

    .line 24
    if-ltz v0, :cond_28

    .line 26
    cmpg-float p2, p2, v1

    .line 28
    if-gtz p2, :cond_28

    .line 30
    int-to-float p2, p3

    .line 31
    cmpg-float p1, p2, p1

    .line 33
    if-gtz p1, :cond_28

    .line 35
    cmpl-float p1, p2, v2

    .line 37
    if-ltz p1, :cond_28

    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    :goto_29
    return p1
.end method

.method private measureChildWithPadding(Landroid/view/View;III)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v1

    .line 14
    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 17
    move-result p2

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 21
    move-result p3

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, p3

    .line 27
    iget p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    invoke-static {p4, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 32
    move-result p3

    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 36
    return-void
.end method

.method private onRatioUpdated(F)V
    .registers 8

    .line 1
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    const/high16 v5, 0x3f800000  # 1.0f

    .line 12
    if-nez v1, :cond_39

    .line 14
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 16
    if-eqz v1, :cond_2e

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2e

    .line 24
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 26
    sub-float p1, v5, p1

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    move v2, v4

    .line 31
    :cond_1e
    int-to-float v0, v2

    .line 32
    mul-float/2addr p1, v0

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 36
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    mul-float/2addr p1, v0

    .line 39
    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 42
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 44
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 47
    :cond_2e
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 49
    if-eqz p1, :cond_35

    .line 51
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 54
    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 57
    goto :goto_9d

    .line 58
    :cond_39
    if-ne v1, v4, :cond_68

    .line 60
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 62
    if-eqz v1, :cond_60

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_60

    .line 70
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 72
    sub-float/2addr v5, p1

    .line 73
    if-eqz v0, :cond_4b

    .line 75
    move v2, v4

    .line 76
    :cond_4b
    int-to-float p1, v2

    .line 77
    mul-float/2addr v5, p1

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 81
    move-result p1

    .line 82
    int-to-float p1, p1

    .line 83
    mul-float/2addr v5, p1

    .line 84
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 87
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 89
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 97
    :cond_60
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 99
    if-eqz p1, :cond_9d

    .line 101
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 104
    goto :goto_9d

    .line 105
    :cond_68
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 107
    if-eqz v0, :cond_85

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_85

    .line 115
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 117
    sub-float v1, v5, p1

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 122
    move-result v2

    .line 123
    neg-int v2, v2

    .line 124
    int-to-float v2, v2

    .line 125
    mul-float/2addr v1, v2

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 129
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 131
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 134
    :cond_85
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 136
    if-eqz v0, :cond_9a

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_9a

    .line 144
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 149
    move-result v1

    .line 150
    int-to-float v1, v1

    .line 151
    mul-float/2addr p1, v1

    .line 152
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 155
    :cond_9a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 158
    :cond_9d
    :goto_9d
    return-void
.end method

.method private prepareChildView()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-lt v0, v1, :cond_56

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    if-ge v1, v0, :cond_3a

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 18
    move-result v3

    .line 19
    const/4 v4, -0x1

    .line 20
    if-eq v3, v4, :cond_37

    .line 22
    const/4 v4, 0x0

    .line 23
    :try_start_16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 30
    move-result-object v4
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_1e} :catch_1e

    .line 31
    :catch_1e
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationIdString:Ljava/lang/String;

    .line 33
    if-eqz v3, :cond_2b

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2b

    .line 41
    iput-object v2, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 43
    goto :goto_37

    .line 44
    :cond_2b
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mContentIdString:Ljava/lang/String;

    .line 46
    if-eqz v3, :cond_37

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_37

    .line 54
    iput-object v2, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 56
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_8

    .line 59
    :cond_3a
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 61
    if-eqz v0, :cond_4e

    .line 63
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 65
    if-eqz v1, :cond_46

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 70
    return-void

    .line 71
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    const-string v1, "You must set contentId in layout"

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    throw v0

    .line 79
    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    const-string v1, "You must set navigationId in layout"

    .line 83
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    throw v0

    .line 87
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 89
    const-string v1, "SplitLayout must have at least two child views!"

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    throw v0
.end method

.method private shouldDrawDivider()Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsShowDivider:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_11

    .line 6
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 8
    const/4 v2, 0x0

    .line 9
    cmpl-float v0, v0, v2

    .line 11
    if-lez v0, :cond_11

    .line 13
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 15
    if-ne v0, v1, :cond_11

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    :goto_12
    return v1
.end method

.method private switchNavigationInternal(ZZ)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mFirstMeasure:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 6
    move p2, v1

    .line 7
    goto :goto_c

    .line 8
    :cond_7
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    .line 10
    if-ne v0, p1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    :goto_c
    const/4 v0, 0x3

    .line 14
    const-string v2, "ratio"

    .line 16
    const/4 v3, 0x4

    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz p1, :cond_5e

    .line 21
    iput-boolean v5, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    .line 23
    iget p1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 25
    if-eq p1, v4, :cond_1c

    .line 27
    move p1, v5

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move p1, v1

    .line 30
    :goto_1d
    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    .line 32
    const/high16 p1, 0x3f800000  # 1.0f

    .line 34
    const-string v6, "open"

    .line 36
    if-eqz p2, :cond_3e

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 41
    iget-object p2, p0, Lmiuix/navigation/SplitLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    .line 43
    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    aput-object v6, v3, v1

    .line 47
    aput-object v2, v3, v5

    .line 49
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    move-result-object p1

    .line 53
    aput-object p1, v3, v4

    .line 55
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 57
    aput-object p1, v3, v0

    .line 59
    invoke-interface {p2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 62
    goto :goto_99

    .line 63
    :cond_3e
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 66
    iget-object p2, p0, Lmiuix/navigation/SplitLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    .line 68
    new-array v3, v3, [Ljava/lang/Object;

    .line 70
    aput-object v6, v3, v1

    .line 72
    aput-object v2, v3, v5

    .line 74
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    move-result-object p1

    .line 78
    aput-object p1, v3, v4

    .line 80
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 82
    aput-object p1, v3, v0

    .line 84
    invoke-interface {p2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 87
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mSplitListener:Lmiuix/navigation/SplitLayout$SplitListener;

    .line 89
    if-eqz p1, :cond_99

    .line 91
    invoke-interface {p1}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitOpen()V

    .line 94
    goto :goto_99

    .line 95
    :cond_5e
    iput-boolean v1, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    .line 97
    iput-boolean v5, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    .line 99
    const/4 p1, 0x0

    .line 100
    const-string v6, "close"

    .line 102
    if-eqz p2, :cond_7d

    .line 104
    iget-object p2, p0, Lmiuix/navigation/SplitLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    .line 106
    new-array v3, v3, [Ljava/lang/Object;

    .line 108
    aput-object v6, v3, v1

    .line 110
    aput-object v2, v3, v5

    .line 112
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    move-result-object p1

    .line 116
    aput-object p1, v3, v4

    .line 118
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 120
    aput-object p1, v3, v0

    .line 122
    invoke-interface {p2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 125
    goto :goto_99

    .line 126
    :cond_7d
    iget-object p2, p0, Lmiuix/navigation/SplitLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    .line 128
    new-array v3, v3, [Ljava/lang/Object;

    .line 130
    aput-object v6, v3, v1

    .line 132
    aput-object v2, v3, v5

    .line 134
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 137
    move-result-object p1

    .line 138
    aput-object p1, v3, v4

    .line 140
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 142
    aput-object p1, v3, v0

    .line 144
    invoke-interface {p2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 147
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mSplitListener:Lmiuix/navigation/SplitLayout$SplitListener;

    .line 149
    if-eqz p1, :cond_99

    .line 151
    invoke-interface {p1}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitClose()V

    .line 154
    :cond_99
    :goto_99
    return-void
.end method


# virtual methods
.method public closeNavigation()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigation/SplitLayout;->closeNavigation(Z)V

    return-void
.end method

.method public closeNavigation(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lmiuix/navigation/SplitLayout;->switchNavigationInternal(ZZ)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lmiuix/navigation/SplitLayout;->drawDivider(Landroid/graphics/Canvas;)V

    .line 7
    invoke-direct {p0, p1}, Lmiuix/navigation/SplitLayout;->drawMask(Landroid/graphics/Canvas;)V

    .line 10
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mCollapseOnTouchOutside:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_37

    .line 6
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 8
    if-nez v0, :cond_37

    .line 10
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isNavigationOpen()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_37

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 19
    move-result v0

    .line 20
    float-to-int v0, v0

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 24
    move-result v2

    .line 25
    float-to-int v2, v2

    .line 26
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 31
    move-result v3

    .line 32
    if-lt v0, v3, :cond_d1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 37
    move-result v3

    .line 38
    if-gt v0, v3, :cond_d1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 43
    move-result v0

    .line 44
    if-lt v2, v0, :cond_d1

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 49
    move-result v0

    .line 50
    if-gt v2, v0, :cond_d1

    .line 52
    invoke-virtual {p0, v1}, Lmiuix/navigation/SplitLayout;->closeNavigation(Z)V

    .line 55
    return v1

    .line 56
    :cond_37
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 58
    if-ne v0, v1, :cond_d1

    .line 60
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isContentEnable()Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_47

    .line 66
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isNavigationEnable()Z

    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_d1

    .line 72
    :cond_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_7c

    .line 78
    const/4 v2, 0x5

    .line 79
    if-eq v0, v2, :cond_71

    .line 81
    const/4 v2, 0x6

    .line 82
    if-eq v0, v2, :cond_54

    .line 84
    goto :goto_83

    .line 85
    :cond_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 88
    move-result v0

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 92
    move-result v2

    .line 93
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 96
    move-result v3

    .line 97
    iget v4, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    .line 99
    if-ne v3, v4, :cond_83

    .line 101
    add-int/lit8 v3, v0, -0x1

    .line 103
    if-ne v2, v3, :cond_6a

    .line 105
    add-int/lit8 v3, v0, -0x2

    .line 107
    :cond_6a
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 110
    move-result v0

    .line 111
    iput v0, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    .line 113
    goto :goto_83

    .line 114
    :cond_71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 117
    move-result v0

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 121
    move-result v0

    .line 122
    iput v0, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    .line 124
    goto :goto_83

    .line 125
    :cond_7c
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 129
    move-result v0

    .line 130
    iput v0, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    .line 132
    :cond_83
    :goto_83
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 137
    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 141
    move-result v2

    .line 142
    if-ge v0, v2, :cond_91

    .line 144
    if-gez v0, :cond_9c

    .line 146
    :cond_91
    sub-int/2addr v2, v1

    .line 147
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 150
    move-result v0

    .line 151
    iput v0, p0, Lmiuix/navigation/SplitLayout;->mTrackingPointerId:I

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 156
    move-result v0

    .line 157
    :cond_9c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 160
    move-result v2

    .line 161
    float-to-int v2, v2

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 165
    move-result v0

    .line 166
    float-to-int v0, v0

    .line 167
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isContentEnable()Z

    .line 170
    move-result v3

    .line 171
    const/4 v4, 0x3

    .line 172
    if-nez v3, :cond_bc

    .line 174
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 176
    invoke-direct {p0, v3, v2, v0}, Lmiuix/navigation/SplitLayout;->isPointInView(Landroid/view/View;II)Z

    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_bc

    .line 182
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 185
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 188
    return v1

    .line 189
    :cond_bc
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isNavigationEnable()Z

    .line 192
    move-result v3

    .line 193
    if-nez v3, :cond_d1

    .line 195
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 197
    invoke-direct {p0, v3, v2, v0}, Lmiuix/navigation/SplitLayout;->isPointInView(Landroid/view/View;II)Z

    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_d1

    .line 203
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 206
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 209
    return v1

    .line 210
    :cond_d1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 213
    move-result p1

    .line 214
    return p1
.end method

.method public getNavigationDefaultRatio()F
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-nez v0, :cond_19

    .line 8
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowSizeDp(Landroid/view/View;)Landroid/graphics/Point;

    .line 11
    move-result-object v0

    .line 12
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 14
    if-lez v1, :cond_19

    .line 16
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 18
    if-lez v1, :cond_19

    .line 20
    invoke-static {v0}, Lmiuix/navigation/utils/Utils;->getNaviRatio(Landroid/graphics/Point;)F

    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    .line 26
    :cond_19
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    .line 28
    return v0
.end method

.method public getRatio()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 3
    return v0
.end method

.method public getSplitMode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 3
    return v0
.end method

.method public isContentEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    .line 3
    return v0
.end method

.method public isContentOpen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    .line 3
    return v0
.end method

.method public isNavigationEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    .line 3
    return v0
.end method

.method public isNavigationOpen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    .line 3
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    .line 4
    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->prepareChildView()V

    .line 7
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 12

    .line 1
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_3d

    .line 6
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    move-result v4

    .line 14
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    move-result v5

    .line 20
    move-object v0, p0

    .line 21
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 24
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 26
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 28
    iget-object v2, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    move-result v2

    .line 34
    int-to-float v2, v2

    .line 35
    mul-float/2addr v0, v2

    .line 36
    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->shouldDrawDivider()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2c

    .line 42
    iget v2, p0, Lmiuix/navigation/SplitLayout;->mDividerWidth:I

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    const/4 v2, 0x0

    .line 46
    :goto_2d
    int-to-float v2, v2

    .line 47
    add-float/2addr v0, v2

    .line 48
    float-to-int v2, v0

    .line 49
    const/4 v3, 0x0

    .line 50
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 55
    move-result v5

    .line 56
    move-object v0, p0

    .line 57
    move v4, p4

    .line 58
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 61
    goto :goto_7f

    .line 62
    :cond_3d
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 69
    move-result v4

    .line 70
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 75
    move-result v5

    .line 76
    move-object v0, p0

    .line 77
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 80
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 85
    move-result v4

    .line 86
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 91
    move-result v5

    .line 92
    move-object v0, p0

    .line 93
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 96
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 98
    if-eqz v0, :cond_7f

    .line 100
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 102
    const/4 v2, 0x2

    .line 103
    if-ne v1, v2, :cond_7f

    .line 105
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 110
    move-result v0

    .line 111
    int-to-float v0, v0

    .line 112
    mul-float/2addr v1, v0

    .line 113
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 118
    move-result v0

    .line 119
    cmpl-float v0, v0, v1

    .line 121
    if-eqz v0, :cond_7f

    .line 123
    iget-object v0, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 128
    :cond_7f
    :goto_7f
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 12
    invoke-direct {p0, v0}, Lmiuix/navigation/SplitLayout;->getNavigationWidth(I)I

    .line 15
    move-result v2

    .line 16
    const/high16 v3, 0x40000000  # 2.0f

    .line 18
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 21
    move-result v4

    .line 22
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 25
    move-result v1

    .line 26
    iget-object v3, p0, Lmiuix/navigation/SplitLayout;->mNavigationView:Landroid/view/View;

    .line 28
    invoke-virtual {p0, v3, v4, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 31
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 33
    const/4 v3, 0x0

    .line 34
    if-nez v1, :cond_29

    .line 36
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 38
    invoke-direct {p0, v1, p1, v0, p2}, Lmiuix/navigation/SplitLayout;->measureChildWithPadding(Landroid/view/View;III)V

    .line 41
    goto :goto_4f

    .line 42
    :cond_29
    const/4 v4, 0x1

    .line 43
    if-ne v1, v4, :cond_47

    .line 45
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 47
    const/high16 v4, 0x3f000000  # 0.5f

    .line 49
    cmpg-float v1, v1, v4

    .line 51
    if-gez v1, :cond_35

    .line 53
    goto :goto_41

    .line 54
    :cond_35
    sub-int/2addr v0, v2

    .line 55
    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->shouldDrawDivider()Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3f

    .line 61
    iget v1, p0, Lmiuix/navigation/SplitLayout;->mDividerWidth:I

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v1, v3

    .line 65
    :goto_40
    sub-int/2addr v0, v1

    .line 66
    :goto_41
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 68
    invoke-direct {p0, v1, p1, v0, p2}, Lmiuix/navigation/SplitLayout;->measureChildWithPadding(Landroid/view/View;III)V

    .line 71
    goto :goto_4f

    .line 72
    :cond_47
    const/4 v2, 0x2

    .line 73
    if-ne v1, v2, :cond_4f

    .line 75
    iget-object v1, p0, Lmiuix/navigation/SplitLayout;->mContentView:Landroid/view/View;

    .line 77
    invoke-direct {p0, v1, p1, v0, p2}, Lmiuix/navigation/SplitLayout;->measureChildWithPadding(Landroid/view/View;III)V

    .line 80
    :cond_4f
    :goto_4f
    iget-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mFirstMeasure:Z

    .line 82
    if-eqz p1, :cond_5a

    .line 84
    iget p1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 86
    invoke-direct {p0, p1}, Lmiuix/navigation/SplitLayout;->onRatioUpdated(F)V

    .line 89
    iput-boolean v3, p0, Lmiuix/navigation/SplitLayout;->mFirstMeasure:Z

    .line 91
    :cond_5a
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    check-cast p1, Lmiuix/navigation/SplitLayout$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    invoke-static {p1}, Lmiuix/navigation/SplitLayout$SavedState;->access$000(Lmiuix/navigation/SplitLayout$SavedState;)Z

    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    .line 16
    invoke-static {p1}, Lmiuix/navigation/SplitLayout$SavedState;->access$100(Lmiuix/navigation/SplitLayout$SavedState;)Z

    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    .line 22
    invoke-static {p1}, Lmiuix/navigation/SplitLayout$SavedState;->access$200(Lmiuix/navigation/SplitLayout$SavedState;)Z

    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    .line 28
    invoke-static {p1}, Lmiuix/navigation/SplitLayout$SavedState;->access$300(Lmiuix/navigation/SplitLayout$SavedState;)Z

    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    .line 34
    invoke-static {p1}, Lmiuix/navigation/SplitLayout$SavedState;->access$400(Lmiuix/navigation/SplitLayout$SavedState;)F

    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 40
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/navigation/SplitLayout$SavedState;

    .line 7
    invoke-direct {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    .line 12
    invoke-static {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;->access$002(Lmiuix/navigation/SplitLayout$SavedState;Z)Z

    .line 15
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentOpen:Z

    .line 17
    invoke-static {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;->access$102(Lmiuix/navigation/SplitLayout$SavedState;Z)Z

    .line 20
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    .line 22
    invoke-static {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;->access$202(Lmiuix/navigation/SplitLayout$SavedState;Z)Z

    .line 25
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationOpen:Z

    .line 27
    invoke-static {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;->access$302(Lmiuix/navigation/SplitLayout$SavedState;Z)Z

    .line 30
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 32
    invoke-static {v1, v0}, Lmiuix/navigation/SplitLayout$SavedState;->access$402(Lmiuix/navigation/SplitLayout$SavedState;F)F

    .line 35
    return-object v1
.end method

.method public openNavigation()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigation/SplitLayout;->openNavigation(Z)V

    return-void
.end method

.method public openNavigation(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lmiuix/navigation/SplitLayout;->switchNavigationInternal(ZZ)V

    return-void
.end method

.method public resetToDefaultNavigationRatio()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->getSplitMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/navigation/SplitLayout;->resetToDefaultNavigationRatio(I)V

    return-void
.end method

.method public resetToDefaultNavigationRatio(I)V
    .registers 3

    const/4 v0, 0x1

    if-nez p1, :cond_e

    .line 2
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mOverlayWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    .line 3
    iput-boolean v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    .line 4
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    goto :goto_1a

    :cond_e
    if-ne p1, v0, :cond_1a

    .line 5
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mSqueezedWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    .line 6
    iput-boolean v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    .line 7
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mNavigationDefaultRatio:F

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    .line 8
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setCollapseOnTouchOutside(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mCollapseOnTouchOutside:Z

    .line 3
    return-void
.end method

.method public setContentEnable(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p1, :cond_7

    .line 6
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    .line 8
    :cond_7
    iget p1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 10
    if-ne p1, v0, :cond_e

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    :cond_e
    return-void
.end method

.method public setNavigationEnable(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mIsNavigationEnable:Z

    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p1, :cond_7

    .line 6
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsContentEnable:Z

    .line 8
    :cond_7
    iget p1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 10
    if-ne p1, v0, :cond_e

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    :cond_e
    return-void
.end method

.method public setNavigationWidth(I)V
    .registers 3

    .line 15
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->getSplitMode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lmiuix/navigation/SplitLayout;->setNavigationWidth(II)V

    .line 16
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

    .line 1
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mOverlayWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v3, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    .line 2
    iput-boolean v2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    .line 3
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    goto :goto_2a

    :cond_18
    if-ne p1, v3, :cond_2a

    .line 4
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mSqueezedWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v3, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    .line 5
    iput-boolean v2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    .line 6
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    .line 7
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNavigationWidth(II)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 8
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mOverlayWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    .line 9
    iput-boolean v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    int-to-float p2, p2

    .line 10
    iput p2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    goto :goto_19

    :cond_d
    const/4 v1, 0x1

    if-ne p1, v1, :cond_19

    .line 11
    iget-object p1, p0, Lmiuix/navigation/SplitLayout;->mSqueezedWidthDescription:Lmiuix/navigation/SplitLayout$WidthDescription;

    iput v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    .line 12
    iput-boolean v0, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    int-to-float p2, p2

    .line 13
    iput p2, p1, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    .line 14
    :cond_19
    :goto_19
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNavigationWidthPercent(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->getSplitMode()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lmiuix/navigation/SplitLayout;->setNavigationWidth(IF)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    return-void
.end method

.method public setRatio(F)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    if-ltz v0, :cond_11

    .line 6
    const/high16 v0, 0x3f800000  # 1.0f

    .line 8
    cmpl-float v0, p1, v0

    .line 10
    if-lez v0, :cond_c

    .line 12
    goto :goto_11

    .line 13
    :cond_c
    iput p1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 15
    invoke-direct {p0, p1}, Lmiuix/navigation/SplitLayout;->onRatioUpdated(F)V

    .line 18
    :cond_11
    :goto_11
    return-void
.end method

.method public setShowDivider(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigation/SplitLayout;->mIsShowDivider:Z

    .line 3
    if-eq p1, v0, :cond_e

    .line 5
    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout;->mIsShowDivider:Z

    .line 7
    iget p1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_e

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    :cond_e
    return-void
.end method

.method public setSplitListener(Lmiuix/navigation/SplitLayout$SplitListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigation/SplitLayout;->mSplitListener:Lmiuix/navigation/SplitLayout$SplitListener;

    .line 3
    return-void
.end method

.method public setSplitMode(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 3
    if-eq v0, p1, :cond_c

    .line 5
    iput p1, p0, Lmiuix/navigation/SplitLayout;->mSplitMode:I

    .line 7
    invoke-direct {p0}, Lmiuix/navigation/SplitLayout;->checkMode()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    :cond_c
    iget p1, p0, Lmiuix/navigation/SplitLayout;->mRatio:F

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/navigation/SplitLayout;->setRatio(F)V

    .line 18
    return-void
.end method

.method public toggle()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigation/SplitLayout;->toggle(Z)V

    return-void
.end method

.method public toggle(Z)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lmiuix/navigation/SplitLayout;->isNavigationOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/navigation/SplitLayout;->closeNavigation(Z)V

    goto :goto_d

    .line 4
    :cond_a
    invoke-virtual {p0, p1}, Lmiuix/navigation/SplitLayout;->openNavigation(Z)V

    :goto_d
    return-void
.end method
