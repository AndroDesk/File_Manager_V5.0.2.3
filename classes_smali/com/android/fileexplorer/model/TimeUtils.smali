.class public Lcom/android/fileexplorer/model/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final FIVE_MINUTES:J = 0x493e0L

.field private static final _1_DAY:J = 0x5265c00L

.field private static final _1_HOUR:J = 0x36ee80L

.field private static final _1_MINUTE:J = 0xea60L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(J)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->isInSameYear(JJ)Z

    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_73

    .line 11
    invoke-static {p0, p1, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->getDaysBetween(JJ)J

    .line 14
    move-result-wide v0

    .line 15
    long-to-int v0, v0

    .line 16
    if-nez v0, :cond_25

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object p0

    .line 30
    const p1, 0x7f11044f

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_25
    const/4 v1, 0x1

    .line 39
    if-ne v0, v1, :cond_30

    .line 41
    const p0, 0x7f11048f

    .line 44
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_30
    const/4 v2, 0x2

    .line 50
    if-lt v0, v2, :cond_53

    .line 52
    const/4 v2, 0x7

    .line 53
    if-gt v0, v2, :cond_53

    .line 55
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object p0

    .line 67
    const p1, 0x7f0f000d

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v3

    .line 77
    aput-object v3, v1, v2

    .line 79
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_53
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 86
    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 89
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 96
    move-result-object v1

    .line 97
    const v2, 0x7f110275

    .line 100
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 107
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_73
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 118
    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 121
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 128
    move-result-object v1

    .line 129
    const v2, 0x7f11048d

    .line 132
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 139
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    return-object p0
.end method

.method public static formatDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 6
    const v1, 0x7f11048d

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static formatMonthDay(J)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    const v2, 0x7f110275

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static formatSecondTime(J)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 3
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 6
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    move-result-object p1

    .line 12
    const-string v1, "HH:mm"

    .line 14
    invoke-direct {p0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 17
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static getDay(Landroid/content/Context;J)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/16 v1, 0x1080

    .line 8
    invoke-static {p0, v0, p1, p2, v1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JI)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static getDayOfTime(J)I
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/Date;

    .line 7
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 13
    const/4 p0, 0x5

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static getDaysBetween(JJ)J
    .registers 9

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 8
    const/16 p0, 0xb

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 14
    const/16 v1, 0xc

    .line 16
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 19
    const/16 v2, 0xd

    .line 21
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 24
    const/16 v3, 0xe

    .line 26
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 36
    invoke-virtual {v4, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 39
    invoke-virtual {v4, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 42
    invoke-virtual {v4, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 45
    invoke-virtual {v4, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 48
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 51
    move-result-wide p0

    .line 52
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 55
    move-result-wide p2

    .line 56
    sub-long/2addr p0, p2

    .line 57
    const-wide/32 p2, 0x5265c00

    .line 60
    div-long/2addr p0, p2

    .line 61
    return-wide p0
.end method

.method public static getHourOfDay(J)I
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/Date;

    .line 7
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 13
    const/16 p0, 0xb

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static getMinuteOfHour(J)I
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/Date;

    .line 7
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 13
    const/16 p0, 0xc

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static getMonth(Landroid/content/Context;J)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/16 v1, 0x1100

    .line 8
    invoke-static {p0, v0, p1, p2, v1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JI)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static getMonthOfTime(J)I
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/Date;

    .line 7
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 13
    const/4 p0, 0x2

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static getTimeByDateStr(Ljava/lang/String;)J
    .registers 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "yyyyMMdd"

    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 15
    move-result-wide v0
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_f} :catch_10

    .line 16
    return-wide v0

    .line 17
    :catch_10
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    const-wide/16 v0, -0x1

    .line 23
    return-wide v0
.end method

.method public static getYear(Landroid/content/Context;J)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/16 v1, 0x200

    .line 8
    invoke-static {p0, v0, p1, p2, v1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JI)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static getYearOfTime(J)I
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/Date;

    .line 7
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 13
    const/4 p0, 0x1

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static isChristmas()Z
    .registers 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x2

    .line 10
    const/16 v4, 0xb

    .line 12
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 15
    const/4 v5, 0x5

    .line 16
    const/16 v6, 0x17

    .line 18
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-virtual {v2, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 25
    const/16 v7, 0xc

    .line 27
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 30
    const/16 v8, 0xd

    .line 32
    invoke-virtual {v2, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 35
    const/16 v9, 0xe

    .line 37
    invoke-virtual {v2, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 43
    move-result-object v10

    .line 44
    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 47
    const/16 v3, 0x1b

    .line 49
    invoke-virtual {v10, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 52
    invoke-virtual {v10, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 55
    invoke-virtual {v10, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 58
    invoke-virtual {v10, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 61
    invoke-virtual {v10, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 64
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 67
    move-result-wide v2

    .line 68
    cmp-long v2, v0, v2

    .line 70
    if-lez v2, :cond_50

    .line 72
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 75
    move-result-wide v2

    .line 76
    cmp-long v0, v0, v2

    .line 78
    if-gez v0, :cond_50

    .line 80
    const/4 v6, 0x1

    .line 81
    :cond_50
    return v6
.end method

.method public static isInSameDay(JJ)Z
    .registers 5

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    .line 23
    move-result p3

    .line 24
    if-ne p2, p3, :cond_30

    .line 26
    const/4 p2, 0x2

    .line 27
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    .line 30
    move-result p3

    .line 31
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    .line 34
    move-result p2

    .line 35
    if-ne p3, p2, :cond_30

    .line 37
    const/4 p2, 0x5

    .line 38
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    .line 41
    move-result p3

    .line 42
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    .line 45
    move-result p0

    .line 46
    if-ne p3, p0, :cond_30

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    const/4 p1, 0x0

    .line 50
    :goto_31
    return p1
.end method

.method private static isInSameYear(JJ)Z
    .registers 5

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    .line 23
    move-result p0

    .line 24
    if-ne p2, p0, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method

.method public static isMoreThanFiveMins(J)Z
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p0

    .line 6
    const-wide/32 p0, 0x493e0

    .line 9
    cmp-long p0, v0, p0

    .line 11
    if-lez p0, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method
