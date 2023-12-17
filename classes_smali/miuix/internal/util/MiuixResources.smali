.class public Lmiuix/internal/util/MiuixResources;
.super Ljava/lang/Object;
.source "MiuixResources.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_14

    return-object p0

    .line 4
    :cond_14
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/y0;I)Landroid/content/res/ColorStateList;
    .registers 4

    .line 5
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v0

    if-eqz v0, :cond_14

    .line 7
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_14

    return-object p0

    .line 8
    :cond_14
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private static getComplexUnit(Landroid/util/TypedValue;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/util/TypedValue;->getComplexUnit()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I
    .registers 7

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_29

    .line 12
    iget v1, v0, Landroid/util/TypedValue;->type:I

    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v1, v2, :cond_11

    .line 17
    goto :goto_29

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x1

    .line 23
    new-array p1, p1, [I

    .line 25
    iget p2, v0, Landroid/util/TypedValue;->data:I

    .line 27
    const/4 v0, 0x0

    .line 28
    aput p2, p1, v0

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return p1

    .line 42
    :cond_29
    :goto_29
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_14

    .line 14
    invoke-static {p0, v0}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_14

    .line 20
    return-object p0

    .line 21
    :cond_14
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static getIndexWithValue(Landroid/content/res/TypedArray;II)I
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_7

    .line 7
    return p1

    .line 8
    :cond_7
    return p2
.end method

.method public static getUnscaledTextSize(Landroid/content/Context;II)I
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return p2

    .line 4
    :cond_3
    sget-object v0, Lmiuix/appcompat/R$styleable;->TextAppearance:[I

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Landroid/util/TypedValue;

    .line 12
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 15
    sget v1, Lmiuix/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    if-nez v1, :cond_1a

    .line 26
    return p2

    .line 27
    :cond_1a
    invoke-static {v0}, Lmiuix/internal/util/MiuixResources;->getComplexUnit(Landroid/util/TypedValue;)I

    .line 30
    move-result p1

    .line 31
    const/4 p2, 0x2

    .line 32
    if-ne p1, p2, :cond_37

    .line 34
    iget p1, v0, Landroid/util/TypedValue;->data:I

    .line 36
    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 39
    move-result p1

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 47
    move-result-object p0

    .line 48
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 50
    mul-float/2addr p1, p0

    .line 51
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_37
    iget p1, v0, Landroid/util/TypedValue;->data:I

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 65
    move-result-object p0

    .line 66
    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 69
    move-result p0

    .line 70
    return p0
.end method
