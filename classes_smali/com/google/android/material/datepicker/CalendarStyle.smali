.class final Lcom/google/android/material/datepicker/CalendarStyle;
.super Ljava/lang/Object;
.source "CalendarStyle.java"


# instance fields
.field public final day:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field public final invalidDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field public final rangeFill:Landroid/graphics/Paint;

.field public final selectedDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field public final selectedYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field public final todayDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field public final todayYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

.field public final year:Lcom/google/android/material/datepicker/CalendarItemStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    .line 6
    const-class v1, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    .line 15
    move-result v0

    .line 16
    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialCalendar:[I

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 21
    move-result-object v0

    .line 22
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayStyle:I

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 28
    move-result v1

    .line 29
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 35
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayInvalidStyle:I

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 40
    move-result v1

    .line 41
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 47
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_daySelectedStyle:I

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 52
    move-result v1

    .line 53
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 59
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayTodayStyle:I

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 64
    move-result v1

    .line 65
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 71
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_rangeFillColor:I

    .line 73
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 76
    move-result-object v1

    .line 77
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearStyle:I

    .line 79
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 82
    move-result v3

    .line 83
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 86
    move-result-object v3

    .line 87
    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 89
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearSelectedStyle:I

    .line 91
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 94
    move-result v3

    .line 95
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 98
    move-result-object v3

    .line 99
    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 101
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearTodayStyle:I

    .line 103
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 106
    move-result v2

    .line 107
    invoke-static {p1, v2}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 113
    new-instance p1, Landroid/graphics/Paint;

    .line 115
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    .line 120
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 123
    move-result v1

    .line 124
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return-void
.end method
