.class public Lmiuix/view/DisplayConfig;
.super Ljava/lang/Object;
.source "DisplayConfig.java"


# instance fields
.field public defaultBitmapDensity:I

.field public density:F

.field public densityDpi:I

.field public fontScale:F

.field public scaledDensity:F


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 6
    iput v0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 8
    iput v0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 10
    int-to-float v0, v0

    .line 11
    const v1, 0x3bcccccd  # 0.00625f

    .line 14
    mul-float/2addr v0, v1

    .line 15
    iput v0, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 17
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 19
    iput p1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 21
    const/4 v1, 0x0

    .line 22
    cmpl-float v1, p1, v1

    .line 24
    if-eqz v1, :cond_1a

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    const/high16 p1, 0x3f800000  # 1.0f

    .line 29
    :goto_1c
    mul-float/2addr v0, p1

    .line 30
    iput v0, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lmiuix/view/DisplayConfig;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_32

    .line 6
    iget v0, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 8
    check-cast p1, Lmiuix/view/DisplayConfig;

    .line 10
    iget v2, p1, Lmiuix/view/DisplayConfig;->density:F

    .line 12
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_32

    .line 18
    iget v0, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 20
    iget v2, p1, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 22
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_32

    .line 28
    iget v0, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 30
    iget v2, p1, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 32
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_32

    .line 38
    iget v0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 40
    iget v2, p1, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 42
    if-ne v0, v2, :cond_32

    .line 44
    iget v0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 46
    iget p1, p1, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 48
    if-ne v0, p1, :cond_32

    .line 50
    const/4 v1, 0x1

    .line 51
    :cond_32
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "{ densityDpi:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", density:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", scaledDensity:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", fontScale: "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", defaultBitmapDensity:"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 49
    const-string v2, "}"

    .line 51
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
