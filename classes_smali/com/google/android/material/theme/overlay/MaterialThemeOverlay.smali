.class public Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;
.super Ljava/lang/Object;
.source "MaterialThemeOverlay.java"


# static fields
.field private static final ANDROID_THEME_OVERLAY_ATTRS:[I

.field private static final MATERIAL_THEME_OVERLAY_ATTR:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    const/high16 v1, 0x1010000

    .line 6
    const/4 v2, 0x0

    .line 7
    aput v1, v0, v2

    .line 9
    sget v1, Lcom/google/android/material/R$attr;->theme:I

    .line 11
    const/4 v3, 0x1

    .line 12
    aput v1, v0, v3

    .line 14
    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    .line 16
    new-array v0, v3, [I

    .line 18
    sget v1, Lcom/google/android/material/R$attr;->materialThemeOverlay:I

    .line 20
    aput v1, v0, v2

    .line 22
    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    if-eqz v0, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v0, p1

    .line 24
    :goto_17
    return v0
.end method

.method private static obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    return p1
.end method

.method public static wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    .line 4
    move-result p2

    .line 5
    instance-of p3, p0, Lm/c;

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p3, :cond_12

    .line 10
    move-object p3, p0

    .line 11
    check-cast p3, Lm/c;

    .line 13
    iget p3, p3, Lm/c;->a:I

    .line 15
    if-ne p3, p2, :cond_12

    .line 17
    move p3, v0

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p3, 0x0

    .line 20
    :goto_13
    if-eqz p2, :cond_2b

    .line 22
    if-eqz p3, :cond_18

    .line 24
    goto :goto_2b

    .line 25
    :cond_18
    new-instance p3, Lm/c;

    .line 27
    invoke-direct {p3, p0, p2}, Lm/c;-><init>(Landroid/content/Context;I)V

    .line 30
    invoke-static {p0, p1}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I

    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2a

    .line 36
    invoke-virtual {p3}, Lm/c;->getTheme()Landroid/content/res/Resources$Theme;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 43
    :cond_2a
    return-object p3

    .line 44
    :cond_2b
    :goto_2b
    return-object p0
.end method
