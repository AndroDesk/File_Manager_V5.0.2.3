.class public Lmiuix/pickerwidget/date/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$Pool<",
            "Lmiuix/pickerwidget/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_12HOUR:I = 0x10

.field public static final FORMAT_24HOUR:I = 0x20

.field public static final FORMAT_ABBREV_ALL:I = 0x7000

.field public static final FORMAT_ABBREV_MONTH:I = 0x1000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x2000

.field public static final FORMAT_NO_AM_PM:I = 0x40

.field public static final FORMAT_NUMERIC_DATE:I = 0x8000

.field public static final FORMAT_SHOW_BRIEF_TIME:I = 0xc

.field public static final FORMAT_SHOW_DATE:I = 0x380

.field public static final FORMAT_SHOW_HOUR:I = 0x8

.field public static final FORMAT_SHOW_MILLISECOND:I = 0x1

.field public static final FORMAT_SHOW_MINUTE:I = 0x4

.field public static final FORMAT_SHOW_MONTH:I = 0x100

.field public static final FORMAT_SHOW_MONTH_DAY:I = 0x80

.field public static final FORMAT_SHOW_SECOND:I = 0x2

.field public static final FORMAT_SHOW_TIME:I = 0xf

.field public static final FORMAT_SHOW_TIME_ZONE:I = 0x800

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x400

