.class Lcom/google/android/material/datepicker/DaysOfWeekAdapter;
.super Landroid/widget/BaseAdapter;
.source "DaysOfWeekAdapter.java"


# static fields
.field private static final CALENDAR_DAY_STYLE:I

.field private static final NARROW_FORMAT:I = 0x4


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final daysInWeek:I

.field private final firstDayOfWeek:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_8

    .line 7
    const/4 v0, 0x4

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x1

    .line 10
    :goto_9
    sput v0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->CALENDAR_DAY_STYLE:I

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    .line 10
    const/4 v1, 0x7

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    .line 14
    move-result v1

    .line 15
    iput v1, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    .line 17
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->firstDayOfWeek:I

    .line 23
    return-void
.end method

.method private positionToDayOfWeek(I)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->firstDayOfWeek:I

    .line 3
    add-int/2addr p1, v0

    .line 4
    iget v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    .line 6
    if-le p1, v0, :cond_8

    .line 8
    sub-int/2addr p1, v0

    .line 9
    :cond_8
    return p1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    .line 3
    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .registers 3

    .line 2
    iget v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    if-lt p1, v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->positionToDayOfWeek(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Landroid/widget/TextView;

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p2, :cond_17

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    move-result-object p2

    .line 15
    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_day_of_week:I

    .line 17
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p2

    .line 21
    move-object v0, p2

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 24
    :cond_17
    iget-object p2, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->positionToDayOfWeek(I)I

    .line 29
    move-result p1

    .line 30
    const/4 v2, 0x7

    .line 31
    invoke-virtual {p2, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 34
    iget-object p1, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    .line 36
    sget p2, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->CALENDAR_DAY_STYLE:I

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p1, v2, p2, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    move-result-object p1

    .line 53
    sget p2, Lcom/google/android/material/R$string;->mtrl_picker_day_of_week_column_header:I

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    const/4 p2, 0x1

    .line 60
    new-array p2, p2, [Ljava/lang/Object;

    .line 62
    iget-object p3, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    .line 64
    const/4 v3, 0x2

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {p3, v2, v3, v4}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    .line 72
    move-result-object p3

    .line 73
    aput-object p3, p2, v1

    .line 75
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    return-object v0
.end method
