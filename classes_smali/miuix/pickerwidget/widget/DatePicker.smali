.class public Lmiuix/pickerwidget/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/DatePicker$SavedState;,
        Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = false

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_HOUR:I = 0xc

.field private static final DEFAULT_MILLIS:I = 0x0

.field private static final DEFAULT_MINUTE:I = 0x0

.field private static final DEFAULT_SECOND:I = 0x0

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sChineseDays:[Ljava/lang/String;

.field private static sChineseLeapMonthMark:Ljava/lang/String;

.field private static sChineseLeapYearMonths:[Ljava/lang/String;

.field private static sChineseMonths:[Ljava/lang/String;


# instance fields
.field private mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDateFormatOrder:[C

.field private final mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mIsEnabled:Z

.field private mIsLunarMode:Z

.field private mMaxDate:Lmiuix/pickerwidget/date/Calendar;

.field private mMinDate:Lmiuix/pickerwidget/date/Calendar;

.field private final mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Lmiuix/pickerwidget/date/Calendar;

.field private final mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lmiuix/pickerwidget/widget/DatePicker;

    .line 3
    const-string v0, "DatePicker"

    .line 5
    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/pickerwidget/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    const/4 v3, 0x0

    .line 6
    iput-boolean v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 7
    invoke-direct/range {p0 .. p0}, Lmiuix/pickerwidget/widget/DatePicker;->initChineseDaysIfNeeded()V

    .line 8
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 9
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 11
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 12
    sget-object v4, Lmiuix/pickerwidget/R$styleable;->DatePicker:[I

    sget v5, Lmiuix/pickerwidget/R$style;->Widget_DatePicker:I

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual {v1, v6, v4, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 13
    sget v5, Lmiuix/pickerwidget/R$styleable;->DatePicker_spinnersShown:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 14
    sget v6, Lmiuix/pickerwidget/R$styleable;->DatePicker_startYear:I

    const/16 v7, 0x76c

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 15
    sget v6, Lmiuix/pickerwidget/R$styleable;->DatePicker_endYear:I

    const/16 v7, 0x834

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 16
    sget v7, Lmiuix/pickerwidget/R$styleable;->DatePicker_minDate:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 17
    sget v8, Lmiuix/pickerwidget/R$styleable;->DatePicker_maxDate:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 18
    sget v8, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_date_picker:I

    .line 19
    sget v10, Lmiuix/pickerwidget/R$styleable;->DatePicker_lunarCalendar:I

    invoke-virtual {v4, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 20
    sget v10, Lmiuix/pickerwidget/R$styleable;->DatePicker_showYear:I

    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 21
    sget v11, Lmiuix/pickerwidget/R$styleable;->DatePicker_showMonth:I

    invoke-virtual {v4, v11, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 22
    sget v12, Lmiuix/pickerwidget/R$styleable;->DatePicker_showDay:I

    invoke-virtual {v4, v12, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 23
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v4}, Lmiuix/pickerwidget/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    const-string v4, "layout_inflater"

    .line 25
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 26
    invoke-virtual {v1, v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    new-instance v1, Lmiuix/pickerwidget/widget/DatePicker$1;

    invoke-direct {v1, v0}, Lmiuix/pickerwidget/widget/DatePicker$1;-><init>(Lmiuix/pickerwidget/widget/DatePicker;)V

    .line 28
    sget v4, Lmiuix/pickerwidget/R$id;->pickers:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 29
    sget v4, Lmiuix/pickerwidget/R$id;->day:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const-wide/16 v13, 0x64

    .line 30
    invoke-virtual {v4, v13, v14}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 31
    invoke-virtual {v4, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    const/16 v8, 0x8

    if-nez v12, :cond_bc

    .line 32
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_bc
    sget v4, Lmiuix/pickerwidget/R$id;->month:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 34
    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 35
    iget v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mNumberOfMonths:I

    sub-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 36
    iget-object v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    .line 37
    invoke-virtual {v4, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 38
    invoke-virtual {v4, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    if-nez v11, :cond_e1

    .line 39
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_e1
    sget v2, Lmiuix/pickerwidget/R$id;->year:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 41
    invoke-virtual {v2, v13, v14}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 42
    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    if-nez v10, :cond_f6

    .line 43
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_f6
    invoke-direct/range {p0 .. p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateFormatters()V

    if-nez v5, :cond_100

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/DatePicker;->setSpinnersShown(Z)V

    goto :goto_104

    :cond_100
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v5}, Lmiuix/pickerwidget/widget/DatePicker;->setSpinnersShown(Z)V

    .line 47
    :goto_104
    iget-object v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-boolean v5, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {v2, v3, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 48
    iget-object v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v2

    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0x9

    .line 49
    invoke-virtual {v3, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    .line 50
    invoke-virtual {v0, v2, v1, v3, v4}, Lmiuix/pickerwidget/widget/DatePicker;->init(IIILmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;)V

    .line 51
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 52
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_150

    .line 53
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0, v7, v1}, Lmiuix/pickerwidget/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiuix/pickerwidget/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_14e

    .line 54
    iget-object v8, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xc

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    move-object v2, v15

    move v15, v1

    invoke-virtual/range {v8 .. v15}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    goto :goto_167

    :cond_14e
    move-object v2, v15

    goto :goto_167

    :cond_150
    move-object v2, v15

    .line 55
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const-string v5, "1/31/1900"

    invoke-direct {v0, v5, v1}, Lmiuix/pickerwidget/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiuix/pickerwidget/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_167

    .line 56
    iget-object v8, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xc

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    .line 57
    :cond_167
    :goto_167
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lmiuix/pickerwidget/widget/DatePicker;->setMinDate(J)V

    .line 58
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v5, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_197

    .line 60
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0, v2, v1}, Lmiuix/pickerwidget/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiuix/pickerwidget/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_1a8

    .line 61
    iget-object v10, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v12, 0xb

    const/16 v13, 0x1f

    const/16 v14, 0xc

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v6

    invoke-virtual/range {v10 .. v17}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    goto :goto_1a8

    .line 62
    :cond_197
    iget-object v10, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v12, 0xb

    const/16 v13, 0x1f

    const/16 v14, 0xc

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v6

    invoke-virtual/range {v10 .. v17}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    .line 63
    :cond_1a8
    :goto_1a8
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setMaxDate(J)V

    .line 64
    invoke-direct/range {p0 .. p0}, Lmiuix/pickerwidget/widget/DatePicker;->reorderSpinners()V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_1be

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1be
    return-void
.end method

.method public static synthetic access$000(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/pickerwidget/widget/DatePicker;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/pickerwidget/widget/DatePicker;III)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lmiuix/pickerwidget/widget/DatePicker;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lmiuix/pickerwidget/widget/DatePicker;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lmiuix/pickerwidget/widget/DatePicker;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->notifyDateChanged()V

    .line 4
    return-void
.end method

.method private initChineseDaysIfNeeded()V
    .registers 7

    .line 1
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    .line 3
    if-nez v0, :cond_12

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    .line 19
    :cond_12
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    .line 21
    const/4 v1, 0x1

    .line 22
    if-nez v0, :cond_57

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v0

    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_2e
    sget-object v3, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    .line 49
    array-length v4, v3

    .line 50
    if-ge v2, v4, :cond_51

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    sget-object v4, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    .line 59
    aget-object v5, v4, v2

    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget v5, Lmiuix/pickerwidget/R$string;->chinese_month:I

    .line 66
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    aput-object v3, v4, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_2e

    .line 82
    :cond_51
    array-length v0, v3

    .line 83
    add-int/2addr v0, v1

    .line 84
    new-array v0, v0, [Ljava/lang/String;

    .line 86
    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapYearMonths:[Ljava/lang/String;

    .line 88
    :cond_57
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    .line 90
    if-nez v0, :cond_6b

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    aget-object v0, v0, v1

    .line 106
    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    .line 108
    :cond_6b
    return-void
.end method

.method private isNewDate(III)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 7
    move-result v0

    .line 8
    if-ne v0, p1, :cond_1e

    .line 10
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 12
    const/4 v0, 0x5

    .line 13
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 16
    move-result p1

    .line 17
    if-ne p1, p3, :cond_1e

    .line 19
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 21
    const/16 p3, 0x9

    .line 23
    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 26
    move-result p1

    .line 27
    if-eq p1, p2, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 v1, 0x0

    .line 31
    :cond_1e
    :goto_1e
    return v1
.end method

.method private notifyDateChanged()V
    .registers 8

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 5
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

    .line 7
    if-eqz v1, :cond_1a

    .line 9
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getYear()I

    .line 12
    move-result v3

    .line 13
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getMonth()I

    .line 16
    move-result v4

    .line 17
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getDayOfMonth()I

    .line 20
    move-result v5

    .line 21
    iget-boolean v6, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 23
    move-object v2, p0

    .line 24
    invoke-interface/range {v1 .. v6}, Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lmiuix/pickerwidget/widget/DatePicker;IIIZ)V

    .line 27
    :cond_1a
    return-void
.end method

.method private parseDate(Ljava/lang/String;Lmiuix/pickerwidget/date/Calendar;)Z
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 3
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 10
    move-result-wide v0

    .line 11
    iget-boolean v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 13
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_f} :catch_11

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :catch_11
    sget-object p2, Lmiuix/pickerwidget/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v1, "Date: "

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, " not in format: "

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string p1, "MM/dd/yyyy"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 p1, 0x0

    .line 51
    return p1
.end method

.method private reorderSpinners()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormatOrder:[C

    .line 8
    if-nez v0, :cond_11

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    .line 17
    move-result-object v0

    .line 18
    :cond_11
    array-length v1, v0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_13
    if-ge v2, v1, :cond_52

    .line 22
    aget-char v3, v0, v2

    .line 24
    const/16 v4, 0x4d

    .line 26
    if-eq v3, v4, :cond_43

    .line 28
    const/16 v4, 0x64

    .line 30
    if-eq v3, v4, :cond_36

    .line 32
    const/16 v4, 0x79

    .line 34
    if-ne v3, v4, :cond_30

    .line 36
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 38
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 40
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 45
    invoke-direct {p0, v3, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 48
    goto :goto_4f

    .line 49
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 51
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 54
    throw v0

    .line 55
    :cond_36
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 57
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 59
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 64
    invoke-direct {p0, v3, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 67
    goto :goto_4f

    .line 68
    :cond_43
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 70
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 72
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 77
    invoke-direct {p0, v3, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 80
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_13

    .line 83
    :cond_52
    return-void
.end method

.method private resetMonthsDisplayedValues()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_40

    .line 6
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 8
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getChineseLeapMonth()I

    .line 11
    move-result v0

    .line 12
    if-gez v0, :cond_12

    .line 14
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 18
    goto :goto_78

    .line 19
    :cond_12
    sget-object v2, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapYearMonths:[Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 23
    sget-object v3, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    .line 25
    add-int/lit8 v4, v0, 0x1

    .line 27
    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    sget-object v1, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    .line 32
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 34
    array-length v3, v1

    .line 35
    sub-int/2addr v3, v0

    .line 36
    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    sget-object v2, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 53
    aget-object v2, v2, v4

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    aput-object v1, v0, v4

    .line 64
    goto :goto_78

    .line 65
    :cond_40
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 67
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    const-string v2, "en"

    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_61

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 97
    goto :goto_78

    .line 98
    :cond_61
    const/16 v0, 0xc

    .line 100
    new-array v0, v0, [Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 104
    :goto_67
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 106
    array-length v2, v0

    .line 107
    if-ge v1, v2, :cond_78

    .line 109
    sget-object v2, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 111
    add-int/lit8 v3, v1, 0x1

    .line 113
    invoke-interface {v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 117
    aput-object v2, v0, v1

    .line 119
    move v1, v3

    .line 120
    goto :goto_67

    .line 121
    :cond_78
    :goto_78
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

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
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 12
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 14
    const/4 v0, 0x5

    .line 15
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    .line 18
    move-result p1

    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 21
    iput p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mNumberOfMonths:I

    .line 23
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 26
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateFormatters()V

    .line 29
    return-void
.end method

.method private setDate(III)V
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    const/16 v4, 0xc

    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    const/4 v7, 0x0

    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    invoke-virtual/range {v0 .. v7}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    .line 14
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 16
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 18
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->before(Lmiuix/pickerwidget/date/Calendar;)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_25

    .line 24
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 26
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 28
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 31
    move-result-wide p2

    .line 32
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 34
    invoke-virtual {p1, p2, p3, v0}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 37
    goto :goto_3c

    .line 38
    :cond_25
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 40
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 42
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->after(Lmiuix/pickerwidget/date/Calendar;)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3c

    .line 48
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 50
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 52
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 55
    move-result-wide p2

    .line 56
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 58
    invoke-virtual {p1, p2, p3, v0}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 61
    :cond_3c
    :goto_3c
    return-void
.end method

.method private setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 4

    .line 1
    add-int/lit8 p2, p2, -0x1

    .line 3
    if-ge p3, p2, :cond_6

    .line 5
    const/4 p2, 0x5

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p2, 0x6

    .line 8
    :goto_7
    sget p3, Lmiuix/pickerwidget/R$id;->number_picker_input:I

    .line 10
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 19
    return-void
.end method

.method private updateFormatters()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 7
    if-nez v1, :cond_9

    .line 9
    goto :goto_18

    .line 10
    :cond_9
    sget-object v1, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 12
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 15
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 17
    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    .line 19
    invoke-direct {v1}, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;-><init>()V

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 25
    :cond_18
    :goto_18
    return-void
.end method

.method private updateSpinners()V
    .registers 13

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_15

    .line 6
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 8
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 21
    goto :goto_42

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    sget v3, Lmiuix/pickerwidget/R$string;->date_picker_label_day:I

    .line 30
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v2

    .line 43
    sget v3, Lmiuix/pickerwidget/R$string;->date_picker_label_month:I

    .line 45
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v2

    .line 58
    sget v3, Lmiuix/pickerwidget/R$string;->date_picker_label_year:I

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 67
    :goto_42
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 69
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 74
    const/4 v2, 0x1

    .line 75
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 78
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 80
    iget-boolean v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 82
    const/16 v4, 0xa

    .line 84
    const/16 v5, 0x9

    .line 86
    if-eqz v3, :cond_5e

    .line 88
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 90
    invoke-virtual {v3, v4}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    .line 93
    move-result v3

    .line 94
    goto :goto_64

    .line 95
    :cond_5e
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 97
    invoke-virtual {v3, v5}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    .line 100
    move-result v3

    .line 101
    :goto_64
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 104
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 106
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 109
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 111
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 120
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 122
    iget-boolean v6, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 124
    const/16 v7, 0xb

    .line 126
    if-eqz v6, :cond_89

    .line 128
    iget-object v6, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 130
    invoke-virtual {v6}, Lmiuix/pickerwidget/date/Calendar;->getChineseLeapMonth()I

    .line 133
    move-result v6

    .line 134
    if-ltz v6, :cond_89

    .line 136
    const/16 v7, 0xc

    .line 138
    :cond_89
    invoke-virtual {v0, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 141
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 143
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 146
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 148
    const/4 v6, 0x2

    .line 149
    if-eqz v0, :cond_98

    .line 151
    move v0, v6

    .line 152
    goto :goto_99

    .line 153
    :cond_98
    move v0, v2

    .line 154
    :goto_99
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 156
    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 159
    move-result v7

    .line 160
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 162
    invoke-virtual {v8, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 165
    move-result v8

    .line 166
    const/4 v9, 0x5

    .line 167
    const/4 v10, 0x6

    .line 168
    if-ne v7, v8, :cond_f4

    .line 170
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 172
    iget-boolean v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 174
    if-eqz v8, :cond_b6

    .line 176
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 178
    invoke-virtual {v8, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 181
    move-result v8

    .line 182
    goto :goto_bc

    .line 183
    :cond_b6
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 185
    invoke-virtual {v8, v9}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 188
    move-result v8

    .line 189
    :goto_bc
    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 192
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 194
    invoke-virtual {v7, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 197
    iget-boolean v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 199
    if-eqz v7, :cond_ca

    .line 201
    move v7, v10

    .line 202
    goto :goto_cb

    .line 203
    :cond_ca
    move v7, v9

    .line 204
    :goto_cb
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 206
    invoke-virtual {v8, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 209
    move-result v8

    .line 210
    iget-object v11, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 212
    invoke-virtual {v11, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 215
    move-result v7

    .line 216
    if-ne v8, v7, :cond_f4

    .line 218
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 220
    iget-boolean v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 222
    if-eqz v8, :cond_e6

    .line 224
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 226
    invoke-virtual {v8, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 229
    move-result v8

    .line 230
    goto :goto_ec

    .line 231
    :cond_e6
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 233
    invoke-virtual {v8, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 236
    move-result v8

    .line 237
    :goto_ec
    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 240
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 242
    invoke-virtual {v7, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 245
    :cond_f4
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 247
    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 250
    move-result v7

    .line 251
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 253
    invoke-virtual {v8, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 256
    move-result v0

    .line 257
    if-ne v7, v0, :cond_152

    .line 259
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 261
    iget-boolean v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 263
    if-eqz v7, :cond_10f

    .line 265
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 267
    invoke-virtual {v7, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 270
    move-result v7

    .line 271
    goto :goto_115

    .line 272
    :cond_10f
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 274
    invoke-virtual {v7, v9}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 277
    move-result v7

    .line 278
    :goto_115
    invoke-virtual {v0, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 281
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 283
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 286
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 288
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 291
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 293
    if-eqz v0, :cond_128

    .line 295
    move v0, v10

    .line 296
    goto :goto_129

    .line 297
    :cond_128
    move v0, v9

    .line 298
    :goto_129
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 300
    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 303
    move-result v1

    .line 304
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 306
    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 309
    move-result v0

    .line 310
    if-ne v1, v0, :cond_152

    .line 312
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 314
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 316
    if-eqz v1, :cond_144

    .line 318
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 320
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 323
    move-result v1

    .line 324
    goto :goto_14a

    .line 325
    :cond_144
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 327
    invoke-virtual {v1, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 330
    move-result v1

    .line 331
    :goto_14a
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 334
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 336
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 339
    :cond_152
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 341
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 343
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 346
    move-result v1

    .line 347
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 349
    array-length v7, v7

    .line 350
    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 353
    move-result-object v0

    .line 354
    check-cast v0, [Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 358
    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 361
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 363
    if-eqz v0, :cond_183

    .line 365
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 369
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 372
    move-result v1

    .line 373
    sub-int/2addr v1, v2

    .line 374
    sget-object v7, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    .line 376
    array-length v7, v7

    .line 377
    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 380
    move-result-object v0

    .line 381
    check-cast v0, [Ljava/lang/String;

    .line 383
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 385
    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 388
    :cond_183
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->isLunarMode()Z

    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_18b

    .line 394
    move v0, v6

    .line 395
    goto :goto_18c

    .line 396
    :cond_18b
    move v0, v2

    .line 397
    :goto_18c
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 399
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 401
    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 404
    move-result v7

    .line 405
    invoke-virtual {v1, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 408
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 410
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 412
    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 415
    move-result v0

    .line 416
    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 419
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 421
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 424
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 426
    if-eqz v0, :cond_1f0

    .line 428
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 430
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getChineseLeapMonth()I

    .line 433
    move-result v0

    .line 434
    if-ltz v0, :cond_1c4

    .line 436
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 438
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->isChineseLeapMonth()Z

    .line 441
    move-result v1

    .line 442
    if-nez v1, :cond_1c3

    .line 444
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 446
    invoke-virtual {v1, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 449
    move-result v1

    .line 450
    if-le v1, v0, :cond_1c4

    .line 452
    :cond_1c3
    move v3, v2

    .line 453
    :cond_1c4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 455
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 457
    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 460
    move-result v1

    .line 461
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 464
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 466
    if-eqz v3, :cond_1db

    .line 468
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 470
    invoke-virtual {v1, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 473
    move-result v1

    .line 474
    add-int/2addr v1, v2

    .line 475
    goto :goto_1e1

    .line 476
    :cond_1db
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 478
    invoke-virtual {v1, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 481
    move-result v1

    .line 482
    :goto_1e1
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 485
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 487
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 489
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 492
    move-result v1

    .line 493
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 496
    goto :goto_211

    .line 497
    :cond_1f0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 499
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 501
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 504
    move-result v1

    .line 505
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 508
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 510
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 512
    invoke-virtual {v1, v9}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 515
    move-result v1

    .line 516
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 519
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 521
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 523
    invoke-virtual {v1, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 526
    move-result v1

    .line 527
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 530
    :goto_211
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

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

.method public getDayOfMonth()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 5
    if-eqz v1, :cond_9

    .line 7
    const/16 v1, 0xa

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 v1, 0x9

    .line 12
    :goto_b
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getMaxDate()J
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getMonth()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 7
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->isChineseLeapMonth()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x6

    .line 12
    if-eqz v0, :cond_16

    .line 14
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 16
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 19
    move-result v0

    .line 20
    add-int/lit8 v0, v0, 0xc

    .line 22
    goto :goto_24

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 25
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 28
    move-result v0

    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 32
    const/4 v1, 0x5

    .line 33
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 36
    move-result v0

    .line 37
    :goto_24
    return v0
.end method

.method public getSpinnersShown()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getYear()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 5
    if-eqz v1, :cond_8

    .line 7
    const/4 v1, 0x2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x1

    .line 10
    :goto_9
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public init(IIILmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    .line 4
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    .line 7
    iput-object p4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

    .line 9
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    .line 3
    return v0
.end method

.method public isLunarMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

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
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 9
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const-class v0, Lmiuix/pickerwidget/widget/DatePicker;

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
    const-class v0, Lmiuix/pickerwidget/widget/DatePicker;

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
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 13
    move-result-wide v1

    .line 14
    const/16 v3, 0x380

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
    .registers 5

    .line 1
    check-cast p1, Lmiuix/pickerwidget/widget/DatePicker$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1100(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I

    .line 13
    move-result v0

    .line 14
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1200(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I

    .line 17
    move-result v1

    .line 18
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1300(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I

    .line 21
    move-result v2

    .line 22
    invoke-direct {p0, v0, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    .line 25
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 27
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1400(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)Z

    .line 30
    move-result v1

    .line 31
    if-eq v0, v1, :cond_29

    .line 33
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1400(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)Z

    .line 36
    move-result p1

    .line 37
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 39
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 42
    :cond_29
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    .line 45
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v1

    .line 5
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 11
    move-result v2

    .line 12
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 14
    const/4 v3, 0x5

    .line 15
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 18
    move-result v3

    .line 19
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 21
    const/16 v4, 0x9

    .line 23
    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 26
    move-result v4

    .line 27
    new-instance v7, Lmiuix/pickerwidget/widget/DatePicker$SavedState;

    .line 29
    iget-boolean v5, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 31
    const/4 v6, 0x0

    .line 32
    move-object v0, v7

    .line 33
    invoke-direct/range {v0 .. v6}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZLmiuix/pickerwidget/widget/DatePicker$1;)V

    .line 36
    return-object v7
.end method

.method public setDateFormatOrder([C)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormatOrder:[C

    .line 3
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->reorderSpinners()V

    .line 6
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    .line 26
    return-void
.end method

.method public setLunarMode(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 3
    if-eq p1, v0, :cond_c

    .line 5
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 7
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 10
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    .line 13
    :cond_c
    return-void
.end method

.method public setMaxDate(J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 8
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 17
    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 20
    move-result v1

    .line 21
    if-ne v0, v1, :cond_27

    .line 23
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 25
    const/16 v1, 0xc

    .line 27
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 30
    move-result v0

    .line 31
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 33
    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 36
    move-result v1

    .line 37
    if-eq v0, v1, :cond_27

    .line 39
    return-void

    .line 40
    :cond_27
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 42
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 44
    invoke-virtual {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 47
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 49
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 51
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->after(Lmiuix/pickerwidget/date/Calendar;)Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_45

    .line 57
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 59
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 61
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 64
    move-result-wide v0

    .line 65
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 67
    invoke-virtual {p1, v0, v1, p2}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 70
    :cond_45
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    .line 73
    return-void
.end method

.method public setMinDate(J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 8
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 17
    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 20
    move-result v1

    .line 21
    if-ne v0, v1, :cond_27

    .line 23
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 25
    const/16 v1, 0xc

    .line 27
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 30
    move-result v0

    .line 31
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 33
    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 36
    move-result v1

    .line 37
    if-eq v0, v1, :cond_27

    .line 39
    return-void

    .line 40
    :cond_27
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 42
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 44
    invoke-virtual {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 47
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 49
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 51
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->before(Lmiuix/pickerwidget/date/Calendar;)Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_45

    .line 57
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 59
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 61
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 64
    move-result-wide v0

    .line 65
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 67
    invoke-virtual {p1, v0, v1, p2}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 70
    :cond_45
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    .line 73
    return-void
.end method

.method public setSpinnersShown(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 3
    if-eqz p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    const/16 p1, 0x8

    .line 9
    :goto_8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    return-void
.end method

.method public showDayPicker(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    if-eqz p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    const/16 p1, 0x8

    .line 9
    :goto_8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    return-void
.end method

.method public showMonthPicker(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    if-eqz p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    const/16 p1, 0x8

    .line 9
    :goto_8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    return-void
.end method

.method public showYearPicker(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    if-eqz p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    const/16 p1, 0x8

    .line 9
    :goto_8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    return-void
.end method

.method public updateDate(III)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->isNewDate(III)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    .line 11
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    .line 14
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->notifyDateChanged()V

    .line 17
    return-void
.end method
