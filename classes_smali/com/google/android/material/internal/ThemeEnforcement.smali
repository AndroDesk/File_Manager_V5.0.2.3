.class public final Lcom/google/android/material/internal/ThemeEnforcement;
.super Ljava/lang/Object;
.source "ThemeEnforcement.java"


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I

.field private static final APPCOMPAT_THEME_NAME:Ljava/lang/String; = "Theme.AppCompat"

.field private static final MATERIAL_CHECK_ATTRS:[I

.field private static final MATERIAL_THEME_NAME:Ljava/lang/String; = "Theme.MaterialComponents"


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 4
    sget v2, Lcom/google/android/material/R$attr;->colorPrimary:I

    .line 6
    const/4 v3, 0x0

    .line 7
    aput v2, v1, v3

    .line 9
    sput-object v1, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    .line 11
    new-array v0, v0, [I

    .line 13
    sget v1, Lcom/google/android/material/R$attr;->colorPrimaryVariant:I

    .line 15
    aput v1, v0, v3

    .line 17
    sput-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppCompatTheme(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    .line 3
    const-string v1, "Theme.AppCompat"

    .line 5
    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    .line 8
    return-void
.end method

.method private static checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/material/R$styleable;->ThemeEnforcement:[I

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    sget p2, Lcom/google/android/material/R$styleable;->ThemeEnforcement_enforceMaterialTheme:I

    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 13
    move-result p2

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    if-eqz p2, :cond_31

    .line 19
    new-instance p1, Landroid/util/TypedValue;

    .line 21
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 27
    move-result-object p2

    .line 28
    sget p3, Lcom/google/android/material/R$attr;->isMaterialTheme:I

    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p2, p3, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_2e

    .line 37
    iget p2, p1, Landroid/util/TypedValue;->type:I

    .line 39
    const/16 p3, 0x12

    .line 41
    if-ne p2, p3, :cond_31

    .line 43
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 45
    if-nez p1, :cond_31

    .line 47
    :cond_2e
    invoke-static {p0}, Lcom/google/android/material/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 50
    :cond_31
    invoke-static {p0}, Lcom/google/android/material/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public static checkMaterialTheme(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    .line 3
    const-string v1, "Theme.MaterialComponents"

    .line 5
    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    .line 8
    return-void
.end method

.method private static varargs checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .registers 9

    .line 1
    sget-object v0, Lcom/google/android/material/R$styleable;->ThemeEnforcement:[I

    .line 3
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/google/android/material/R$styleable;->ThemeEnforcement_enforceTextAppearance:I

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_13

    .line 16
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    return-void

    .line 20
    :cond_13
    if-eqz p5, :cond_1e

    .line 22
    array-length v1, p5

    .line 23
    if-nez v1, :cond_19

    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z

    .line 29
    move-result p0

    .line 30
    goto :goto_29

    .line 31
    :cond_1e
    :goto_1e
    sget p0, Lcom/google/android/material/R$styleable;->ThemeEnforcement_android_textAppearance:I

    .line 33
    const/4 p1, -0x1

    .line 34
    invoke-virtual {v0, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 37
    move-result p0

    .line 38
    if-eq p0, p1, :cond_28

    .line 40
    const/4 v2, 0x1

    .line 41
    :cond_28
    move p0, v2

    .line 42
    :goto_29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    if-eqz p0, :cond_2f

    .line 47
    return-void

    .line 48
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    const-string p1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
.end method

.method private static checkTheme(Landroid/content/Context;[ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string p1, "The style on this component requires your app theme to be "

    .line 12
    const-string v0, " (or a descendant)."

    .line 14
    invoke-static {p1, p2, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method public static isAppCompatTheme(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static varargs isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z
    .registers 7

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 4
    move-result-object p0

    .line 5
    array-length p1, p5

    .line 6
    const/4 p2, 0x0

    .line 7
    move p3, p2

    .line 8
    :goto_7
    if-ge p3, p1, :cond_19

    .line 10
    aget p4, p5, p3

    .line 12
    const/4 v0, -0x1

    .line 13
    invoke-virtual {p0, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 16
    move-result p4

    .line 17
    if-ne p4, v0, :cond_16

    .line 19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    return p2

    .line 23
    :cond_16
    add-int/lit8 p3, p3, 0x1

    .line 25
    goto :goto_7

    .line 26
    :cond_19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public static isMaterialTheme(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static isTheme(Landroid/content/Context;[I)Z
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_6
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_16

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_13

    .line 16
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    return v0

    .line 20
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public static varargs obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .registers 6

    .line 1
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static varargs obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/y0;
    .registers 6

    .line 1
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 7
    new-instance p5, Landroidx/appcompat/widget/y0;

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p5, p0, p1}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 16
    return-object p5
.end method
