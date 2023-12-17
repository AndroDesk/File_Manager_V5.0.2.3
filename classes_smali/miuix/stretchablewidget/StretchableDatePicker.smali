.class public Lmiuix/stretchablewidget/StretchableDatePicker;
.super Lmiuix/stretchablewidget/StretchableWidget;
.source "StretchableDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/stretchablewidget/StretchableDatePicker$OnTimeChangeListener;
    }
.end annotation


# instance fields
.field private mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field private mDateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

.field private mIsLunar:Z

.field private mLunarButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

.field private mLunarLayout:Landroid/widget/RelativeLayout;

.field private mLunarResId:Ljava/lang/String;

.field private mLunarText:Landroid/widget/TextView;

.field private mMinuteInterval:I

.field private mOnTimeChangeListener:Lmiuix/stretchablewidget/StretchableDatePicker$OnTimeChangeListener;

.field private mPickerContainer:Landroid/widget/LinearLayout;

.field private mShowLunar:Z

.field private mTime:J

.field private pickerContainerHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/stretchablewidget/StretchableDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/stretchablewidget/StretchableDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/stretchablewidget/StretchableWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mMinuteInterval:I

    return-void
.end method

.method public static synthetic access$000(Lmiuix/stretchablewidget/StretchableDatePicker;)Lmiuix/pickerwidget/widget/DateTimePicker;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mDateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/stretchablewidget/StretchableDatePicker;ZLandroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/stretchablewidget/StretchableDatePicker;->showTime(ZLandroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/stretchablewidget/StretchableDatePicker;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mIsLunar:Z

    .line 3
    return p0
.end method

.method public static synthetic access$202(Lmiuix/stretchablewidget/StretchableDatePicker;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mIsLunar:Z

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lmiuix/stretchablewidget/StretchableDatePicker;)Lmiuix/pickerwidget/date/Calendar;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    return-object p0
.end method

.method public static synthetic access$402(Lmiuix/stretchablewidget/StretchableDatePicker;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mTime:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$500(Lmiuix/stretchablewidget/StretchableDatePicker;)Lmiuix/stretchablewidget/StretchableDatePicker$OnTimeChangeListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mOnTimeChangeListener:Lmiuix/stretchablewidget/StretchableDatePicker$OnTimeChangeListener;

    .line 3
    return-object p0
.end method

.method private formatLunarTime(JLandroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 3
    iget-object v1, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 12
    const/4 v3, 0x5

    .line 13
    invoke-virtual {v2, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 19
    const/16 v4, 0x9

    .line 21
    invoke-virtual {v3, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;->formatDay(III)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0xc

    .line 31
    invoke-static {p3, p1, p2, v1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const-string p2, " "

    .line 37
    invoke-static {v0, p2, p1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method private formatSolorTime(JLandroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1
    const/16 v0, 0x38c

    .line 3
    invoke-static {p3, p1, p2, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 1
    sget-object v0, Lmiuix/stretchablewidget/R$styleable;->StretchableDatePicker:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 7
    move-result-object p2

    .line 8
    sget p3, Lmiuix/stretchablewidget/R$styleable;->StretchableDatePicker_show_lunar:I

    .line 10
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 13
    move-result p3

    .line 14
    iput-boolean p3, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mShowLunar:Z

    .line 16
    sget p3, Lmiuix/stretchablewidget/R$styleable;->StretchableDatePicker_lunar_text:I

    .line 18
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object p3

    .line 22
    iput-object p3, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarResId:Ljava/lang/String;

    .line 24
    sget p3, Lmiuix/stretchablewidget/R$styleable;->StretchableDatePicker_minuteInterval:I

    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 30
    move-result p3

    .line 31
    iput p3, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mMinuteInterval:I

    .line 33
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    const-string p2, "layout_inflater"

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Landroid/view/LayoutInflater;

    .line 44
    sget p3, Lmiuix/stretchablewidget/R$layout;->miuix_stretchable_widget_picker_part:I

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Landroid/widget/LinearLayout;

    .line 53
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 55
    sget p3, Lmiuix/stretchablewidget/R$id;->datetime_picker:I

    .line 57
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 63
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mDateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 65
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 67
    sget p3, Lmiuix/stretchablewidget/R$id;->lunar_layout:I

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 75
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarLayout:Landroid/widget/RelativeLayout;

    .line 77
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 79
    sget p3, Lmiuix/stretchablewidget/R$id;->lunar_text:I

    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Landroid/widget/TextView;

    .line 87
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarText:Landroid/widget/TextView;

    .line 89
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 91
    sget p3, Lmiuix/stretchablewidget/R$id;->lunar_button:I

    .line 93
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 99
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 101
    iget-boolean p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mShowLunar:Z

    .line 103
    if-nez p2, :cond_6f

    .line 105
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarLayout:Landroid/widget/RelativeLayout;

    .line 107
    const/16 p3, 0x8

    .line 109
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_6f
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 114
    new-instance p3, Lmiuix/stretchablewidget/StretchableDatePicker$1;

    .line 116
    invoke-direct {p3, p0, p1}, Lmiuix/stretchablewidget/StretchableDatePicker$1;-><init>(Lmiuix/stretchablewidget/StretchableDatePicker;Landroid/content/Context;)V

    .line 119
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 124
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 127
    move-result p3

    .line 128
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 131
    move-result v0

    .line 132
    invoke-virtual {p2, p3, v0}, Landroid/view/View;->measure(II)V

    .line 135
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 137
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 140
    move-result p2

    .line 141
    iput p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->pickerContainerHeight:I

    .line 143
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 145
    invoke-virtual {p0, p2}, Lmiuix/stretchablewidget/StretchableWidget;->setLayout(Landroid/view/View;)V

    .line 148
    new-instance p2, Lmiuix/pickerwidget/date/Calendar;

    .line 150
    invoke-direct {p2}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 153
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 155
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarResId:Ljava/lang/String;

    .line 157
    invoke-virtual {p0, p2}, Lmiuix/stretchablewidget/StretchableDatePicker;->setLunarText(Ljava/lang/String;)V

    .line 160
    new-instance p2, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 162
    invoke-direct {p2, p1}, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;-><init>(Landroid/content/Context;)V

    .line 165
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 167
    iget p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mMinuteInterval:I

    .line 169
    invoke-virtual {p0, p2}, Lmiuix/stretchablewidget/StretchableDatePicker;->setMinuteInterval(I)V

    .line 172
    invoke-direct {p0, p1}, Lmiuix/stretchablewidget/StretchableDatePicker;->showSolarTime(Landroid/content/Context;)V

    .line 175
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 177
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 180
    move-result-wide p2

    .line 181
    iput-wide p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mTime:J

    .line 183
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mDateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 185
    new-instance p3, Lmiuix/stretchablewidget/StretchableDatePicker$2;

    .line 187
    invoke-direct {p3, p0, p1}, Lmiuix/stretchablewidget/StretchableDatePicker$2;-><init>(Lmiuix/stretchablewidget/StretchableDatePicker;Landroid/content/Context;)V

    .line 190
    invoke-virtual {p2, p3}, Lmiuix/pickerwidget/widget/DateTimePicker;->setOnTimeChangedListener(Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;)V

    .line 193
    return-void
.end method

.method private showSolarTime(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1, p1}, Lmiuix/stretchablewidget/StretchableDatePicker;->formatSolorTime(JLandroid/content/Context;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setDetailMessage(Ljava/lang/CharSequence;)V

    .line 14
    return-void
.end method

.method private showTime(ZLandroid/content/Context;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p0, p2}, Lmiuix/stretchablewidget/StretchableDatePicker;->showLunarTime(Landroid/content/Context;)V

    .line 6
    goto :goto_9

    .line 7
    :cond_6
    invoke-direct {p0, p2}, Lmiuix/stretchablewidget/StretchableDatePicker;->showSolarTime(Landroid/content/Context;)V

    .line 10
    :goto_9
    return-void
.end method


# virtual methods
.method public afterSetView()V
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->pickerContainerHeight:I

    .line 3
    iput v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mHeight:I

    .line 5
    return-void
.end method

.method public getTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mTime:J

    .line 3
    return-wide v0
.end method

.method public preSetView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/stretchablewidget/StretchableDatePicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    return-void
.end method

.method public setLunarModeOn(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setLunarText(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarText:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setMinuteInterval(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mDateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->setMinuteInterval(I)V

    .line 6
    return-void
.end method

.method public setOnTimeChangeListener(Lmiuix/stretchablewidget/StretchableDatePicker$OnTimeChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mOnTimeChangeListener:Lmiuix/stretchablewidget/StretchableDatePicker$OnTimeChangeListener;

    .line 3
    return-void
.end method

.method public showLunarTime(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1, p1}, Lmiuix/stretchablewidget/StretchableDatePicker;->formatLunarTime(JLandroid/content/Context;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setDetailMessage(Ljava/lang/CharSequence;)V

    .line 14
    return-void
.end method
