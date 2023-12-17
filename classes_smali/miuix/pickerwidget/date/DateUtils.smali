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

    new-instance v0, Lmiuix/pickerwidget/date/DateUtils$1;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/DateUtils$1;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 11

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

    invoke-static/range {v1 .. v6}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatDateTime(Landroid/content/Context;JILjava/util/TimeZone;)Ljava/lang/String;
    .registers 12

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

    invoke-static/range {v1 .. v6}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x20

    goto :goto_13

    :cond_11
    const/16 v0, 0x10

    :goto_13
    or-int/2addr p4, v0

    :cond_14
    invoke-static {p4}, Lmiuix/pickerwidget/date/DateUtils;->getFormatResId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    sget-object v2, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v2}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, p5}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    const/4 p2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    :goto_39
    if-ge p2, p3, :cond_75

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p5

    const/16 v3, 0x44

    if-eq p5, v3, :cond_67

    const/16 v3, 0x54

    if-eq p5, v3, :cond_5b

    const/16 v3, 0x57

    if-eq p5, v3, :cond_4f

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_4f
    invoke-static {p4}, Lmiuix/pickerwidget/date/DateUtils;->getWeekdayPatternResId(I)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_5b
    invoke-static {v2, p4}, Lmiuix/pickerwidget/date/DateUtils;->getTimePatternResId(Lmiuix/pickerwidget/date/Calendar;I)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_67
    invoke-static {p4}, Lmiuix/pickerwidget/date/DateUtils;->getDatePatternResId(I)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_72
    add-int/lit8 p2, p2, 0x1

    goto :goto_39

    :cond_75
    invoke-virtual {v2, p0, p1, v1}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p0

    invoke-interface {p0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    sget-object p0, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {p0, v2}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static formatRelativeTime(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 11

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

    invoke-static/range {v1 .. v6}, Lmiuix/pickerwidget/date/DateUtils;->formatRelativeTime(Landroid/content/Context;Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatRelativeTime(Landroid/content/Context;JZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 12

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

    invoke-static/range {v1 .. v6}, Lmiuix/pickerwidget/date/DateUtils;->formatRelativeTime(Landroid/content/Context;Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    invoke-static/range {v0 .. v5}, Lmiuix/pickerwidget/date/DateUtils;->formatRelativeTime(Landroid/content/Context;Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static formatRelativeTime(Landroid/content/Context;Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .registers 22

    move-object/from16 v6, p1

    move-wide/from16 v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-ltz v4, :cond_14

    move v4, v7

    goto :goto_15

    :cond_14
    move v4, v5

    :goto_15
    sub-long v9, v0, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0xea60

    div-long/2addr v9, v11

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

    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_a_hour_ago:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v5

    invoke-virtual {v11, v0, v7, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_40
    cmp-long v2, v9, v2

    if-nez v2, :cond_4c

    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_half_hour_ago:I

    long-to-int v1, v9

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_4c
    cmp-long v0, v9, v0

    if-nez v0, :cond_58

    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_less_than_one_minute_ago:I

    long-to-int v1, v9

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_58
    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_num_minutes_ago:I

    long-to-int v1, v9

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_60
    if-nez v13, :cond_6d

    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_a_hour:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v5

    invoke-virtual {v11, v0, v7, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_6d
    cmp-long v2, v9, v2

    if-nez v2, :cond_79

    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_half_hour:I

    long-to-int v1, v9

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_79
    cmp-long v0, v9, v0

    if-nez v0, :cond_85

    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_less_than_one_minute:I

    long-to-int v1, v9

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_85
    sget v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_num_minutes:I

    long-to-int v1, v9

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    :goto_8c
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_165

    :cond_9d
    sget-object v8, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v8}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiuix/pickerwidget/date/Calendar;

    move-object/from16 v10, p5

    invoke-virtual {v9, v10}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v9, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v9, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {v9, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v13

    const/16 v14, 0xe

    invoke-virtual {v9, v14}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v9, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v9, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    if-ne v0, v5, :cond_c8

    move v0, v7

    goto :goto_c9

    :cond_c8
    const/4 v0, 0x0

    :goto_c9
    if-eqz v0, :cond_e0

    invoke-virtual {v9, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    if-ne v13, v5, :cond_e0

    const/16 v4, 0x300c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto/16 :goto_162

    :cond_e0
    if-eqz v0, :cond_110

    invoke-virtual {v9, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    sub-int v5, v13, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v7, 0x2

    if-ge v5, v7, :cond_110

    if-eqz v4, :cond_f4

    sget v0, Lmiuix/pickerwidget/R$string;->yesterday:I

    goto :goto_f6

    :cond_f4
    sget v0, Lmiuix/pickerwidget/R$string;->tomorrow:I

    :goto_f6
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x300c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto :goto_162

    :cond_110
    if-eqz v0, :cond_137

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

    invoke-static/range {v0 .. v5}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    :goto_162
    invoke-interface {v8, v9}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    :goto_165
    return-object v6
.end method

.method private static getDatePatternResId(I)I
    .registers 7

    const v0, 0x8000

    and-int v1, p0, v0

    const-string v2, "no any time date"

    const/16 v3, 0x200

    const/16 v4, 0x100

    const/16 v5, 0x80

    if-ne v1, v0, :cond_42

    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_26

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_22

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_1e

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_year_month_day:I

    goto/16 :goto_9b

    :cond_1e
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_year_month:I

    goto/16 :goto_9b

    :cond_22
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_year:I

    goto/16 :goto_9b

    :cond_26
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_35

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_31

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_month_day:I

    goto/16 :goto_9b

    :cond_31
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_month:I

    goto/16 :goto_9b

    :cond_35
    and-int/2addr p0, v5

    if-ne p0, v5, :cond_3c

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_day:I

    goto/16 :goto_9b

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    and-int/lit16 v0, p0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_75

    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_5c

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_59

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_56

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_year_month_day:I

    goto :goto_9b

    :cond_56
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_year_month:I

    goto :goto_9b

    :cond_59
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_year:I

    goto :goto_9b

    :cond_5c
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_69

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_66

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_month_day:I

    goto :goto_9b

    :cond_66
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_month:I

    goto :goto_9b

    :cond_69
    and-int/2addr p0, v5

    if-ne p0, v5, :cond_6f

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_day:I

    goto :goto_9b

    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_89

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_86

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_83

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_year_month_day:I

    goto :goto_9b

    :cond_83
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_year_month:I

    goto :goto_9b

    :cond_86
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_year:I

    goto :goto_9b

    :cond_89
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_96

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_93

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_month_day:I

    goto :goto_9b

    :cond_93
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_month:I

    goto :goto_9b

    :cond_96
    and-int/2addr p0, v5

    if-ne p0, v5, :cond_9c

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_day:I

    :goto_9b
    return p0

    :cond_9c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getFormatResId(I)I
    .registers 4

    and-int/lit16 v0, p0, 0x400

    const/16 v1, 0x400

    const/16 v2, 0x800

    if-ne v0, v1, :cond_38

    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_22

    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_19

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_16

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date_time_timezone:I

    goto :goto_67

    :cond_16
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date_time:I

    goto :goto_67

    :cond_19
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_1f

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date_timezone:I

    goto :goto_67

    :cond_1f
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date:I

    goto :goto_67

    :cond_22
    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_2f

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_2c

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_time_timezone:I

    goto :goto_67

    :cond_2c
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_time:I

    goto :goto_67

    :cond_2f
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_35

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_timezone:I

    goto :goto_67

    :cond_35
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday:I

    goto :goto_67

    :cond_38
    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_52

    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_49

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_46

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_time_timezone:I

    goto :goto_67

    :cond_46
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_time:I

    goto :goto_67

    :cond_49
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_4f

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_timezone:I

    goto :goto_67

    :cond_4f
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date:I

    goto :goto_67

    :cond_52
    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_5f

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_5c

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_timezone:I

    goto :goto_67

    :cond_5c
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time:I

    goto :goto_67

    :cond_5f
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_65

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_timezone:I

    goto :goto_67

    :cond_65
    sget p0, Lmiuix/pickerwidget/R$string;->empty:I

    :goto_67
    return p0
.end method

.method private static getTimePatternResId(Lmiuix/pickerwidget/date/Calendar;I)I
    .registers 6

    and-int/lit16 v0, p1, 0x4000

    const/16 v1, 0x4000

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3a

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_14

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_3a

    :cond_14
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_3a

    and-int/lit8 p1, p1, -0x2

    and-int/lit8 v0, p1, 0x2

    if-ne v0, v2, :cond_26

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_3a

    :cond_26
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_3a

    and-int/lit8 p1, p1, -0x3

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_3a

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_3a

    and-int/lit8 p1, p1, -0x5

    :cond_3a
    and-int/lit8 p0, p1, 0x8

    const/16 v0, 0x8

    const/4 v1, 0x4

    if-ne p0, v0, :cond_99

    and-int/lit8 p0, p1, 0x10

    const/16 v0, 0x10

    if-ne p0, v0, :cond_81

    and-int/lit8 p0, p1, 0x40

    const/16 v0, 0x40

    if-ne p0, v0, :cond_69

    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_65

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_61

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_5d

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second_millis:I

    goto/16 :goto_c2

    :cond_5d
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second:I

    goto/16 :goto_c2

    :cond_61
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute:I

    goto/16 :goto_c2

    :cond_65
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour:I

    goto/16 :goto_c2

    :cond_69
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_7e

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_7b

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_78

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second_millis_pm:I

    goto :goto_c2

    :cond_78
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second_pm:I

    goto :goto_c2

    :cond_7b
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_pm:I

    goto :goto_c2

    :cond_7e
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_pm:I

    goto :goto_c2

    :cond_81
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_96

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_93

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_90

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour_minute_second_millis:I

    goto :goto_c2

    :cond_90
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour_minute_second:I

    goto :goto_c2

    :cond_93
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour_minute:I

    goto :goto_c2

    :cond_96
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour:I

    goto :goto_c2

    :cond_99
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_ae

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_ab

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_a8

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_minute_second_millis:I

    goto :goto_c2

    :cond_a8
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_minute_second:I

    goto :goto_c2

    :cond_ab
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_minute:I

    goto :goto_c2

    :cond_ae
    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_bc

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_b9

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_second_millis:I

    goto :goto_c2

    :cond_b9
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_second:I

    goto :goto_c2

    :cond_bc
    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_c3

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_millis:I

    :goto_c2
    return p0

    :cond_c3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no any time date"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getWeekdayPatternResId(I)I
    .registers 2

    const/16 v0, 0x2000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_short:I

    goto :goto_a

    :cond_8
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_long:I

    :goto_a
    return p0
.end method