.field public static final FORMAT_SHOW_YEAR:I = 0x200


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/pickerwidget/date/DateUtils$1;

    .line 3
    invoke-direct {v0}, Lmiuix/pickerwidget/date/DateUtils$1;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/InstantiationException;

    .line 6
    const-string v1, "Cannot instantiate utility class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 11

    .line 1
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-wide v3, p1

    move v5, p3

    .line 2
    invoke-static/range {v1 .. v6}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatDateTime(Landroid/content/Context;JILjava/util/TimeZone;)Ljava/lang/String;
    .registers 12

    .line 4
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    move-object v1, p0

    move-object v2, v0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    .line 5
    invoke-static/range {v1 .. v6}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JI)Ljava/lang/StringBuilder;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 7
    invoke-static/range {v0 .. v5}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .registers 10

    and-int/lit8 v0, p4, 0x10

    if-nez v0, :cond_14

    and-int/lit8 v0, p4, 0x20

    if-nez v0, :cond_14

    .line 8
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x20

    goto :goto_13

    :cond_11
    const/16 v0, 0x10

    :goto_13
    or-int/2addr p4, v0

    .line 9
    :cond_14
    invoke-static {p4}, Lmiuix/pickerwidget/date/DateUtils;->getFormatResId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 11
    sget-object v2, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v2}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/pickerwidget/date/Calendar;

    .line 12
    invoke-virtual {v2, p5}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;

    .line 13
    invoke-virtual {v2, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    const/4 p2, 0x0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    :goto_39
    if-ge p2, p3, :cond_75

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p5

    const/16 v3, 0x44

    if-eq p5, v3, :cond_67

    const/16 v3, 0x54

    if-eq p5, v3, :cond_5b

    const/16 v3, 0x57

    if-eq p5, v3, :cond_4f

    .line 16
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 17
    :cond_4f
    invoke-static {p4}, Lmiuix/pickerwidget/date/DateUtils;->getWeekdayPatternResId(I)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 18
    :cond_5b
    invoke-static {v2, p4}, Lmiuix/pickerwidget/date/DateUtils;->getTimePatternResId(Lmiuix/pickerwidget/date/Calendar;I)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 19
    :cond_67
    invoke-static {p4}, Lmiuix/pickerwidget/date/DateUtils;->getDatePatternResId(I)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_72
    add-int/lit8 p2, p2, 0x1

    goto :goto_39

    .line 20
    :cond_75
    invoke-virtual {v2, p0, p1, v1}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p0

    invoke-interface {p0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 22
    sget-object p0, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {p0, v2}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static formatRelativeTime(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 11

    .line 1
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-wide v3, p1

    move v5, p3

    .line 2
    invoke-static/range {v1 .. v6}, Lmiuix/pickerwidget/date/DateUtils;->formatRelativeTime(Landroid/content/Context;Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatRelativeTime(Landroid/content/Context;JZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 12

    .line 4
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    move-object v1, p0

    move-object v2, v0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    .line 5
    invoke-static/range {v1 .. v6}, Lmiuix/pickerwidget/date/DateUtils;->formatRelativeTime(Landroid/content/Context;Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatRelativeTime(Landroid/content/Context;Ljava/lang/StringBuilder;JZ)Ljava/lang/StringBuilder;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 7
    invoke-static/range {v0 .. v5}, Lmiuix/pickerwidget/date/DateUtils;->formatRelativeTime(Landroid/content/Context;Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static formatRelativeTime(Landroid/content/Context;Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .registers 22

    move-object/from16 v6, p1

    move-wide/from16 v2, p2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-ltz v4, :cond_14

    move v4, v7

    goto :goto_15

    :cond_14
    move v4, v5

    :goto_15
    sub-long v9, v0, v2

    .line 10
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0xea60

    div-long/2addr v9, v11

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/16 v12, 0x3000

    const-wide/16 v13, 0x3c

    cmp-long v13, v9, v13

    if-gtz v13, :cond_9d

    if-nez p4, :cond_9d

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1e

    if-eqz v4, :cond_60

    if-nez v13, :cond_40

    .line 12
    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_a_hour_ago:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v5

    .line 13
    invoke-virtual {v11, v0, v7, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_40
    cmp-long v2, v9, v2

    if-nez v2, :cond_4c

    .line 14
    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_half_hour_ago:I

    long-to-int v1, v9

    .line 15
    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_4c
    cmp-long v0, v9, v0

    if-nez v0, :cond_58

    .line 16
    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_less_than_one_minute_ago:I

    long-to-int v1, v9

    .line 17
    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    .line 18
    :cond_58
    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_num_minutes_ago:I

    long-to-int v1, v9

    .line 19
    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_60
    if-nez v13, :cond_6d

    .line 20
    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_a_hour:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v5

    .line 21
    invoke-virtual {v11, v0, v7, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_6d
    cmp-long v2, v9, v2

    if-nez v2, :cond_79

    .line 22
    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_half_hour:I

    long-to-int v1, v9

    .line 23
    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_79
    cmp-long v0, v9, v0

    if-nez v0, :cond_85

    .line 24
    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_less_than_one_minute:I

    long-to-int v1, v9

    .line 25
    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    .line 26
    :cond_85
    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_num_minutes:I

    long-to-int v1, v9

    .line 27
    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    :goto_8c
    new-array v1, v7, [Ljava/lang/Object;

    .line 28
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_165

    .line 29
    :cond_9d
    sget-object v8, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v8}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiuix/pickerwidget/date/Calendar;

    move-object/from16 v10, p5

    .line 30
    invoke-virtual {v9, v10}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;

    .line 31
    invoke-virtual {v9, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 32
    invoke-virtual {v9, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    .line 33
    invoke-virtual {v9, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v13

    const/16 v14, 0xe

    .line 34
    invoke-virtual {v9, v14}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v15

    .line 35
    invoke-virtual {v9, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 36
    invoke-virtual {v9, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    if-ne v0, v5, :cond_c8

    move v0, v7

    goto :goto_c9

    :cond_c8
    const/4 v0, 0x0

    :goto_c9
    if-eqz v0, :cond_e0

    .line 37
    invoke-virtual {v9, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    if-ne v13, v5, :cond_e0

    const/16 v4, 0x300c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v5, p5

    .line 38
    invoke-static/range {v0 .. v5}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto/16 :goto_162

    :cond_e0
    if-eqz v0, :cond_110

    .line 39
    invoke-virtual {v9, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    sub-int v5, v13, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v7, 0x2

    if-ge v5, v7, :cond_110

    if-eqz v4, :cond_f4

    .line 40
    sget v0, Lmiuix/pickerwidget/R$string;->yesterday:I

    goto :goto_f6

    :cond_f4
    sget v0, Lmiuix/pickerwidget/R$string;->tomorrow:I

    :goto_f6
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 41
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x300c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v5, p5

    .line 42
    invoke-static/range {v0 .. v5}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto :goto_162

    :cond_110
    if-eqz v0, :cond_137

    .line 43
    invoke-virtual {v9, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v5, 0x7

    if-ge v1, v5, :cond_137

    invoke-virtual {v9, v14}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-le v15, v1, :cond_126

    const/4 v5, 0x1

    goto :goto_127

    :cond_126
    const/4 v5, 0x0

    :goto_127
    if-ne v4, v5, :cond_137

    const/16 v4, 0x340c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v5, p5

    .line 44
    invoke-static/range {v0 .. v5}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto :goto_162

    :cond_137
    if-eqz v0, :cond_14e

    if-eqz p4, :cond_13e

    const/16 v0, 0x18c

    goto :goto_140

    :cond_13e
    const/16 v0, 0x180

    :goto_140
    or-int v4, v12, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v5, p5

    .line 45
    invoke-static/range {v0 .. v5}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto :goto_162

    :cond_14e
    if-eqz p4, :cond_153

    const/16 v0, 0x38c

    goto :goto_155

    :cond_153
    const/16 v0, 0x380

    :goto_155
    or-int v4, v12, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v5, p5

    .line 46
    invoke-static/range {v0 .. v5}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    .line 47
    :goto_162
    invoke-interface {v8, v9}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    :goto_165
    return-object v6
.end method

.method private static getDatePatternResId(I)I
    .registers 7

    .line 1
    const v0, 0x8000

    .line 4
    and-int v1, p0, v0

    .line 6
    const-string v2, "no any time date"

    .line 8
    const/16 v3, 0x200

    .line 10
    const/16 v4, 0x100

    .line 12
    const/16 v5, 0x80

    .line 14
    if-ne v1, v0, :cond_42

    .line 16
    and-int/lit16 v0, p0, 0x200

    .line 18
    if-ne v0, v3, :cond_26

    .line 20
    and-int/lit16 v0, p0, 0x100

    .line 22
    if-ne v0, v4, :cond_22

    .line 24
    and-int/2addr p0, v5

    .line 25
    if-ne p0, v5, :cond_1e

    .line 27
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_year_month_day:I

    .line 29
    goto/16 :goto_9b

    .line 31
    :cond_1e
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_year_month:I

    .line 33
    goto/16 :goto_9b

    .line 35
    :cond_22
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_year:I

    .line 37
    goto/16 :goto_9b

    .line 39
    :cond_26
    and-int/lit16 v0, p0, 0x100

    .line 41
    if-ne v0, v4, :cond_35

    .line 43
    and-int/2addr p0, v5

    .line 44
    if-ne p0, v5, :cond_31

    .line 46
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_month_day:I

    .line 48
    goto/16 :goto_9b

    .line 50
    :cond_31
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_month:I

    .line 52
    goto/16 :goto_9b

    .line 54
    :cond_35
    and-int/2addr p0, v5

    .line 55
    if-ne p0, v5, :cond_3c

    .line 57
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_day:I

    .line 59
    goto/16 :goto_9b

    .line 61
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 63
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0

    .line 67
    :cond_42
    and-int/lit16 v0, p0, 0x1000

    .line 69
    const/16 v1, 0x1000

    .line 71
    if-ne v0, v1, :cond_75

    .line 73
    and-int/lit16 v0, p0, 0x200

    .line 75
    if-ne v0, v3, :cond_5c

    .line 77
    and-int/lit16 v0, p0, 0x100

    .line 79
    if-ne v0, v4, :cond_59

    .line 81
    and-int/2addr p0, v5

    .line 82
    if-ne p0, v5, :cond_56

    .line 84
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_year_month_day:I

    .line 86
    goto :goto_9b

    .line 87
    :cond_56
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_year_month:I

    .line 89
    goto :goto_9b

    .line 90
    :cond_59
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_year:I

    .line 92
    goto :goto_9b

    .line 93
    :cond_5c
    and-int/lit16 v0, p0, 0x100

    .line 95
    if-ne v0, v4, :cond_69

    .line 97
    and-int/2addr p0, v5

    .line 98
    if-ne p0, v5, :cond_66

    .line 100
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_month_day:I

    .line 102
    goto :goto_9b

    .line 103
    :cond_66
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_month:I

    .line 105
    goto :goto_9b

    .line 106
    :cond_69
    and-int/2addr p0, v5

    .line 107
    if-ne p0, v5, :cond_6f

    .line 109
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_day:I

    .line 111
    goto :goto_9b

    .line 112
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 114
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p0

    .line 118
    :cond_75
    and-int/lit16 v0, p0, 0x200

    .line 120
    if-ne v0, v3, :cond_89

    .line 122
    and-int/lit16 v0, p0, 0x100

    .line 124
    if-ne v0, v4, :cond_86

    .line 126
    and-int/2addr p0, v5

    .line 127
    if-ne p0, v5, :cond_83

    .line 129
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_year_month_day:I

    .line 131
    goto :goto_9b

    .line 132
    :cond_83
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_year_month:I

    .line 134
    goto :goto_9b

    .line 135
    :cond_86
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_year:I

    .line 137
    goto :goto_9b

    .line 138
    :cond_89
    and-int/lit16 v0, p0, 0x100

    .line 140
    if-ne v0, v4, :cond_96

    .line 142
    and-int/2addr p0, v5

    .line 143
    if-ne p0, v5, :cond_93

    .line 145
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_month_day:I

    .line 147
    goto :goto_9b

    .line 148
    :cond_93
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_month:I

    .line 150
    goto :goto_9b

    .line 151
    :cond_96
    and-int/2addr p0, v5

    .line 152
    if-ne p0, v5, :cond_9c

    .line 154
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_day:I

    .line 156
    :goto_9b
    return p0

    .line 157
    :cond_9c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 159
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p0
.end method

.method private static getFormatResId(I)I
    .registers 4

    .line 1
    and-int/lit16 v0, p0, 0x400

    .line 3
    const/16 v1, 0x400

    .line 5
    const/16 v2, 0x800

    .line 7
    if-ne v0, v1, :cond_38

    .line 9
    and-int/lit16 v0, p0, 0x380

    .line 11
    if-eqz v0, :cond_22

    .line 13
    and-int/lit8 v0, p0, 0xf

    .line 15
    if-eqz v0, :cond_19

    .line 17
    and-int/2addr p0, v2

    .line 18
    if-ne p0, v2, :cond_16

    .line 20
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date_time_timezone:I

    .line 22
    goto :goto_67

    .line 23
    :cond_16
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date_time:I

    .line 25
    goto :goto_67

    .line 26
    :cond_19
    and-int/2addr p0, v2

    .line 27
    if-ne p0, v2, :cond_1f

    .line 29
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date_timezone:I

    .line 31
    goto :goto_67

    .line 32
    :cond_1f
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date:I

    .line 34
    goto :goto_67

    .line 35
    :cond_22
    and-int/lit8 v0, p0, 0xf

    .line 37
    if-eqz v0, :cond_2f

    .line 39
    and-int/2addr p0, v2

    .line 40
    if-ne p0, v2, :cond_2c

    .line 42
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_time_timezone:I

    .line 44
    goto :goto_67

    .line 45
    :cond_2c
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_time:I

    .line 47
    goto :goto_67

    .line 48
    :cond_2f
    and-int/2addr p0, v2

    .line 49
    if-ne p0, v2, :cond_35

    .line 51
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_timezone:I

    .line 53
    goto :goto_67

    .line 54
    :cond_35
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday:I

    .line 56
    goto :goto_67

    .line 57
    :cond_38
    and-int/lit16 v0, p0, 0x380

    .line 59
    if-eqz v0, :cond_52

    .line 61
    and-int/lit8 v0, p0, 0xf

    .line 63
    if-eqz v0, :cond_49

    .line 65
    and-int/2addr p0, v2

    .line 66
    if-ne p0, v2, :cond_46

    .line 68
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_time_timezone:I

    .line 70
    goto :goto_67

    .line 71
    :cond_46
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_time:I

    .line 73
    goto :goto_67

    .line 74
    :cond_49
    and-int/2addr p0, v2

    .line 75
    if-ne p0, v2, :cond_4f

    .line 77
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_timezone:I

    .line 79
    goto :goto_67

    .line 80
    :cond_4f
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date:I

    .line 82
    goto :goto_67

    .line 83
    :cond_52
    and-int/lit8 v0, p0, 0xf

    .line 85
    if-eqz v0, :cond_5f

    .line 87
    and-int/2addr p0, v2

    .line 88
    if-ne p0, v2, :cond_5c

    .line 90
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_timezone:I

    .line 92
    goto :goto_67

    .line 93
    :cond_5c
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time:I

    .line 95
    goto :goto_67

    .line 96
    :cond_5f
    and-int/2addr p0, v2

    .line 97
    if-ne p0, v2, :cond_65

    .line 99
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_timezone:I

    .line 101
    goto :goto_67

    .line 102
    :cond_65
    sget p0, Lmiuix/pickerwidget/R$string;->empty:I

    .line 104
    :goto_67
    return p0
.end method

.method private static getTimePatternResId(Lmiuix/pickerwidget/date/Calendar;I)I
    .registers 6

    .line 1
    and-int/lit16 v0, p1, 0x4000

    .line 3
    const/16 v1, 0x4000

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_3a

    .line 9
    and-int/lit8 v0, p1, 0x1

    .line 11
    if-ne v0, v3, :cond_14

    .line 13
    const/16 v0, 0x16

    .line 15
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3a

    .line 21
    :cond_14
    and-int/lit8 v0, p1, 0xe

    .line 23
    if-eqz v0, :cond_3a

    .line 25
    and-int/lit8 p1, p1, -0x2

    .line 27
    and-int/lit8 v0, p1, 0x2

    .line 29
    if-ne v0, v2, :cond_26

    .line 31
    const/16 v0, 0x15

    .line 33
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3a

    .line 39
    :cond_26
    and-int/lit8 v0, p1, 0xc

    .line 41
    if-eqz v0, :cond_3a

    .line 43
    and-int/lit8 p1, p1, -0x3

    .line 45
    const/16 v0, 0x14

    .line 47
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_3a

    .line 53
    and-int/lit8 p0, p1, 0x8

    .line 55
    if-eqz p0, :cond_3a

    .line 57
    and-int/lit8 p1, p1, -0x5

    .line 59
    :cond_3a
    and-int/lit8 p0, p1, 0x8

    .line 61
    const/16 v0, 0x8

    .line 63
    const/4 v1, 0x4

    .line 64
    if-ne p0, v0, :cond_99

    .line 66
    and-int/lit8 p0, p1, 0x10

    .line 68
    const/16 v0, 0x10

    .line 70
    if-ne p0, v0, :cond_81

    .line 72
    and-int/lit8 p0, p1, 0x40

    .line 74
    const/16 v0, 0x40

    .line 76
    if-ne p0, v0, :cond_69

    .line 78
    and-int/lit8 p0, p1, 0x4

    .line 80
    if-ne p0, v1, :cond_65

    .line 82
    and-int/lit8 p0, p1, 0x2

    .line 84
    if-ne p0, v2, :cond_61

    .line 86
    and-int/lit8 p0, p1, 0x1

    .line 88
    if-ne p0, v3, :cond_5d

    .line 90
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second_millis:I

    .line 92
    goto/16 :goto_c2

    .line 94
    :cond_5d
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second:I

    .line 96
    goto/16 :goto_c2

    .line 98
    :cond_61
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute:I

    .line 100
    goto/16 :goto_c2

    .line 102
    :cond_65
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour:I

    .line 104
    goto/16 :goto_c2

    .line 106
    :cond_69
    and-int/lit8 p0, p1, 0x4

    .line 108
    if-ne p0, v1, :cond_7e

    .line 110
    and-int/lit8 p0, p1, 0x2

    .line 112
    if-ne p0, v2, :cond_7b

    .line 114
    and-int/lit8 p0, p1, 0x1

    .line 116
    if-ne p0, v3, :cond_78

    .line 118
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second_millis_pm:I

    .line 120
    goto :goto_c2

    .line 121
    :cond_78
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second_pm:I

    .line 123
    goto :goto_c2

    .line 124
    :cond_7b
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_pm:I

    .line 126
    goto :goto_c2

    .line 127
    :cond_7e
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_pm:I

    .line 129
    goto :goto_c2

    .line 130
    :cond_81
    and-int/lit8 p0, p1, 0x4

    .line 132
    if-ne p0, v1, :cond_96

    .line 134
    and-int/lit8 p0, p1, 0x2

    .line 136
    if-ne p0, v2, :cond_93

    .line 138
    and-int/lit8 p0, p1, 0x1

    .line 140
    if-ne p0, v3, :cond_90

    .line 142
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour_minute_second_millis:I

    .line 144
    goto :goto_c2

    .line 145
    :cond_90
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour_minute_second:I

    .line 147
    goto :goto_c2

    .line 148
    :cond_93
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour_minute:I

    .line 150
    goto :goto_c2

    .line 151
    :cond_96
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour:I

    .line 153
    goto :goto_c2

    .line 154
    :cond_99
    and-int/lit8 p0, p1, 0x4

    .line 156
    if-ne p0, v1, :cond_ae

    .line 158
    and-int/lit8 p0, p1, 0x2

    .line 160
    if-ne p0, v2, :cond_ab

    .line 162
    and-int/lit8 p0, p1, 0x1

    .line 164
    if-ne p0, v3, :cond_a8

    .line 166
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_minute_second_millis:I

    .line 168
    goto :goto_c2

    .line 169
    :cond_a8
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_minute_second:I

    .line 171
    goto :goto_c2

    .line 172
    :cond_ab
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_minute:I

    .line 174
    goto :goto_c2

    .line 175
    :cond_ae
    and-int/lit8 p0, p1, 0x2

    .line 177
    if-ne p0, v2, :cond_bc

    .line 179
    and-int/lit8 p0, p1, 0x1

    .line 181
    if-ne p0, v3, :cond_b9

    .line 183
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_second_millis:I

    .line 185
    goto :goto_c2

    .line 186
    :cond_b9
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_second:I

    .line 188
    goto :goto_c2

    .line 189
    :cond_bc
    and-int/lit8 p0, p1, 0x1

    .line 191
    if-ne p0, v3, :cond_c3

    .line 193
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_millis:I

    .line 195
    :goto_c2
    return p0

    .line 196
    :cond_c3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 198
    const-string p1, "no any time date"

    .line 200
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    throw p0
.end method

.method private static getWeekdayPatternResId(I)I
    .registers 2

    .line 1
    const/16 v0, 0x2000

    .line 3
    and-int/2addr p0, v0

    .line 4
    if-ne p0, v0, :cond_8

    .line 6
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_short:I

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_long:I

    .line 11
    :goto_a
    return p0
.end method
