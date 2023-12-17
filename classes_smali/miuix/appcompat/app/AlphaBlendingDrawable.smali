.class public Lmiuix/appcompat/app/AlphaBlendingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AlphaBlendingDrawable.java"


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

.field private static final STATE_SELECTED:[I

.field private static final TAG:Ljava/lang/String; = "StateTransitionDrawable"

.field private static final USE_FOLME:Z


# instance fields
.field private mActivated:Z

.field private mActivatedAlpha:F

.field private mActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHovered:Z

.field private mHoveredActivatedAlpha:F

.field private mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHoveredAlpha:F

.field private mHoveredState:Lmiuix/animation/controller/AnimState;

.field private mInsetB:I

.field private mInsetL:I

.field private mInsetR:I

.field private mInsetT:I

.field private mNormalAlpha:F

.field private mNormalState:Lmiuix/animation/controller/AnimState;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mPressedAlpha:F

.field private mPressedState:Lmiuix/animation/controller/AnimState;

.field private mRadius:I

.field private final mRect:Landroid/graphics/RectF;

.field private mStyle:Lmiuix/animation/IStateStyle;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_PRESSED:[I

    new-array v1, v0, [I

    const v2, 0x1010369

    aput v2, v1, v3

    sput-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_DRAG_HOVERED:[I

    new-array v1, v0, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    sput-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_SELECTED:[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_a4

    sput-object v2, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED_ACTIVATED:[I

    new-array v2, v0, [I

    const v4, 0x1010367

    aput v4, v2, v3

    sput-object v2, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED:[I

    new-array v2, v0, [I

    const v4, 0x10102fe

    aput v4, v2, v3

    sput-object v2, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_ACTIVATED:[I

    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    move-result v2

    xor-int/2addr v0, v2

    sput-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_96

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_ac

    const/4 v3, -0x2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_b4

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_bc

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_c4

    invoke-static {v3, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    sput-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    goto :goto_a3

    :cond_96
    const/4 v0, 0x0

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    :goto_a3
    return-void

    :array_a4
    .array-data 4
        0x1010367
        0x10102fe
    .end array-data

    :array_ac
    .array-data 4
        0x3f7d70a4  # 0.99f
        0x3f19999a  # 0.6f
    .end array-data

    :array_b4
    .array-data 4
        0x3f666666  # 0.9f
        0x3e4ccccd  # 0.2f
    .end array-data

    :array_bc
    .array-data 4
        0x3f7d70a4  # 0.99f
        0x3e800000  # 0.25f
    .end array-data

    :array_c4
    .array-data 4
        0x3f7d70a4  # 0.99f
        0x3eb33333  # 0.35f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setSmoothCornerEnable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    sget-object p1, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable:[I

    invoke-virtual {p3, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_10

    :cond_a
    sget-object p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_10
    sget p2, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_tintColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_tintRadius:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_normalAlpha:I

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_pressedAlpha:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_hoveredAlpha:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_activatedAlpha:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_hoveredActivatedAlpha:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_ae

    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    float-to-double v1, p3

    const-string p3, "alphaF"

    invoke-virtual {p1, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    float-to-double v1, v1

    invoke-virtual {p1, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    float-to-double v1, v1

    invoke-virtual {p1, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    float-to-double v1, v1

    invoke-virtual {p1, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    float-to-double v1, v1

    invoke-virtual {p1, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array p1, p2, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    invoke-interface {p1, p3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_b3

    :cond_ae
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_b3
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setSmoothCornerEnable(Z)V

    return-void
.end method

.method private setSmoothCornerEnable(Z)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setDrawableSmoothCornerEnable(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private toActivatedState()Z
    .registers 7

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_23

    :cond_1e
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_23
    return v2

    :cond_24
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    if-eqz v0, :cond_44

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_43

    :cond_3e
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_43
    return v2

    :cond_44
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    if-eqz v0, :cond_49

    return v1

    :cond_49
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_62

    :cond_5d
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_62
    return v2
.end method

.method private toHoveredActivatedState()Z
    .registers 7

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_23

    :cond_1e
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_23
    return v2

    :cond_24
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    if-eqz v0, :cond_2d

    iget-boolean v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    if-eqz v3, :cond_2d

    return v1

    :cond_2d
    if-eqz v0, :cond_49

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_48

    :cond_43
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_48
    return v2

    :cond_49
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    if-eqz v0, :cond_67

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_66

    :cond_61
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_66
    return v2

    :cond_67
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_82

    :cond_7d
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_82
    return v2
.end method

.method private toHoveredState()Z
    .registers 7

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_23

    :cond_1e
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_23
    return v2

    :cond_24
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    if-eqz v0, :cond_44

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_43

    :cond_3e
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_43
    return v2

    :cond_44
    return v1

    :cond_45
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_60

    :cond_5b
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_60
    return v2
.end method

.method private toNormalState()Z
    .registers 7

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_23

    :cond_1e
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_23
    return v1

    :cond_24
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    if-eqz v0, :cond_44

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_43

    :cond_3e
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_43
    return v1

    :cond_44
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    if-eqz v0, :cond_62

    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_61

    :cond_5c
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_61
    return v1

    :cond_62
    return v2
.end method

.method private toPressedState()Z
    .registers 7

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1e

    :cond_19
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_1e
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_11
    return-void
.end method

.method public getAlphaF()F
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0, p1, p3, p4}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 3

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_d
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetL:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetT:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetR:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetB:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public onStateChange([I)Z
    .registers 3

    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_PRESSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_DRAG_HOVERED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_SELECTED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_45

    :cond_19
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->toHoveredActivatedState()Z

    move-result p1

    return p1

    :cond_26
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->toHoveredState()Z

    move-result p1

    return p1

    :cond_33
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->toActivatedState()Z

    move-result p1

    return p1

    :cond_40
    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->toNormalState()Z

    move-result p1

    return p1

    :cond_45
    :goto_45
    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->toPressedState()Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setAlphaF(F)V
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setInset(IIII)V
    .registers 5

    iput p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetL:I

    iput p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetT:I

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetR:I

    iput p4, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetB:I

    return-void
.end method

.method public setRadius(I)V
    .registers 3

    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
