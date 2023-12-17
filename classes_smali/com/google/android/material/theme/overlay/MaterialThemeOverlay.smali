.class public Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;
.super Ljava/lang/Object;
.source "MaterialThemeOverlay.java"


# static fields
.field private static final ANDROID_THEME_OVERLAY_ATTRS:[I

.field private static final MATERIAL_THEME_OVERLAY_ATTR:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/high16 v1, 0x1010000

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/material/R$attr;->theme:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    new-array v0, v3, [I

    sget v1, Lcom/google/android/material/R$attr;->materialThemeOverlay:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .registers 4

    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    move v0, p1

    :goto_17
    return v0
.end method

.method private static obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .registers 5

    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p2

    instance-of p3, p0, Lm/c;

    const/4 v0, 0x1

    if-eqz p3, :cond_12

    move-object p3, p0

    check-cast p3, Lm/c;

    iget p3, p3, Lm/c;->a:I

    if-ne p3, p2, :cond_12

    move p3, v0

    goto :goto_13

    :cond_12
    const/4 p3, 0x0

    :goto_13
    if-eqz p2, :cond_2b

    if-eqz p3, :cond_18

    goto :goto_2b

    :cond_18
    new-instance p3, Lm/c;

    invoke-direct {p3, p0, p2}, Lm/c;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result p0

    if-eqz p0, :cond_2a

    invoke-virtual {p3}, Lm/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2a
    return-object p3

    :cond_2b
    :goto_2b
    return-object p0
.end method
