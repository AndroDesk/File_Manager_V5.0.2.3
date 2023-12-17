.class public Lcom/airbnb/lottie/SimpleColorFilter;
.super Landroid/graphics/PorterDuffColorFilter;
.source "SimpleColorFilter.java"


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6
    return-void
.end method
