.class Lcom/github/chrisbanes/photoview/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkZoomLevels(FFF)V
    .registers 3

    .line 1
    cmpl-float p0, p0, p1

    .line 3
    if-gez p0, :cond_11

    .line 5
    cmpl-float p0, p1, p2

    .line 7
    if-gez p0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string p1, "Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value"

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 18
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string p1, "Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value"

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0
.end method

.method public static getPointerIndex(I)I
    .registers 2

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static hasDrawable(Landroid/widget/ImageView;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_8

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p0, 0x0

    .line 10
    :goto_9
    return p0
.end method

.method public static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    sget-object v0, Lcom/github/chrisbanes/photoview/Util$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result p0

    .line 11
    aget p0, v0, p0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p0, v0, :cond_10

    .line 16
    return v0

    .line 17
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    const-string v0, "Matrix scale type is not supported"

    .line 21
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0
.end method
