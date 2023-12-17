.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$e;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public static a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 3
    and-int/lit8 v0, v0, 0x3

    .line 5
    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 7
    and-int/lit8 v1, v1, 0x3

    .line 9
    if-eq v0, v1, :cond_f

    .line 11
    iget v0, p2, Landroid/content/res/Configuration;->colorMode:I

    .line 13
    or-int/2addr v0, v1

    .line 14
    iput v0, p2, Landroid/content/res/Configuration;->colorMode:I

    .line 16
    :cond_f
    iget p0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 18
    and-int/lit8 p0, p0, 0xc

    .line 20
    iget p1, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 22
    and-int/lit8 p1, p1, 0xc

    .line 24
    if-eq p0, p1, :cond_1e

    .line 26
    iget p0, p2, Landroid/content/res/Configuration;->colorMode:I

    .line 28
    or-int/2addr p0, p1

    .line 29
    iput p0, p2, Landroid/content/res/Configuration;->colorMode:I

    .line 31
    :cond_1e
    return-void
.end method
