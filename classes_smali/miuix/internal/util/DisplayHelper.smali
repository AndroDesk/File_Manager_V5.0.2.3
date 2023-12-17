.class public final Lmiuix/internal/util/DisplayHelper;
.super Ljava/lang/Object;
.source "DisplayHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayHelper"


# instance fields
.field private mDensity:F

.field private mDensityDpi:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHeightDps:I

.field private mHeightPixels:I

.field private mWidthDps:I

.field private mWidthPixels:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0, p1}, Lmiuix/internal/util/DisplayHelper;->getAndroidScreenProperty(Landroid/content/Context;)V

    .line 7
    return-void
.end method

.method private getAndroidScreenProperty(Landroid/content/Context;)V
    .registers 5

    .line 1
    const-string v0, "window"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/WindowManager;

    .line 9
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 11
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/internal/util/DisplayHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 16
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lmiuix/internal/util/DisplayHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 25
    iget-object p1, p0, Lmiuix/internal/util/DisplayHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 27
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 29
    iput v0, p0, Lmiuix/internal/util/DisplayHelper;->mWidthPixels:I

    .line 31
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 33
    iput v1, p0, Lmiuix/internal/util/DisplayHelper;->mHeightPixels:I

    .line 35
    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    .line 37
    iput v2, p0, Lmiuix/internal/util/DisplayHelper;->mDensity:F

    .line 39
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 41
    iput p1, p0, Lmiuix/internal/util/DisplayHelper;->mDensityDpi:I

    .line 43
    int-to-float p1, v0

    .line 44
    div-float/2addr p1, v2

    .line 45
    float-to-int p1, p1

    .line 46
    iput p1, p0, Lmiuix/internal/util/DisplayHelper;->mWidthDps:I

    .line 48
    int-to-float p1, v1

    .line 49
    div-float/2addr p1, v2

    .line 50
    float-to-int p1, p1

    .line 51
    iput p1, p0, Lmiuix/internal/util/DisplayHelper;->mHeightDps:I

    .line 53
    return-void
.end method


# virtual methods
.method public getDensity()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/util/DisplayHelper;->mDensity:F

    .line 3
    return v0
.end method

.method public getDensityDpi()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/util/DisplayHelper;->mDensityDpi:I

    .line 3
    return v0
.end method

.method public getDm()Landroid/util/DisplayMetrics;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/DisplayHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 3
    return-object v0
.end method

.method public getHeightDps()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/util/DisplayHelper;->mHeightDps:I

    .line 3
    return v0
.end method

.method public getHeightPixels()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/util/DisplayHelper;->mHeightPixels:I

    .line 3
    return v0
.end method

.method public getWidthDps()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/util/DisplayHelper;->mWidthDps:I

    .line 3
    return v0
.end method

.method public getWidthPixels()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/util/DisplayHelper;->mWidthPixels:I

    .line 3
    return v0
.end method

.method public info()V
    .registers 4

    .line 1
    const-string v0, "屏幕宽度（像素）："

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lmiuix/internal/util/DisplayHelper;->mWidthPixels:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "DisplayHelper"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v2, "屏幕高度（像素）："

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v2, p0, Lmiuix/internal/util/DisplayHelper;->mHeightPixels:I

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v2, "屏幕密度："

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v2, p0, Lmiuix/internal/util/DisplayHelper;->mDensity:F

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v2, "屏幕密度（dpi）："

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v2, p0, Lmiuix/internal/util/DisplayHelper;->mDensityDpi:I

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const-string v2, "屏幕宽度（dp）："

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v2, p0, Lmiuix/internal/util/DisplayHelper;->mWidthDps:I

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string v2, "屏幕高度（dp）："

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v2, p0, Lmiuix/internal/util/DisplayHelper;->mHeightDps:I

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method
