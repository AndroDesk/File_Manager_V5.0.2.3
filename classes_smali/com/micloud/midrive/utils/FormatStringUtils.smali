.class public Lcom/micloud/midrive/utils/FormatStringUtils;
.super Ljava/lang/Object;
.source "FormatStringUtils.java"


# static fields
.field private static final STRING_FORMAT:Ljava/lang/String; = "%1$.2f"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "FormatStringUtils class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static formatFileTime(J)Ljava/lang/String;
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
    const-string v1, "yyyy/MM/dd"

    .line 14
    invoke-direct {p0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 17
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;
    .registers 7

    .line 1
    long-to-float p0, p1

    .line 2
    const/high16 p1, 0x4e800000

    .line 4
    cmpl-float p1, p0, p1

    .line 6
    const-string p2, "%1$.2f"

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/high16 v2, 0x44800000  # 1024.0f

    .line 12
    if-lez p1, :cond_23

    .line 14
    div-float/2addr p0, v2

    .line 15
    div-float/2addr p0, v2

    .line 16
    div-float/2addr p0, v2

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 20
    move-result-object p1

    .line 21
    new-array v2, v1, [Ljava/lang/Object;

    .line 23
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    move-result-object p0

    .line 27
    aput-object p0, v2, v0

    .line 29
    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string p1, "GB"

    .line 35
    goto :goto_66

    .line 36
    :cond_23
    const/high16 p1, 0x49800000  # 1048576.0f

    .line 38
    cmpl-float p1, p0, p1

    .line 40
    if-lez p1, :cond_3e

    .line 42
    div-float/2addr p0, v2

    .line 43
    div-float/2addr p0, v2

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 47
    move-result-object p1

    .line 48
    new-array v2, v1, [Ljava/lang/Object;

    .line 50
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    move-result-object p0

    .line 54
    aput-object p0, v2, v0

    .line 56
    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    const-string p1, "MB"

    .line 62
    goto :goto_66

    .line 63
    :cond_3e
    cmpl-float p1, p0, v2

    .line 65
    if-lez p1, :cond_56

    .line 67
    div-float/2addr p0, v2

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 71
    move-result-object p1

    .line 72
    new-array v2, v1, [Ljava/lang/Object;

    .line 74
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    move-result-object p0

    .line 78
    aput-object p0, v2, v0

    .line 80
    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    const-string p1, "KB"

    .line 86
    goto :goto_66

    .line 87
    :cond_56
    const-string p1, ""

    .line 89
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-result-object p1

    .line 93
    float-to-long v2, p0

    .line 94
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    const-string p1, "B"

    .line 103
    :goto_66
    new-array p2, v1, [Ljava/lang/Object;

    .line 105
    aput-object p0, p2, v0

    .line 107
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    return-object p0
.end method

.method public static getSpeedStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;
    .registers 7

    .line 1
    long-to-float p0, p1

    .line 2
    const p1, 0x4ccccccd  # 1.07374184E8f

    .line 5
    cmpl-float p1, p0, p1

    .line 7
    const-string p2, "%1$.2f"

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/high16 v2, 0x44800000  # 1024.0f

    .line 13
    if-lez p1, :cond_24

    .line 15
    div-float/2addr p0, v2

    .line 16
    div-float/2addr p0, v2

    .line 17
    div-float/2addr p0, v2

    .line 18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 21
    move-result-object p1

    .line 22
    new-array v2, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    move-result-object p0

    .line 28
    aput-object p0, v2, v0

    .line 30
    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    const-string p1, "GB"

    .line 36
    goto :goto_68

    .line 37
    :cond_24
    const p1, 0x47cccccd

    .line 40
    cmpl-float p1, p0, p1

    .line 42
    if-lez p1, :cond_40

    .line 44
    div-float/2addr p0, v2

    .line 45
    div-float/2addr p0, v2

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 49
    move-result-object p1

    .line 50
    new-array v2, v1, [Ljava/lang/Object;

    .line 52
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    move-result-object p0

    .line 56
    aput-object p0, v2, v0

    .line 58
    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    const-string p1, "MB"

    .line 64
    goto :goto_68

    .line 65
    :cond_40
    cmpl-float p1, p0, v2

    .line 67
    if-lez p1, :cond_58

    .line 69
    div-float/2addr p0, v2

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 73
    move-result-object p1

    .line 74
    new-array v2, v1, [Ljava/lang/Object;

    .line 76
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    move-result-object p0

    .line 80
    aput-object p0, v2, v0

    .line 82
    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    const-string p1, "KB"

    .line 88
    goto :goto_68

    .line 89
    :cond_58
    const-string p1, ""

    .line 91
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    move-result-object p1

    .line 95
    float-to-long v2, p0

    .line 96
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    const-string p1, "B"

    .line 105
    :goto_68
    new-array p2, v1, [Ljava/lang/Object;

    .line 107
    aput-object p0, p2, v0

    .line 109
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method
