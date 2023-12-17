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

    .line 1
    new-instance v0, Lmiuix/pickerwidget/widget/TimePicker$1;

    .line 3
    invoke-direct {v0}, Lmiuix/pickerwidget/widget/TimePicker$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/pickerwidget/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 6
    sget p3, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_time_picker:I

    const-string v0, "layout_inflater"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 8
    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    sget p1, Lmiuix/pickerwidget/R$id;->properPaddingViewGroup:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mProperPaddingViewGroup:Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;

    .line 10
    sget p1, Lmiuix/pickerwidget/R$id;->hour:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 11
    new-instance p3, Lmiuix/pickerwidget/widget/TimePicker$2;

    invoke-direct {p3, p0}, Lmiuix/pickerwidget/widget/TimePicker$2;-><init>(Lmiuix/pickerwidget/widget/TimePicker;)V

    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 12
    sget p3, Lmiuix/pickerwidget/R$id;->number_picker_input:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 v0, 0x5

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 14
    sget p1, Lmiuix/pickerwidget/R$id;->minute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x3b

    .line 16
    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    const-wide/16 v2, 0x64

    .line 17
    invoke-virtual {p1, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 18
    sget-object v2, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 19
    new-instance v2, Lmiuix/pickerwidget/widget/TimePicker$3;

    invoke-direct {v2, p0}, Lmiuix/pickerwidget/widget/TimePicker$3;-><init>(Lmiuix/pickerwidget/widget/TimePicker;)V

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 20
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 22
    sget p1, Lmiuix/pickerwidget/R$id;->amPm:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 23
    instance-of v0, p1, Landroid/widget/Button;

    const/4 v2, 0x0

    if-eqz v0, :cond_8b

    .line 24
    iput-object v2, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 25
    move-object p3, p1

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 26
    new-instance v0, Lmiuix/pickerwidget/widget/TimePicker$4;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/TimePicker$4;-><init>(Lmiuix/pickerwidget/widget/TimePicker;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b9

    .line 27
    :cond_8b
    iput-object v2, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 28
    move-object v0, p1

    check-cast v0, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 29
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 30
    invoke-virtual {v0, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 32
    new-instance v2, Lmiuix/pickerwidget/widget/TimePicker$5;

    invoke-direct {v2, p0}, Lmiuix/pickerwidget/widget/TimePicker$5;-><init>(Lmiuix/pickerwidget/widget/TimePicker;)V

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 33
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    const/4 v0, 0x6

    .line 34
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 35
    :goto_b9
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->isAmPmAtStart()Z

    move-result p3

    if-eqz p3, :cond_cd

    .line 36
    sget p3, Lmiuix/pickerwidget/R$id;->timePickerLayout:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 37
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p3, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 39
    :cond_cd
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateHourControl()V

    .line 40
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    .line 41
    sget-object p1, Lmiuix/pickerwidget/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setOnTimeChangedListener(Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;)V

    .line 42
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 p3, 0x12

    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 43
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 p3, 0x14

    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 44
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_ff

    .line 45
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/widget/TimePicker;->setEnabled(Z)V

    .line 46
    :cond_ff
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_108

    .line 47
    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_108
    return-void
.end method

.method public static synthetic access$000(Lmiuix/pickerwidget/widget/TimePicker;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lmiuix/pickerwidget/widget/TimePicker;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lmiuix/pickerwidget/widget/TimePicker;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/pickerwidget/widget/TimePicker;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    .line 4
    return-void
.end method

.method private isAmPmAtStart()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_pm:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "a"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private onTimeChanged()V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 5
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mOnTimeChangedListener:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

    .line 7
    if-eqz v0, :cond_1b

    .line 9
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v2

    .line 25
    invoke-interface {v0, p0, v1, v2}, Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lmiuix/pickerwidget/widget/TimePicker;II)V

    .line 28
    :cond_1b
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 12
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 14
    if-nez p1, :cond_16

    .line 16
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    .line 18
    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 21
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 23
    :cond_16
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_11

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    :cond_11
    return-void
.end method

.method private updateAmPmControl()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->is24HourView()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_16

    .line 7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 9
    const/16 v1, 0x8

    .line 11
    if-eqz v0, :cond_10

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    goto :goto_40

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    goto :goto_40

    .line 23
    :cond_16
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 25
    xor-int/lit8 v0, v0, 0x1

    .line 27
    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_28

    .line 32
    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 35
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    goto :goto_40

    .line 41
    :cond_28
    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    aget-object v0, v3, v0

    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :goto_40
    const/4 v0, 0x4

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 69
    return-void
.end method

.method private updateHourControl()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->is24HourView()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1b

    .line 7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 13
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 15
    const/16 v1, 0x17

    .line 17
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 20
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 22
    sget-object v1, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 24
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 27
    goto :goto_2e

    .line 28
    :cond_1b
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 34
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 36
    const/16 v1, 0xc

    .line 38
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 41
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 47
    :goto_2e
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public getBaseline()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->is24HourView()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_11

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_11
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 20
    if-eqz v1, :cond_1c

    .line 22
    rem-int/lit8 v0, v0, 0xc

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_1c
    rem-int/lit8 v0, v0, 0xc

    .line 31
    add-int/lit8 v0, v0, 0xc

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public is24HourView()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 3
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    .line 3
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 6
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 9
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const-class v0, Lmiuix/pickerwidget/widget/TimePicker;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    const-class v0, Lmiuix/pickerwidget/widget/TimePicker;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 13
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 6
    if-eqz v0, :cond_a

    .line 8
    const/16 v0, 0x2c

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    const/16 v0, 0x1c

    .line 13
    :goto_c
    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 15
    const/16 v2, 0x12

    .line 17
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v3

    .line 25
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 28
    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 30
    const/16 v2, 0x14

    .line 32
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v3

    .line 40
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 49
    invoke-virtual {v2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 52
    move-result-wide v2

    .line 53
    invoke-static {v1, v2, v3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    check-cast p1, Lmiuix/pickerwidget/widget/TimePicker$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/TimePicker$SavedState;->getHour()I

    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 21
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/TimePicker$SavedState;->getMinute()I

    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 32
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/pickerwidget/widget/TimePicker$SavedState;

    .line 7
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v1, v0, v2, v3, v4}, Lmiuix/pickerwidget/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILmiuix/pickerwidget/widget/TimePicker$1;)V

    .line 27
    return-object v1
.end method

.method public set24HourView(Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v1

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result p1

    .line 14
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 16
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result p1

    .line 24
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateHourControl()V

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 34
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    .line 37
    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_4a

    .line 3
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_4a

    .line 14
    :cond_d
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->is24HourView()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3e

    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result v0

    .line 24
    const/16 v1, 0xc

    .line 26
    if-lt v0, v1, :cond_2e

    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v0

    .line 35
    if-le v0, v1, :cond_3b

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result p1

    .line 41
    sub-int/2addr p1, v1

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p1

    .line 46
    goto :goto_3b

    .line 47
    :cond_2e
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3b

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p1

    .line 60
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    .line 63
    :cond_3e
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 68
    move-result p1

    .line 69
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 72
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    .line 75
    :cond_4a
    :goto_4a
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 21
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    .line 24
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 21
    if-eqz v0, :cond_1a

    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    goto :goto_1f

    .line 27
    :cond_1a
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    :goto_1f
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    .line 34
    return-void
.end method

.method public setFixedContentHorizontalPadding(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mProperPaddingViewGroup:Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->setFixedContentHorizontalPadding(II)V

    .line 6
    return-void
.end method

.method public setOnTimeChangedListener(Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mOnTimeChangedListener:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

    .line 3
    return-void
.end method
