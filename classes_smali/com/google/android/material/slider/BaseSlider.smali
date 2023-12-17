.class abstract Lcom/google/android/material/slider/BaseSlider;
.super Landroid/view/View;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;,
        Lcom/google/android/material/slider/BaseSlider$SliderState;,
        Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;,
        Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/slider/BaseSlider<",
        "TS;T",
        "L;",
        "TT;>;",
        "L::Lcom/google/android/material/slider/BaseOnChangeListener<",
        "TS;>;T::",
        "Lcom/google/android/material/slider/BaseOnSliderTouchListener<",
        "TS;>;>",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final EXCEPTION_ILLEGAL_DISCRETE_VALUE:Ljava/lang/String; = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

.field private static final EXCEPTION_ILLEGAL_STEP_SIZE:Ljava/lang/String; = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

.field private static final EXCEPTION_ILLEGAL_VALUE:Ljava/lang/String; = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

.field private static final EXCEPTION_ILLEGAL_VALUE_FROM:Ljava/lang/String; = "valueFrom(%s) must be smaller than valueTo(%s)"

.field private static final EXCEPTION_ILLEGAL_VALUE_TO:Ljava/lang/String; = "valueTo(%s) must be greater than valueFrom(%s)"

.field private static final HALO_ALPHA:I = 0x3f

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD:D = 1.0E-4

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8

.field private static final WARNING_FLOATING_POINT_ERRROR:Ljava/lang/String; = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."


# instance fields
.field private accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/slider/BaseSlider<",
            "TS;T",
            "L;",
            "TT;>.AccessibilityEventSender;"
        }
    .end annotation
.end field

.field private final accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private activeThumbIdx:I

.field private final activeTicksPaint:Landroid/graphics/Paint;

.field private final activeTrackPaint:Landroid/graphics/Paint;

.field private final changeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private dirtyConfig:Z

.field private focusedThumbIdx:I

.field private forceDrawCompatHalo:Z

.field private formatter:Lcom/google/android/material/slider/LabelFormatter;

.field private haloColor:Landroid/content/res/ColorStateList;

.field private final haloPaint:Landroid/graphics/Paint;

.field private haloRadius:I

.field private final inactiveTicksPaint:Landroid/graphics/Paint;

.field private final inactiveTrackPaint:Landroid/graphics/Paint;

.field private isLongPress:Z

.field private labelBehavior:I

.field private final labelMaker:Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;

.field private labelPadding:I

.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/tooltip/TooltipDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private lastEvent:Landroid/view/MotionEvent;

.field private final scaledTouchSlop:I

.field private stepSize:F

.field private final thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private thumbIsPressed:Z

.field private final thumbPaint:Landroid/graphics/Paint;

.field private thumbRadius:I

.field private tickColorActive:Landroid/content/res/ColorStateList;

.field private tickColorInactive:Landroid/content/res/ColorStateList;

