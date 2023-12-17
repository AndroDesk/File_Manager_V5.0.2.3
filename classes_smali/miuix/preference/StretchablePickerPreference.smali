.class public Lmiuix/preference/StretchablePickerPreference;
.super Lmiuix/preference/StretchableWidgetPreference;
.source "StretchablePickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;
    }
.end annotation


# instance fields
.field private mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field private mContext:Landroid/content/Context;

.field private mIsLunar:Z

.field private mLunar:Ljava/lang/CharSequence;

.field private mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

.field private mMinuteInterval:I

.field private mOnTimeChangeListener:Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;

.field private mShowLunar:Z

.field private mTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lmiuix/preference/StretchablePickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 9
    sget v0, Lmiuix/preference/R$attr;->stretchablePickerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/StretchablePickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/StretchableWidgetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/preference/StretchablePickerPreference;->mTime:J

    .line 4
    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference;->mContext:Landroid/content/Context;

    .line 5
    new-instance v0, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    invoke-direct {v0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 6
    sget-object v0, Lmiuix/preference/R$styleable;->StretchablePickerPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lmiuix/preference/R$styleable;->StretchablePickerPreference_show_lunar:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/preference/StretchablePickerPreference;->mShowLunar:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lmiuix/preference/StretchablePickerPreference;Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->lambda$onBindViewHolder$0(Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/pickerwidget/date/Calendar;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/StretchablePickerPreference;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/preference/StretchablePickerPreference;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/preference/StretchablePickerPreference;->mIsLunar:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/preference/StretchablePickerPreference;ZJ)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->showTime(ZJ)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lmiuix/preference/StretchablePickerPreference;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/preference/StretchablePickerPreference;->mTime:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$302(Lmiuix/preference/StretchablePickerPreference;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/preference/StretchablePickerPreference;->mTime:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$400(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/StretchablePickerPreference;->mOnTimeChangeListener:Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/preference/StretchablePickerPreference;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/preference/StretchablePickerPreference;->setTimePickerLunarMode(Lmiuix/pickerwidget/widget/DateTimePicker;Z)V

    .line 4
    return-void
.end method

.method private changeTimeState(Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .registers 4

    .line 1
    new-instance v0, Lmiuix/preference/StretchablePickerPreference$2;

    .line 3
    invoke-direct {v0, p0, p2}, Lmiuix/preference/StretchablePickerPreference$2;-><init>(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 9
    return-void
.end method

.method private formatLunarTime(JLandroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 3
    iget-object v1, p0, Lmiuix/preference/StretchablePickerPreference;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lmiuix/preference/StretchablePickerPreference;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 12
    const/4 v3, 0x5

    .line 13
    invoke-virtual {v2, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lmiuix/preference/StretchablePickerPreference;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

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

.method private formatSolorTime(J)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->mContext:Landroid/content/Context;

    .line 3
    const/16 v1, 0x38c

    .line 5
    invoke-static {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private getLunarText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->mLunar:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method private getMinuteInterval()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/preference/StretchablePickerPreference;->mMinuteInterval:I

    .line 3
    return v0
.end method

.method private synthetic lambda$onBindViewHolder$0(Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    move-result p3

    .line 5
    xor-int/lit8 p3, p3, 0x1

    .line 7
    invoke-virtual {p1, p3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 10
    invoke-direct {p0, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->setTimePickerLunarMode(Lmiuix/pickerwidget/widget/DateTimePicker;Z)V

    .line 13
    return-void
.end method

.method private setTimePickerLunarMode(Lmiuix/pickerwidget/widget/DateTimePicker;Z)V
    .registers 5

    .line 1
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->setLunarMode(Z)V

    .line 4
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 7
    move-result-wide v0

    .line 8
    invoke-direct {p0, p2, v0, v1}, Lmiuix/preference/StretchablePickerPreference;->showTime(ZJ)V

    .line 11
    iput-boolean p2, p0, Lmiuix/preference/StretchablePickerPreference;->mIsLunar:Z

    .line 13
    return-void
.end method

.method private showSolarTime(J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/preference/StretchablePickerPreference;->formatSolorTime(J)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->setDetailMsgText(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method private showTime(ZJ)V
    .registers 4

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p0, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->showLunarTime(J)V

    .line 6
    goto :goto_9

    .line 7
    :cond_6
    invoke-direct {p0, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->showSolarTime(J)V

    .line 10
    :goto_9
    return-void
.end method

.method private updateTime(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/preference/StretchablePickerPreference$1;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/preference/StretchablePickerPreference$1;-><init>(Lmiuix/preference/StretchablePickerPreference;)V

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->setOnTimeChangedListener(Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;)V

    .line 9
    return-void
.end method


# virtual methods
.method public getTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/preference/StretchablePickerPreference;->mTime:J

    .line 3
    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .registers 8

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    sget v1, Lmiuix/preference/R$id;->lunar_layout:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 11
    sget v2, Lmiuix/preference/R$id;->datetime_picker:I

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 19
    sget v3, Lmiuix/preference/R$id;->lunar_button:I

    .line 21
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 27
    sget v4, Lmiuix/preference/R$id;->lunar_text:I

    .line 29
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 35
    iget-boolean v4, p0, Lmiuix/preference/StretchablePickerPreference;->mShowLunar:Z

    .line 37
    if-nez v4, :cond_2c

    .line 39
    const/16 v0, 0x8

    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    goto :goto_56

    .line 45
    :cond_2c
    if-eqz v0, :cond_56

    .line 47
    invoke-direct {p0}, Lmiuix/preference/StretchablePickerPreference;->getLunarText()Ljava/lang/CharSequence;

    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_3d

    .line 57
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    const/4 v0, 0x0

    .line 63
    :goto_3e
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 66
    xor-int/lit8 v4, v0, 0x1

    .line 68
    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 71
    if-eqz v0, :cond_52

    .line 73
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/a;

    .line 75
    const/4 v4, 0x3

    .line 76
    invoke-direct {v0, p0, v3, v2, v4}, Lcom/android/fileexplorer/pad/fragment/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    .line 79
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    goto :goto_56

    .line 83
    :cond_52
    const/4 v0, 0x0

    .line 84
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_56
    :goto_56
    invoke-direct {p0}, Lmiuix/preference/StretchablePickerPreference;->getMinuteInterval()I

    .line 90
    move-result v0

    .line 91
    invoke-virtual {v2, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->setMinuteInterval(I)V

    .line 94
    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 97
    move-result-wide v0

    .line 98
    iput-wide v0, p0, Lmiuix/preference/StretchablePickerPreference;->mTime:J

    .line 100
    invoke-super {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->onBindViewHolder(Landroidx/preference/h;)V

    .line 103
    invoke-direct {p0, v3, v2}, Lmiuix/preference/StretchablePickerPreference;->changeTimeState(Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 106
    iget-boolean p1, p0, Lmiuix/preference/StretchablePickerPreference;->mIsLunar:Z

    .line 108
    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 111
    move-result-wide v0

    .line 112
    invoke-direct {p0, p1, v0, v1}, Lmiuix/preference/StretchablePickerPreference;->showTime(ZJ)V

    .line 115
    invoke-direct {p0, v2}, Lmiuix/preference/StretchablePickerPreference;->updateTime(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 118
    return-void
.end method

.method public setLunarText(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->mLunar:Ljava/lang/CharSequence;

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference;->mLunar:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 14
    :cond_d
    return-void
.end method

.method public setMinuteInterval(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/preference/StretchablePickerPreference;->mMinuteInterval:I

    .line 3
    if-eq p1, v0, :cond_9

    .line 5
    iput p1, p0, Lmiuix/preference/StretchablePickerPreference;->mMinuteInterval:I

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 10
    :cond_9
    return-void
.end method

.method public setSlidingListener(Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference;->mOnTimeChangeListener:Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;

    .line 3
    return-void
.end method

.method public showLunarTime(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->mContext:Landroid/content/Context;

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/StretchablePickerPreference;->formatLunarTime(JLandroid/content/Context;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->setDetailMsgText(Ljava/lang/String;)V

    .line 10
    return-void
.end method
