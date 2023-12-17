.class public Lmiuix/appcompat/internal/util/LayoutUIUtils;
.super Ljava/lang/Object;
.source "LayoutUIUtils.java"


# static fields
.field public static final EXTRA_HPADDING_HUGE:I = 0x3

.field public static final EXTRA_HPADDING_INVALID:I = 0x0

.field public static final EXTRA_HPADDING_LARGE:I = 0x2

.field public static final EXTRA_HPADDING_SMALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtraPaddingByLevel(Landroid/content/Context;I)I
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_21

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_16

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_b

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p0

    .line 16
    sget p1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_window_extra_padding_horizontal_huge:I

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p0

    .line 27
    sget p1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_window_extra_padding_horizontal_large:I

    .line 29
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object p0

    .line 38
    sget p1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_window_extra_padding_horizontal_small:I

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public static isLevelValid(I)Z
    .registers 2

    if-ltz p0, :cond_7

    const/4 v0, 0x3

    if-gt p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
