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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    iput v0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float v0, v0

    const v1, 0x3bcccccd  # 0.00625f

    mul-float/2addr v0, v1

    iput v0, p0, Lmiuix/view/DisplayConfig;->density:F

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_1c
    mul-float/2addr v0, p1

    iput v0, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lmiuix/view/DisplayConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget v0, p0, Lmiuix/view/DisplayConfig;->density:F

    check-cast p1, Lmiuix/view/DisplayConfig;

    iget v2, p1, Lmiuix/view/DisplayConfig;->density:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_32

    iget v0, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    iget v2, p1, Lmiuix/view/DisplayConfig;->scaledDensity:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_32

    iget v0, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    iget v2, p1, Lmiuix/view/DisplayConfig;->fontScale:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_32

    iget v0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    iget v2, p1, Lmiuix/view/DisplayConfig;->densityDpi:I

    if-ne v0, v2, :cond_32

    iget v0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    iget p1, p1, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    if-ne v0, p1, :cond_32

    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method public hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "{ densityDpi:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", density:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaledDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", defaultBitmapDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
