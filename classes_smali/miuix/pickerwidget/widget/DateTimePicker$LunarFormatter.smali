.class public Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;
.super Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LunarFormatter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;-><init>(Landroid/content/Context;)V

    .line 4
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
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;->mContext:Landroid/content/Context;

    .line 40
    sget p2, Lmiuix/pickerwidget/R$string;->fmt_chinese_date:I

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method
