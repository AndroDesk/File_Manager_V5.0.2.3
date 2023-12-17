.class public Lcom/android/fileexplorer/model/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static DateLocal:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_HOUR_MINUTE_12:Ljava/lang/String; = "ahh:mm"

.field public static final PATTERN_HOUR_MINUTE_24:Ljava/lang/String; = "HH:mm"

.field public static final PATTERN_MONTH_DAY:Ljava/lang/String; = "M/dd"

.field public static final PATTERN_MONTH_DAY_HH_MM_12:Ljava/lang/String; = "MM-dd ahh:mm"

.field public static final PATTERN_MONTH_DAY_HH_MM_24:Ljava/lang/String; = "MM-dd HH:mm"

.field public static final PATTERN_YEAR_MONTH_DAY:Ljava/lang/String; = "yyyy/M/dd"

.field public static final PATTERN_YEAR_MONTH_DAY_HH_MM_12:Ljava/lang/String; = "yyyy-MM-dd ahh:mm"

.field public static final PATTERN_YEAR_MONTH_DAY_HH_MM_24:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static is24HourMode:Ljava/lang/Boolean;

.field private static threadLocalGroup:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static threadLocalLong:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static threadLocalShort:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/model/DateUtils;->DateLocal:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v0, Lcom/android/fileexplorer/model/DateUtils$1;

    .line 10
    invoke-direct {v0}, Lcom/android/fileexplorer/model/DateUtils$1;-><init>()V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/model/DateUtils;->threadLocalGroup:Ljava/lang/ThreadLocal;

    .line 15
    new-instance v0, Lcom/android/fileexplorer/model/DateUtils$2;

    .line 17
    invoke-direct {v0}, Lcom/android/fileexplorer/model/DateUtils$2;-><init>()V

    .line 20
    sput-object v0, Lcom/android/fileexplorer/model/DateUtils;->threadLocalLong:Ljava/lang/ThreadLocal;

    .line 22
    new-instance v0, Lcom/android/fileexplorer/model/DateUtils$3;

    .line 24
    invoke-direct {v0}, Lcom/android/fileexplorer/model/DateUtils$3;-><init>()V

    .line 27
    sput-object v0, Lcom/android/fileexplorer/model/DateUtils;->threadLocalShort:Ljava/lang/ThreadLocal;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(J)Ljava/lang/String;
    .registers 4

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
    new-instance v1, Ljava/util/Date;

    .line 12
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 15
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static formatDateShort(J)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, p1, v1}, Lcom/android/fileexplorer/model/DateUtils;->getPattern(ZJZ)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/fileexplorer/model/DateUtils;->threadLocalLong:Ljava/lang/ThreadLocal;

    .line 9
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/DateUtils;->getFormat(Ljava/lang/ThreadLocal;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static formatDateString(J)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/DateUtils;->formatDateShort(J)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static formatFileTime(JZ)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/android/fileexplorer/model/DateUtils;->getPattern(ZJZ)Ljava/lang/String;

    .line 5
    move-result-object p2

    .line 6
    sget-object v0, Lcom/android/fileexplorer/model/DateUtils;->threadLocalShort:Ljava/lang/ThreadLocal;

    .line 8
    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/DateUtils;->getFormat(Ljava/lang/ThreadLocal;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 11
    move-result-object p2

    .line 12
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p2, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static formatGroup(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/DateUtils;->threadLocalGroup:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/DateFormat;

    .line 9
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static getFormat(Ljava/lang/ThreadLocal;Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/text/SimpleDateFormat;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/Map;

    .line 7
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_18

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 22
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_18
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 31
    return-object p0
.end method

.method private static getPattern(ZJZ)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/DateUtils;->is24HourMode:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_16

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/fileexplorer/model/DateUtils;->is24HourMode:Ljava/lang/Boolean;

    .line 23
    :cond_16
    const-string v0, "yyyy/M/dd"

    .line 25
    if-eqz p0, :cond_3d

    .line 27
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/DateUtils;->isCurrentYear(J)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2f

    .line 33
    sget-object p0, Lcom/android/fileexplorer/model/DateUtils;->is24HourMode:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2b

    .line 41
    const-string p0, "MM-dd HH:mm"

    .line 43
    goto :goto_2d

    .line 44
    :cond_2b
    const-string p0, "MM-dd ahh:mm"

    .line 46
    :goto_2d
    move-object v0, p0

    .line 47
    goto :goto_5d

    .line 48
    :cond_2f
    sget-object p0, Lcom/android/fileexplorer/model/DateUtils;->is24HourMode:Ljava/lang/Boolean;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3a

    .line 56
    const-string p0, "yyyy-MM-dd HH:mm"

    .line 58
    goto :goto_2d

    .line 59
    :cond_3a
    const-string p0, "yyyy-MM-dd ahh:mm"

    .line 61
    goto :goto_2d

    .line 62
    :cond_3d
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/DateUtils;->isCurrentYear(J)Z

    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_5d

    .line 68
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_57

    .line 74
    sget-object p0, Lcom/android/fileexplorer/model/DateUtils;->is24HourMode:Ljava/lang/Boolean;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_54

    .line 82
    const-string p0, "HH:mm"

    .line 84
    goto :goto_2d

    .line 85
    :cond_54
    const-string p0, "ahh:mm"

    .line 87
    goto :goto_2d

    .line 88
    :cond_57
    if-eqz p3, :cond_5a

    .line 90
    goto :goto_5d

    .line 91
    :cond_5a
    const-string p0, "M/dd"

    .line 93
    goto :goto_2d

    .line 94
    :cond_5d
    :goto_5d
    return-object v0
.end method

.method private static isCurrentYear(J)Z
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    const/4 p0, 0x1

    .line 13
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 20
    move-result v0

    .line 21
    if-ne p1, v0, :cond_17

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 p0, 0x0

    .line 25
    :goto_18
    return p0
.end method
