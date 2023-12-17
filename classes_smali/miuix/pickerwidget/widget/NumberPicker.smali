.class public Lmiuix/pickerwidget/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$CustomEditText;,
        Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;,
        Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;,
        Lmiuix/pickerwidget/widget/NumberPicker$Formatter;,
        Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;,
        Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;,
        Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;,
        Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;
    }
.end annotation


# static fields
.field private static final BACKGROUND_PADDING:I = 0xa

.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final MAX_HEIGHT:I = 0xca

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTION_DIVIDERS_DISTANCE:F = 45.0f

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field public static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final SOUND_PLAY_THREAD:Ljava/lang/String; = "NumberPicker_sound_play"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private MARGIN_LABEL_LEFT:I

.field private MARGIN_LABEL_TOP:I

.field private mAccessibilityNodeProvider:Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedMaxText:Ljava/lang/String;

.field private mDisplayedMaxTextWidth:F

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mIHoverStyle:Lmiuix/animation/IHoverStyle;

.field private final mId:I

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mIsHoverEnter:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mLabelTextColor:I

.field private mLabelTextSize:I

.field private mLabelTextSizeThreshold:F

.field private mLabelTextSizeTrimFactor:F

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private mMaxFlingSpeedFactor:F

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMeasureBackgroundEnabled:Z

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mModDevice:Ljava/lang/String;

.field private mOnScrollListener:Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

.field private mOriginLabelTextSize:I

.field private mOriginTextSizeHighlight:I

.field private mOriginTextSizeHint:I

.field private final mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

.field private mTextColorHighlight:I

.field private mTextColorHint:I

.field private mTextPadding:I

.field private final mTextSize:I

.field private mTextSizeHighlight:I

.field private mTextSizeHint:I

.field private mTextSizeThreshold:F

