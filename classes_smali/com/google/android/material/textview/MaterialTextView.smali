.class public Lcom/google/android/material/textview/MaterialTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MaterialTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010084

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 4
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/material/textview/MaterialTextView;->canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 8
    invoke-static {p1, v0, p2, p3, p4}, Lcom/google/android/material/textview/MaterialTextView;->viewAttrsHasLineHeight(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z

    move-result p1

    if-nez p1, :cond_25

    .line 9
    invoke-static {v0, p2, p3, p4}, Lcom/google/android/material/textview/MaterialTextView;->findViewAppearanceResourceId(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_25

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V

    :cond_25
    return-void
.end method

.method private applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p2

    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [I

    .line 14
    sget v1, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_lineHeight:I

    .line 16
    const/4 v2, 0x0

    .line 17
    aput v1, v0, v2

    .line 19
    sget v1, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_lineHeight:I

    .line 21
    const/4 v2, 0x1

    .line 22
    aput v1, v0, v2

    .line 24
    invoke-static {p2, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    .line 27
    move-result p2

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    if-ltz p2, :cond_23

    .line 33
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setLineHeight(I)V

    .line 36
    :cond_23
    return-void
.end method

.method private static canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->textAppearanceLineHeightEnabled:I

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method private static findViewAppearanceResourceId(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p0

    .line 7
    sget p1, Lcom/google/android/material/R$styleable;->MaterialTextView_android_textAppearance:I

    .line 9
    const/4 p2, -0x1

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    return p1
.end method

.method private static varargs readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I
    .registers 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    :goto_3
    array-length v3, p2

    .line 5
    if-ge v1, v3, :cond_11

    .line 7
    if-gez v2, :cond_11

    .line 9
    aget v2, p2, v1

    .line 11
    invoke-static {p0, p1, v2, v0}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 14
    move-result v2

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 17
    goto :goto_3

    .line 18
    :cond_11
    return v2
.end method

.method private static viewAttrsHasLineHeight(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 3
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x2

    .line 8
    new-array p2, p2, [I

    .line 10
    sget p3, Lcom/google/android/material/R$styleable;->MaterialTextView_android_lineHeight:I

    .line 12
    const/4 p4, 0x0

    .line 13
    aput p3, p2, p4

    .line 15
    sget p3, Lcom/google/android/material/R$styleable;->MaterialTextView_lineHeight:I

    .line 17
    const/4 v0, 0x1

    .line 18
    aput p3, p2, v0

    .line 20
    invoke-static {p0, p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    .line 23
    move-result p0

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    const/4 p1, -0x1

    .line 28
    if-eq p0, p1, :cond_1e

    .line 30
    move p4, v0

    .line 31
    :cond_1e
    return p4
.end method


# virtual methods
.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 4
    invoke-static {p1}, Lcom/google/android/material/textview/MaterialTextView;->canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_10

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V

    .line 17
    :cond_10
    return-void
.end method
