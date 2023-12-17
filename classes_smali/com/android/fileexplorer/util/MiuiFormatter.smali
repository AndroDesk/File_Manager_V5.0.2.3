.class public final Lcom/android/fileexplorer/util/MiuiFormatter;
.super Ljava/lang/Object;
.source "MiuiFormatter.java"


# static fields
.field public static final GB:J = 0x3b9aca00L

.field private static final KB:J = 0x3e8L

.field private static final MB:J = 0xf4240L

.field private static final STRING_FORMAT:Ljava/lang/String; = "%1$.2f"

.field private static final UNIT:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .registers 7

    .line 1
    long-to-float p0, p0

    .line 2
    const/high16 p1, 0x44610000  # 900.0f

    .line 4
    cmpl-float v0, p0, p1

    .line 6
    const/high16 v1, 0x447a0000  # 1000.0f

    .line 8
    if-lez v0, :cond_e

    .line 10
    const v0, 0x7f110202

    .line 13
    div-float/2addr p0, v1

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    const v0, 0x7f110047

    .line 18
    :goto_11
    cmpl-float v2, p0, p1

    .line 20
    if-lez v2, :cond_19

    .line 22
    const v0, 0x7f110219

    .line 25
    div-float/2addr p0, v1

    .line 26
    :cond_19
    cmpl-float v2, p0, p1

    .line 28
    if-lez v2, :cond_21

    .line 30
    const v0, 0x7f1101d1

    .line 33
    div-float/2addr p0, v1

    .line 34
    :cond_21
    cmpl-float v2, p0, p1

    .line 36
    if-lez v2, :cond_29

    .line 38
    const v0, 0x7f110413

    .line 41
    div-float/2addr p0, v1

    .line 42
    :cond_29
    cmpl-float p1, p0, p1

    .line 44
    if-lez p1, :cond_31

    .line 46
    const v0, 0x7f110352

    .line 49
    div-float/2addr p0, v1

    .line 50
    :cond_31
    const/high16 p1, 0x42c80000  # 100.0f

    .line 52
    mul-float/2addr p1, p0

    .line 53
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 56
    move-result p1

    .line 57
    rem-int/lit8 v1, p1, 0x64

    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v3, 0x1

    .line 61
    if-nez v1, :cond_4d

    .line 63
    new-array p1, v3, [Ljava/lang/Object;

    .line 65
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    move-result-object p0

    .line 69
    aput-object p0, p1, v2

    .line 71
    const-string p0, "%.0f"

    .line 73
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    goto :goto_6e

    .line 78
    :cond_4d
    rem-int/lit8 p1, p1, 0xa

    .line 80
    if-nez p1, :cond_60

    .line 82
    new-array p1, v3, [Ljava/lang/Object;

    .line 84
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    move-result-object p0

    .line 88
    aput-object p0, p1, v2

    .line 90
    const-string p0, "%.1f"

    .line 92
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    goto :goto_6e

    .line 97
    :cond_60
    new-array p1, v3, [Ljava/lang/Object;

    .line 99
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 102
    move-result-object p0

    .line 103
    aput-object p0, p1, v2

    .line 105
    const-string p0, "%.2f"

    .line 107
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    :goto_6e
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    move-result-object p1

    .line 123
    const v1, 0x7f110179

    .line 126
    const/4 v4, 0x2

    .line 127
    new-array v4, v4, [Ljava/lang/Object;

    .line 129
    aput-object p0, v4, v2

    .line 131
    invoke-static {v0}, La/a;->e(I)Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    aput-object p0, v4, v3

    .line 137
    invoke-virtual {p1, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    return-object p0
.end method

.method public static getCloudQuantityStringWithUnit(J)Ljava/lang/String;
    .registers 7

    .line 1
    long-to-float p0, p0

    .line 2
    const/high16 p1, 0x4e800000

    .line 4
    cmpl-float p1, p0, p1

    .line 6
    const-string v0, "%1$.2f"

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/high16 v3, 0x44800000  # 1024.0f

    .line 12
    if-lez p1, :cond_24

    .line 14
    div-float/2addr p0, v3

    .line 15
    div-float/2addr p0, v3

    .line 16
    div-float/2addr p0, v3

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 20
    move-result-object p1

    .line 21
    new-array v3, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    move-result-object p0

    .line 27
    aput-object p0, v3, v1

    .line 29
    invoke-static {p1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const p1, 0x7f1101d1

    .line 36
    goto :goto_6a

    .line 37
    :cond_24
    const/high16 p1, 0x49800000  # 1048576.0f

    .line 39
    cmpl-float p1, p0, p1

    .line 41
    if-lez p1, :cond_40

    .line 43
    div-float/2addr p0, v3

    .line 44
    div-float/2addr p0, v3

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 48
    move-result-object p1

    .line 49
    new-array v3, v2, [Ljava/lang/Object;

    .line 51
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    move-result-object p0

    .line 55
    aput-object p0, v3, v1

    .line 57
    invoke-static {p1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    const p1, 0x7f110219

    .line 64
    goto :goto_6a

    .line 65
    :cond_40
    cmpl-float p1, p0, v3

    .line 67
    if-lez p1, :cond_59

    .line 69
    div-float/2addr p0, v3

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 73
    move-result-object p1

    .line 74
    new-array v3, v2, [Ljava/lang/Object;

    .line 76
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    move-result-object p0

    .line 80
    aput-object p0, v3, v1

    .line 82
    invoke-static {p1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    const p1, 0x7f110202

    .line 89
    goto :goto_6a

    .line 90
    :cond_59
    const-string p1, ""

    .line 92
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object p1

    .line 96
    float-to-long v3, p0

    .line 97
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    const p1, 0x7f110047

    .line 107
    :goto_6a
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    move-result-object v0

    .line 119
    const v3, 0x7f110179

    .line 122
    const/4 v4, 0x2

    .line 123
    new-array v4, v4, [Ljava/lang/Object;

    .line 125
    aput-object p0, v4, v1

    .line 127
    invoke-static {p1}, La/a;->e(I)Ljava/lang/String;

    .line 130
    move-result-object p0

    .line 131
    aput-object p0, v4, v2

    .line 133
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    return-object p0
.end method
