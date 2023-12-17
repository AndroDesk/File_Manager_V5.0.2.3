.class Lcom/android/fileexplorer/model/AppIconHelper$AppIconHelperV26;
.super Ljava/lang/Object;
.source "AppIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/AppIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppIconHelperV26"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 3
    if-eqz v0, :cond_27

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 12
    move-result v1

    .line 13
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 15
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroid/graphics/Canvas;

    .line 21
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    return-object v0

    .line 40
    :cond_27
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method
