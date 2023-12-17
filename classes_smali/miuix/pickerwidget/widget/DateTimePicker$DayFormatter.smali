.class public Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;
.super Ljava/lang/Object;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayFormatter"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;->mContext:Landroid/content/Context;

    .line 10
    return-void
.end method


# virtual methods
.method public formatDay(III)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$200()Ljava/lang/ThreadLocal;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/pickerwidget/date/Calendar;

    .line 11
    if-nez v0, :cond_18

    .line 13
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 15
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 18
    invoke-static {}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$200()Ljava/lang/ThreadLocal;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    :cond_18
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1, p1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 29
    const/4 p1, 0x5

    .line 30
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 33
    const/16 p1, 0x9

    .line 35
    invoke-virtual {v0, p1, p3}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    sget-object p2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 48
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_6c

    .line 58
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 63
    move-result-wide p2

    .line 64
    const/16 v1, 0x1180

    .line 66
    invoke-static {p1, p2, p3, v1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 75
    move-result-wide v0

    .line 76
    const/16 p3, 0x2400

    .line 78
    invoke-static {p2, v0, v1, p3}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v0, " "

    .line 89
    const-string v1, ""

    .line 91
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :cond_6c
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 114
    move-result-wide p2

    .line 115
    const/16 v0, 0x3580

    .line 117
    invoke-static {p1, p2, p3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    return-object p1
.end method
