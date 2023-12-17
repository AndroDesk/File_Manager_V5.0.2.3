.class public Lmiuix/appcompat/internal/util/DrawableUtil;
.super Ljava/lang/Object;
.source "DrawableUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static isPlaceholder(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Lmiuix/appcompat/internal/graphics/drawable/PlaceholderDrawable;

    .line 3
    if-nez v0, :cond_13

    .line 5
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    .line 7
    if-eqz v0, :cond_11

    .line 9
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 21
    :goto_14
    return p0
.end method
