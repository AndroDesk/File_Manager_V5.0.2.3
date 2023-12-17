.class Lcom/google/android/material/datepicker/UtcDates;
.super Ljava/lang/Object;
.source "UtcDates.java"


# static fields
.field public static final UTC:Ljava/lang/String; = "UTC"

.field public static timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/material/datepicker/TimeSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/material/datepicker/UtcDates;->timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canonicalYearMonthDay(J)J
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 8
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method private static findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6

    .line 1
    :goto_0
    if-ltz p3, :cond_2d

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    if-ge p3, v0, :cond_2d

    .line 9
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_2d

    .line 20
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x27

    .line 26
    if-ne v0, v1, :cond_2b

    .line 28
    :goto_1b
    add-int/2addr p3, p2

    .line 29
    if-ltz p3, :cond_2b

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 34
    move-result v0

    .line 35
    if-ge p3, v0, :cond_2b

    .line 37
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    .line 40
    move-result v0

    .line 41
    if-eq v0, v1, :cond_2b

    .line 43
    goto :goto_1b

    .line 44
    :cond_2b
    add-int/2addr p3, p2

    .line 45
    goto :goto_0

    .line 46
    :cond_2d
    return p3
.end method

.method public static getAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    const-string v0, "MMMd"

    .line 3
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getAbbrMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    const-string v0, "MMMEd"

    .line 3
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcAndroidTimeZone()Landroid/icu/util/TimeZone;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 12
    return-object p0
.end method

.method public static getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x5

    .line 20
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    .line 23
    move-result p0

    .line 24
    invoke-virtual {v0, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    .line 27
    return-object v0
.end method

.method private static getFormat(ILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 12
    return-object p0
.end method

.method public static getFullFormat()Ljava/text/DateFormat;
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getFullFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getFullFormat(Ljava/util/Locale;)Ljava/text/DateFormat;
    .registers 2

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getFormat(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getMediumFormat()Ljava/text/DateFormat;
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getMediumFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getMediumFormat(Ljava/util/Locale;)Ljava/text/DateFormat;
    .registers 2

    const/4 v0, 0x2

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getFormat(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getMediumNoYear()Ljava/text/DateFormat;
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getMediumNoYear(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getMediumNoYear(Ljava/util/Locale;)Ljava/text/DateFormat;
    .registers 2

    .line 2
    invoke-static {p0}, Lcom/google/android/material/datepicker/UtcDates;->getMediumFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 3
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->removeYearFromDateFormatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getSimpleFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/UtcDates;->getSimpleFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method private static getSimpleFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .registers 3

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static getTextInputFormat()Ljava/text/SimpleDateFormat;
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 12
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "\\s+"

    .line 18
    const-string v2, ""

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 33
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 44
    return-object v1
.end method

.method public static getTextInputHint(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_text_input_year_abbr:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_text_input_month_abbr:I

    .line 13
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_text_input_day_abbr:I

    .line 19
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    const-string v2, "d"

    .line 25
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    const-string p1, "M"

    .line 31
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    const-string p1, "y"

    .line 37
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static getTimeSource()Lcom/google/android/material/datepicker/TimeSource;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/material/datepicker/UtcDates;->timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/datepicker/TimeSource;

    .line 9
    if-nez v0, :cond_e

    .line 11
    invoke-static {}, Lcom/google/android/material/datepicker/TimeSource;->system()Lcom/google/android/material/datepicker/TimeSource;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    return-object v0
.end method

.method private static getTimeZone()Ljava/util/TimeZone;
    .registers 1

    .line 1
    const-string v0, "UTC"

    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getTodayCalendar()Ljava/util/Calendar;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeSource()Lcom/google/android/material/datepicker/TimeSource;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/TimeSource;->now()Ljava/util/Calendar;

    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0xb

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 15
    const/16 v1, 0xc

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 20
    const/16 v1, 0xd

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 25
    const/16 v1, 0xe

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 30
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 37
    return-object v0
.end method

.method private static getUtcAndroidTimeZone()Landroid/icu/util/TimeZone;
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    const-string v0, "UTC"

    .line 3
    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getUtcCalendar()Ljava/util/Calendar;
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public static getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 8
    move-result-object v0

    .line 9
    if-nez p0, :cond_e

    .line 11
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 22
    :goto_15
    return-object v0
.end method

.method public static getYearAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    const-string v0, "yMMMd"

    .line 3
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getYearAbbrMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    const-string v0, "yMMMEd"

    .line 3
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getYearMonthFormat()Ljava/text/SimpleDateFormat;
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getYearMonthFormat(Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getYearMonthFormat(Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .registers 2

    const-string v0, "LLLL, yyyy"

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getSimpleFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method private static removeYearFromDateFormatPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "yY"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/material/datepicker/UtcDates;->findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v2

    .line 13
    if-lt v0, v2, :cond_f

    .line 15
    return-object p0

    .line 16
    :cond_f
    const-string v2, "EMd"

    .line 18
    invoke-static {p0, v2, v1, v0}, Lcom/google/android/material/datepicker/UtcDates;->findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I

    .line 21
    move-result v3

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    move-result v4

    .line 26
    if-ge v3, v4, :cond_1d

    .line 28
    const-string v2, "EMd,"

    .line 30
    :cond_1d
    const/4 v4, -0x1

    .line 31
    invoke-static {p0, v2, v4, v0}, Lcom/google/android/material/datepicker/UtcDates;->findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I

    .line 34
    move-result v0

    .line 35
    add-int/2addr v0, v1

    .line 36
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, " "

    .line 42
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static setTimeSource(Lcom/google/android/material/datepicker/TimeSource;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/material/datepicker/UtcDates;->timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    return-void
.end method
