.class Landroidx/core/content/res/ResourcesCompat$Api29Impl;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getFloat(Landroid/content/res/Resources;I)F
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/appcompat/widget/a0;->a(Landroid/content/res/Resources;I)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method
