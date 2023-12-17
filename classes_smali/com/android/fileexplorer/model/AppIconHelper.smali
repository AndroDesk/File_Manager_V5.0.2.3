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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getApkIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_f

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1b

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1a

    invoke-static {p0}, Lcom/android/fileexplorer/model/AppIconHelper$AppIconHelperV26;->getAppIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return-object p0
.end method
