.class public final Lf0/a;
.super Ljava/lang/Object;
.source "BlendModeColorFilterCompat.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(ILjava/lang/Object;)Landroid/graphics/ColorFilter;
    .registers 3

    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    check-cast p1, Landroid/graphics/BlendMode;

    invoke-direct {v0, p0, p1}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    return-object v0
.end method
