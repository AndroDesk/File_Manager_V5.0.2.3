.class public Lcom/android/fileexplorer/view/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_BORDER_WIDTH:F = 0.0f

.field public static final DEFAULT_RADIUS:F = 0.0f

.field public static final DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

.field private static final SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

.field public static final TAG:Ljava/lang/String; = "RoundedImageView"

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1

.field private static final TILE_MODE_UNDEFINED:I = -0x2


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private mBorderWidth:F

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private final mCornerRadii:[F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasColorFilter:Z

.field private mIsOval:Z

.field private mMutateBackground:Z

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const-class v0, Lcom/android/fileexplorer/view/RoundedImageView;

    .line 3
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 5
    sput-object v0, Lcom/android/fileexplorer/view/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    .line 7
    const/16 v0, 0x8

    .line 9
    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 11
    const/4 v1, 0x0

    .line 12
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 14
    aput-object v2, v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 19
    aput-object v2, v0, v1

    .line 21
    const/4 v1, 0x2

    .line 22
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 24
    aput-object v2, v0, v1

    .line 26
    const/4 v1, 0x3

    .line 27
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 29
    aput-object v2, v0, v1

    .line 31
    const/4 v1, 0x4

    .line 32
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 34
    aput-object v2, v0, v1

    .line 36
    const/4 v1, 0x5

    .line 37
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 39
    aput-object v2, v0, v1

    .line 41
    const/4 v1, 0x6

    .line 42
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 44
    aput-object v2, v0, v1

    .line 46
    const/4 v1, 0x7

    .line 47
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 49
    aput-object v2, v0, v1

    .line 51
    sput-object v0, Lcom/android/fileexplorer/view/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 2
    fill-array-data p1, :array_2a

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    const/high16 p1, -0x1000000

    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorMod:Z

    .line 7
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mHasColorFilter:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    .line 9
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    .line 10
    sget-object p1, Lcom/android/fileexplorer/view/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-void

    nop

    :array_2a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 14
    fill-array-data v1, :array_104

    iput-object v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    const/high16 v2, -0x1000000

    .line 15
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    .line 16
    iput v3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    const/4 v4, 0x0

    .line 17
    iput-object v4, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 v4, 0x0

    .line 18
    iput-boolean v4, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorMod:Z

    .line 19
    iput-boolean v4, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mHasColorFilter:Z

    .line 20
    iput-boolean v4, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    .line 21
    iput-boolean v4, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    .line 22
    sget-object v5, Lcom/android/fileexplorer/view/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object v5, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 23
    iput-object v5, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 24
    sget-object v5, Lcom/android/fileexplorer/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v5, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 25
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_3d

    .line 26
    sget-object v5, Lcom/android/fileexplorer/view/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    aget-object p3, v5, p3

    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_42

    .line 27
    :cond_3d
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_42
    const/4 p3, 0x3

    .line 28
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x6

    .line 29
    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    aput v6, v1, v4

    const/4 v6, 0x7

    .line 30
    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v1, v7

    const/4 v6, 0x5

    .line 31
    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x2

    aput v6, v1, v8

    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    aput v0, v1, p3

    .line 33
    array-length p3, v1

    move v0, v4

    move v1, v0

    :goto_6c
    if-ge v0, p3, :cond_7d

    .line 34
    iget-object v6, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    aget v9, v6, v0

    cmpg-float v9, v9, v3

    if-gez v9, :cond_79

    .line 35
    aput v3, v6, v0

    goto :goto_7a

    :cond_79
    move v1, v7

    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    :cond_7d
    if-nez v1, :cond_91

    cmpg-float p3, v5, v3

    if-gez p3, :cond_84

    move v5, v3

    .line 36
    :cond_84
    iget-object p3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    array-length p3, p3

    move v0, v4

    :goto_88
    if-ge v0, p3, :cond_91

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 38
    :cond_91
    invoke-virtual {p1, v8, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    cmpg-float p2, p2, v3

    if-gez p2, :cond_9e

    .line 39
    iput v3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    .line 40
    :cond_9e
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_ac

    .line 41
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    :cond_ac
    const/16 p2, 0x8

    .line 42
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    const/16 p2, 0x9

    .line 43
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    const/16 p2, 0xa

    const/4 p3, -0x2

    .line 44
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_d3

    .line 45
    invoke-static {p2}, Lcom/android/fileexplorer/view/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 46
    invoke-static {p2}, Lcom/android/fileexplorer/view/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_d3
    const/16 p2, 0xb

    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_e2

    .line 48
    invoke-static {p2}, Lcom/android/fileexplorer/view/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    :cond_e2
    const/16 p2, 0xc

    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_f1

    .line 50
    invoke-static {p2}, Lcom/android/fileexplorer/view/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 51
    :cond_f1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    .line 52
    invoke-direct {p0, v7}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 53
    iget-boolean p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    if-eqz p2, :cond_100

    .line 54
    iget-object p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_100
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_104
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private applyColorMod()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_17

    .line 5
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorMod:Z

    .line 7
    if-eqz v1, :cond_17

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mHasColorFilter:Z

    .line 17
    if-eqz v1, :cond_17

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 24
    :cond_17
    return-void
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .registers 2

    .line 1
    if-eqz p0, :cond_10

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_d

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_a

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_a
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 13
    return-object p0

    .line 14
    :cond_d
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 16
    return-object p0

    .line 17
    :cond_10
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 19
    return-object p0
.end method

.method private resolveBackgroundResource()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    iget v2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundResource:I

    .line 11
    if-eqz v2, :cond_29

    .line 13
    :try_start_c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    .line 17
    goto :goto_29

    .line 18
    :catch_11
    move-exception v0

    .line 19
    const-string v2, "Unable to find resource: "

    .line 21
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v2

    .line 25
    iget v3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundResource:I

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const-string v3, "RoundedImageView"

    .line 36
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundResource:I

    .line 42
    :cond_29
    :goto_29
    invoke-static {v1}, Lcom/android/fileexplorer/view/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method private resolveResource()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    iget v2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    .line 11
    if-eqz v2, :cond_29

    .line 13
    :try_start_c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    .line 17
    goto :goto_29

    .line 18
    :catch_11
    move-exception v0

    .line 19
    const-string v2, "Unable to find resource: "

    .line 21
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v2

    .line 25
    iget v3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const-string v3, "RoundedImageView"

    .line 36
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    .line 42
    :cond_29
    :goto_29
    invoke-static {v1}, Lcom/android/fileexplorer/view/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method private updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .registers 7

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    instance-of v0, p1, Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_41

    .line 9
    check-cast p1, Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 11
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/RoundedDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 14
    move-result-object p2

    .line 15
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    .line 17
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->setBorderWidth(F)Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 20
    move-result-object p2

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 23
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->setBorderColor(Landroid/content/res/ColorStateList;)Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 26
    move-result-object p2

    .line 27
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    .line 29
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->setOval(Z)Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 35
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 38
    move-result-object p2

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 41
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 44
    iget-object p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    .line 46
    if-eqz p2, :cond_3d

    .line 48
    aget v0, p2, v1

    .line 50
    const/4 v1, 0x1

    .line 51
    aget v1, p2, v1

    .line 53
    const/4 v2, 0x2

    .line 54
    aget v2, p2, v2

    .line 56
    const/4 v3, 0x3

    .line 57
    aget p2, p2, v3

    .line 59
    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/android/fileexplorer/view/RoundedDrawable;->setCornerRadius(FFFF)Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 62
    :cond_3d
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->applyColorMod()V

    .line 65
    goto :goto_57

    .line 66
    :cond_41
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    .line 68
    if-eqz v0, :cond_57

    .line 70
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 72
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 75
    move-result v0

    .line 76
    :goto_4b
    if-ge v1, v0, :cond_57

    .line 78
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 81
    move-result-object v2

    .line 82
    invoke-direct {p0, v2, p2}, Lcom/android/fileexplorer/view/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_4b

    .line 88
    :cond_57
    :goto_57
    return-void
.end method

.method private updateBackgroundDrawableAttrs(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    .line 3
    if-eqz v0, :cond_15

    .line 5
    if-eqz p1, :cond_e

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-static {p1}, Lcom/android/fileexplorer/view/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    .line 22
    :cond_15
    return-void
.end method

.method private updateDrawableAttrs()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    .line 8
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method

.method public getBorderColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getBorderWidth()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    .line 3
    return v0
.end method

.method public getCornerRadius()F
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getCornerRadius(I)F
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    aget p1, v0, p1

    return p1
.end method

.method public getMaxCornerRadius()F
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_5
    if-ge v3, v1, :cond_10

    .line 8
    aget v4, v0, v3

    .line 10
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 13
    move-result v2

    .line 14
    add-int/lit8 v3, v3, 0x1

    .line 16
    goto :goto_5

    .line 17
    :cond_10
    return v2
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 3
    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 3
    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 3
    return-object v0
.end method

.method public isOval()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    .line 3
    return v0
.end method

.method public mutateBackground(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    return-void
.end method

.method public mutatesBackground()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    .line 3
    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundResource:I

    .line 3
    if-eq v0, p1, :cond_f

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundResource:I

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->resolveBackgroundResource()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_f
    return-void
.end method

.method public setBorderColor(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_c

    goto :goto_12

    :cond_c
    const/high16 p1, -0x1000000

    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_12
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 6
    iget p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_25

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_25
    return-void
.end method

.method public setBorderWidth(F)V
    .registers 3

    .line 2
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    iput p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 3
    if-eq v0, p1, :cond_11

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mHasColorFilter:Z

    .line 10
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorMod:Z

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->applyColorMod()V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    :cond_11
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setCornerRadius(FFFF)V
    .registers 11

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    cmpl-float v2, v2, p1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v2, :cond_1f

    aget v2, v0, v5

    cmpl-float v2, v2, p2

    if-nez v2, :cond_1f

    aget v2, v0, v3

    cmpl-float v2, v2, p4

    if-nez v2, :cond_1f

    aget v2, v0, v4

    cmpl-float v2, v2, p3

    if-nez v2, :cond_1f

    return-void

    .line 8
    :cond_1f
    aput p1, v0, v1

    .line 9
    aput p2, v0, v5

    .line 10
    aput p3, v0, v4

    .line 11
    aput p4, v0, v3

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    .line 13
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCornerRadius(IF)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    aget v1, v0, p1

    cmpl-float v1, v1, p2

    if-nez v1, :cond_9

    return-void

    .line 3
    :cond_9
    aput p2, v0, p1

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 2
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setCornerRadiusDimen(II)V
    .registers 4

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/RoundedImageView;->setCornerRadius(IF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    .line 4
    invoke-static {p1}, Lcom/android/fileexplorer/view/RoundedDrawable;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    .line 4
    invoke-static {p1}, Lcom/android/fileexplorer/view/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    .line 3
    if-eq v0, p1, :cond_14

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->resolveResource()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_14
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    return-void
.end method

.method public setOval(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 3
    if-eq v0, p1, :cond_24

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 7
    sget-object v0, Lcom/android/fileexplorer/view/RoundedImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v1

    .line 13
    aget v0, v0, v1

    .line 15
    packed-switch v0, :pswitch_data_26

    .line 18
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 21
    goto :goto_1a

    .line 22
    :pswitch_15  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 24
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 27
    :goto_1a
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    :cond_24
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_15  #00000001
        :pswitch_15  #00000002
        :pswitch_15  #00000003
        :pswitch_15  #00000004
        :pswitch_15  #00000005
        :pswitch_15  #00000006
        :pswitch_15  #00000007
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    return-void
.end method
