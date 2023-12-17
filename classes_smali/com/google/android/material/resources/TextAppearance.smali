.class public Lcom/google/android/material/resources/TextAppearance;
.super Ljava/lang/Object;
.source "TextAppearance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextAppearance"

.field private static final TYPEFACE_MONOSPACE:I = 0x3

.field private static final TYPEFACE_SANS:I = 0x1

.field private static final TYPEFACE_SERIF:I = 0x2


# instance fields
.field private font:Landroid/graphics/Typeface;

.field public final fontFamily:Ljava/lang/String;

.field private final fontFamilyResourceId:I

.field private fontResolved:Z

.field public final shadowColor:Landroid/content/res/ColorStateList;

.field public final shadowDx:F

.field public final shadowDy:F

.field public final shadowRadius:F

.field public final textAllCaps:Z

.field public final textColor:Landroid/content/res/ColorStateList;

.field public final textColorHint:Landroid/content/res/ColorStateList;

.field public final textColorLink:Landroid/content/res/ColorStateList;

.field public final textSize:F

.field public final textStyle:I

.field public final typeface:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 7
    sget-object v1, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p2

    .line 13
    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_textSize:I

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 19
    move-result v1

    .line 20
    iput v1, p0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    .line 22
    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColor:I

    .line 24
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 30
    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorHint:I

    .line 32
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->textColorHint:Landroid/content/res/ColorStateList;

    .line 38
    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorLink:I

    .line 40
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->textColorLink:Landroid/content/res/ColorStateList;

    .line 46
    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_textStyle:I

    .line 48
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 51
    move-result v1

    .line 52
    iput v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    .line 54
    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_typeface:I

    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 60
    move-result v1

    .line 61
    iput v1, p0, Lcom/google/android/material/resources/TextAppearance;->typeface:I

    .line 63
    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_fontFamily:I

    .line 65
    sget v3, Lcom/google/android/material/R$styleable;->TextAppearance_android_fontFamily:I

    .line 67
    invoke-static {p2, v1, v3}, Lcom/google/android/material/resources/MaterialResources;->getIndexWithValue(Landroid/content/res/TypedArray;II)I

    .line 70
    move-result v1

    .line 71
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 74
    move-result v3

    .line 75
    iput v3, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    .line 77
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    iput-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    .line 83
    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_textAllCaps:I

    .line 85
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 88
    move-result v0

    .line 89
    iput-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->textAllCaps:Z

    .line 91
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowColor:I

    .line 93
    invoke-static {p1, p2, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 99
    sget p1, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDx:I

    .line 101
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 104
    move-result p1

    .line 105
    iput p1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    .line 107
    sget p1, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDy:I

    .line 109
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    .line 115
    sget p1, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowRadius:I

    .line 117
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 120
    move-result p1

    .line 121
    iput p1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    .line 123
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/resources/TextAppearance;)Landroid/graphics/Typeface;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/google/android/material/resources/TextAppearance;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 3
    return-object p1
.end method

.method public static synthetic access$102(Lcom/google/android/material/resources/TextAppearance;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 3
    return p1
.end method

.method private createFallbackFont()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_10

    .line 9
    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    .line 11
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 19
    if-nez v0, :cond_3c

    .line 21
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->typeface:I

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_2e

    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq v0, v1, :cond_29

    .line 29
    const/4 v1, 0x3

    .line 30
    if-eq v0, v1, :cond_24

    .line 32
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 34
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 36
    goto :goto_32

    .line 37
    :cond_24
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 39
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 41
    goto :goto_32

    .line 42
    :cond_29
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 44
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 46
    goto :goto_32

    .line 47
    :cond_2e
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 49
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 51
    :goto_32
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 53
    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    .line 55
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 61
    :cond_3c
    return-void
.end method


# virtual methods
.method public getFallbackFont()Landroid/graphics/Typeface;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 6
    return-object v0
.end method

.method public getFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 7
    return-object p1

    .line 8
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_35

    .line 14
    :try_start_d
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    .line 16
    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 22
    if-eqz p1, :cond_35

    .line 24
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    .line 26
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;
    :try_end_1f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_1f} :catch_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_1f} :catch_35
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_20

    .line 32
    goto :goto_35

    .line 33
    :catch_20
    move-exception p1

    .line 34
    const-string v0, "Error loading font "

    .line 36
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    const-string v1, "TextAppearance"

    .line 51
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :catch_35
    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    .line 57
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 60
    iget-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 62
    return-object p1
.end method

.method public getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .registers 5

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 19
    new-instance v0, Lcom/google/android/material/resources/TextAppearance$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/material/resources/TextAppearance$2;-><init>(Lcom/google/android/material/resources/TextAppearance;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    return-void
.end method

.method public getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/android/material/resources/TextAppearanceConfig;->shouldLoadFontSynchronously()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/TextAppearance;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    goto :goto_d

    .line 3
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    .line 4
    :goto_d
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 5
    iput-boolean v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 6
    :cond_14
    iget-boolean v2, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    if-eqz v2, :cond_1e

    .line 7
    iget-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v1}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrieved(Landroid/graphics/Typeface;Z)V

    return-void

    .line 8
    :cond_1e
    :try_start_1e
    new-instance v2, Lcom/google/android/material/resources/TextAppearance$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/material/resources/TextAppearance$1;-><init>(Lcom/google/android/material/resources/TextAppearance;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_27} :catch_44
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_49

    :catch_28
    move-exception p1

    const-string v0, "Error loading font "

    .line 9
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextAppearance"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    iput-boolean v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    const/4 p1, -0x3

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    goto :goto_49

    .line 13
    :catch_44
    iput-boolean v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 14
    invoke-virtual {p2, v1}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    :goto_49
    return-void
.end method

.method public updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .registers 8

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 6
    if-eqz p1, :cond_12

    .line 8
    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 17
    move-result p1

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    const/high16 p1, -0x1000000

    .line 21
    :goto_14
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget p1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    .line 26
    iget p3, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    .line 28
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    .line 30
    iget-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 32
    if-eqz v1, :cond_2c

    .line 34
    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 36
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 39
    move-result v3

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 43
    move-result v1

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    const/4 v1, 0x0

    .line 46
    :goto_2d
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 49
    return-void
.end method

.method public updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/material/resources/TextAppearanceConfig;->shouldLoadFontSynchronously()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/TextAppearance;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 18
    :goto_11
    return-void
.end method

.method public updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    .line 9
    move-result p2

    .line 10
    not-int p2, p2

    .line 11
    and-int/2addr p2, v0

    .line 12
    and-int/lit8 v0, p2, 0x1

    .line 14
    if-eqz v0, :cond_11

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 22
    and-int/lit8 p2, p2, 0x2

    .line 24
    if-eqz p2, :cond_1c

    .line 26
    const/high16 p2, -0x41800000  # -0.25f

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p2, 0x0

    .line 30
    :goto_1d
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 33
    iget p2, p0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    return-void
.end method
