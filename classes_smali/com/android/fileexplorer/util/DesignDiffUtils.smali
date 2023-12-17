.class public Lcom/android/fileexplorer/util/DesignDiffUtils;
.super Ljava/lang/Object;
.source "DesignDiffUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategoryMarginSide(Landroid/content/Context;)I
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_16

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p0

    .line 15
    const v0, 0x7f07008c

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p0

    .line 27
    const v0, 0x7f07008b

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public static getGroupItemMarginMiddle(Landroid/content/Context;)I
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_16

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p0

    .line 15
    const v0, 0x7f070245

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p0

    .line 27
    const v0, 0x7f070244

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public static getMusicMarginMiddle(Landroid/content/Context;)I
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_16

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p0

    .line 15
    const v0, 0x7f070082

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p0

    .line 27
    const v0, 0x7f070081

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public static getVideoMarginMiddle(Landroid/content/Context;)I
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_16

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p0

    .line 15
    const v0, 0x7f07008a

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p0

    .line 27
    const v0, 0x7f070089

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result p0

    .line 34
    return p0
.end method
