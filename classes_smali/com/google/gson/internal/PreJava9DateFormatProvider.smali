.class public Lcom/google/gson/internal/PreJava9DateFormatProvider;
.super Ljava/lang/Object;
.source "PreJava9DateFormatProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDateFormatPattern(I)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p0, :cond_20

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1d

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1a

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p0, v0, :cond_e

    .line 12
    const-string p0, "M/d/yy"

    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v1, "Unknown DateFormat style: "

    .line 19
    invoke-static {v1, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0

    .line 27
    :cond_1a
    const-string p0, "MMM d, y"

    .line 29
    return-object p0

    .line 30
    :cond_1d
    const-string p0, "MMMM d, y"

    .line 32
    return-object p0

    .line 33
    :cond_20
    const-string p0, "EEEE, MMMM d, y"

    .line 35
    return-object p0
.end method

.method private static getDatePartOfDateTimePattern(I)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p0, :cond_20

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1d

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1a

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p0, v0, :cond_e

    .line 12
    const-string p0, "M/d/yy"

    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v1, "Unknown DateFormat style: "

    .line 19
    invoke-static {v1, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0

    .line 27
    :cond_1a
    const-string p0, "MMM d, yyyy"

    .line 29
    return-object p0

    .line 30
    :cond_1d
    const-string p0, "MMMM d, yyyy"

    .line 32
    return-object p0

    .line 33
    :cond_20
    const-string p0, "EEEE, MMMM d, yyyy"

    .line 35
    return-object p0
.end method

.method private static getTimePartOfDateTimePattern(I)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p0, :cond_1d

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1d

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1a

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p0, v0, :cond_e

    .line 12
    const-string p0, "h:mm a"

    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v1, "Unknown DateFormat style: "

    .line 19
    invoke-static {v1, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0

    .line 27
    :cond_1a
    const-string p0, "h:mm:ss a"

    .line 29
    return-object p0

    .line 30
    :cond_1d
    const-string p0, "h:mm:ss a z"

    .line 32
    return-object p0
.end method

.method public static getUSDateFormat(I)Ljava/text/DateFormat;
    .registers 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    invoke-static {p0}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getDateFormatPattern(I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 9
    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    return-object v0
.end method

.method public static getUSDateTimeFormat(II)Ljava/text/DateFormat;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getDatePartOfDateTimePattern(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, " "

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {p1}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getTimePartOfDateTimePattern(I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 31
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 33
    invoke-direct {p1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 36
    return-object p1
.end method
