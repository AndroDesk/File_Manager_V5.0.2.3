.class public final Lg0/a$c;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method
