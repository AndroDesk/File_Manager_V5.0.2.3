.class public Lmiuix/pickerwidget/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/TimePicker$SavedState;,
        Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mOnTimeChangedListener:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

.field private mProperPaddingViewGroup:Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;

.field private mTempCalendar:Lmiuix/pickerwidget/date/Calendar;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiuix/pickerwidget/widget/TimePicker$1;

    invoke-direct {v0}, Lmiuix/pickerwidget/widget/TimePicker$1;-><init>()V

    sput-object v0, Lmiuix/pickerwidget/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    sget p3, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_time_picker:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lmiuix/pickerwidget/R$id;->properPaddingViewGroup:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mProperPaddingViewGroup:Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;

    sget p1, Lmiuix/pickerwidget/R$id;->hour:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    new-instance p3, Lmiuix/pickerwidget/widget/TimePicker$2;

    invoke-direct {p3, p0}, Lmiuix/pickerwidget/widget/TimePicker$2;-><init>(Lmiuix/pickerwidget/widget/TimePicker;)V

    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    sget p3, Lmiuix/pickerwidget/R$id;->number_picker_input:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    sget p1, Lmiuix/pickerwidget/R$id;->minute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    sget-object v2, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    new-instance v2, Lmiuix/pickerwidget/widget/TimePicker$3;

    invoke-direct {v2, p0}, Lmiuix/pickerwidget/widget/TimePicker$3;-><init>(Lmiuix/pickerwidget/widget/TimePicker;)V

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    sget p1, Lmiuix/pickerwidget/R$id;->amPm:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/Button;

    const/4 v2, 0x0

    if-eqz v0, :cond_8b

    iput-object v2, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    move-object p3, p1

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v0, Lmiuix/pickerwidget/widget/TimePicker$4;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/TimePicker$4;-><init>(Lmiuix/pickerwidget/widget/TimePicker;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b9

    :cond_8b
    iput-object v2, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    move-object v0, p1

    check-cast v0, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    invoke-virtual {v0, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    new-instance v2, Lmiuix/pickerwidget/widget/TimePicker$5;

    invoke-direct {v2, p0}, Lmiuix/pickerwidget/widget/TimePicker$5;-><init>(Lmiuix/pickerwidget/widget/TimePicker;)V

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    :goto_b9
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->isAmPmAtStart()Z

    move-result p3

    if-eqz p3, :cond_cd

    sget p3, Lmiuix/pickerwidget/R$id;->timePickerLayout:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p3, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_cd
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateHourControl()V

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    sget-object p1, Lmiuix/pickerwidget/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setOnTimeChangedListener(Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 p3, 0x12

    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 p3, 0x14

    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_ff

    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/widget/TimePicker;->setEnabled(Z)V

    :cond_ff
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_108

    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_108
    return-void
.end method

.method public static synthetic access$000(Lmiuix/pickerwidget/widget/TimePicker;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    return p0
.end method

.method public static synthetic access$002(Lmiuix/pickerwidget/widget/TimePicker;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method public static synthetic access$100(Lmiuix/pickerwidget/widget/TimePicker;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method public static synthetic access$200(Lmiuix/pickerwidget/widget/TimePicker;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method private isAmPmAtStart()Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_pm:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onTimeChanged()V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mOnTimeChangedListener:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lmiuix/pickerwidget/widget/TimePicker;II)V

    :cond_1b
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 3

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    if-nez p1, :cond_16

    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    :cond_16
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method private updateAmPmControl()V
    .registers 5

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_40

    :cond_10
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_40

    :cond_16
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_40

    :cond_28
    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_40
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    sget-object v1, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    goto :goto_2e

    :cond_1b
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getBaseline()I
    .registers 2

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_11
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1c

    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1c
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lmiuix/pickerwidget/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lmiuix/pickerwidget/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x2c

    goto :goto_c

    :cond_a
    const/16 v0, 0x1c

    :goto_c
    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v2, 0x12

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v2, 0x14

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lmiuix/pickerwidget/widget/TimePicker$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/TimePicker$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/TimePicker$SavedState;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiuix/pickerwidget/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lmiuix/pickerwidget/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILmiuix/pickerwidget/widget/TimePicker$1;)V

    return-object v1
.end method

.method public set24HourView(Ljava/lang/Boolean;)V
    .registers 4

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateHourControl()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 4

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4a

    :cond_d
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3b

    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    :cond_3e
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1f

    :cond_1a
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_1f
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    return-void
.end method

.method public setFixedContentHorizontalPadding(II)V
    .registers 4

    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mProperPaddingViewGroup:Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;

    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->setFixedContentHorizontalPadding(II)V

    return-void
.end method

.method public setOnTimeChangedListener(Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mOnTimeChangedListener:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method
