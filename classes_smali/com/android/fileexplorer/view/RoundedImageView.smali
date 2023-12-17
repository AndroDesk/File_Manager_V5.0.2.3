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

    const-class v0, Lcom/android/fileexplorer/view/RoundedImageView;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/android/fileexplorer/view/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/fileexplorer/view/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    new-array p1, p1, [F

    fill-array-data p1, :array_2a

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    const/high16 p1, -0x1000000

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorMod:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mHasColorFilter:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    sget-object p1, Lcom/android/fileexplorer/view/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_104

    iput-object v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    const/high16 v2, -0x1000000

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorMod:Z

    iput-boolean v4, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mHasColorFilter:Z

    iput-boolean v4, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    iput-boolean v4, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    sget-object v5, Lcom/android/fileexplorer/view/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object v5, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v5, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    sget-object v5, Lcom/android/fileexplorer/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v5, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_3d

    sget-object v5, Lcom/android/fileexplorer/view/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    aget-object p3, v5, p3

    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_42

    :cond_3d
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_42
    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x6

    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    aput v6, v1, v4

    const/4 v6, 0x7

    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v1, v7

    const/4 v6, 0x5

    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x2

    aput v6, v1, v8

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    aput v0, v1, p3

    array-length p3, v1

    move v0, v4

    move v1, v0

    :goto_6c
    if-ge v0, p3, :cond_7d

    iget-object v6, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    aget v9, v6, v0

    cmpg-float v9, v9, v3

    if-gez v9, :cond_79

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

    :cond_84
    iget-object p3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    array-length p3, p3

    move v0, v4

    :goto_88
    if-ge v0, p3, :cond_91

    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    :cond_91
    invoke-virtual {p1, v8, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    cmpg-float p2, p2, v3

    if-gez p2, :cond_9e

    iput v3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    :cond_9e
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_ac

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    :cond_ac
    const/16 p2, 0x8

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    const/16 p2, 0xa

    const/4 p3, -0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_d3

    invoke-static {p2}, Lcom/android/fileexplorer/view/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    invoke-static {p2}, Lcom/android/fileexplorer/view/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_d3
    const/16 p2, 0xb

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_e2

    invoke-static {p2}, Lcom/android/fileexplorer/view/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    :cond_e2
    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_f1

    invoke-static {p2}, Lcom/android/fileexplorer/view/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_f1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0, v7}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    iget-boolean p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    if-eqz p2, :cond_100

    iget-object p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorMod:Z

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mHasColorFilter:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_17
    return-void
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    :cond_d
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    :cond_10
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method private resolveBackgroundResource()Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget v2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundResource:I

    if-eqz v2, :cond_29

    :try_start_c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_29

    :catch_11
    move-exception v0

    const-string v2, "Unable to find resource: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundResource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoundedImageView"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundResource:I

    :cond_29
    :goto_29
    invoke-static {v1}, Lcom/android/fileexplorer/view/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private resolveResource()Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget v2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    if-eqz v2, :cond_29

    :try_start_c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_29

    :catch_11
    move-exception v0

    const-string v2, "Unable to find resource: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoundedImageView"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    :cond_29
    :goto_29
    invoke-static {v1}, Lcom/android/fileexplorer/view/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Lcom/android/fileexplorer/view/RoundedDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    check-cast p1, Lcom/android/fileexplorer/view/RoundedDrawable;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/RoundedDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/android/fileexplorer/view/RoundedDrawable;

    move-result-object p2

    iget v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->setBorderWidth(F)Lcom/android/fileexplorer/view/RoundedDrawable;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->setBorderColor(Landroid/content/res/ColorStateList;)Lcom/android/fileexplorer/view/RoundedDrawable;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->setOval(Z)Lcom/android/fileexplorer/view/RoundedDrawable;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)Lcom/android/fileexplorer/view/RoundedDrawable;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)Lcom/android/fileexplorer/view/RoundedDrawable;

    iget-object p2, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    if-eqz p2, :cond_3d

    aget v0, p2, v1

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/android/fileexplorer/view/RoundedDrawable;->setCornerRadius(FFFF)Lcom/android/fileexplorer/view/RoundedDrawable;

    :cond_3d
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->applyColorMod()V

    goto :goto_57

    :cond_41
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_57

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_4b
    if-ge v1, v0, :cond_57

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/fileexplorer/view/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_57
    :goto_57
    return-void
.end method

.method private updateBackgroundDrawableAttrs(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    if-eqz v0, :cond_15

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/android/fileexplorer/view/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    :cond_15
    return-void
.end method

.method private updateDrawableAttrs()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    return v0
.end method

.method public getCornerRadius()F
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getCornerRadius(I)F
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    aget p1, v0, p1

    return p1
.end method

.method public getMaxCornerRadius()F
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_10

    aget v4, v0, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    return v2
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public isOval()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    return v0
.end method

.method public mutateBackground(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public mutatesBackground()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mMutateBackground:Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundResource:I

    if-eq v0, p1, :cond_f

    iput p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundResource:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->resolveBackgroundResource()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method

.method public setBorderColor(I)V
    .registers 2

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .registers 3

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

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_12
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    iget p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_25

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_25
    return-void
.end method

.method public setBorderWidth(F)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mBorderWidth:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_11

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mHasColorFilter:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mColorMod:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->applyColorMod()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_11
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 2

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setCornerRadius(FFFF)V
    .registers 11

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

    :cond_1f
    aput p1, v0, v1

    aput p2, v0, v5

    aput p3, v0, v4

    aput p4, v0, v3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCornerRadius(IF)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mCornerRadii:[F

    aget v1, v0, p1

    cmpl-float v1, v1, p2

    if-nez v1, :cond_9

    return-void

    :cond_9
    aput p2, v0, p1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setCornerRadiusDimen(II)V
    .registers 4

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

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    invoke-static {p1}, Lcom/android/fileexplorer/view/RoundedDrawable;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/fileexplorer/view/RoundedDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    invoke-static {p1}, Lcom/android/fileexplorer/view/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    if-eq v0, p1, :cond_14

    iput p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mResource:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->resolveResource()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mIsOval:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_24

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Lcom/android/fileexplorer/view/RoundedImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1a

    :pswitch_15  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1a
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_24
    return-void

    nop

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
