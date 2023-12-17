.class public final Landroidx/core/graphics/drawable/IconCompat$b;
.super Ljava/lang/Object;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 3
    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-object v0
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .registers 1

    .line 1
    invoke-static {p0}, Lg0/b;->e(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
