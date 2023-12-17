.class public Lmiuix/preference/utils/PreferenceLayoutUtils;
.super Ljava/lang/Object;
.source "PreferenceLayoutUtils.java"


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
    sget p1, Lmiuix/preference/R$dimen;->miuix_appcompat_two_state_extra_padding_horizontal_huge:I

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
    sget p1, Lmiuix/preference/R$dimen;->miuix_appcompat_two_state_extra_padding_horizontal_large:I

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
    sget p1, Lmiuix/preference/R$dimen;->miuix_appcompat_two_state_extra_padding_horizontal_small:I

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    move-result p0

    .line 44
    return p0
.end method
