.class public final Lf0/a;
.super Ljava/lang/Object;
.source "BlendModeColorFilterCompat.java"


# direct methods
.method public static a(ILjava/lang/Object;)Landroid/graphics/ColorFilter;
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    .line 3
    check-cast p1, Landroid/graphics/BlendMode;

    .line 5
    invoke-direct {v0, p0, p1}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 8
    return-object v0
.end method
