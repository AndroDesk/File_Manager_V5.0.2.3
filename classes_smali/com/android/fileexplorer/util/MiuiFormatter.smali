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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .registers 7

    long-to-float p0, p0

    const/high16 p1, 0x44610000  # 900.0f

    cmpl-float v0, p0, p1

    const/high16 v1, 0x447a0000  # 1000.0f

    if-lez v0, :cond_e

    const v0, 0x7f110202

    div-float/2addr p0, v1

    goto :goto_11

    :cond_e
    const v0, 0x7f110047

    :goto_11
    cmpl-float v2, p0, p1

    if-lez v2, :cond_19

    const v0, 0x7f110219

    div-float/2addr p0, v1

    :cond_19
    cmpl-float v2, p0, p1

    if-lez v2, :cond_21

    const v0, 0x7f1101d1

    div-float/2addr p0, v1

    :cond_21
    cmpl-float v2, p0, p1

    if-lez v2, :cond_29

    const v0, 0x7f110413

    div-float/2addr p0, v1

    :cond_29
    cmpl-float p1, p0, p1

    if-lez p1, :cond_31

    const v0, 0x7f110352

    div-float/2addr p0, v1

    :cond_31
    const/high16 p1, 0x42c80000  # 100.0f

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    rem-int/lit8 v1, p1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4d

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "%.0f"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6e

    :cond_4d
    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_60

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "%.1f"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6e

    :cond_60
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "%.2f"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_6e
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f110179

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-static {v0}, La/a;->e(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCloudQuantityStringWithUnit(J)Ljava/lang/String;
    .registers 7

    long-to-float p0, p0

    const/high16 p1, 0x4e800000

    cmpl-float p1, p0, p1

    const-string v0, "%1$.2f"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x44800000  # 1024.0f

    if-lez p1, :cond_24

    div-float/2addr p0, v3

    div-float/2addr p0, v3

    div-float/2addr p0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {p1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f1101d1

    goto :goto_6a

    :cond_24
    const/high16 p1, 0x49800000  # 1048576.0f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_40

    div-float/2addr p0, v3

    div-float/2addr p0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {p1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f110219

    goto :goto_6a

    :cond_40
    cmpl-float p1, p0, v3

    if-lez p1, :cond_59

    div-float/2addr p0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {p1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f110202

    goto :goto_6a

    :cond_59
    const-string p1, ""

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    float-to-long v3, p0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f110047

    :goto_6a
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f110179

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {p1}, La/a;->e(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
