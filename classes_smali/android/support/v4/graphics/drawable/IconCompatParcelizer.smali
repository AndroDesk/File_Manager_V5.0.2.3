.class public final Landroid/support/v4/graphics/drawable/IconCompatParcelizer;
.super Landroidx/core/graphics/drawable/IconCompatParcelizer;
.source "IconCompatParcelizer.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/core/graphics/drawable/IconCompatParcelizer;-><init>()V

    return-void
.end method

.method public static read(Lh1/a;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 1

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompatParcelizer;->read(Lh1/a;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Lh1/a;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompatParcelizer;->write(Landroidx/core/graphics/drawable/IconCompat;Lh1/a;)V

    return-void
.end method
