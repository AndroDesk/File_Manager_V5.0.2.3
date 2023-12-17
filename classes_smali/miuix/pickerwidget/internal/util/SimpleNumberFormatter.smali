.class public Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;
.super Ljava/lang/Object;
.source "SimpleNumberFormatter.java"


# static fields
.field private static sLocale:Ljava/util/Locale;

.field private static sZeroDigit:C


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    .line 7
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    .line 9
    sget-object v1, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    .line 11
    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 14
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 17
    move-result v0

    .line 18
    sput-char v0, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sZeroDigit:C

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertInt(II)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/StringBuilder;

    .line 11
    if-gez p1, :cond_14

    .line 13
    neg-int p1, p1

    .line 14
    add-int/lit8 p0, p0, -0x1

    .line 16
    const/16 v1, 0x2d

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    :cond_14
    const/16 v1, 0x2710

    .line 23
    const/16 v2, 0x30

    .line 25
    if-lt p1, v1, :cond_2e

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    move-result v1

    .line 35
    :goto_22
    if-ge v1, p0, :cond_2a

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_22

    .line 43
    :cond_2a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    goto :goto_4c

    .line 47
    :cond_2e
    const/16 v1, 0x3e8

    .line 49
    if-lt p1, v1, :cond_34

    .line 51
    const/4 v1, 0x4

    .line 52
    goto :goto_41

    .line 53
    :cond_34
    const/16 v1, 0x64

    .line 55
    if-lt p1, v1, :cond_3a

    .line 57
    const/4 v1, 0x3

    .line 58
    goto :goto_41

    .line 59
    :cond_3a
    const/16 v1, 0xa

    .line 61
    if-lt p1, v1, :cond_40

    .line 63
    const/4 v1, 0x2

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    const/4 v1, 0x1

    .line 66
    :goto_41
    if-ge v1, p0, :cond_49

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_41

    .line 74
    :cond_49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    :goto_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p1, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 88
    return-object p0
.end method

.method public static format(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    .line 1
    invoke-static {v0, p0}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(II)Ljava/lang/String;
    .registers 3

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result v0

    .line 3
    invoke-static {p0, p1}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->convertInt(II)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x30

    if-eq v0, p1, :cond_14

    .line 4
    invoke-static {v0, p0}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->localizeDigits(CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_14
    return-object p0
.end method

.method private static getZeroDigit(Ljava/util/Locale;)C
    .registers 2

    .line 1
    if-eqz p0, :cond_1a

    .line 3
    sget-object v0, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_17

    .line 11
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    .line 13
    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 16
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 19
    move-result v0

    .line 20
    sput-char v0, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sZeroDigit:C

    .line 22
    sput-object p0, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    .line 24
    :cond_17
    sget-char p0, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sZeroDigit:C

    .line 26
    return p0

    .line 27
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    .line 29
    const-string v0, "locale == null"

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
.end method

.method private static localizeDigits(CLjava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x30

    .line 7
    sub-int/2addr p0, v1

    .line 8
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/StringBuilder;

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_12
    if-ge v3, v0, :cond_26

    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v4

    .line 25
    if-lt v4, v1, :cond_20

    .line 27
    const/16 v5, 0x39

    .line 29
    if-gt v4, v5, :cond_20

    .line 31
    add-int/2addr v4, p0

    .line 32
    int-to-char v4, v4

    .line 33
    :cond_20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_12

    .line 39
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1, v2}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 50
    return-object p0
.end method