.field private mTextSizeTrimFactor:F

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mUpdateText:Ljava/lang/String;

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    sget v0, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_number_picker_layout:I

    .line 3
    sput v0, Lmiuix/pickerwidget/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 11
    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-direct {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;-><init>(I)V

    .line 19
    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 21
    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [I

    .line 24
    const v2, 0x10100a7

    .line 27
    aput v2, v0, v1

    .line 29
    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->PRESSED_STATE_SET:[I

    .line 31
    const/16 v0, 0xa

    .line 33
    new-array v0, v0, [C

    .line 35
    fill-array-data v0, :array_28

    .line 38
    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 40
    return-void

    .line 41
    :array_28
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/pickerwidget/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    const/16 v1, 0x190

    .line 7
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    const-wide/16 v1, 0x12c

    .line 8
    iput-wide v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 10
    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v1, -0x80000000

    .line 11
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    const/4 v2, -0x1

    .line 13
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    const v3, 0x3f733333  # 0.95f

    .line 14
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeTrimFactor:F

    const v3, 0x3f4ccccd  # 0.8f

    .line 15
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    const/high16 v3, 0x3f800000  # 1.0f

    .line 16
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 17
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    .line 18
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    .line 22
    invoke-direct {p0, p2, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->parseStyle(Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    .line 24
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x40000000  # 2.0f

    .line 26
    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 27
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    const/high16 p2, 0x42340000  # 45.0f

    mul-float/2addr p2, v3

    float-to-int p2, p2

    .line 28
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 29
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    const/high16 p2, 0x434a0000  # 202.0f

    mul-float/2addr v3, p2

    float-to-int p2, v3

    .line 30
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    .line 31
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    .line 32
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 33
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 34
    new-instance p2, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    xor-int p2, v0, v0

    .line 35
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 37
    sget p3, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_number_picker_layout:I

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    sget p2, Lmiuix/pickerwidget/R$id;->number_picker_input:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 39
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initInputText()V

    .line 40
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initThreshHolds()V

    .line 41
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 45
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 46
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSelectorWheelPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 47
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initLabelPaint()V

    .line 48
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 49
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000  # 2.5f

    invoke-direct {p3, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 50
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_10f

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_10f
    new-array p1, v0, [Landroid/view/View;

    aput-object p0, p1, v1

    .line 53
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIHoverStyle:Lmiuix/animation/IHoverStyle;

    .line 54
    new-instance p1, Lmiuix/pickerwidget/widget/NumberPicker$1;

    invoke-direct {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$1;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 55
    new-instance p1, Lmiuix/pickerwidget/widget/NumberPicker$2;

    invoke-direct {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$2;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1100(Lmiuix/pickerwidget/widget/NumberPicker;Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 3
    return p0
.end method

.method public static synthetic access$1300(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->postSetSelectionCommand(II)V

    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1402(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1480(Lmiuix/pickerwidget/widget/NumberPicker;I)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 3
    xor-int/2addr p1, v0

    .line 4
    int-to-byte p1, p1

    .line 5
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 7
    return p1
.end method

.method public static synthetic access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 3
    return p0
.end method

.method public static synthetic access$1600(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1602(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1680(Lmiuix/pickerwidget/widget/NumberPicker;I)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 3
    xor-int/2addr p1, v0

    .line 4
    int-to-byte p1, p1

    .line 5
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 7
    return p1
.end method

.method public static synthetic access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 3
    return p0
.end method

.method public static synthetic access$1800(Lmiuix/pickerwidget/widget/NumberPicker;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lmiuix/pickerwidget/widget/NumberPicker;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$200(Lmiuix/pickerwidget/widget/NumberPicker;)Lmiuix/animation/IHoverStyle;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIHoverStyle:Lmiuix/animation/IHoverStyle;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2002(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    .line 3
    return p1
.end method

.method public static synthetic access$2100(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 3
    return p0
.end method

.method public static synthetic access$2200(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 3
    return p0
.end method

.method public static synthetic access$2300(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 3
    return p0
.end method

.method public static synthetic access$2400(Lmiuix/pickerwidget/widget/NumberPicker;I)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2500(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 3
    return p0
.end method

.method public static synthetic access$2600(Lmiuix/pickerwidget/widget/NumberPicker;I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->exitHoverView()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/pickerwidget/widget/NumberPicker;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic access$900()[C
    .registers 1

    .line 1
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 3
    return-object v0
.end method

.method private changeValueByOne(Z)V
    .registers 15

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 3
    if-eqz v0, :cond_3a

    .line 5
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 13
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_17

    .line 19
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 21
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 27
    if-eqz p1, :cond_2a

    .line 29
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 36
    neg-int v5, p1

    .line 37
    const/16 v6, 0x12c

    .line 39
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 42
    goto :goto_36

    .line 43
    :cond_2a
    iget-object v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    iget v11, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 50
    const/16 v12, 0x12c

    .line 52
    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 55
    :goto_36
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    goto :goto_4a

    .line 59
    :cond_3a
    const/4 v0, 0x1

    .line 60
    if-eqz p1, :cond_44

    .line 62
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 64
    add-int/2addr p1, v0

    .line 65
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 68
    goto :goto_4a

    .line 69
    :cond_44
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 71
    sub-int/2addr p1, v0

    .line 72
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 75
    :goto_4a
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .registers 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ltz v0, :cond_b

    .line 7
    array-length v0, p1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_b
    aget v0, p1, v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 17
    if-eqz v1, :cond_18

    .line 19
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 21
    if-ge v0, v1, :cond_18

    .line 23
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 25
    :cond_18
    aput v0, p1, v2

    .line 27
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 30
    return-void
.end method

.method private drawLabelText(Landroid/graphics/Canvas;FFF)V
    .registers 7

    .line 1
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p4

    .line 7
    if-nez p4, :cond_5c

    .line 9
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    .line 12
    move-result p4

    .line 13
    if-nez p4, :cond_5c

    .line 15
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 17
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 26
    move-result p4

    .line 27
    invoke-static {p0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 30
    move-result v0

    .line 31
    const/high16 v1, 0x40000000  # 2.0f

    .line 33
    if-eqz v0, :cond_31

    .line 35
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 37
    div-float/2addr v0, v1

    .line 38
    sub-float/2addr p2, v0

    .line 39
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 41
    int-to-float v0, v0

    .line 42
    sub-float/2addr p2, v0

    .line 43
    sub-float/2addr p2, p4

    .line 44
    const/4 p4, 0x0

    .line 45
    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    .line 48
    move-result p2

    .line 49
    goto :goto_43

    .line 50
    :cond_31
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 52
    div-float/2addr v0, v1

    .line 53
    add-float/2addr v0, p2

    .line 54
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 56
    int-to-float p2, p2

    .line 57
    add-float/2addr v0, p2

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    move-result p2

    .line 62
    int-to-float p2, p2

    .line 63
    sub-float/2addr p2, p4

    .line 64
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    .line 67
    move-result p2

    .line 68
    :goto_43
    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 70
    int-to-float p4, p4

    .line 71
    div-float/2addr p4, v1

    .line 72
    sub-float/2addr p3, p4

    .line 73
    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 75
    int-to-float p4, p4

    .line 76
    div-float/2addr p4, v1

    .line 77
    add-float/2addr p4, p3

    .line 78
    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    .line 80
    int-to-float p3, p3

    .line 81
    add-float/2addr p4, p3

    .line 82
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 84
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 87
    move-result-object p3

    .line 88
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 90
    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 93
    :cond_5c
    return-void
.end method

.method private drawScrollValue(Landroid/graphics/Canvas;FF)F
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    iget v3, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 9
    int-to-float v3, v3

    .line 10
    iget-object v4, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 12
    iget-object v5, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 14
    array-length v6, v5

    .line 15
    const/4 v7, 0x0

    .line 16
    move v8, v7

    .line 17
    :goto_10
    if-ge v8, v6, :cond_8c

    .line 19
    aget v9, v5, v8

    .line 21
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v9

    .line 25
    check-cast v9, Ljava/lang/String;

    .line 27
    sub-float v10, p3, v3

    .line 29
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 32
    move-result v10

    .line 33
    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 35
    int-to-float v11, v11

    .line 36
    div-float/2addr v10, v11

    .line 37
    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 39
    int-to-float v12, v11

    .line 40
    iget v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeThreshold:F

    .line 42
    cmpl-float v12, v12, v13

    .line 44
    const/high16 v14, 0x3f800000  # 1.0f

    .line 46
    if-lez v12, :cond_31

    .line 48
    float-to-int v11, v13

    .line 49
    goto :goto_46

    .line 50
    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 53
    move-result v12

    .line 54
    int-to-float v12, v12

    .line 55
    iget-object v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 60
    move-result v13

    .line 61
    div-float/2addr v12, v13

    .line 62
    cmpg-float v13, v12, v14

    .line 64
    if-gez v13, :cond_46

    .line 66
    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 68
    int-to-float v11, v11

    .line 69
    mul-float/2addr v11, v12

    .line 70
    float-to-int v11, v11

    .line 71
    :cond_46
    :goto_46
    iget v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 73
    invoke-direct {v0, v10, v11, v12}, Lmiuix/pickerwidget/widget/NumberPicker;->getTextSize(FII)F

    .line 76
    move-result v11

    .line 77
    iget-object v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    iget-object v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 84
    iget v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    .line 86
    invoke-direct {v0, v10, v13, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(FIZ)I

    .line 89
    move-result v13

    .line 90
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 95
    int-to-float v12, v12

    .line 96
    sub-float v12, v11, v12

    .line 98
    const/high16 v13, 0x40000000  # 2.0f

    .line 100
    div-float/2addr v12, v13

    .line 101
    add-float/2addr v12, v3

    .line 102
    iget-object v15, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {v1, v9, v2, v12, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 107
    cmpg-float v12, v10, v14

    .line 109
    if-gez v12, :cond_85

    .line 111
    iget-object v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 113
    iget v14, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHighlight:I

    .line 115
    const/4 v15, 0x1

    .line 116
    invoke-direct {v0, v10, v14, v15}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(FIZ)I

    .line 119
    move-result v10

    .line 120
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget v10, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 125
    int-to-float v10, v10

    .line 126
    sub-float/2addr v11, v10

    .line 127
    div-float/2addr v11, v13

    .line 128
    add-float/2addr v11, v3

    .line 129
    iget-object v10, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 131
    invoke-virtual {v1, v9, v2, v11, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    :cond_85
    iget v9, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 136
    int-to-float v9, v9

    .line 137
    add-float/2addr v3, v9

    .line 138
    add-int/lit8 v8, v8, 0x1

    .line 140
    goto :goto_10

    .line 141
    :cond_8c
    return v3
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/String;

    .line 9
    if-eqz v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 14
    if-lt p1, v1, :cond_22

    .line 16
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 18
    if-le p1, v2, :cond_14

    .line 20
    goto :goto_22

    .line 21
    :cond_14
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 23
    if-eqz v2, :cond_1d

    .line 25
    sub-int v1, p1, v1

    .line 27
    aget-object v1, v2, v1

    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    :goto_22
    const-string v1, ""

    .line 37
    :goto_24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .registers 8

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 3
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_28

    .line 9
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 17
    div-int/lit8 v3, v2, 0x2

    .line 19
    if-le v1, v3, :cond_18

    .line 21
    if-lez v0, :cond_17

    .line 23
    neg-int v2, v2

    .line 24
    :cond_17
    add-int/2addr v0, v2

    .line 25
    :cond_18
    move v5, v0

    .line 26
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/16 v6, 0x320

    .line 33
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 39
    const/4 v0, 0x1

    .line 40
    return v0

    .line 41
    :cond_28
    return v1
.end method

.method private exitHoverView()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    .line 3
    if-eqz v0, :cond_14

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    .line 8
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIHoverStyle:Lmiuix/animation/IHoverStyle;

    .line 10
    sget-object v2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 12
    invoke-interface {v1, v2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 15
    move-result-object v1

    .line 16
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 18
    invoke-interface {v1, v0}, Lmiuix/animation/IHoverStyle;->hoverExit([Lmiuix/animation/base/AnimConfig;)V

    .line 21
    :cond_14
    return-void
.end method

.method private fling(I)V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 4
    if-lez p1, :cond_15

    .line 6
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const v9, 0x7fffffff

    .line 17
    move v5, p1

    .line 18
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 21
    goto :goto_26

    .line 22
    :cond_15
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 24
    const/4 v2, 0x0

    .line 25
    const v3, 0x7fffffff

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const v9, 0x7fffffff

    .line 35
    move v5, p1

    .line 36
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 39
    :goto_26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 42
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-static {p1}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    :goto_d
    return-object p1
.end method

.method private getAlphaGradient(FIZ)I
    .registers 5

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-ltz v0, :cond_7

    .line 7
    return p2

    .line 8
    :cond_7
    if-eqz p3, :cond_17

    .line 10
    neg-float p1, p1

    .line 11
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 14
    move-result p3

    .line 15
    int-to-float p3, p3

    .line 16
    mul-float/2addr p1, p3

    .line 17
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 20
    move-result p3

    .line 21
    int-to-float p3, p3

    .line 22
    add-float/2addr p1, p3

    .line 23
    goto :goto_1d

    .line 24
    :cond_17
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 27
    move-result p3

    .line 28
    int-to-float p3, p3

    .line 29
    mul-float/2addr p1, p3

    .line 30
    :goto_1d
    float-to-int p1, p1

    .line 31
    const p3, 0xffffff

    .line 34
    and-int/2addr p2, p3

    .line 35
    shl-int/lit8 p1, p1, 0x18

    .line 37
    or-int/2addr p1, p2

    .line 38
    return p1
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 3
    if-nez v0, :cond_9

    .line 5
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_2d

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 13
    array-length v1, v1

    .line 14
    if-ge v0, v1, :cond_28

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 22
    aget-object v1, v1, v0

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_25

    .line 34
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 36
    add-int/2addr p1, v0

    .line 37
    return p1

    .line 38
    :cond_25
    add-int/lit8 v0, v0, 0x1

    .line 40
    goto :goto_a

    .line 41
    :cond_28
    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    move-result p1
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2c} :catch_2d

    .line 45
    return p1

    .line 46
    :catch_2d
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 48
    return p1
.end method

.method private getTextSize(FII)F
    .registers 5

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    int-to-float p1, p3

    return p1

    :cond_8
    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    int-to-float p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private getWrappedSelectorIndex(I)I
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 3
    if-le p1, v0, :cond_d

    .line 5
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 7
    sub-int/2addr p1, v0

    .line 8
    sub-int/2addr v0, v1

    .line 9
    rem-int/2addr p1, v0

    .line 10
    add-int/2addr p1, v1

    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 13
    return p1

    .line 14
    :cond_d
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 16
    if-ge p1, v1, :cond_1a

    .line 18
    sub-int p1, v1, p1

    .line 20
    sub-int v1, v0, v1

    .line 22
    rem-int/2addr p1, v1

    .line 23
    sub-int/2addr v0, p1

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_1a
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .registers 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    if-ltz v0, :cond_b

    .line 6
    const/4 v0, 0x0

    .line 7
    array-length v2, p1

    .line 8
    sub-int/2addr v2, v1

    .line 9
    invoke-static {p1, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_b
    array-length v0, p1

    .line 13
    add-int/lit8 v0, v0, -0x2

    .line 15
    aget v0, p1, v0

    .line 17
    add-int/2addr v0, v1

    .line 18
    iget-boolean v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 20
    if-eqz v2, :cond_1b

    .line 22
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 24
    if-le v0, v2, :cond_1b

    .line 26
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 28
    :cond_1b
    array-length v2, p1

    .line 29
    sub-int/2addr v2, v1

    .line 30
    aput v0, p1, v2

    .line 32
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 35
    return-void
.end method

.method private initInputText()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 3
    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$3;

    .line 5
    invoke-direct {v1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$3;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 11
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 16
    new-instance v2, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;

    .line 18
    invoke-direct {v2, p0}, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v2, v1, v3

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 27
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 33
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 35
    const/4 v1, 0x6

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 39
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 41
    const/4 v1, 0x4

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 47
    const v1, 0x800003

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 59
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 61
    invoke-virtual {v0, v3}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 64
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 66
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 71
    move-result v2

    .line 72
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    .line 74
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 79
    move-result v4

    .line 80
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    return-void
.end method

.method private initLabelPaint()V
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 17
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 19
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 26
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 28
    int-to-float v1, v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    return-void
.end method

.method private initSelectorWheelPaint()Landroid/graphics/Paint;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 15
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 17
    int-to-float v1, v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 21
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 23
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 30
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 32
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    .line 38
    const/4 v3, -0x1

    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    return-object v0
.end method

.method private initSoundPlayer()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 3
    if-nez v0, :cond_1e

    .line 5
    const-string v0, "NumberPicker_sound_play"

    .line 7
    invoke-static {v0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->aquireWorker(Ljava/lang/String;)Landroid/os/Looper;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 13
    invoke-direct {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;-><init>(Landroid/os/Looper;)V

    .line 16
    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    .line 28
    invoke-virtual {v1, v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->init(Landroid/content/Context;I)V

    .line 31
    :cond_1e
    return-void
.end method

.method private initThreshHolds()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_label_text_size_small:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v0

    .line 26
    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_text_size_small:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeThreshold:F

    .line 35
    return-void
.end method

.method private initializeFadingEdges()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 16
    sub-int/2addr v0, v1

    .line 17
    div-int/lit8 v0, v0, 0x2

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 22
    return-void
.end method

.method private initializeSelectorWheel()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 6
    array-length v1, v0

    .line 7
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 9
    mul-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 17
    move-result v3

    .line 18
    sub-int/2addr v2, v3

    .line 19
    sub-int/2addr v2, v1

    .line 20
    int-to-float v1, v2

    .line 21
    const/4 v2, 0x0

    .line 22
    cmpg-float v3, v1, v2

    .line 24
    if-gez v3, :cond_1a

    .line 26
    move v1, v2

    .line 27
    :cond_1a
    array-length v0, v0

    .line 28
    int-to-float v0, v0

    .line 29
    div-float/2addr v1, v0

    .line 30
    const/high16 v0, 0x3f000000  # 0.5f

    .line 32
    add-float/2addr v1, v0

    .line 33
    float-to-int v0, v1

    .line 34
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 36
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 38
    add-int/2addr v1, v0

    .line 39
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 41
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 52
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 56
    mul-int/lit8 v0, v0, 0x1

    .line 58
    sub-int/2addr v1, v0

    .line 59
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 61
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 63
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 66
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 8
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 15
    array-length v3, v3

    .line 16
    if-ge v2, v3, :cond_24

    .line 18
    add-int/lit8 v3, v2, -0x1

    .line 20
    add-int/2addr v3, v1

    .line 21
    iget-boolean v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 23
    if-eqz v4, :cond_1c

    .line 25
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    .line 28
    move-result v3

    .line 29
    :cond_1c
    aput v3, v0, v2

    .line 31
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_c

    .line 37
    :cond_24
    return-void
.end method

.method private isInternationalBuild()Z
    .registers 8

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    .line 5
    if-nez v1, :cond_29

    .line 7
    const-string v1, "android.os.SystemProperties"

    .line 9
    invoke-static {v1}, Lmiuix/internal/util/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v3, v2, [Ljava/lang/Class;

    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v0, v3, v4

    .line 19
    const/4 v5, 0x1

    .line 20
    aput-object v0, v3, v5

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    const-string v6, "ro.product.mod_device"

    .line 26
    aput-object v6, v2, v4

    .line 28
    const-string v4, ""

    .line 30
    aput-object v4, v2, v5

    .line 32
    const-string v4, "get"

    .line 34
    invoke-static {v1, v0, v4, v3, v2}, Lmiuix/internal/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    .line 42
    :cond_29
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    .line 44
    const-string v1, "_global"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    return v0
.end method

.method private makeMeasureSpec(II)I
    .registers 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p2, v0, :cond_4

    .line 4
    return p1

    .line 5
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result v0

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result v1

    .line 13
    const/high16 v2, -0x80000000

    .line 15
    const/high16 v3, 0x40000000  # 2.0f

    .line 17
    if-eq v1, v2, :cond_28

    .line 19
    if-eqz v1, :cond_23

    .line 21
    if-ne v1, v3, :cond_17

    .line 23
    return p1

    .line 24
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string p2, "Unknown measure mode: "

    .line 28
    invoke-static {p2, v1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1

    .line 36
    :cond_23
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_28
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 44
    move-result p1

    .line 45
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 5
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    .line 12
    move-result p1

    .line 13
    sub-int/2addr v1, p1

    .line 14
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 16
    add-int/2addr p1, v1

    .line 17
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 19
    rem-int/2addr p1, v2

    .line 20
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 22
    sub-int/2addr v2, p1

    .line 23
    const/4 p1, 0x0

    .line 24
    if-eqz v2, :cond_2d

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 29
    move-result v3

    .line 30
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 32
    div-int/lit8 v5, v4, 0x2

    .line 34
    if-le v3, v5, :cond_28

    .line 36
    if-lez v2, :cond_27

    .line 38
    sub-int/2addr v2, v4

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    add-int/2addr v2, v4

    .line 41
    :cond_28
    :goto_28
    add-int/2addr v1, v2

    .line 42
    invoke-virtual {p0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 45
    return v0

    .line 46
    :cond_2d
    return p1
.end method

.method private notifyChange(I)V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 5
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->playSound()V

    .line 8
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    .line 10
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 12
    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 15
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    .line 17
    if-eqz v0, :cond_17

    .line 19
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 21
    invoke-interface {v0, p0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 24
    :cond_17
    return-void
.end method

.method private onScrollStateChange(I)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-nez p1, :cond_28

    .line 8
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 10
    if-eqz v0, :cond_22

    .line 12
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 14
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_22

    .line 28
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 30
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->stopSoundPlay()V

    .line 41
    :cond_28
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 43
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnScrollListener:Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;

    .line 45
    if-eqz v0, :cond_31

    .line 47
    invoke-interface {v0, p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lmiuix/pickerwidget/widget/NumberPicker;I)V

    .line 50
    :cond_31
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 3
    if-ne p1, v0, :cond_12

    .line 5
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_d

    .line 11
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 21
    const/4 v0, 0x1

    .line 22
    if-eq p1, v0, :cond_1a

    .line 24
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method

.method private parseStyle(Landroid/util/AttributeSet;I)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lmiuix/pickerwidget/R$styleable;->NumberPicker:[I

    .line 11
    sget v3, Lmiuix/pickerwidget/R$style;->Widget_NumberPicker_DayNight:I

    .line 13
    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 16
    move-result-object p1

    .line 17
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_text:I

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 22
    move-result-object p2

    .line 23
    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 25
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_textSizeHighlight:I

    .line 27
    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_text_size_highlight_normal:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 36
    move-result p2

    .line 37
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 39
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_textSizeHint:I

    .line 41
    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_text_size_hint_normal:I

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 46
    move-result v1

    .line 47
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 50
    move-result p2

    .line 51
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 53
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_labelTextSize:I

    .line 55
    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_text_size:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 60
    move-result v1

    .line 61
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 64
    move-result p2

    .line 65
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 67
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_textColorHighlight:I

    .line 69
    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_default_number_picker_highlight_color:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 74
    move-result v1

    .line 75
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 78
    move-result p2

    .line 79
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHighlight:I

    .line 81
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_textColorHint:I

    .line 83
    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_default_number_picker_hint_color:I

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 88
    move-result v1

    .line 89
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 92
    move-result p2

    .line 93
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    .line 95
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_labelTextColor:I

    .line 97
    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_number_picker_label_color:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 102
    move-result v1

    .line 103
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 106
    move-result p2

    .line 107
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    .line 109
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_labelPadding:I

    .line 111
    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_padding:I

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 116
    move-result v0

    .line 117
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 120
    move-result p2

    .line 121
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    .line 123
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 128
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    .line 130
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 132
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    .line 134
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 136
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHint:I

    .line 138
    return-void
.end method

.method private playSound()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->play()V

    .line 8
    :cond_7
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 7
    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    .line 10
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    :goto_f
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 18
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 21
    move-result v1

    .line 22
    int-to-long v1, v1

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 7
    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    .line 10
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    :goto_f
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 18
    invoke-static {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$600(Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 21
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    .line 7
    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    .line 10
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    :goto_f
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    .line 18
    invoke-static {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->access$702(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I

    .line 21
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    .line 23
    invoke-static {p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->access$802(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I

    .line 26
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method

.method private refreshWheel()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method

.method private releaseSoundPlayer()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->release(I)V

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 13
    :cond_c
    return-void
.end method

.method private removeAllCallbacks()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 24
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 27
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    :cond_7
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    :cond_7
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .registers 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_d

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-static {p1, p3, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    return p2
.end method

.method private setValueInternal(IZ)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    .line 8
    move-result p1

    .line 9
    goto :goto_15

    .line 10
    :cond_9
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 12
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result p1

    .line 16
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 18
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 21
    move-result p1

    .line 22
    :goto_15
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 24
    if-ne v0, p1, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 29
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 32
    if-eqz p2, :cond_24

    .line 34
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->notifyChange(I)V

    .line 37
    :cond_24
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 43
    return-void
.end method

.method private stopSoundPlay()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->stop()V

    .line 8
    :cond_7
    return-void
.end method

.method private trimLabelTextSize(F)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v0, v0, v1

    .line 8
    if-lez v0, :cond_42

    .line 10
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    .line 12
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 14
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 16
    int-to-float v0, v0

    .line 17
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 20
    :goto_13
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 22
    const/high16 v1, 0x40000000  # 2.0f

    .line 24
    div-float/2addr v0, v1

    .line 25
    add-float/2addr v0, p1

    .line 26
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 28
    int-to-float v1, v1

    .line 29
    add-float/2addr v0, v1

    .line 30
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    .line 33
    move-result v1

    .line 34
    add-float/2addr v1, v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    move-result v0

    .line 39
    int-to-float v0, v0

    .line 40
    cmpl-float v0, v1, v0

    .line 42
    if-lez v0, :cond_42

    .line 44
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 46
    int-to-float v1, v0

    .line 47
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    .line 49
    cmpl-float v1, v1, v2

    .line 51
    if-lez v1, :cond_42

    .line 53
    int-to-float v0, v0

    .line 54
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    .line 56
    mul-float/2addr v0, v1

    .line 57
    float-to-int v0, v0

    .line 58
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 60
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 62
    int-to-float v0, v0

    .line 63
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    goto :goto_13

    .line 67
    :cond_42
    return-void
.end method

.method private tryComputeMaxWidth()V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    const/high16 v1, -0x40800000  # -1.0f

    .line 9
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 11
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 13
    int-to-float v3, v3

    .line 14
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_4a

    .line 22
    const/4 v0, 0x0

    .line 23
    move v1, v3

    .line 24
    :goto_17
    const/16 v2, 0x9

    .line 26
    if-ge v3, v2, :cond_2e

    .line 28
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 30
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 37
    move-result v2

    .line 38
    cmpl-float v4, v2, v0

    .line 40
    if-lez v4, :cond_2b

    .line 42
    move v0, v2

    .line 43
    move v1, v3

    .line 44
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_17

    .line 47
    :cond_2e
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 49
    invoke-direct {p0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 56
    move-result v2

    .line 57
    int-to-float v3, v2

    .line 58
    mul-float/2addr v3, v0

    .line 59
    float-to-int v0, v3

    .line 60
    int-to-float v0, v0

    .line 61
    new-array v2, v2, [C

    .line 63
    add-int/lit8 v1, v1, 0x30

    .line 65
    int-to-char v1, v1

    .line 66
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 69
    new-instance v1, Ljava/lang/String;

    .line 71
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 74
    goto :goto_63

    .line 75
    :cond_4a
    array-length v2, v2

    .line 76
    :goto_4b
    if-ge v3, v2, :cond_60

    .line 78
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 80
    aget-object v4, v4, v3

    .line 82
    iget-object v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 84
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 87
    move-result v5

    .line 88
    cmpl-float v6, v5, v1

    .line 90
    if-lez v6, :cond_5d

    .line 92
    move-object v0, v4

    .line 93
    move v1, v5

    .line 94
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    .line 96
    goto :goto_4b

    .line 97
    :cond_60
    move v7, v1

    .line 98
    move-object v1, v0

    .line 99
    move v0, v7

    .line 100
    :goto_63
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 102
    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 109
    move-result v1

    .line 110
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 115
    move-result v2

    .line 116
    add-int/2addr v2, v1

    .line 117
    int-to-float v1, v2

    .line 118
    add-float/2addr v0, v1

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 122
    move-result v1

    .line 123
    int-to-float v1, v1

    .line 124
    add-float/2addr v0, v1

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 128
    move-result v1

    .line 129
    int-to-float v1, v1

    .line 130
    add-float/2addr v0, v1

    .line 131
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 133
    int-to-float v1, v1

    .line 134
    cmpl-float v1, v1, v0

    .line 136
    if-eqz v1, :cond_96

    .line 138
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    .line 140
    int-to-float v2, v1

    .line 141
    cmpl-float v2, v0, v2

    .line 143
    if-lez v2, :cond_94

    .line 145
    float-to-int v0, v0

    .line 146
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 148
    goto :goto_96

    .line 149
    :cond_94
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 151
    :cond_96
    :goto_96
    return-void
.end method

.method private updateInputTextView()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxText()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_28

    .line 11
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 13
    if-eqz v1, :cond_11

    .line 15
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 17
    goto :goto_26

    .line 18
    :cond_11
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 20
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_26

    .line 34
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_26
    :goto_26
    const/4 v0, 0x1

    .line 40
    return v0

    .line 41
    :cond_28
    const/4 v0, 0x0

    .line 42
    return v0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_14

    .line 17
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 20
    goto :goto_1c

    .line 21
    :cond_14
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 29
    :goto_1c
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 3
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_11

    .line 9
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 21
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 24
    move-result v1

    .line 25
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 27
    if-nez v2, :cond_22

    .line 29
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    .line 32
    move-result v2

    .line 33
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 35
    :cond_22
    const/4 v2, 0x0

    .line 36
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 38
    sub-int v3, v1, v3

    .line 40
    invoke-virtual {p0, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 43
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 45
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_36

    .line 51
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    :goto_39
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x13

    .line 7
    const/16 v2, 0x14

    .line 9
    if-eq v0, v1, :cond_19

    .line 11
    if-eq v0, v2, :cond_19

    .line 13
    const/16 v1, 0x17

    .line 15
    if-eq v0, v1, :cond_15

    .line 17
    const/16 v1, 0x42

    .line 19
    if-eq v0, v1, :cond_15

    .line 21
    goto :goto_65

    .line 22
    :cond_15
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 25
    goto :goto_65

    .line 26
    :cond_19
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 28
    if-nez v1, :cond_1e

    .line 30
    goto :goto_65

    .line 31
    :cond_1e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 34
    move-result v1

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v1, :cond_30

    .line 38
    if-eq v1, v3, :cond_28

    .line 40
    goto :goto_65

    .line 41
    :cond_28
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 43
    if-ne v1, v0, :cond_65

    .line 45
    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 48
    return v3

    .line 49
    :cond_30
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 51
    if-nez v1, :cond_42

    .line 53
    if-ne v0, v2, :cond_37

    .line 55
    goto :goto_42

    .line 56
    :cond_37
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 59
    move-result v1

    .line 60
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 63
    move-result v4

    .line 64
    if-le v1, v4, :cond_65

    .line 66
    goto :goto_4c

    .line 67
    :cond_42
    :goto_42
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 70
    move-result v1

    .line 71
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    .line 74
    move-result v4

    .line 75
    if-ge v1, v4, :cond_65

    .line 77
    :goto_4c
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 80
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 82
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 85
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 87
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_64

    .line 93
    if-ne v0, v2, :cond_60

    .line 95
    move p1, v3

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    const/4 p1, 0x0

    .line 98
    :goto_61
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 101
    :cond_64
    return v3

    .line 102
    :cond_65
    :goto_65
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 105
    move-result p1

    .line 106
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 12
    move-result v0

    .line 13
    if-eq v0, v1, :cond_12

    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_12

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 22
    :goto_15
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_b

    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_b

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 15
    :goto_e
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public drawableStateChanged()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 7
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    const-class v0, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBottomFadingEdgeStrength()F
    .registers 2

    const v0, 0x3f666666  # 0.9f

    return v0
.end method

.method public getDisplayedMaxText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const-string v0, ""

    .line 7
    :cond_6
    return-object v0
.end method

.method public getDisplayedMaxTextWidth()F
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 9
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    .line 11
    int-to-float v2, v2

    .line 12
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 15
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxText()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 30
    return v1
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLabelWidth()F
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1b

    .line 9
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1b

    .line 15
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 17
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 19
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public getMarginLabelLeft()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 3
    return v0
.end method

.method public getMaxValue()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 3
    return v0
.end method

.method public getMinValue()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 3
    return v0
.end method

.method public getOriginTextSizeHighlight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    .line 3
    return v0
.end method

.method public getOriginTextSizeHint()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHint:I

    .line 3
    return v0
.end method

.method public getOriginalLabelWidth()F
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2e

    .line 9
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2e

    .line 15
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 23
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    .line 25
    int-to-float v2, v2

    .line 26
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 29
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 31
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 33
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 40
    move-result v1

    .line 41
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    return v1

    .line 47
    :cond_2e
    const/4 v0, 0x0

    .line 48
    return v0
.end method

.method public getTextSizeHighlight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 3
    return v0
.end method

.method public getTextSizeHint()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 3
    return v0
.end method

.method public getTopFadingEdgeStrength()F
    .registers 2

    const v0, 0x3f666666  # 0.9f

    return v0
.end method

.method public getValue()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 3
    return v0
.end method

.method public getWrapSelectorWheel()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    .line 7
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initThreshHolds()V

    .line 7
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->releaseSoundPlayer()V

    .line 7
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 10
    const-string v0, "NumberPicker_sound_play"

    .line 12
    invoke-static {v0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->releaseWorker(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 24
    move-result v3

    .line 25
    sub-int/2addr v2, v3

    .line 26
    add-int/2addr v2, v0

    .line 27
    sub-int/2addr v2, v1

    .line 28
    div-int/lit8 v2, v2, 0x2

    .line 30
    int-to-float v0, v2

    .line 31
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 33
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 35
    mul-int/lit8 v2, v2, 0x1

    .line 37
    add-int/2addr v2, v1

    .line 38
    int-to-float v1, v2

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->drawScrollValue(Landroid/graphics/Canvas;FF)F

    .line 42
    move-result v2

    .line 43
    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->drawLabelText(Landroid/graphics/Canvas;FFF)V

    .line 46
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_73

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 14
    const/16 v1, 0x2000

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 19
    const/16 v1, 0x1000

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 31
    const/4 v2, 0x0

    .line 32
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 34
    sub-int/2addr v3, v0

    .line 35
    int-to-float v3, v3

    .line 36
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 38
    add-int/2addr v4, v0

    .line 39
    int-to-float v0, v4

    .line 40
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 42
    int-to-float v4, v4

    .line 43
    invoke-static {v2, v3, v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 57
    if-nez v2, :cond_41

    .line 59
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 61
    invoke-direct {p0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    goto :goto_48

    .line 66
    :cond_41
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 68
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 70
    sub-int/2addr v3, v4

    .line 71
    aget-object v2, v2, v3

    .line 73
    :goto_48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_56

    .line 84
    const-string v2, ""

    .line 86
    goto :goto_58

    .line 87
    :cond_56
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 89
    :goto_58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    const/16 v0, 0x1e

    .line 101
    if-lt v1, v0, :cond_73

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v0

    .line 107
    sget v1, Lmiuix/pickerwidget/R$string;->miuix_access_state_desc:I

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    invoke-static {p1, v0}, Landroidx/core/content/a;->u(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    .line 116
    :cond_73
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a5

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_d

    .line 12
    goto/16 :goto_a5

    .line 14
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 24
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    .line 36
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 41
    move-result-wide v2

    .line 42
    iput-wide v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    .line 44
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    .line 46
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 48
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    .line 50
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 52
    int-to-float v0, v0

    .line 53
    cmpg-float v0, p1, v0

    .line 55
    const/4 v2, 0x1

    .line 56
    if-gez v0, :cond_44

    .line 58
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 60
    if-nez p1, :cond_54

    .line 62
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 64
    const/4 v0, 0x2

    .line 65
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 68
    goto :goto_54

    .line 69
    :cond_44
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 71
    int-to-float v0, v0

    .line 72
    cmpl-float p1, p1, v0

    .line 74
    if-lez p1, :cond_54

    .line 76
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 78
    if-nez p1, :cond_54

    .line 80
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 82
    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 85
    :cond_54
    :goto_54
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 87
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_6a

    .line 93
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 95
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 98
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 100
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 103
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 106
    goto :goto_a4

    .line 107
    :cond_6a
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 109
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_7d

    .line 115
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 117
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 120
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 122
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 125
    goto :goto_a4

    .line 126
    :cond_7d
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    .line 128
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 130
    int-to-float v0, v0

    .line 131
    cmpg-float v0, p1, v0

    .line 133
    if-gez v0, :cond_8f

    .line 135
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 138
    move-result p1

    .line 139
    int-to-long v3, p1

    .line 140
    invoke-direct {p0, v1, v3, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    .line 143
    goto :goto_a4

    .line 144
    :cond_8f
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 146
    int-to-float v0, v0

    .line 147
    cmpl-float p1, p1, v0

    .line 149
    if-lez p1, :cond_9f

    .line 151
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 154
    move-result p1

    .line 155
    int-to-long v0, p1

    .line 156
    invoke-direct {p0, v2, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    .line 159
    goto :goto_a4

    .line 160
    :cond_9f
    iput-boolean v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 162
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    .line 165
    :goto_a4
    return v2

    .line 166
    :cond_a5
    :goto_a5
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 12

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    move-result p3

    .line 17
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 19
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    move-result p4

    .line 23
    iget-object p5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 28
    move-result p5

    .line 29
    sub-int/2addr p2, p4

    .line 30
    div-int/lit8 p2, p2, 0x2

    .line 32
    sub-int/2addr p3, p5

    .line 33
    div-int/lit8 p3, p3, 0x2

    .line 35
    add-int/2addr p4, p2

    .line 36
    add-int/2addr p5, p3

    .line 37
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 39
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 42
    if-eqz p1, :cond_45

    .line 44
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheel()V

    .line 47
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeFadingEdges()V

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 53
    move-result p1

    .line 54
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 56
    sub-int/2addr p1, p2

    .line 57
    div-int/lit8 p1, p1, 0x2

    .line 59
    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 61
    sub-int/2addr p1, p3

    .line 62
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 64
    mul-int/lit8 p3, p3, 0x2

    .line 66
    add-int/2addr p3, p1

    .line 67
    add-int/2addr p3, p2

    .line 68
    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 70
    :cond_45
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 73
    move-result p1

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 77
    move-result p2

    .line 78
    sub-int/2addr p1, p2

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 82
    move-result p2

    .line 83
    add-int/2addr p2, p1

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 87
    move-result p1

    .line 88
    sub-int/2addr p2, p1

    .line 89
    int-to-float p1, p2

    .line 90
    const/high16 p2, 0x40000000  # 2.0f

    .line 92
    div-float/2addr p1, p2

    .line 93
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->trimLabelTextSize(F)V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 99
    move-result-object p1

    .line 100
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 102
    add-int/lit8 p2, p2, 0x14

    .line 104
    iget-boolean p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    .line 106
    if-eqz p3, :cond_b7

    .line 108
    instance-of p3, p1, Landroid/graphics/drawable/StateListDrawable;

    .line 110
    if-eqz p3, :cond_b7

    .line 112
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 114
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 116
    const/16 p4, 0x1d

    .line 118
    if-lt p3, p4, :cond_b7

    .line 120
    invoke-static {p1}, Landroidx/appcompat/widget/a0;->c(Landroid/graphics/drawable/StateListDrawable;)I

    .line 123
    move-result p3

    .line 124
    const/4 p4, 0x0

    .line 125
    move p5, p4

    .line 126
    :goto_7d
    if-ge p5, p3, :cond_b7

    .line 128
    invoke-static {p1, p5}, Landroidx/appcompat/widget/a0;->h(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    .line 131
    move-result-object v0

    .line 132
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    .line 134
    if-eqz v1, :cond_b4

    .line 136
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 141
    move-result v1

    .line 142
    move v2, p4

    .line 143
    :goto_8e
    if-ge v2, v1, :cond_b4

    .line 145
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    .line 148
    move-result v3

    .line 149
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 152
    move-result-object v3

    .line 153
    instance-of v4, v3, Landroid/graphics/drawable/GradientDrawable;

    .line 155
    if-eqz v4, :cond_b1

    .line 157
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 162
    move-result v4

    .line 163
    if-le v4, p2, :cond_a6

    .line 165
    move v4, p2

    .line 166
    goto :goto_aa

    .line 167
    :cond_a6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 170
    move-result v4

    .line 171
    :goto_aa
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 174
    move-result v5

    .line 175
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 178
    :cond_b1
    add-int/lit8 v2, v2, 0x1

    .line 180
    goto :goto_8e

    .line 181
    :cond_b4
    add-int/lit8 p5, p5, 0x1

    .line 183
    goto :goto_7d

    .line 184
    :cond_b7
    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 11
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    .line 17
    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    .line 20
    move-result v1

    .line 21
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 24
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    move-result v1

    .line 30
    invoke-direct {p0, v0, v1, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    .line 33
    move-result p1

    .line 34
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 39
    move-result v1

    .line 40
    invoke-direct {p0, v0, v1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    .line 43
    move-result p2

    .line 44
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 47
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_ec

    .line 8
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 10
    if-nez v0, :cond_d

    .line 12
    goto/16 :goto_ec

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    if-nez v0, :cond_17

    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x2

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eq v0, v3, :cond_5c

    .line 37
    if-eq v0, v2, :cond_2b

    .line 39
    const/4 v4, 0x3

    .line 40
    if-eq v0, v4, :cond_5c

    .line 42
    goto/16 :goto_eb

    .line 44
    :cond_2b
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    .line 46
    if-eqz v0, :cond_31

    .line 48
    goto/16 :goto_eb

    .line 50
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 53
    move-result p1

    .line 54
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 56
    if-eq v0, v3, :cond_4d

    .line 58
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    .line 60
    sub-float v0, p1, v0

    .line 62
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 65
    move-result v0

    .line 66
    float-to-int v0, v0

    .line 67
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    .line 69
    if-le v0, v1, :cond_58

    .line 71
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 74
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 77
    goto :goto_58

    .line 78
    :cond_4d
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 80
    sub-float v0, p1, v0

    .line 82
    float-to-int v0, v0

    .line 83
    invoke-virtual {p0, v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 89
    :cond_58
    :goto_58
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 91
    goto/16 :goto_eb

    .line 93
    :cond_5c
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 96
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 99
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 101
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 104
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 106
    const/16 v4, 0x3e8

    .line 108
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 110
    int-to-float v5, v5

    .line 111
    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 114
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 117
    move-result v0

    .line 118
    float-to-int v0, v0

    .line 119
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 122
    move-result v4

    .line 123
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 125
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 128
    move-result v5

    .line 129
    if-lt v4, v5, :cond_87

    .line 131
    int-to-float v0, v0

    .line 132
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 134
    mul-float/2addr v0, v4

    .line 135
    float-to-int v0, v0

    .line 136
    :cond_87
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 139
    move-result v4

    .line 140
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 142
    if-le v4, v5, :cond_96

    .line 144
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->fling(I)V

    .line 147
    invoke-direct {p0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 150
    goto :goto_e3

    .line 151
    :cond_96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 154
    move-result v0

    .line 155
    float-to-int v0, v0

    .line 156
    int-to-float v4, v0

    .line 157
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    .line 159
    sub-float/2addr v4, v5

    .line 160
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 163
    move-result v4

    .line 164
    float-to-int v4, v4

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 168
    move-result-wide v5

    .line 169
    iget-wide v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    .line 171
    sub-long/2addr v5, v7

    .line 172
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    .line 174
    if-gt v4, p1, :cond_dd

    .line 176
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 179
    move-result p1

    .line 180
    int-to-long v7, p1

    .line 181
    cmp-long p1, v5, v7

    .line 183
    if-gez p1, :cond_dd

    .line 185
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 187
    if-eqz p1, :cond_bf

    .line 189
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 191
    goto :goto_e0

    .line 192
    :cond_bf
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 194
    div-int/2addr v0, p1

    .line 195
    sub-int/2addr v0, v3

    .line 196
    if-lez v0, :cond_ce

    .line 198
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 201
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 203
    invoke-virtual {p1, v3}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 206
    goto :goto_e0

    .line 207
    :cond_ce
    if-gez v0, :cond_d9

    .line 209
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 212
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 214
    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 217
    goto :goto_e0

    .line 218
    :cond_d9
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 221
    goto :goto_e0

    .line 222
    :cond_dd
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 225
    :goto_e0
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 228
    :goto_e3
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 230
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 233
    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 236
    :goto_eb
    return v3

    .line 237
    :cond_ec
    :goto_ec
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 12
    move-result p2

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p2, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    const/16 p2, 0x1000

    .line 19
    if-eq p1, p2, :cond_19

    .line 21
    const/16 v2, 0x2000

    .line 23
    if-eq p1, v2, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    if-ne p1, p2, :cond_1c

    .line 28
    move v1, v0

    .line 29
    :cond_1c
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 32
    return v0
.end method

.method public scrollBy(II)V
    .registers 7

    .line 1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 3
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_14

    .line 8
    if-lez p2, :cond_14

    .line 10
    aget v2, p1, v1

    .line 12
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 14
    if-gt v2, v3, :cond_14

    .line 16
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 18
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 20
    return-void

    .line 21
    :cond_14
    if-nez v0, :cond_23

    .line 23
    if-gez p2, :cond_23

    .line 25
    aget v0, p1, v1

    .line 27
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 29
    if-lt v0, v2, :cond_23

    .line 31
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 33
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 35
    return-void

    .line 36
    :cond_23
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 38
    add-int/2addr v0, p2

    .line 39
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 41
    :cond_28
    :goto_28
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 43
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 45
    sub-int v0, p2, v0

    .line 47
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 49
    if-le v0, v2, :cond_4e

    .line 51
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 53
    sub-int/2addr p2, v0

    .line 54
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 56
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 59
    aget p2, p1, v1

    .line 61
    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 64
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 66
    if-nez p2, :cond_28

    .line 68
    aget p2, p1, v1

    .line 70
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 72
    if-gt p2, v0, :cond_28

    .line 74
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 76
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 78
    goto :goto_28

    .line 79
    :cond_4e
    :goto_4e
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 81
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 83
    sub-int v0, p2, v0

    .line 85
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 87
    neg-int v2, v2

    .line 88
    if-ge v0, v2, :cond_75

    .line 90
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 92
    add-int/2addr p2, v0

    .line 93
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 95
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 98
    aget p2, p1, v1

    .line 100
    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 103
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 105
    if-nez p2, :cond_4e

    .line 107
    aget p2, p1, v1

    .line 109
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 111
    if-lt p2, v0, :cond_4e

    .line 113
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 115
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 117
    goto :goto_4e

    .line 118
    :cond_75
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 8
    if-eqz p1, :cond_12

    .line 10
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 12
    const v0, 0x80001

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 18
    goto :goto_18

    .line 19
    :cond_12
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 25
    :goto_18
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 28
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 31
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 34
    return-void
.end method

.method public setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 8
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 11
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 14
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 3
    if-nez v0, :cond_6

    .line 5
    if-nez p1, :cond_e

    .line 7
    :cond_6
    if-eqz v0, :cond_13

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_13

    .line 15
    :cond_e
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    :cond_13
    return-void
.end method

.method public setLabelTextSizeThreshold(F)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 5
    move-result p1

    .line 6
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    .line 8
    return-void
.end method

.method public setLabelTextSizeTrimFactor(F)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-lez v0, :cond_d

    .line 6
    const/high16 v0, 0x3f800000  # 1.0f

    .line 8
    cmpg-float v0, p1, v0

    .line 10
    if-gez v0, :cond_d

    .line 12
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    .line 14
    :cond_d
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-ltz v0, :cond_7

    .line 6
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 8
    :cond_7
    return-void
.end method

.method public setMaxValue(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-ltz p1, :cond_2a

    .line 8
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 10
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 12
    if-ge p1, v0, :cond_f

    .line 14
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 16
    :cond_f
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 18
    sub-int/2addr p1, v0

    .line 19
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 21
    array-length v0, v0

    .line 22
    if-le p1, v0, :cond_19

    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    :goto_1a
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 30
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 33
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 36
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 42
    return-void

    .line 43
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string v0, "maxValue must be >= 0"

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method

.method public setMeasureBackgroundEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    .line 3
    return-void
.end method

.method public setMinValue(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-ltz p1, :cond_2a

    .line 8
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 10
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 12
    if-le p1, v0, :cond_f

    .line 14
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 16
    :cond_f
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 18
    sub-int/2addr v0, p1

    .line 19
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 21
    array-length p1, p1

    .line 22
    if-le v0, p1, :cond_19

    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    :goto_1a
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 30
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 33
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 36
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 42
    return-void

    .line 43
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string v0, "minValue must be >= 0"

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 3
    return-void
.end method

.method public setOnScrollListener(Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnScrollListener:Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;

    .line 3
    return-void
.end method

.method public setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    .line 3
    return-void
.end method

.method public setTextSizeHighlight(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 5
    int-to-float p1, p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 11
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 19
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheel()V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    return-void
.end method

.method public setTextSizeHint(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setTextSizeTrimFactor(F)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-lez v0, :cond_d

    .line 6
    const/high16 v0, 0x3f800000  # 1.0f

    .line 8
    cmpg-float v0, p1, v0

    .line 10
    if-gez v0, :cond_d

    .line 12
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeTrimFactor:F

    .line 14
    :cond_d
    return-void
.end method

.method public setValue(I)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 5
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 3
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 8
    array-length v1, v1

    .line 9
    if-lt v0, v1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-eqz p1, :cond_11

    .line 16
    if-eqz v0, :cond_17

    .line 18
    :cond_11
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 20
    if-eq p1, v0, :cond_17

    .line 22
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 24
    :cond_17
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->refreshWheel()V

    .line 27
    return-void
.end method
