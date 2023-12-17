.class public Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FilterSortTabView2ForegroundDrawable.java"


# static fields
.field private static final ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final ALPHA_F:Ljava/lang/String; = "alphaF"

.field private static final HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final STATE_ACTIVATED:[I

.field private static final STATE_DRAG_HOVERED:[I

.field private static final STATE_HOVERED:[I

.field private static final STATE_HOVERED_ACTIVATED:[I

.field private static final STATE_PRESSED:[I

.field private static final TAG:Ljava/lang/String; = "StateTransitionDrawable"

.field private static final USE_FOLME:Z

.field private static final USE_SMOOTH_ROUND_RECT:Z

.field private static mIsCommonLiteStrategy:Ljava/lang/Boolean;


# instance fields
.field private mActivated:Z

.field private mActivatedAlpha:F

.field private mActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHovered:Z

.field private mHoveredActivatedAlpha:F

.field private mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHoveredAlpha:F

.field private mHoveredState:Lmiuix/animation/controller/AnimState;

.field private mNormalAlpha:F

.field private mNormalState:Lmiuix/animation/controller/AnimState;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPressed:Z

.field private mPressedAlpha:F

.field private mPressedState:Lmiuix/animation/controller/AnimState;

.field private mRadius:I

.field private final mRect:Landroid/graphics/RectF;

.field private mStyle:Lmiuix/animation/IStateStyle;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 4
    const v2, 0x10100a7

    .line 7
    const/4 v3, 0x0

    .line 8
    aput v2, v1, v3

    .line 10
    sput-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_PRESSED:[I

    .line 12
    new-array v1, v0, [I

    .line 14
    const v2, 0x1010369

    .line 17
    aput v2, v1, v3

    .line 19
    sput-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_DRAG_HOVERED:[I

    .line 21
    const/4 v1, 0x2

    .line 22
    new-array v2, v1, [I

    .line 24
    fill-array-data v2, :array_a2

    .line 27
    sput-object v2, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_HOVERED_ACTIVATED:[I

    .line 29
    new-array v2, v0, [I

    .line 31
    const v4, 0x1010367

    .line 34
    aput v4, v2, v3

    .line 36
    sput-object v2, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_HOVERED:[I

    .line 38
    new-array v2, v0, [I

    .line 40
    const v4, 0x10102fe

    .line 43
    aput v4, v2, v3

    .line 45
    sput-object v2, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_ACTIVATED:[I

    .line 47
    invoke-static {}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->isCommonLiteStrategy()Z

    .line 50
    move-result v2

    .line 51
    xor-int/2addr v2, v0

    .line 52
    sput-boolean v2, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 54
    invoke-static {}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->isCommonLiteStrategy()Z

    .line 57
    move-result v3

    .line 58
    xor-int/2addr v0, v3

    .line 59
    sput-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_SMOOTH_ROUND_RECT:Z

    .line 61
    if-eqz v2, :cond_94

    .line 63
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 65
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 68
    new-array v2, v1, [F

    .line 70
    fill-array-data v2, :array_aa

    .line 73
    const/4 v3, -0x2

    .line 74
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 84
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 86
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 89
    new-array v2, v1, [F

    .line 91
    fill-array-data v2, :array_b2

    .line 94
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 104
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 106
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 109
    new-array v2, v1, [F

    .line 111
    fill-array-data v2, :array_ba

    .line 114
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 121
    move-result-object v0

    .line 122
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 124
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 126
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 129
    new-array v1, v1, [F

    .line 131
    fill-array-data v1, :array_c2

    .line 134
    invoke-static {v3, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 141
    move-result-object v1

    .line 142
    sput-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 144
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 146
    sput-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 148
    goto :goto_a1

    .line 149
    :cond_94
    const/4 v0, 0x0

    .line 150
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 152
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 154
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 156
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 158
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 160
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 162
    :goto_a1
    return-void

    .line 163
    :array_a2
    .array-data 4
        0x1010367
        0x10102fe
    .end array-data

    .line 171
    :array_aa
    .array-data 4
        0x3f7d70a4  # 0.99f
        0x3f19999a  # 0.6f
    .end array-data

    .line 179
    :array_b2
    .array-data 4
        0x3f666666  # 0.9f
        0x3e4ccccd  # 0.2f
    .end array-data

    .line 187
    :array_ba
    .array-data 4
        0x3f7d70a4  # 0.99f
        0x3e800000  # 0.25f
    .end array-data

    .line 195
    :array_c2
    .array-data 4
        0x3f7d70a4  # 0.99f
        0x3eb33333  # 0.35f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRect:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPath:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRect:Landroid/graphics/RectF;

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPath:Landroid/graphics/Path;

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method private calculatePath()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPath:Landroid/graphics/Path;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPath:Landroid/graphics/Path;

    .line 8
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRect:Landroid/graphics/RectF;

    .line 10
    iget v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRadius:I

    .line 12
    int-to-float v3, v2

    .line 13
    int-to-float v2, v2

    .line 14
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 16
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 19
    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_a

    .line 4
    sget-object p1, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable:[I

    .line 6
    invoke-virtual {p3, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    sget-object p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable:[I

    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 16
    move-result-object p1

    .line 17
    :goto_10
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_tintColor:I

    .line 19
    const/high16 p3, -0x1000000

    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 24
    move-result p2

    .line 25
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_tintRadius:I

    .line 27
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 30
    move-result p3

    .line 31
    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRadius:I

    .line 33
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_normalAlpha:I

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 39
    move-result p3

    .line 40
    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    .line 42
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_pressedAlpha:I

    .line 44
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 47
    move-result p3

    .line 48
    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressedAlpha:F

    .line 50
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_hoveredAlpha:I

    .line 52
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 55
    move-result p3

    .line 56
    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredAlpha:F

    .line 58
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_activatedAlpha:I

    .line 60
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 63
    move-result p3

    .line 64
    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedAlpha:F

    .line 66
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_hoveredActivatedAlpha:I

    .line 68
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 71
    move-result p3

    .line 72
    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    sget-boolean p1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 84
    const/4 p2, 0x1

    .line 85
    if-eqz p1, :cond_ae

    .line 87
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 89
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 92
    iget p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    .line 94
    float-to-double v1, p3

    .line 95
    const-string p3, "alphaF"

    .line 97
    invoke-virtual {p1, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 103
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 105
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 108
    iget v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressedAlpha:F

    .line 110
    float-to-double v1, v1

    .line 111
    invoke-virtual {p1, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    .line 117
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 119
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 122
    iget v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredAlpha:F

    .line 124
    float-to-double v1, v1

    .line 125
    invoke-virtual {p1, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    .line 131
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 133
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 136
    iget v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedAlpha:F

    .line 138
    float-to-double v1, v1

    .line 139
    invoke-virtual {p1, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 142
    move-result-object p1

    .line 143
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    .line 145
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 147
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 150
    iget v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    .line 152
    float-to-double v1, v1

    .line 153
    invoke-virtual {p1, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 159
    new-array p1, p2, [Ljava/lang/Object;

    .line 161
    aput-object p0, p1, v0

    .line 163
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 166
    move-result-object p1

    .line 167
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 169
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 171
    invoke-interface {p1, p3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 174
    goto :goto_b3

    .line 175
    :cond_ae
    iget p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    .line 177
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 180
    :goto_b3
    sget-boolean p1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_SMOOTH_ROUND_RECT:Z

    .line 182
    if-eqz p1, :cond_ba

    .line 184
    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setSmoothCornerEnable(Z)V

    .line 187
    :cond_ba
    return-void
.end method

.method private static isCommonLiteStrategy()Z
    .registers 1

    .line 1
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_20

    .line 5
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_19

    .line 11
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_19

    .line 17
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_17

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 27
    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 33
    :cond_20
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result v0

    .line 39
    return v0
.end method

.method private setSmoothCornerEnable(Z)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 3
    const-string v1, "setSmoothCornerEnabled"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object p1

    .line 19
    aput-object p1, v2, v5

    .line 21
    invoke-static {v0, p0, v1, v3, v2}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 24
    goto :goto_2f

    .line 25
    :catch_18
    move-exception p1

    .line 26
    const-string v0, "setSmoothCornerEnabled failed:"

    .line 28
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string v0, "StateTransitionDrawable"

    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_2f
    return-void
.end method

.method private toActivatedState()Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_24

    .line 7
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 9
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 11
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 13
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 19
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    .line 21
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 23
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 25
    aput-object v5, v4, v1

    .line 27
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 30
    goto :goto_23

    .line 31
    :cond_1e
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedAlpha:F

    .line 33
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 36
    :goto_23
    return v2

    .line 37
    :cond_24
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 39
    if-eqz v0, :cond_44

    .line 41
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 43
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 45
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 47
    if-eqz v0, :cond_3e

    .line 49
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 51
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    .line 53
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 55
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 57
    aput-object v5, v4, v1

    .line 59
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 62
    goto :goto_43

    .line 63
    :cond_3e
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedAlpha:F

    .line 65
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 68
    :goto_43
    return v2

    .line 69
    :cond_44
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 71
    if-eqz v0, :cond_49

    .line 73
    return v1

    .line 74
    :cond_49
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 76
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 78
    if-eqz v0, :cond_5d

    .line 80
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 82
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    .line 84
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 86
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 88
    aput-object v5, v4, v1

    .line 90
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 93
    goto :goto_62

    .line 94
    :cond_5d
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedAlpha:F

    .line 96
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 99
    :goto_62
    return v2
.end method

.method private toHoveredActivatedState()Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_24

    .line 7
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 9
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 11
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 13
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 19
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 21
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 23
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 25
    aput-object v5, v4, v1

    .line 27
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 30
    goto :goto_23

    .line 31
    :cond_1e
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    .line 33
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 36
    :goto_23
    return v2

    .line 37
    :cond_24
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 39
    if-eqz v0, :cond_2d

    .line 41
    iget-boolean v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 43
    if-eqz v3, :cond_2d

    .line 45
    return v1

    .line 46
    :cond_2d
    if-eqz v0, :cond_49

    .line 48
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 50
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 52
    if-eqz v0, :cond_43

    .line 54
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 56
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 58
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 60
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 62
    aput-object v5, v4, v1

    .line 64
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 67
    goto :goto_48

    .line 68
    :cond_43
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    .line 70
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 73
    :goto_48
    return v2

    .line 74
    :cond_49
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 76
    if-eqz v0, :cond_67

    .line 78
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 80
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 82
    if-eqz v0, :cond_61

    .line 84
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 86
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 88
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 90
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 92
    aput-object v5, v4, v1

    .line 94
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 97
    goto :goto_66

    .line 98
    :cond_61
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    .line 100
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 103
    :goto_66
    return v2

    .line 104
    :cond_67
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 106
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 108
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 110
    if-eqz v0, :cond_7d

    .line 112
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 114
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 116
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 118
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 120
    aput-object v5, v4, v1

    .line 122
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 125
    goto :goto_82

    .line 126
    :cond_7d
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    .line 128
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 131
    :goto_82
    return v2
.end method

.method private toHoveredState()Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_24

    .line 7
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 9
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 11
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 13
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 19
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    .line 21
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 23
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 25
    aput-object v5, v4, v1

    .line 27
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 30
    goto :goto_23

    .line 31
    :cond_1e
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredAlpha:F

    .line 33
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 36
    :goto_23
    return v2

    .line 37
    :cond_24
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 39
    if-eqz v0, :cond_45

    .line 41
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 43
    if-eqz v0, :cond_44

    .line 45
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 47
    if-eqz v0, :cond_3e

    .line 49
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 51
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    .line 53
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 55
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 57
    aput-object v5, v4, v1

    .line 59
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 62
    goto :goto_43

    .line 63
    :cond_3e
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredAlpha:F

    .line 65
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 68
    :goto_43
    return v2

    .line 69
    :cond_44
    return v1

    .line 70
    :cond_45
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 72
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 74
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 76
    if-eqz v0, :cond_5b

    .line 78
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 80
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    .line 82
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 84
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 86
    aput-object v5, v4, v1

    .line 88
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 91
    goto :goto_60

    .line 92
    :cond_5b
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredAlpha:F

    .line 94
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 97
    :goto_60
    return v2
.end method

.method private toNormalState()Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_24

    .line 7
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 9
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 11
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 13
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 19
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 21
    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    .line 23
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 25
    aput-object v5, v4, v2

    .line 27
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 30
    goto :goto_23

    .line 31
    :cond_1e
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    .line 33
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 36
    :goto_23
    return v1

    .line 37
    :cond_24
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 39
    if-eqz v0, :cond_44

    .line 41
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 43
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 45
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 47
    if-eqz v0, :cond_3e

    .line 49
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 51
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 53
    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    .line 55
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 57
    aput-object v5, v4, v2

    .line 59
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 62
    goto :goto_43

    .line 63
    :cond_3e
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    .line 65
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 68
    :goto_43
    return v1

    .line 69
    :cond_44
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 71
    if-eqz v0, :cond_62

    .line 73
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 75
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 77
    if-eqz v0, :cond_5c

    .line 79
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 81
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 83
    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    .line 85
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 87
    aput-object v5, v4, v2

    .line 89
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 92
    goto :goto_61

    .line 93
    :cond_5c
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    .line 95
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 98
    :goto_61
    return v1

    .line 99
    :cond_62
    return v2
.end method

.method private toPressedState()Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_19

    .line 12
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 14
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    .line 16
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 18
    sget-object v5, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 20
    aput-object v5, v4, v1

    .line 22
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressedAlpha:F

    .line 28
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 31
    :goto_1e
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 33
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 35
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 37
    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_SMOOTH_ROUND_RECT:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPath:Landroid/graphics/Path;

    .line 7
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 12
    goto :goto_17

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRect:Landroid/graphics/RectF;

    .line 15
    iget v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRadius:I

    .line 17
    int-to-float v2, v1

    .line 18
    int-to-float v1, v1

    .line 19
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 24
    :goto_17
    return-void
.end method

.method public getAlphaF()F
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x437f0000  # 255.0f

    .line 10
    div-float/2addr v0, v1

    .line 11
    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 4
    invoke-direct {p0, p1, p3, p4}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 7
    return-void
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 3

    .line 1
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 7
    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 14
    :cond_d
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRect:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->calculatePath()V

    .line 9
    return-void
.end method

.method public onStateChange([I)Z
    .registers 3

    .line 1
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_PRESSED:[I

    .line 3
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3d

    .line 9
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_DRAG_HOVERED:[I

    .line 11
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_3d

    .line 18
    :cond_11
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_HOVERED_ACTIVATED:[I

    .line 20
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1e

    .line 26
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->toHoveredActivatedState()Z

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1e
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_HOVERED:[I

    .line 33
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2b

    .line 39
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->toHoveredState()Z

    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_2b
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_ACTIVATED:[I

    .line 46
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_38

    .line 52
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->toActivatedState()Z

    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_38
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->toNormalState()Z

    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->toPressedState()Z

    .line 65
    move-result p1

    .line 66
    return p1
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setAlphaF(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 3
    const/high16 v1, 0x437f0000  # 255.0f

    .line 5
    mul-float/2addr p1, v1

    .line 6
    float-to-int p1, p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setRadius(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRadius:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRadius:I

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    return-void
.end method
