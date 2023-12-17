.class public Lcom/android/fileexplorer/model/AppIconHelper;
.super Ljava/lang/Object;
.source "AppIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/AppIconHelper$AppIconHelperV26;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getApkIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    if-eqz v0, :cond_f

    .line 9
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 14
    move-result-object p0

    .line 15
    goto :goto_1b

    .line 16
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    const/16 v1, 0x1a

    .line 20
    if-lt v0, v1, :cond_1a

    .line 22
    invoke-static {p0}, Lcom/android/fileexplorer/model/AppIconHelper$AppIconHelperV26;->getAppIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1a
    const/4 p0, 0x0

    .line 28
    :goto_1b
    return-object p0
.end method
