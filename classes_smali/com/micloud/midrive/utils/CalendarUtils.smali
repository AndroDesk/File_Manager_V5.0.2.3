.class public Lcom/micloud/midrive/utils/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateGroupId(J)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "yyyyMMdd"

    .line 9
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    new-instance v1, Ljava/util/Date;

    .line 14
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 17
    invoke-virtual {v1, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 20
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
