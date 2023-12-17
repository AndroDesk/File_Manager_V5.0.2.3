.class public final Lcom/google/android/material/slider/BasicLabelFormatter;
.super Ljava/lang/Object;
.source "BasicLabelFormatter.java"

# interfaces
.implements Lcom/google/android/material/slider/LabelFormatter;


# static fields
.field private static final BILLION:I = 0x3b9aca00

.field private static final MILLION:I = 0xf4240

.field private static final THOUSAND:I = 0x3e8

.field private static final TRILLION:J = 0xe8d4a51000L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .registers 6

    .line 1
    const v0, 0x5368d4a5  # 1.0E12f

    .line 4
    cmpl-float v1, p1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ltz v1, :cond_1b

    .line 10
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    div-float/2addr p1, v0

    .line 15
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    move-result-object p1

    .line 19
    aput-object p1, v3, v2

    .line 21
    const-string p1, "%.1fT"

    .line 23
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1b
    const v0, 0x4e6e6b28  # 1.0E9f

    .line 31
    cmpl-float v1, p1, v0

    .line 33
    if-ltz v1, :cond_34

    .line 35
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 37
    new-array v3, v3, [Ljava/lang/Object;

    .line 39
    div-float/2addr p1, v0

    .line 40
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    move-result-object p1

    .line 44
    aput-object p1, v3, v2

    .line 46
    const-string p1, "%.1fB"

    .line 48
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_34
    const v0, 0x49742400  # 1000000.0f

    .line 56
    cmpl-float v1, p1, v0

    .line 58
    if-ltz v1, :cond_4d

    .line 60
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 62
    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    div-float/2addr p1, v0

    .line 65
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    move-result-object p1

    .line 69
    aput-object p1, v3, v2

    .line 71
    const-string p1, "%.1fM"

    .line 73
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :cond_4d
    const/high16 v0, 0x447a0000  # 1000.0f

    .line 80
    cmpl-float v1, p1, v0

    .line 82
    if-ltz v1, :cond_65

    .line 84
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 86
    new-array v3, v3, [Ljava/lang/Object;

    .line 88
    div-float/2addr p1, v0

    .line 89
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    move-result-object p1

    .line 93
    aput-object p1, v3, v2

    .line 95
    const-string p1, "%.1fK"

    .line 97
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_65
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 104
    new-array v1, v3, [Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    move-result-object p1

    .line 110
    aput-object p1, v1, v2

    .line 112
    const-string p1, "%.0f"

    .line 114
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    return-object p1
.end method
