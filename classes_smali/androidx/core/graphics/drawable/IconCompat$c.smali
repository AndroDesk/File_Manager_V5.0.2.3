.class public final Landroidx/core/graphics/drawable/IconCompat$c;
.super Ljava/lang/Object;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Ljava/lang/Object;)I
    .registers 1

    check-cast p0, Landroid/graphics/drawable/Icon;

    invoke-static {p0}, Landroidx/appcompat/widget/y;->c(Landroid/graphics/drawable/Icon;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    check-cast p0, Landroid/graphics/drawable/Icon;

    invoke-static {p0}, Landroidx/appcompat/widget/y;->n(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)I
    .registers 1

    check-cast p0, Landroid/graphics/drawable/Icon;

    invoke-static {p0}, Landroidx/appcompat/widget/y;->B(Landroid/graphics/drawable/Icon;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;)Landroid/net/Uri;
    .registers 1

    check-cast p0, Landroid/graphics/drawable/Icon;

    invoke-static {p0}, Landroidx/appcompat/widget/y;->h(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
