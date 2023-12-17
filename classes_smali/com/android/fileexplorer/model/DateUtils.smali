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

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/DateUtils;->DateLocal:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/android/fileexplorer/model/DateUtils$1;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/DateUtils$1;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/DateUtils;->threadLocalGroup:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/android/fileexplorer/model/DateUtils$2;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/DateUtils$2;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/DateUtils;->threadLocalLong:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/android/fileexplorer/model/DateUtils$3;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/DateUtils$3;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/DateUtils;->threadLocalShort:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(J)Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateShort(J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/fileexplorer/model/DateUtils;->getPattern(ZJZ)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/model/DateUtils;->threadLocalLong:Ljava/lang/ThreadLocal;

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/DateUtils;->getFormat(Ljava/lang/ThreadLocal;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateString(J)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/DateUtils;->formatDateShort(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFileTime(JZ)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/android/fileexplorer/model/DateUtils;->getPattern(ZJZ)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/fileexplorer/model/DateUtils;->threadLocalShort:Ljava/lang/ThreadLocal;

    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/DateUtils;->getFormat(Ljava/lang/ThreadLocal;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatGroup(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/model/DateUtils;->threadLocalGroup:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

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

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static getPattern(ZJZ)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/model/DateUtils;->is24HourMode:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/model/DateUtils;->is24HourMode:Ljava/lang/Boolean;

    :cond_16
    const-string v0, "yyyy/M/dd"

    if-eqz p0, :cond_3d

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/DateUtils;->isCurrentYear(J)Z

    move-result p0

    if-eqz p0, :cond_2f

    sget-object p0, Lcom/android/fileexplorer/model/DateUtils;->is24HourMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2b

    const-string p0, "MM-dd HH:mm"

    goto :goto_2d

    :cond_2b
    const-string p0, "MM-dd ahh:mm"

    :goto_2d
    move-object v0, p0

    goto :goto_5d

    :cond_2f
    sget-object p0, Lcom/android/fileexplorer/model/DateUtils;->is24HourMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3a

    const-string p0, "yyyy-MM-dd HH:mm"

    goto :goto_2d

    :cond_3a
    const-string p0, "yyyy-MM-dd ahh:mm"

    goto :goto_2d

    :cond_3d
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/DateUtils;->isCurrentYear(J)Z

    move-result p0

    if-eqz p0, :cond_5d

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p0

    if-eqz p0, :cond_57

    sget-object p0, Lcom/android/fileexplorer/model/DateUtils;->is24HourMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_54

    const-string p0, "HH:mm"

    goto :goto_2d

    :cond_54
    const-string p0, "ahh:mm"

    goto :goto_2d

    :cond_57
    if-eqz p3, :cond_5a

    goto :goto_5d

    :cond_5a
    const-string p0, "M/dd"

    goto :goto_2d

    :cond_5d
    :goto_5d
    return-object v0
.end method

.method private static isCurrentYear(J)Z
    .registers 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method
