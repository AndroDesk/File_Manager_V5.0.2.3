.class public Lmiuix/pickerwidget/widget/DateTimePicker;
.super Landroid/widget/LinearLayout;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;,
        Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;,
        Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;,
        Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;,
        Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DAYPICKER_ALL_ITEM_MAX_VALUE:I = 0x4

.field private static final DAYPICKER_WHEEL_ITEM_COUNT:I = 0x5

.field private static DEFAULT_DAY_FORMATTER:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter; = null

.field private static final DEFAULT_MINUTE_INTERVAL:I = 0x1

.field private static final HALF_WHEEL_ITEM_COUNT:I = 0x1

.field private static final HOUR_IN_MINUTES:I = 0x3c

.field private static final sCalCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/pickerwidget/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static sCalendarCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/pickerwidget/date/Calendar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field public mDayDisplayValues:[Ljava/lang/String;

.field private mDayFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

.field private mDayLastValue:I

.field private mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mIsLunarMode:Z

.field private mListener:Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

.field private mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

.field private mMaxDate:Lmiuix/pickerwidget/date/Calendar;

.field private mMinDate:Lmiuix/pickerwidget/date/Calendar;

.field private mMinuteDisplayValues:[Ljava/lang/String;

.field private mMinuteInterval:I

.field private mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    sput-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 10
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 13
    sput-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/pickerwidget/R$attr;->dateTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 6
    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 7
    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 9
    new-instance v3, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;-><init>(Landroid/content/Context;)V

    sput-object v3, Lmiuix/pickerwidget/widget/DateTimePicker;->DEFAULT_DAY_FORMATTER:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    const-string v3, "layout_inflater"

    .line 10
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 11
    sget v4, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_date_time_picker:I

    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    new-instance v3, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;

    invoke-direct {v3, p0, v1}, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiuix/pickerwidget/widget/DateTimePicker;Lmiuix/pickerwidget/widget/DateTimePicker$1;)V

    .line 13
    new-instance v1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 14
    invoke-direct {p0, v1, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 15
    sget-object v1, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/pickerwidget/date/Calendar;

    if-nez v4, :cond_49

    .line 16
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 17
    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_49
    const-wide/16 v5, 0x0

    .line 18
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    invoke-virtual {v4, v5, v6, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 19
    sget v1, Lmiuix/pickerwidget/R$id;->day:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 20
    sget v1, Lmiuix/pickerwidget/R$id;->hour:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 21
    sget v1, Lmiuix/pickerwidget/R$id;->minute:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 22
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 23
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    const/high16 v4, 0x40400000  # 3.0f

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxFlingSpeedFactor(F)V

    .line 24
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 25
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 26
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 27
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 28
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    sget-object v3, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 29
    sget-object v1, Lmiuix/pickerwidget/R$styleable;->DateTimePicker:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    sget p2, Lmiuix/pickerwidget/R$styleable;->DateTimePicker_lunarCalendar:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->reorderLayout()V

    .line 33
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 34
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 35
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 36
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_c0

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_c0
    return-void
.end method

.method public static synthetic access$1000(Lmiuix/pickerwidget/widget/DateTimePicker;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mListener:Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/ThreadLocal;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;

    .line 3
    return-object v0
.end method

.method public static synthetic access$300(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/pickerwidget/widget/DateTimePicker;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lmiuix/pickerwidget/widget/DateTimePicker;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/date/Calendar;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/pickerwidget/widget/DateTimePicker;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 4
    return-void
.end method

.method private adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V
    .registers 8

    .line 1
    const/16 v0, 0x16

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 7
    const/16 v0, 0x15

    .line 9
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 12
    const/16 v0, 0x14

    .line 14
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 17
    move-result v2

    .line 18
    iget v3, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 20
    rem-int/2addr v2, v3

    .line 21
    if-eqz v2, :cond_37

    .line 23
    if-eqz p2, :cond_33

    .line 25
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 28
    move-result p2

    .line 29
    iget v3, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 31
    add-int/2addr p2, v3

    .line 32
    sub-int/2addr p2, v2

    .line 33
    const/16 v4, 0x3c

    .line 35
    if-lt p2, v4, :cond_2e

    .line 37
    const/16 p2, 0x12

    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p1, p2, v2}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 43
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 46
    goto :goto_37

    .line 47
    :cond_2e
    sub-int/2addr v3, v2

    .line 48
    invoke-virtual {p1, v0, v3}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 51
    goto :goto_37

    .line 52
    :cond_33
    neg-int p2, v2

    .line 53
    invoke-virtual {p1, v0, p2}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 56
    :cond_37
    :goto_37
    return-void
.end method

.method private checkCurrentTime()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    if-eqz v0, :cond_1f

    .line 5
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 11
    invoke-virtual {v2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 14
    move-result-wide v2

    .line 15
    cmp-long v0, v0, v2

    .line 17
    if-lez v0, :cond_1f

    .line 19
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 21
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 23
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 26
    move-result-wide v1

    .line 27
    iget-boolean v3, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 32
    :cond_1f
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 34
    if-eqz v0, :cond_3e

    .line 36
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 39
    move-result-wide v0

    .line 40
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 42
    invoke-virtual {v2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 45
    move-result-wide v2

    .line 46
    cmp-long v0, v0, v2

    .line 48
    if-gez v0, :cond_3e

    .line 50
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 52
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 54
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 57
    move-result-wide v1

    .line 58
    iget-boolean v3, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 63
    :cond_3e
    return-void
.end method

.method private checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    array-length v0, v0

    .line 8
    sub-int/2addr p3, p2

    .line 9
    add-int/lit8 p3, p3, 0x1

    .line 11
    if-ge v0, p3, :cond_10

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 17
    :cond_10
    return-void
.end method

.method private computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I
    .registers 11

    .line 1
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->clone()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lmiuix/pickerwidget/date/Calendar;

    .line 7
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->clone()Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lmiuix/pickerwidget/date/Calendar;

    .line 13
    const/16 v0, 0x12

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 19
    const/16 v2, 0x14

    .line 21
    invoke-virtual {p1, v2, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 24
    const/16 v3, 0x15

    .line 26
    invoke-virtual {p1, v3, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 29
    const/16 v4, 0x16

    .line 31
    invoke-virtual {p1, v4, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 34
    invoke-virtual {p2, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 37
    invoke-virtual {p2, v2, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 40
    invoke-virtual {p2, v3, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 43
    invoke-virtual {p2, v4, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 46
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 49
    move-result-wide v0

    .line 50
    const-wide/16 v2, 0x3e8

    .line 52
    div-long/2addr v0, v2

    .line 53
    const-wide/16 v4, 0x3c

    .line 55
    div-long/2addr v0, v4

    .line 56
    div-long/2addr v0, v4

    .line 57
    const-wide/16 v6, 0x18

    .line 59
    div-long/2addr v0, v6

    .line 60
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 63
    move-result-wide p1

    .line 64
    div-long/2addr p1, v2

    .line 65
    div-long/2addr p1, v4

    .line 66
    div-long/2addr p1, v4

    .line 67
    div-long/2addr p1, v6

    .line 68
    sub-long/2addr v0, p1

    .line 69
    long-to-int p1, v0

    .line 70
    return p1
.end method

.method private formatDay(III)Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->DEFAULT_DAY_FORMATTER:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 3
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 5
    if-eqz v1, :cond_17

    .line 7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 9
    if-nez v0, :cond_15

    .line 11
    new-instance v0, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 24
    :cond_17
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 26
    if-eqz v1, :cond_1c

    .line 28
    move-object v0, v1

    .line 29
    :cond_1c
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;->formatDay(III)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method private reorderLayout()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v3, :cond_12

    .line 17
    move v1, v3

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v1, v2

    .line 20
    :goto_13
    sget v4, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute:I

    .line 22
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v4, "h"

    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_23

    .line 34
    if-nez v1, :cond_27

    .line 36
    :cond_23
    if-nez v0, :cond_28

    .line 38
    if-nez v1, :cond_28

    .line 40
    :cond_27
    move v2, v3

    .line 41
    :cond_28
    if-eqz v2, :cond_40

    .line 43
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/ViewGroup;

    .line 51
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 58
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 61
    move-result v2

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 65
    :cond_40
    return-void
.end method

.method private updateDayPicker(Z)V
    .registers 14

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    const v1, 0x7fffffff

    .line 6
    if-nez v0, :cond_9

    .line 8
    move v0, v1

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 12
    invoke-direct {p0, v2, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 15
    move-result v0

    .line 16
    :goto_f
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 18
    if-nez v2, :cond_14

    .line 20
    goto :goto_1a

    .line 21
    :cond_14
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 23
    invoke-direct {p0, v2, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 26
    move-result v1

    .line 27
    :goto_1a
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-gt v0, v3, :cond_44

    .line 31
    if-gt v1, v3, :cond_44

    .line 33
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 35
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 37
    invoke-direct {p0, v1, v4}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 40
    move-result v1

    .line 41
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 43
    invoke-direct {p0, v4, v2, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 46
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 48
    invoke-virtual {v4, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 51
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 53
    invoke-virtual {v4, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 56
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 58
    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 61
    iput v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 63
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 65
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 68
    goto :goto_7b

    .line 69
    :cond_44
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 71
    const/4 v5, 0x4

    .line 72
    invoke-direct {p0, v4, v2, v5}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 75
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 77
    invoke-virtual {v4, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 80
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 82
    invoke-virtual {v4, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 85
    if-gt v0, v3, :cond_62

    .line 87
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 89
    invoke-virtual {v4, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 92
    iput v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 94
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 96
    invoke-virtual {v4, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 99
    :cond_62
    if-gt v1, v3, :cond_72

    .line 101
    rsub-int/lit8 v4, v1, 0x4

    .line 103
    iput v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 105
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 107
    invoke-virtual {v5, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 110
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 112
    invoke-virtual {v4, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 115
    :cond_72
    if-le v0, v3, :cond_7b

    .line 117
    if-le v1, v3, :cond_7b

    .line 119
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 121
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 124
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 126
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    .line 129
    move-result v0

    .line 130
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 132
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 135
    move-result v1

    .line 136
    sub-int/2addr v0, v1

    .line 137
    add-int/2addr v0, v3

    .line 138
    if-nez p1, :cond_92

    .line 140
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 142
    if-eqz p1, :cond_92

    .line 144
    array-length p1, p1

    .line 145
    if-eq p1, v0, :cond_96

    .line 147
    :cond_92
    new-array p1, v0, [Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 151
    :cond_96
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 153
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 156
    move-result p1

    .line 157
    sget-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    .line 159
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lmiuix/pickerwidget/date/Calendar;

    .line 165
    if-nez v1, :cond_ae

    .line 167
    new-instance v1, Lmiuix/pickerwidget/date/Calendar;

    .line 169
    invoke-direct {v1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 175
    :cond_ae
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 177
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 180
    move-result-wide v4

    .line 181
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 183
    invoke-virtual {v1, v4, v5, v0}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 186
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 188
    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 191
    move-result v2

    .line 192
    const/4 v4, 0x5

    .line 193
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 196
    move-result v5

    .line 197
    const/16 v6, 0x9

    .line 199
    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 202
    move-result v7

    .line 203
    invoke-direct {p0, v2, v5, v7}, Lmiuix/pickerwidget/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    .line 206
    move-result-object v2

    .line 207
    aput-object v2, v0, p1

    .line 209
    move v0, v3

    .line 210
    :goto_d1
    const/16 v2, 0xc

    .line 212
    const/4 v5, 0x2

    .line 213
    if-gt v0, v5, :cond_f7

    .line 215
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 218
    add-int v7, p1, v0

    .line 220
    rem-int/2addr v7, v4

    .line 221
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 223
    array-length v9, v8

    .line 224
    if-lt v7, v9, :cond_e2

    .line 226
    goto :goto_f7

    .line 227
    :cond_e2
    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 230
    move-result v2

    .line 231
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 234
    move-result v5

    .line 235
    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 238
    move-result v9

    .line 239
    invoke-direct {p0, v2, v5, v9}, Lmiuix/pickerwidget/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    .line 242
    move-result-object v2

    .line 243
    aput-object v2, v8, v7

    .line 245
    add-int/lit8 v0, v0, 0x1

    .line 247
    goto :goto_d1

    .line 248
    :cond_f7
    :goto_f7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 250
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 253
    move-result-wide v7

    .line 254
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 256
    invoke-virtual {v1, v7, v8, v0}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 259
    move v0, v3

    .line 260
    :goto_103
    if-gt v0, v5, :cond_128

    .line 262
    const/4 v7, -0x1

    .line 263
    invoke-virtual {v1, v2, v7}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 266
    sub-int v7, p1, v0

    .line 268
    add-int/2addr v7, v4

    .line 269
    rem-int/2addr v7, v4

    .line 270
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 272
    array-length v9, v8

    .line 273
    if-lt v7, v9, :cond_113

    .line 275
    goto :goto_128

    .line 276
    :cond_113
    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 279
    move-result v9

    .line 280
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 283
    move-result v10

    .line 284
    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 287
    move-result v11

    .line 288
    invoke-direct {p0, v9, v10, v11}, Lmiuix/pickerwidget/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    .line 291
    move-result-object v9

    .line 292
    aput-object v9, v8, v7

    .line 294
    add-int/lit8 v0, v0, 0x1

    .line 296
    goto :goto_103

    .line 297
    :cond_128
    :goto_128
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 299
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 301
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private updateHourPicker()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x12

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_22

    .line 9
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 11
    invoke-direct {p0, v4, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_22

    .line 17
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 19
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 22
    move-result v0

    .line 23
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 25
    invoke-virtual {v4, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 28
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 30
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 33
    move v0, v1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move v0, v3

    .line 36
    :goto_23
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 38
    if-eqz v4, :cond_40

    .line 40
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 42
    invoke-direct {p0, v5, v4}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_40

    .line 48
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 50
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 53
    move-result v0

    .line 54
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 56
    invoke-virtual {v4, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 59
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 61
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 64
    move v0, v1

    .line 65
    :cond_40
    if-nez v0, :cond_53

    .line 67
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 69
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 72
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 74
    const/16 v3, 0x17

    .line 76
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 79
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 81
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 84
    :cond_53
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 86
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 89
    move-result v0

    .line 90
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 92
    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 95
    return-void
.end method

.method private updateMinutePicker()V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    const/16 v1, 0x14

    .line 5
    const/16 v2, 0x12

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v0, :cond_3a

    .line 11
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 13
    invoke-direct {p0, v5, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3a

    .line 19
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 21
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 24
    move-result v0

    .line 25
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 27
    invoke-virtual {v5, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 30
    move-result v5

    .line 31
    if-ne v0, v5, :cond_3a

    .line 33
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 35
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 38
    move-result v0

    .line 39
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 41
    invoke-virtual {v5, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 44
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 46
    iget v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 48
    div-int/2addr v0, v6

    .line 49
    invoke-virtual {v5, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 52
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 54
    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 57
    move v0, v3

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v0, v4

    .line 60
    :goto_3b
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 62
    if-eqz v5, :cond_69

    .line 64
    iget-object v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 66
    invoke-direct {p0, v6, v5}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_69

    .line 72
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 74
    invoke-virtual {v5, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 77
    move-result v5

    .line 78
    iget-object v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 80
    invoke-virtual {v6, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 83
    move-result v2

    .line 84
    if-ne v5, v2, :cond_69

    .line 86
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 88
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 91
    move-result v0

    .line 92
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 94
    iget v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 96
    div-int/2addr v0, v5

    .line 97
    invoke-virtual {v2, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 100
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 102
    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 105
    move v0, v3

    .line 106
    :cond_69
    if-nez v0, :cond_8a

    .line 108
    iget v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 110
    const/16 v2, 0x3c

    .line 112
    div-int v5, v2, v0

    .line 114
    rem-int/2addr v2, v0

    .line 115
    if-nez v2, :cond_76

    .line 117
    add-int/lit8 v5, v5, -0x1

    .line 119
    :cond_76
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 121
    invoke-direct {p0, v0, v4, v5}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 124
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 126
    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 129
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 131
    invoke-virtual {v0, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 134
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 136
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 139
    :cond_8a
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 141
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    .line 144
    move-result v0

    .line 145
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 147
    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 150
    move-result v2

    .line 151
    sub-int/2addr v0, v2

    .line 152
    add-int/2addr v0, v3

    .line 153
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    .line 155
    if-eqz v2, :cond_9f

    .line 157
    array-length v2, v2

    .line 158
    if-eq v2, v0, :cond_c3

    .line 160
    :cond_9f
    new-array v2, v0, [Ljava/lang/String;

    .line 162
    iput-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    .line 164
    :goto_a3
    if-ge v4, v0, :cond_bc

    .line 166
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    .line 168
    sget-object v3, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 170
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 172
    invoke-virtual {v5}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 175
    move-result v5

    .line 176
    add-int/2addr v5, v4

    .line 177
    iget v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 179
    mul-int/2addr v5, v6

    .line 180
    invoke-interface {v3, v5}, Lmiuix/pickerwidget/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    .line 183
    move-result-object v3

    .line 184
    aput-object v3, v2, v4

    .line 186
    add-int/lit8 v4, v4, 0x1

    .line 188
    goto :goto_a3

    .line 189
    :cond_bc
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 191
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 196
    :cond_c3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 198
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 201
    move-result v0

    .line 202
    iget v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 204
    div-int/2addr v0, v1

    .line 205
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 207
    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 210
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 4
    return-void
.end method

.method public getTimeInMillis()J
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const-class v0, Lmiuix/pickerwidget/widget/DateTimePicker;

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
    const-class v0, Lmiuix/pickerwidget/widget/DateTimePicker;

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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 13
    move-result-wide v1

    .line 14
    const/16 v3, 0x58c

    .line 16
    invoke-static {v0, v1, v2, v3}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    check-cast p1, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->access$100(Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;)Z

    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 16
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->getTimeInMillis()J

    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0, v0, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->update(J)V

    .line 23
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;

    .line 7
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 10
    move-result-wide v2

    .line 11
    iget-boolean v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 13
    invoke-direct {v1, v0, v2, v3, v4}, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;JZ)V

    .line 16
    return-object v1
.end method

.method public setDayFormatter(Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 7
    return-void
.end method

.method public setLunarMode(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 3
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 9
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 11
    if-eq v0, p1, :cond_11

    .line 13
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 18
    :cond_11
    return-void
.end method

.method public setMaxDateTime(J)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-gtz v0, :cond_a

    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    goto :goto_3b

    .line 11
    :cond_a
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 13
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 18
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 20
    invoke-virtual {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 23
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 29
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 31
    if-eqz p1, :cond_3b

    .line 33
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 36
    move-result-wide p1

    .line 37
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 39
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 42
    move-result-wide v0

    .line 43
    cmp-long p1, p1, v0

    .line 45
    if-lez p1, :cond_3b

    .line 47
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 49
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 51
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 54
    move-result-wide v0

    .line 55
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 57
    invoke-virtual {p1, v0, v1, p2}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 60
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 67
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 70
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 73
    return-void
.end method

.method public setMinDateTime(J)V
    .registers 7

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-gtz v0, :cond_b

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 11
    goto :goto_56

    .line 12
    :cond_b
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 14
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 17
    iput-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 19
    iget-boolean v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 21
    invoke-virtual {v0, p1, p2, v2}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 24
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 26
    const/16 p2, 0x15

    .line 28
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2b

    .line 34
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 36
    const/16 p2, 0x16

    .line 38
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_32

    .line 44
    :cond_2b
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 46
    const/16 p2, 0x14

    .line 48
    invoke-virtual {p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 51
    :cond_32
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 53
    invoke-direct {p0, p1, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 56
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 58
    if-eqz p1, :cond_56

    .line 60
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 63
    move-result-wide p1

    .line 64
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 66
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 69
    move-result-wide v2

    .line 70
    cmp-long p1, p1, v2

    .line 72
    if-gez p1, :cond_56

    .line 74
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 76
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 78
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 81
    move-result-wide v2

    .line 82
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 84
    invoke-virtual {p1, v2, v3, p2}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 87
    :cond_56
    :goto_56
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 90
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 93
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 96
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 99
    return-void
.end method

.method public setMinuteInterval(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 8
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 14
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 17
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 20
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 23
    return-void
.end method

.method public setOnTimeChangedListener(Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mListener:Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

    .line 3
    return-void
.end method

.method public update(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 8
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-direct {p0, p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 14
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 17
    invoke-direct {p0, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 20
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 23
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 26
    return-void
.end method