.field private ticksCoordinates:[F

.field private touchDownX:F

.field private final touchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private touchPosition:F

.field private trackColorActive:Landroid/content/res/ColorStateList;

.field private trackColorInactive:Landroid/content/res/ColorStateList;

.field private trackHeight:I

.field private trackSidePadding:I

.field private trackTop:I

.field private trackWidth:I

.field private valueFrom:F

.field private valueTo:F

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private widgetHeight:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/android/material/slider/BaseSlider;

    .line 3
    const-string v0, "BaseSlider"

    .line 5
    sput-object v0, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    .line 7
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Slider:I

    .line 9
    sput v0, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 3
    sget v0, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 10
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 12
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 13
    new-instance p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 16
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 18
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 19
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 21
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    .line 22
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 24
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 25
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 27
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 30
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->loadResources(Landroid/content/res/Resources;)V

    .line 33
    new-instance v1, Lcom/google/android/material/slider/BaseSlider$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/material/slider/BaseSlider$1;-><init>(Lcom/google/android/material/slider/BaseSlider;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelMaker:Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;

    .line 34
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/material/slider/BaseSlider;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 36
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    const/4 p2, 0x2

    .line 37
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 38
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 39
    new-instance p1, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 40
    invoke-static {p0, p1}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static synthetic access$000()I
    .registers 1

    .line 1
    sget v0, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    .line 3
    return v0
.end method

.method public static synthetic access$100(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->parseLabelDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/material/slider/BaseSlider;)Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->formatValue(F)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$600(Lcom/google/android/material/slider/BaseSlider;IF)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$700(Lcom/google/android/material/slider/BaseSlider;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/google/android/material/slider/BaseSlider;I)F
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement(I)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setRelativeToView(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method private calculateIncrementForKey(I)Ljava/lang/Float;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    const/16 v0, 0x14

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement(I)F

    .line 10
    move-result v0

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement()F

    .line 15
    move-result v0

    .line 16
    :goto_f
    const/16 v1, 0x15

    .line 18
    if-eq p1, v1, :cond_3c

    .line 20
    const/16 v1, 0x16

    .line 22
    if-eq p1, v1, :cond_30

    .line 24
    const/16 v1, 0x45

    .line 26
    if-eq p1, v1, :cond_2a

    .line 28
    const/16 v1, 0x46

    .line 30
    if-eq p1, v1, :cond_25

    .line 32
    const/16 v1, 0x51

    .line 34
    if-eq p1, v1, :cond_25

    .line 36
    const/4 p1, 0x0

    .line 37
    return-object p1

    .line 38
    :cond_25
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_2a
    neg-float p1, v0

    .line 44
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_37

    .line 55
    neg-float v0, v0

    .line 56
    :cond_37
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_43

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    neg-float v0, v0

    .line 69
    :goto_44
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    move-result-object p1

    .line 73
    return-object p1
.end method

.method private calculateStepIncrement()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_9

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_9
    return v0
.end method

.method private calculateStepIncrement(I)F
    .registers 5

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement()F

    move-result v0

    .line 3
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    int-to-float p1, p1

    cmpg-float v2, v1, p1

    if-gtz v2, :cond_10

    return v0

    :cond_10
    div-float/2addr v1, p1

    .line 4
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    return p1
.end method

.method private calculateTicksCoordinates()V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    .line 4
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 6
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 8
    sub-float/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 11
    div-float/2addr v0, v1

    .line 12
    const/high16 v1, 0x3f800000  # 1.0f

    .line 14
    add-float/2addr v0, v1

    .line 15
    float-to-int v0, v0

    .line 16
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 18
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 20
    mul-int/lit8 v2, v2, 0x2

    .line 22
    div-int/2addr v1, v2

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 31
    if-eqz v1, :cond_25

    .line 33
    array-length v1, v1

    .line 34
    mul-int/lit8 v2, v0, 0x2

    .line 36
    if-eq v1, v2, :cond_2b

    .line 38
    :cond_25
    mul-int/lit8 v1, v0, 0x2

    .line 40
    new-array v1, v1, [F

    .line 42
    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 44
    :cond_2b
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 46
    int-to-float v1, v1

    .line 47
    add-int/lit8 v2, v0, -0x1

    .line 49
    int-to-float v2, v2

    .line 50
    div-float/2addr v1, v2

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_33
    mul-int/lit8 v3, v0, 0x2

    .line 54
    if-ge v2, v3, :cond_4f

    .line 56
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 58
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 60
    int-to-float v4, v4

    .line 61
    div-int/lit8 v5, v2, 0x2

    .line 63
    int-to-float v5, v5

    .line 64
    mul-float/2addr v5, v1

    .line 65
    add-float/2addr v5, v4

    .line 66
    aput v5, v3, v2

    .line 68
    add-int/lit8 v4, v2, 0x1

    .line 70
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    .line 73
    move-result v5

    .line 74
    int-to-float v5, v5

    .line 75
    aput v5, v3, v4

    .line 77
    add-int/lit8 v2, v2, 0x2

    .line 79
    goto :goto_33

    .line 80
    :cond_4f
    return-void
.end method

.method private calculateTop()I
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackTop:I

    .line 3
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v1, v3, :cond_14

    .line 9
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 11
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    .line 20
    move-result v2

    .line 21
    :cond_14
    add-int/2addr v0, v2

    .line 22
    return v0
.end method

.method private createLabelPool()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 13
    if-le v0, v1, :cond_3f

    .line 15
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 17
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    move-result v2

    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v1

    .line 37
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3c

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 49
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 51
    invoke-static {p0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_24

    .line 57
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    .line 60
    goto :goto_24

    .line 61
    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 69
    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v1

    .line 76
    if-ge v0, v1, :cond_64

    .line 78
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelMaker:Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;

    .line 80
    invoke-interface {v0}, Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;->createTooltipDrawable()Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 91
    invoke-static {p0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_3f

    .line 97
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    .line 100
    goto :goto_3f

    .line 101
    :cond_64
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 106
    move-result v0

    .line 107
    const/4 v1, 0x1

    .line 108
    if-ne v0, v1, :cond_6e

    .line 110
    const/4 v1, 0x0

    .line 111
    :cond_6e
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    move-result-object v0

    .line 117
    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_85

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 129
    int-to-float v3, v1

    .line 130
    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 133
    goto :goto_74

    .line 134
    :cond_85
    return-void
.end method

.method private detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->detachView(Landroid/view/View;)V

    .line 17
    :cond_10
    return-void
.end method

.method private dispatchOnChangedFromUser(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_23

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/material/slider/BaseOnChangeListener;

    .line 19
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Float;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    .line 35
    goto :goto_6

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 38
    if-eqz v0, :cond_30

    .line 40
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_30

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->scheduleAccessibilityEventSender(I)V

    .line 49
    :cond_30
    return-void
.end method

.method private dispatchOnChangedProgramatically()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2d

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/material/slider/BaseOnChangeListener;

    .line 19
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v2

    .line 25
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_6

    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Float;

    .line 37
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-interface {v1, p0, v3, v4}, Lcom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    .line 45
    goto :goto_18

    .line 46
    :cond_2d
    return-void
.end method

.method private drawActiveTrack(Landroid/graphics/Canvas;II)V
    .registers 14

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 7
    int-to-float v2, v1

    .line 8
    const/4 v3, 0x1

    .line 9
    aget v3, v0, v3

    .line 11
    int-to-float p2, p2

    .line 12
    mul-float/2addr v3, p2

    .line 13
    add-float v7, v3, v2

    .line 15
    int-to-float v1, v1

    .line 16
    const/4 v2, 0x0

    .line 17
    aget v0, v0, v2

    .line 19
    mul-float/2addr v0, p2

    .line 20
    add-float v5, v0, v1

    .line 22
    int-to-float v8, p3

    .line 23
    iget-object v9, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 25
    move-object v4, p1

    .line 26
    move v6, v8

    .line 27
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 30
    return-void
.end method

.method private drawInactiveTrack(Landroid/graphics/Canvas;II)V
    .registers 15

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 7
    int-to-float v2, v1

    .line 8
    const/4 v3, 0x1

    .line 9
    aget v3, v0, v3

    .line 11
    int-to-float v4, p2

    .line 12
    mul-float/2addr v3, v4

    .line 13
    add-float v6, v3, v2

    .line 15
    add-int v2, v1, p2

    .line 17
    int-to-float v2, v2

    .line 18
    cmpg-float v2, v6, v2

    .line 20
    if-gez v2, :cond_1f

    .line 22
    int-to-float v9, p3

    .line 23
    add-int/2addr v1, p2

    .line 24
    int-to-float v8, v1

    .line 25
    iget-object v10, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 27
    move-object v5, p1

    .line 28
    move v7, v9

    .line 29
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 32
    :cond_1f
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 34
    int-to-float v1, p2

    .line 35
    const/4 v2, 0x0

    .line 36
    aget v0, v0, v2

    .line 38
    mul-float/2addr v0, v4

    .line 39
    add-float v5, v0, v1

    .line 41
    int-to-float v0, p2

    .line 42
    cmpl-float v0, v5, v0

    .line 44
    if-lez v0, :cond_36

    .line 46
    int-to-float v3, p2

    .line 47
    int-to-float v6, p3

    .line 48
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 50
    move-object v2, p1

    .line 51
    move v4, v6

    .line 52
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    :cond_36
    return-void
.end method

.method private drawThumbs(Landroid/graphics/Canvas;II)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_30

    .line 7
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_30

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Float;

    .line 25
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 27
    int-to-float v2, v2

    .line 28
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 31
    move-result v1

    .line 32
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 35
    move-result v1

    .line 36
    int-to-float v3, p2

    .line 37
    mul-float/2addr v1, v3

    .line 38
    add-float/2addr v1, v2

    .line 39
    int-to-float v2, p3

    .line 40
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 42
    int-to-float v3, v3

    .line 43
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 48
    goto :goto_c

    .line 49
    :cond_30
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 55
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_66

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/Float;

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 70
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 72
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 75
    move-result v1

    .line 76
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 79
    move-result v1

    .line 80
    int-to-float v3, p2

    .line 81
    mul-float/2addr v1, v3

    .line 82
    float-to-int v1, v1

    .line 83
    add-int/2addr v2, v1

    .line 84
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 86
    sub-int/2addr v2, v1

    .line 87
    int-to-float v2, v2

    .line 88
    sub-int v1, p3, v1

    .line 90
    int-to-float v1, v1

    .line 91
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 96
    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    goto :goto_36

    .line 103
    :cond_66
    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 7
    const/4 v2, 0x0

    .line 8
    aget v3, v0, v2

    .line 10
    invoke-static {v1, v3}, Lcom/google/android/material/slider/BaseSlider;->pivotIndex([FF)I

    .line 13
    move-result v1

    .line 14
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 16
    const/4 v4, 0x1

    .line 17
    aget v0, v0, v4

    .line 19
    invoke-static {v3, v0}, Lcom/google/android/material/slider/BaseSlider;->pivotIndex([FF)I

    .line 22
    move-result v0

    .line 23
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 25
    mul-int/lit8 v1, v1, 0x2

    .line 27
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 32
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 34
    mul-int/lit8 v0, v0, 0x2

    .line 36
    sub-int v3, v0, v1

    .line 38
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 43
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 45
    array-length v2, v1

    .line 46
    sub-int/2addr v2, v0

    .line 47
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 52
    return-void
.end method

.method private ensureLabels()V
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_e
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v4

    .line 21
    if-ge v3, v4, :cond_39

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_39

    .line 29
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 31
    if-ne v3, v4, :cond_21

    .line 33
    goto :goto_36

    .line 34
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 40
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ljava/lang/Float;

    .line 48
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 51
    move-result v5

    .line 52
    invoke-direct {p0, v4, v5}, Lcom/google/android/material/slider/BaseSlider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    .line 55
    :goto_36
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_e

    .line 58
    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_57

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 70
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 72
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 74
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Float;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 83
    move-result v1

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/slider/BaseSlider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    .line 87
    return-void

    .line 88
    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 90
    new-array v1, v1, [Ljava/lang/Object;

    .line 92
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 94
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 97
    move-result v3

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v3

    .line 102
    aput-object v3, v1, v2

    .line 104
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 109
    move-result v2

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v2

    .line 114
    const/4 v3, 0x1

    .line 115
    aput-object v2, v1, v3

    .line 117
    const-string v2, "Not enough labels(%d) to display all the values(%d)"

    .line 119
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    throw v0
.end method

.method private focusThumbOnFocusGained(I)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const v1, 0x7fffffff

    .line 5
    if-eq p1, v0, :cond_20

    .line 7
    const/4 v0, 0x2

    .line 8
    const/high16 v2, -0x80000000

    .line 10
    if-eq p1, v0, :cond_1c

    .line 12
    const/16 v0, 0x11

    .line 14
    if-eq p1, v0, :cond_18

    .line 16
    const/16 v0, 0x42

    .line 18
    if-eq p1, v0, :cond_14

    .line 20
    goto :goto_23

    .line 21
    :cond_14
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 24
    goto :goto_23

    .line 25
    :cond_18
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 28
    goto :goto_23

    .line 29
    :cond_1c
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 32
    goto :goto_23

    .line 33
    :cond_20
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 36
    :goto_23
    return-void
.end method

.method private formatValue(F)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/material/slider/LabelFormatter;->getFormattedValue(F)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    float-to-int v0, p1

    .line 15
    int-to-float v0, v0

    .line 16
    cmpl-float v0, v0, p1

    .line 18
    if-nez v0, :cond_16

    .line 20
    const-string v0, "%.0f"

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    const-string v0, "%.2f"

    .line 25
    :goto_18
    const/4 v1, 0x1

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    move-result-object p1

    .line 33
    aput-object p1, v1, v2

    .line 35
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private getActiveRange()[F
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Float;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Float;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x1

    .line 36
    if-ne v2, v3, :cond_27

    .line 38
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 40
    :cond_27
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 43
    move-result v1

    .line 44
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 51
    move-result v2

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x2

    .line 54
    if-eqz v2, :cond_3e

    .line 56
    new-array v2, v5, [F

    .line 58
    aput v0, v2, v4

    .line 60
    aput v1, v2, v3

    .line 62
    goto :goto_44

    .line 63
    :cond_3e
    new-array v2, v5, [F

    .line 65
    aput v1, v2, v4

    .line 67
    aput v0, v2, v3

    .line 69
    :goto_44
    return-object v2
.end method

.method private getClampedValue(IF)F
    .registers 5

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 3
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_d

    .line 11
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 13
    goto :goto_19

    .line 14
    :cond_d
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Float;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 25
    move-result v0

    .line 26
    :goto_19
    add-int/lit8 p1, p1, -0x1

    .line 28
    if-gez p1, :cond_20

    .line 30
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 32
    goto :goto_2c

    .line 33
    :cond_20
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Float;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 44
    move-result p1

    .line 45
    :goto_2c
    invoke-static {p2, p1, v0}, La/b;->p(FFF)F

    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method private getColorForState(Landroid/content/res/ColorStateList;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private getValueOfTouchPosition()F
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->snapPosition(F)D

    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_10

    .line 13
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 15
    sub-double v0, v2, v0

    .line 17
    :cond_10
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 19
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 21
    sub-float/2addr v2, v3

    .line 22
    float-to-double v4, v2

    .line 23
    mul-double/2addr v0, v4

    .line 24
    float-to-double v2, v3

    .line 25
    add-double/2addr v0, v2

    .line 26
    double-to-float v0, v0

    .line 27
    return v0
.end method

.method private getValueOfTouchPositionAbsolute()F
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_c

    .line 9
    const/high16 v1, 0x3f800000  # 1.0f

    .line 11
    sub-float v0, v1, v0

    .line 13
    :cond_c
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 15
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 17
    invoke-static {v1, v2, v0, v2}, Lf0/e;->a(FFFF)F

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method private invalidateTrack()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 3
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 5
    int-to-float v1, v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 11
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 19
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 21
    int-to-float v1, v1

    .line 22
    const/high16 v2, 0x40000000  # 2.0f

    .line 24
    div-float/2addr v1, v2

    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 30
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 32
    int-to-float v1, v1

    .line 33
    div-float/2addr v1, v2

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    return-void
.end method

.method private isInScrollingContainer()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    :goto_4
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 7
    if-eqz v1, :cond_18

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_13

    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v0

    .line 24
    goto :goto_4

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method private loadResources(Landroid/content/res/Resources;)V
    .registers 3

    .line 1
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    .line 9
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_side_padding:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 17
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_top:I

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackTop:I

    .line 25
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_padding:I

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->labelPadding:I

    .line 33
    return-void
.end method

.method private maybeDrawHalo(Landroid/graphics/Canvas;II)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_42

    .line 7
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 9
    int-to-float v0, v0

    .line 10
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 12
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Float;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 23
    move-result v1

    .line 24
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 27
    move-result v1

    .line 28
    int-to-float p2, p2

    .line 29
    mul-float/2addr v1, p2

    .line 30
    add-float/2addr v1, v0

    .line 31
    float-to-int p2, v1

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    const/16 v1, 0x1c

    .line 36
    if-ge v0, v1, :cond_38

    .line 38
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 40
    sub-int v1, p2, v0

    .line 42
    int-to-float v3, v1

    .line 43
    sub-int v1, p3, v0

    .line 45
    int-to-float v4, v1

    .line 46
    add-int v1, p2, v0

    .line 48
    int-to-float v5, v1

    .line 49
    add-int/2addr v0, p3

    .line 50
    int-to-float v6, v0

    .line 51
    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 53
    move-object v2, p1

    .line 54
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 57
    :cond_38
    int-to-float p2, p2

    .line 58
    int-to-float p3, p3

    .line 59
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 61
    int-to-float v0, v0

    .line 62
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 64
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 67
    :cond_42
    return-void
.end method

.method private moveFocus(I)Z
    .registers 10

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 3
    int-to-long v1, v0

    .line 4
    int-to-long v3, p1

    .line 5
    add-long/2addr v1, v3

    .line 6
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result p1

    .line 12
    const/4 v3, 0x1

    .line 13
    sub-int/2addr p1, v3

    .line 14
    int-to-long v4, p1

    .line 15
    const-wide/16 v6, 0x0

    .line 17
    cmp-long p1, v1, v6

    .line 19
    if-gez p1, :cond_16

    .line 21
    move-wide v1, v6

    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    cmp-long p1, v1, v4

    .line 25
    if-lez p1, :cond_1b

    .line 27
    move-wide v1, v4

    .line 28
    :cond_1b
    :goto_1b
    long-to-int p1, v1

    .line 29
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 31
    if-ne p1, v0, :cond_22

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_22
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 37
    const/4 v1, -0x1

    .line 38
    if-eq v0, v1, :cond_29

    .line 40
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 42
    :cond_29
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 48
    return v3
.end method

.method private moveFocusInAbsoluteDirection(I)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    const/high16 v0, -0x80000000

    .line 9
    if-ne p1, v0, :cond_e

    .line 11
    const p1, 0x7fffffff

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    neg-int p1, p1

    .line 16
    :cond_f
    :goto_f
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method private normalizeValue(F)F
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 3
    sub-float/2addr p1, v0

    .line 4
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 6
    sub-float/2addr v1, v0

    .line 7
    div-float/2addr p1, v1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_11

    .line 14
    const/high16 v0, 0x3f800000  # 1.0f

    .line 16
    sub-float/2addr v0, p1

    .line 17
    return v0

    .line 18
    :cond_11
    return p1
.end method

.method private onKeyDownNoActiveThumb(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;
    .registers 6

    .line 1
    const/16 v0, 0x3d

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq p1, v0, :cond_3d

    .line 7
    const/16 p2, 0x42

    .line 9
    if-eq p1, p2, :cond_33

    .line 11
    const/16 p2, 0x51

    .line 13
    if-eq p1, p2, :cond_2d

    .line 15
    const/16 p2, 0x45

    .line 17
    if-eq p1, p2, :cond_27

    .line 19
    const/16 p2, 0x46

    .line 21
    if-eq p1, p2, :cond_2d

    .line 23
    packed-switch p1, :pswitch_data_5e

    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :pswitch_1b  #0x16
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 31
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    return-object p1

    .line 34
    :pswitch_21  #0x15
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 37
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    return-object p1

    .line 40
    :cond_27
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 43
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    return-object p1

    .line 46
    :cond_2d
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 49
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    return-object p1

    .line 52
    :cond_33
    :pswitch_33  #0x17
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 54
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 59
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    return-object p1

    .line 62
    :cond_3d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4c

    .line 68
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 71
    move-result p1

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :cond_4c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5b

    .line 83
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 86
    move-result p1

    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :cond_5b
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 94
    return-object p1

    .line 95
    :pswitch_data_5e
    .packed-switch 0x15
        :pswitch_21  #00000015
        :pswitch_1b  #00000016
        :pswitch_33  #00000017
    .end packed-switch
.end method

.method private onStartTrackingTouch()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/material/slider/BaseOnSliderTouchListener;

    .line 19
    invoke-interface {v1, p0}, Lcom/google/android/material/slider/BaseOnSliderTouchListener;->onStartTrackingTouch(Ljava/lang/Object;)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method private onStopTrackingTouch()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/material/slider/BaseOnSliderTouchListener;

    .line 19
    invoke-interface {v1, p0}, Lcom/google/android/material/slider/BaseOnSliderTouchListener;->onStopTrackingTouch(Ljava/lang/Object;)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method private static parseLabelDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .registers 4

    .line 1
    sget v0, Lcom/google/android/material/R$styleable;->Slider_labelStyle:I

    .line 3
    sget v1, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static pivotIndex([FF)I
    .registers 2

    .line 1
    array-length p0, p0

    .line 2
    div-int/lit8 p0, p0, 0x2

    .line 4
    add-int/lit8 p0, p0, -0x1

    .line 6
    int-to-float p0, p0

    .line 7
    mul-float/2addr p1, p0

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .line 1
    sget-object v2, Lcom/google/android/material/R$styleable;->Slider:[I

    .line 3
    sget v4, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    .line 5
    const/4 v6, 0x0

    .line 6
    new-array v5, v6, [I

    .line 8
    move-object v0, p1

    .line 9
    move-object v1, p2

    .line 10
    move v3, p3

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 14
    move-result-object p2

    .line 15
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueFrom:I

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 21
    move-result p3

    .line 22
    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 24
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueTo:I

    .line 26
    const/high16 v1, 0x3f800000  # 1.0f

    .line 28
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 31
    move-result p3

    .line 32
    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 34
    const/4 p3, 0x1

    .line 35
    new-array v1, p3, [Ljava/lang/Float;

    .line 37
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 39
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object v2

    .line 43
    aput-object v2, v1, v6

    .line 45
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    .line 48
    sget v1, Lcom/google/android/material/R$styleable;->Slider_android_stepSize:I

    .line 50
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 53
    move-result v1

    .line 54
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 56
    sget v1, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    .line 58
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_41

    .line 64
    move v3, v1

    .line 65
    goto :goto_43

    .line 66
    :cond_41
    sget v3, Lcom/google/android/material/R$styleable;->Slider_trackColorInactive:I

    .line 68
    :goto_43
    if-eqz v2, :cond_46

    .line 70
    goto :goto_48

    .line 71
    :cond_46
    sget v1, Lcom/google/android/material/R$styleable;->Slider_trackColorActive:I

    .line 73
    :goto_48
    invoke-static {p1, p2, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_4f

    .line 79
    goto :goto_55

    .line 80
    :cond_4f
    sget v2, Lcom/google/android/material/R$color;->material_slider_inactive_track_color:I

    .line 82
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 85
    move-result-object v2

    .line 86
    :goto_55
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 89
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_5f

    .line 95
    goto :goto_65

    .line 96
    :cond_5f
    sget v1, Lcom/google/android/material/R$color;->material_slider_active_track_color:I

    .line 98
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 101
    move-result-object v1

    .line 102
    :goto_65
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 105
    sget v1, Lcom/google/android/material/R$styleable;->Slider_thumbColor:I

    .line 107
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 110
    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 113
    invoke-virtual {v2, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 116
    sget v1, Lcom/google/android/material/R$styleable;->Slider_haloColor:I

    .line 118
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_7c

    .line 124
    goto :goto_82

    .line 125
    :cond_7c
    sget v1, Lcom/google/android/material/R$color;->material_slider_halo_color:I

    .line 127
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 130
    move-result-object v1

    .line 131
    :goto_82
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 134
    sget v1, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    .line 136
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_8f

    .line 142
    move v3, v1

    .line 143
    goto :goto_91

    .line 144
    :cond_8f
    sget v3, Lcom/google/android/material/R$styleable;->Slider_tickColorInactive:I

    .line 146
    :goto_91
    if-eqz v2, :cond_94

    .line 148
    goto :goto_96

    .line 149
    :cond_94
    sget v1, Lcom/google/android/material/R$styleable;->Slider_tickColorActive:I

    .line 151
    :goto_96
    invoke-static {p1, p2, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 154
    move-result-object v2

    .line 155
    if-eqz v2, :cond_9d

    .line 157
    goto :goto_a3

    .line 158
    :cond_9d
    sget v2, Lcom/google/android/material/R$color;->material_slider_inactive_tick_marks_color:I

    .line 160
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 163
    move-result-object v2

    .line 164
    :goto_a3
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 167
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 170
    move-result-object v1

    .line 171
    if-eqz v1, :cond_ad

    .line 173
    goto :goto_b3

    .line 174
    :cond_ad
    sget v1, Lcom/google/android/material/R$color;->material_slider_active_tick_marks_color:I

    .line 176
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 179
    move-result-object v1

    .line 180
    :goto_b3
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 183
    sget p1, Lcom/google/android/material/R$styleable;->Slider_thumbRadius:I

    .line 185
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 188
    move-result p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 192
    sget p1, Lcom/google/android/material/R$styleable;->Slider_haloRadius:I

    .line 194
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 197
    move-result p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 201
    sget p1, Lcom/google/android/material/R$styleable;->Slider_thumbElevation:I

    .line 203
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 206
    move-result p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 210
    sget p1, Lcom/google/android/material/R$styleable;->Slider_trackHeight:I

    .line 212
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 215
    move-result p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    .line 219
    sget p1, Lcom/google/android/material/R$styleable;->Slider_labelBehavior:I

    .line 221
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 224
    move-result p1

    .line 225
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 227
    sget p1, Lcom/google/android/material/R$styleable;->Slider_android_enabled:I

    .line 229
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 232
    move-result p1

    .line 233
    if-nez p1, :cond_ed

    .line 235
    invoke-virtual {p0, v6}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    .line 238
    :cond_ed
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    return-void
.end method

.method private scheduleAccessibilityEventSender(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 3
    if-nez v0, :cond_d

    .line 5
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;-><init>(Lcom/google/android/material/slider/BaseSlider;Lcom/google/android/material/slider/BaseSlider$1;)V

    .line 11
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    :goto_10
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->setVirtualViewId(I)V

    .line 22
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 24
    const-wide/16 v0, 0xc8

    .line 26
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method

.method private setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->formatValue(F)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 10
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 13
    move-result p2

    .line 14
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 16
    int-to-float v1, v1

    .line 17
    mul-float/2addr p2, v1

    .line 18
    float-to-int p2, p2

    .line 19
    add-int/2addr v0, p2

    .line 20
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    .line 23
    move-result p2

    .line 24
    div-int/lit8 p2, p2, 0x2

    .line 26
    sub-int/2addr v0, p2

    .line 27
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    .line 30
    move-result p2

    .line 31
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelPadding:I

    .line 33
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 35
    add-int/2addr v1, v2

    .line 36
    sub-int/2addr p2, v1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    .line 40
    move-result v1

    .line 41
    sub-int v1, p2, v1

    .line 43
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    .line 46
    move-result v2

    .line 47
    add-int/2addr v2, v0

    .line 48
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    new-instance p2, Landroid/graphics/Rect;

    .line 53
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 60
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0, p0, p2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 67
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 70
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    .line 73
    move-result-object p2

    .line 74
    invoke-interface {p2, p1}, Lcom/google/android/material/internal/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 77
    return-void
.end method

.method private setValuesInternal(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_33

    .line 7
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    if-ne v0, v1, :cond_1e

    .line 22
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 36
    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 39
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->createLabelPool()V

    .line 45
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->dispatchOnChangedProgramatically()V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 51
    return-void

    .line 52
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string v0, "At least one value must be set"

    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1
.end method

.method private shouldDrawCompatHalo()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    return v0
.end method

.method private snapActiveThumbToValue(F)Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private snapPosition(F)D
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 6
    if-lez v1, :cond_18

    .line 8
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 10
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 12
    sub-float/2addr v1, v2

    .line 13
    div-float/2addr v1, v0

    .line 14
    float-to-int v0, v1

    .line 15
    int-to-float v1, v0

    .line 16
    mul-float/2addr p1, v1

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 20
    move-result p1

    .line 21
    int-to-double v1, p1

    .line 22
    int-to-double v3, v0

    .line 23
    div-double/2addr v1, v3

    .line 24
    return-wide v1

    .line 25
    :cond_18
    float-to-double v0, p1

    .line 26
    return-wide v0
.end method

.method private snapThumbToValue(IF)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Float;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result v0

    .line 13
    sub-float v0, p2, v0

    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 18
    move-result v0

    .line 19
    float-to-double v0, v0

    .line 20
    const-wide v2, 0x3f1a36e2eb1c432dL  # 1.0E-4

    .line 25
    cmpg-double v0, v0, v2

    .line 27
    if-gez v0, :cond_1e

    .line 29
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_1e
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->getClampedValue(IF)F

    .line 34
    move-result p2

    .line 35
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 37
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 44
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchOnChangedFromUser(I)V

    .line 49
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method private snapTouchPosition()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueOfTouchPosition()F

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->snapActiveThumbToValue(F)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private updateHaloHotspot()V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3e

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_3e

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 19
    if-eqz v1, :cond_3e

    .line 21
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 23
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Float;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 34
    move-result v1

    .line 35
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 38
    move-result v1

    .line 39
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 41
    int-to-float v2, v2

    .line 42
    mul-float/2addr v1, v2

    .line 43
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 45
    int-to-float v2, v2

    .line 46
    add-float/2addr v1, v2

    .line 47
    float-to-int v1, v1

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    .line 51
    move-result v2

    .line 52
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 54
    sub-int v4, v1, v3

    .line 56
    sub-int v5, v2, v3

    .line 58
    add-int/2addr v1, v3

    .line 59
    add-int/2addr v2, v3

    .line 60
    invoke-static {v0, v4, v5, v1, v2}, Lg0/a$b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    .line 63
    :cond_3e
    return-void
.end method

.method private validateConfigurationIfDirty()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 3
    if-eqz v0, :cond_16

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValueFrom()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValueTo()V

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateStepSize()V

    .line 14
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValues()V

    .line 17
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->warnAboutFloatingPointError()V

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 23
    :cond_16
    return-void
.end method

.method private validateStepSize()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-lez v0, :cond_3a

    .line 8
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->valueLandsOnTick(F)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_3a

    .line 17
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    const/4 v1, 0x3

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    const/4 v2, 0x0

    .line 23
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 25
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    aput-object v3, v1, v2

    .line 31
    const/4 v2, 0x1

    .line 32
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 34
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    aput-object v3, v1, v2

    .line 40
    const/4 v2, 0x2

    .line 41
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 43
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    aput-object v3, v1, v2

    .line 49
    const-string v2, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    .line 51
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0

    .line 59
    :cond_3a
    :goto_3a
    return-void
.end method

.method private validateValueFrom()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 3
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 5
    cmpl-float v0, v0, v1

    .line 7
    if-gez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    const/4 v2, 0x0

    .line 16
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 18
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v1, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 27
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    aput-object v3, v1, v2

    .line 33
    const-string v2, "valueFrom(%s) must be smaller than valueTo(%s)"

    .line 35
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
.end method

.method private validateValueTo()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 3
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 5
    cmpg-float v0, v0, v1

    .line 7
    if-lez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    const/4 v2, 0x0

    .line 16
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 18
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v1, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 27
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    aput-object v3, v1, v2

    .line 33
    const-string v2, "valueTo(%s) must be greater than valueFrom(%s)"

    .line 35
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
.end method

.method private validateValues()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_95

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Float;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 22
    move-result v2

    .line 23
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 25
    cmpg-float v2, v2, v3

    .line 27
    const/4 v3, 0x2

    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x3

    .line 31
    if-ltz v2, :cond_6d

    .line 33
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 36
    move-result v2

    .line 37
    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 39
    cmpl-float v2, v2, v7

    .line 41
    if-gtz v2, :cond_6d

    .line 43
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 45
    const/4 v7, 0x0

    .line 46
    cmpl-float v2, v2, v7

    .line 48
    if-lez v2, :cond_6

    .line 50
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 53
    move-result v2

    .line 54
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->valueLandsOnTick(F)Z

    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3c

    .line 60
    goto :goto_6

    .line 61
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    const/4 v2, 0x4

    .line 64
    new-array v2, v2, [Ljava/lang/Object;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 69
    move-result v1

    .line 70
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    aput-object v1, v2, v5

    .line 76
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 78
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    aput-object v1, v2, v4

    .line 84
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 86
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    aput-object v1, v2, v3

    .line 92
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 94
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    aput-object v1, v2, v6

    .line 100
    const-string v1, "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

    .line 102
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v0

    .line 110
    :cond_6d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 112
    new-array v2, v6, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 117
    move-result v1

    .line 118
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    aput-object v1, v2, v5

    .line 124
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 126
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    aput-object v1, v2, v4

    .line 132
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 134
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    aput-object v1, v2, v3

    .line 140
    const-string v1, "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

    .line 142
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    throw v0

    .line 150
    :cond_95
    return-void
.end method

.method private valueLandsOnTick(F)Z
    .registers 6

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/math/BigDecimal;

    .line 12
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 14
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Ljava/math/BigDecimal;

    .line 27
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 29
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 36
    sget-object v1, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 38
    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 45
    move-result-wide v0

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 49
    move-result-wide v2

    .line 50
    long-to-double v2, v2

    .line 51
    sub-double/2addr v2, v0

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 55
    move-result-wide v0

    .line 56
    const-wide v2, 0x3f1a36e2eb1c432dL  # 1.0E-4

    .line 61
    cmpg-double p1, v0, v2

    .line 63
    if-gez p1, :cond_42

    .line 65
    const/4 p1, 0x1

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    const/4 p1, 0x0

    .line 68
    :goto_43
    return p1
.end method

.method private valueToX(F)F
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 7
    int-to-float v0, v0

    .line 8
    mul-float/2addr p1, v0

    .line 9
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 11
    int-to-float v0, v0

    .line 12
    add-float/2addr p1, v0

    .line 13
    return p1
.end method

.method private warnAboutFloatingPointError()V
    .registers 9

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 6
    if-nez v1, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    float-to-int v1, v0

    .line 10
    int-to-float v1, v1

    .line 11
    cmpl-float v1, v1, v0

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x2

    .line 16
    const-string v5, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."

    .line 18
    if-eqz v1, :cond_28

    .line 20
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    .line 22
    new-array v6, v4, [Ljava/lang/Object;

    .line 24
    const-string v7, "stepSize"

    .line 26
    aput-object v7, v6, v3

    .line 28
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    move-result-object v0

    .line 32
    aput-object v0, v6, v2

    .line 34
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_28
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 43
    float-to-int v1, v0

    .line 44
    int-to-float v1, v1

    .line 45
    cmpl-float v1, v1, v0

    .line 47
    if-eqz v1, :cond_45

    .line 49
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    .line 51
    new-array v6, v4, [Ljava/lang/Object;

    .line 53
    const-string v7, "valueFrom"

    .line 55
    aput-object v7, v6, v3

    .line 57
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    move-result-object v0

    .line 61
    aput-object v0, v6, v2

    .line 63
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_45
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 72
    float-to-int v1, v0

    .line 73
    int-to-float v1, v1

    .line 74
    cmpl-float v1, v1, v0

    .line 76
    if-eqz v1, :cond_62

    .line 78
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    .line 80
    new-array v4, v4, [Ljava/lang/Object;

    .line 82
    const-string v6, "valueTo"

    .line 84
    aput-object v6, v4, v3

    .line 86
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 89
    move-result-object v0

    .line 90
    aput-object v0, v4, v2

    .line 92
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_62
    return-void
.end method


# virtual methods
.method public addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public clearOnChangeListeners()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    return-void
.end method

.method public clearOnSliderTouchListeners()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 3
    invoke-virtual {v0, p1}, Lr0/a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_11

    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 19
    :goto_12
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public drawableStateChanged()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 6
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 17
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 19
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 28
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    .line 30
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 41
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 54
    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4f

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 66
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_35

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 79
    goto :goto_35

    .line 80
    :cond_4f
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_60

    .line 88
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 97
    :cond_60
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    .line 101
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 110
    const/16 v1, 0x3f

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    return-void
.end method

.method public forceDrawCompatHalo(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    .line 3
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    const-class v0, Landroid/widget/SeekBar;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 3
    invoke-virtual {v0}, Lr0/a;->getAccessibilityFocusedVirtualViewId()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getActiveThumbIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 3
    return v0
.end method

.method public getFocusedThumbIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 3
    return v0
.end method

.method public getHaloRadius()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 3
    return v0
.end method

.method public getHaloTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getLabelBehavior()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 3
    return v0
.end method

.method public getStepSize()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 3
    return v0
.end method

.method public getThumbElevation()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getThumbRadius()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 3
    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTickActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getTickTintList()Landroid/content/res/ColorStateList;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 11
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead."

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getTrackHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 3
    return v0
.end method

.method public getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getTrackSidePadding()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 3
    return v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 11
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead."

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public getTrackWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 3
    return v0
.end method

.method public getValueFrom()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 3
    return v0
.end method

.method public getValueTo()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 3
    return v0
.end method

.method public getValues()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    return-object v0
.end method

.method public hasLabelFormatter()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public final isRtl()Z
    .registers 3

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    return v1
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 26
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 33
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_11

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    .line 9
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 11
    cmpl-float v0, v0, v1

    .line 13
    if-lez v0, :cond_11

    .line 15
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTicksCoordinates()V

    .line 18
    :cond_11
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 21
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    .line 24
    move-result v0

    .line 25
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 27
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/material/slider/BaseSlider;->drawInactiveTrack(Landroid/graphics/Canvas;II)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Float;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 43
    move-result v2

    .line 44
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 46
    cmpl-float v2, v2, v3

    .line 48
    if-lez v2, :cond_36

    .line 50
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 52
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/material/slider/BaseSlider;->drawActiveTrack(Landroid/graphics/Canvas;II)V

    .line 55
    :cond_36
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 57
    cmpl-float v1, v2, v1

    .line 59
    if-lez v1, :cond_3f

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->drawTicks(Landroid/graphics/Canvas;)V

    .line 64
    :cond_3f
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 66
    if-nez v1, :cond_49

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_5c

    .line 74
    :cond_49
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_5c

    .line 80
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 82
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->maybeDrawHalo(Landroid/graphics/Canvas;II)V

    .line 85
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 87
    const/4 v2, -0x1

    .line 88
    if-eq v1, v2, :cond_5c

    .line 90
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabels()V

    .line 93
    :cond_5c
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 95
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->drawThumbs(Landroid/graphics/Canvas;II)V

    .line 98
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4
    if-nez p1, :cond_2a

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 9
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_22

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 27
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    .line 30
    move-result-object p3

    .line 31
    invoke-interface {p3, p2}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 34
    goto :goto_e

    .line 35
    :cond_22
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 37
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 39
    invoke-virtual {p1, p2}, Lr0/a;->clearKeyboardFocusForVirtualView(I)Z

    .line 42
    goto :goto_34

    .line 43
    :cond_2a
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->focusThumbOnFocusGained(I)V

    .line 46
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 48
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 50
    invoke-virtual {p1, p2}, Lr0/a;->requestKeyboardFocusForVirtualView(I)Z

    .line 53
    :goto_34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v0, v2, :cond_17

    .line 22
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 24
    :cond_17
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 26
    const/4 v3, -0x1

    .line 27
    if-ne v0, v3, :cond_2c

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyDownNoActiveThumb(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result p1

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 43
    move-result p1

    .line 44
    :goto_2b
    return p1

    .line 45
    :cond_2c
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 47
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 50
    move-result v4

    .line 51
    or-int/2addr v0, v4

    .line 52
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->calculateIncrementForKey(I)Ljava/lang/Float;

    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_5b

    .line 60
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 62
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 64
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/lang/Float;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 73
    move-result p1

    .line 74
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 77
    move-result p2

    .line 78
    add-float/2addr p2, p1

    .line 79
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->snapActiveThumbToValue(F)Z

    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_5a

    .line 85
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 91
    :cond_5a
    return v2

    .line 92
    :cond_5b
    const/16 v0, 0x17

    .line 94
    if-eq p1, v0, :cond_83

    .line 96
    const/16 v0, 0x3d

    .line 98
    if-eq p1, v0, :cond_6c

    .line 100
    const/16 v0, 0x42

    .line 102
    if-eq p1, v0, :cond_83

    .line 104
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 107
    move-result p1

    .line 108
    return p1

    .line 109
    :cond_6c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_77

    .line 115
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 118
    move-result p1

    .line 119
    return p1

    .line 120
    :cond_77
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_82

    .line 126
    invoke-direct {p0, v3}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 129
    move-result p1

    .line 130
    return p1

    .line 131
    :cond_82
    return v1

    .line 132
    :cond_83
    iput v3, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 134
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    move-result-object p1

    .line 140
    :goto_8b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_9f

    .line 146
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    move-result-object p2

    .line 150
    check-cast p2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 152
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    .line 155
    move-result-object v0

    .line 156
    invoke-interface {v0, p2}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 159
    goto :goto_8b

    .line 160
    :cond_9f
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 163
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public onMeasure(II)V
    .registers 6

    .line 1
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    .line 3
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_14

    .line 9
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    .line 20
    move-result v1

    .line 21
    :cond_14
    add-int/2addr p2, v1

    .line 22
    const/high16 v0, 0x40000000  # 2.0f

    .line 24
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 27
    move-result p2

    .line 28
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 31
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    .line 12
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 14
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    .line 16
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 18
    iget-object v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    .line 20
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 23
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    .line 25
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 27
    iget-boolean p1, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    .line 29
    if-eqz p1, :cond_21

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 34
    :cond_21
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->dispatchOnChangedProgramatically()V

    .line 37
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    .line 7
    invoke-direct {v1, v0}, Lcom/google/android/material/slider/BaseSlider$SliderState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 12
    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    .line 14
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 16
    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    iput-object v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    .line 27
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 29
    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 34
    move-result v0

    .line 35
    iput-boolean v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    .line 37
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 3
    mul-int/lit8 p2, p2, 0x2

    .line 5
    sub-int/2addr p1, p2

    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 13
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 15
    const/4 p2, 0x0

    .line 16
    cmpl-float p1, p1, p2

    .line 18
    if-lez p1, :cond_16

    .line 20
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTicksCoordinates()V

    .line 23
    :cond_16
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 26
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    move-result v0

    .line 13
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 15
    int-to-float v2, v2

    .line 16
    sub-float v2, v0, v2

    .line 18
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 20
    int-to-float v3, v3

    .line 21
    div-float/2addr v2, v3

    .line 22
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 28
    move-result v2

    .line 29
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 31
    const/high16 v3, 0x3f800000  # 1.0f

    .line 33
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 36
    move-result v2

    .line 37
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x1

    .line 44
    if-eqz v2, :cond_cc

    .line 46
    if-eq v2, v3, :cond_66

    .line 48
    const/4 v4, 0x2

    .line 49
    if-eq v2, v4, :cond_34

    .line 51
    goto/16 :goto_f4

    .line 53
    :cond_34
    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 55
    if-nez v2, :cond_51

    .line 57
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchDownX:F

    .line 59
    sub-float/2addr v0, v2

    .line 60
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 63
    move-result v0

    .line 64
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 66
    int-to-float v2, v2

    .line 67
    cmpg-float v0, v0, v2

    .line 69
    if-gez v0, :cond_47

    .line 71
    return v1

    .line 72
    :cond_47
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 79
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 82
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_59

    .line 88
    goto/16 :goto_f4

    .line 90
    :cond_59
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 92
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 95
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 101
    goto/16 :goto_f4

    .line 103
    :cond_66
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 105
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 107
    if-eqz v0, :cond_a1

    .line 109
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_a1

    .line 115
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 117
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 120
    move-result v0

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 124
    move-result v1

    .line 125
    sub-float/2addr v0, v1

    .line 126
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 129
    move-result v0

    .line 130
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 132
    int-to-float v1, v1

    .line 133
    cmpg-float v0, v0, v1

    .line 135
    if-gtz v0, :cond_a1

    .line 137
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 139
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 142
    move-result v0

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 146
    move-result v1

    .line 147
    sub-float/2addr v0, v1

    .line 148
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 151
    move-result v0

    .line 152
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 154
    int-to-float v1, v1

    .line 155
    cmpg-float v0, v0, v1

    .line 157
    if-gtz v0, :cond_a1

    .line 159
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    .line 162
    :cond_a1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 164
    const/4 v1, -0x1

    .line 165
    if-eq v0, v1, :cond_ab

    .line 167
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 170
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 172
    :cond_ab
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 177
    move-result-object v0

    .line 178
    :goto_b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_c5

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 190
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    .line 193
    move-result-object v2

    .line 194
    invoke-interface {v2, v1}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 197
    goto :goto_b1

    .line 198
    :cond_c5
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStopTrackingTouch()V

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 204
    goto :goto_f4

    .line 205
    :cond_cc
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchDownX:F

    .line 207
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->isInScrollingContainer()Z

    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_d5

    .line 213
    goto :goto_f4

    .line 214
    :cond_d5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 217
    move-result-object v0

    .line 218
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_e3

    .line 227
    goto :goto_f4

    .line 228
    :cond_e3
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 231
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 233
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 236
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 242
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 245
    :goto_f4
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 247
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 250
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 253
    move-result-object p1

    .line 254
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 256
    return v3
.end method

.method public pickActiveThumb()Z
    .registers 12

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_7

    .line 7
    return v2

    .line 8
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueOfTouchPositionAbsolute()F

    .line 11
    move-result v0

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->valueToX(F)F

    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    iput v4, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 19
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Ljava/lang/Float;

    .line 27
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 30
    move-result v5

    .line 31
    sub-float/2addr v5, v0

    .line 32
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 35
    move-result v5

    .line 36
    move v6, v2

    .line 37
    :goto_24
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v7

    .line 43
    if-ge v6, v7, :cond_91

    .line 45
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Ljava/lang/Float;

    .line 53
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 56
    move-result v7

    .line 57
    sub-float/2addr v7, v0

    .line 58
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 61
    move-result v7

    .line 62
    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v8

    .line 68
    check-cast v8, Ljava/lang/Float;

    .line 70
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 73
    move-result v8

    .line 74
    invoke-direct {p0, v8}, Lcom/google/android/material/slider/BaseSlider;->valueToX(F)F

    .line 77
    move-result v8

    .line 78
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    .line 81
    move-result v9

    .line 82
    if-le v9, v2, :cond_54

    .line 84
    goto :goto_91

    .line 85
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 88
    move-result v9

    .line 89
    const/4 v10, 0x0

    .line 90
    if-eqz v9, :cond_62

    .line 92
    sub-float v9, v8, v3

    .line 94
    cmpl-float v9, v9, v10

    .line 96
    if-lez v9, :cond_6a

    .line 98
    goto :goto_68

    .line 99
    :cond_62
    sub-float v9, v8, v3

    .line 101
    cmpg-float v9, v9, v10

    .line 103
    if-gez v9, :cond_6a

    .line 105
    :goto_68
    move v9, v2

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move v9, v4

    .line 108
    :goto_6b
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    .line 111
    move-result v10

    .line 112
    if-gez v10, :cond_74

    .line 114
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 116
    goto :goto_8d

    .line 117
    :cond_74
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    .line 120
    move-result v10

    .line 121
    if-nez v10, :cond_8e

    .line 123
    sub-float/2addr v8, v3

    .line 124
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 127
    move-result v8

    .line 128
    iget v10, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 130
    int-to-float v10, v10

    .line 131
    cmpg-float v8, v8, v10

    .line 133
    if-gez v8, :cond_89

    .line 135
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 137
    return v4

    .line 138
    :cond_89
    if-eqz v9, :cond_8e

    .line 140
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 142
    :goto_8d
    move v5, v7

    .line 143
    :cond_8e
    add-int/lit8 v6, v6, 0x1

    .line 145
    goto :goto_24

    .line 146
    :cond_91
    :goto_91
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 148
    if-eq v0, v1, :cond_96

    .line 150
    goto :goto_97

    .line 151
    :cond_96
    move v2, v4

    .line 152
    :goto_97
    return v2
.end method

.method public removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public setActiveThumbIndex(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 3
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    if-eqz p1, :cond_7

    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p1, 0x2

    .line 9
    :goto_8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13
    return-void
.end method

.method public setFocusedThumbIndex(I)V
    .registers 3

    .line 1
    if-ltz p1, :cond_15

    .line 3
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_15

    .line 11
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 13
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 15
    invoke-virtual {v0, p1}, Lr0/a;->requestKeyboardFocusForVirtualView(I)Z

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 21
    return-void

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v0, "index out of range"

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public setHaloRadius(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1d

    .line 18
    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    .line 20
    if-eqz v0, :cond_1d

    .line 22
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    .line 24
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 26
    invoke-static {p1, v0}, Lcom/google/android/material/drawable/DrawableUtils;->setRippleDrawableRadius(Landroid/graphics/drawable/RippleDrawable;I)V

    .line 29
    return-void

    .line 30
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 33
    return-void
.end method

.method public setHaloRadiusResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 12
    return-void
.end method

.method public setHaloTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1f

    .line 22
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 24
    if-eqz v1, :cond_1f

    .line 26
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 31
    return-void

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 37
    move-result p1

    .line 38
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 43
    const/16 v0, 0x3f

    .line 45
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 51
    return-void
.end method

.method public setLabelBehavior(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    .line 3
    return-void
.end method

.method public setStepSize(F)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ltz v0, :cond_14

    .line 7
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 9
    cmpl-float v0, v0, p1

    .line 11
    if-eqz v0, :cond_13

    .line 13
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 15
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 20
    :cond_13
    return-void

    .line 21
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    const/4 v2, 0x3

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v2, v3

    .line 33
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    aput-object p1, v2, v1

    .line 41
    const/4 p1, 0x2

    .line 42
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 44
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    aput-object v1, v2, p1

    .line 50
    const-string p1, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    .line 52
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw v0
.end method

.method public setThumbElevation(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 6
    return-void
.end method

.method public setThumbElevationResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 12
    return-void
.end method

.method public setThumbRadius(I)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 8
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 10
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 16
    int-to-float v1, v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 29
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 31
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 33
    mul-int/lit8 v1, v0, 0x2

    .line 35
    mul-int/lit8 v0, v0, 0x2

    .line 37
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 43
    return-void
.end method

.method public setThumbRadiusResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 12
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 12
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    return-void
.end method

.method public setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    .line 12
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    return-void
.end method

.method public setTickTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    return-void
.end method

.method public setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 12
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    return-void
.end method

.method public setTrackHeight(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 3
    if-eq v0, p1, :cond_c

    .line 5
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidateTrack()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 13
    :cond_c
    return-void
.end method

.method public setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    .line 12
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    return-void
.end method

.method public setValueFrom(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 9
    return-void
.end method

.method public setValueTo(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 9
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateBoundsForVirturalViewId(ILandroid/graphics/Rect;)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    move-result p1

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 20
    move-result p1

    .line 21
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 23
    int-to-float v1, v1

    .line 24
    mul-float/2addr p1, v1

    .line 25
    float-to-int p1, p1

    .line 26
    add-int/2addr v0, p1

    .line 27
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    .line 30
    move-result p1

    .line 31
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 33
    sub-int v2, v0, v1

    .line 35
    sub-int v3, p1, v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    add-int/2addr p1, v1

    .line 39
    invoke-virtual {p2, v2, v3, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 42
    return-void
.end method
