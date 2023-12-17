.class public Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;
.super Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;
.source "CheckBoxAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;
    }
.end annotation


# static fields
.field public static final FULL_ALPHA:I = 0xff

.field public static final ONE_THIRD_ALPHA:I = 0x4c

.field private static final TAG:Ljava/lang/String; = "MiuixCheckbox"


# instance fields
.field private mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

.field private mContentAlpha:F

.field private mIsEnabled:Z

.field private mPreChecked:Z

.field private mPrePressed:Z

.field private mScale:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 2
    iput v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 3
    iput v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 5
    iput-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V
    .registers 15

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    const/high16 p1, 0x3f800000  # 1.0f

    .line 7
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 8
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 10
    iput-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    .line 11
    new-instance p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    move-result v2

    iget v3, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget v4, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget v5, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget v6, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget v7, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget v8, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget v9, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget v10, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lmiuix/internal/view/CheckWidgetDrawableAnims;-><init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method

.method private safeGetBoolean(Landroid/content/res/TypedArray;IZ)Z
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 4
    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return p1

    .line 6
    :catch_5
    move-exception p1

    .line 7
    const-string p2, "MiuixCheckbox"

    .line 9
    const-string v0, "try catch Exception insafeGetBoolean"

    .line 11
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    return p3
.end method

.method private safeGetColor(Landroid/content/res/TypedArray;II)I
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 4
    move-result p1
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return p1

    .line 6
    :catch_5
    move-exception p1

    .line 7
    const-string p2, "MiuixCheckbox"

    .line 9
    const-string v0, "try catch UnsupportedOperationException insafeGetColor"

    .line 11
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    return p3
.end method

.method private safeGetInt(Landroid/content/res/TypedArray;II)I
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 4
    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return p1

    .line 6
    :catch_5
    move-exception p1

    .line 7
    const-string p2, "MiuixCheckbox"

    .line 9
    const-string v0, "try catch Exception insafeGetInt"

    .line 11
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    return p3
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 15

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->getCheckWidgetDrawableStyle()I

    .line 7
    move-result v0

    .line 8
    sget-object v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable:[I

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 16
    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_disableBackgroundColor:I

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0, p1, v1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;II)I

    .line 22
    move-result v1

    .line 23
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    .line 25
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 27
    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnAlphaBackgroundColor:I

    .line 29
    invoke-direct {p0, p1, v1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;II)I

    .line 32
    move-result v1

    .line 33
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    .line 35
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 37
    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnBackgroundColor:I

    .line 39
    invoke-direct {p0, p1, v1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;II)I

    .line 42
    move-result v1

    .line 43
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    .line 45
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 47
    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeColor:I

    .line 49
    invoke-direct {p0, p1, v1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;II)I

    .line 52
    move-result v1

    .line 53
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    .line 55
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 57
    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundNormalAlpha:I

    .line 59
    invoke-direct {p0, p1, v1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;II)I

    .line 62
    move-result v1

    .line 63
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    .line 65
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 67
    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundDisableAlpha:I

    .line 69
    invoke-direct {p0, p1, v1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;II)I

    .line 72
    move-result v1

    .line 73
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    .line 75
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 77
    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeNormalAlpha:I

    .line 79
    invoke-direct {p0, p1, v1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;II)I

    .line 82
    move-result v1

    .line 83
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    .line 85
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 87
    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeDisableAlpha:I

    .line 89
    invoke-direct {p0, p1, v1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;II)I

    .line 92
    move-result v1

    .line 93
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    .line 95
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 97
    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_touchAnimEnable:I

    .line 99
    invoke-direct {p0, p1, v1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetBoolean(Landroid/content/res/TypedArray;IZ)Z

    .line 102
    move-result v1

    .line 103
    iput-boolean v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    new-instance p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 110
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    .line 113
    move-result v4

    .line 114
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 116
    iget v5, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    .line 118
    iget v6, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    .line 120
    iget v7, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    .line 122
    iget v8, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    .line 124
    iget v9, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    .line 126
    iget v10, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    .line 128
    iget v11, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    .line 130
    iget v12, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    .line 132
    move-object v2, p1

    .line 133
    move-object v3, p0

    .line 134
    invoke-direct/range {v2 .. v12}, Lmiuix/internal/view/CheckWidgetDrawableAnims;-><init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    .line 137
    iput-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 139
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 9
    if-eqz v0, :cond_e

    .line 11
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->draw(Landroid/graphics/Canvas;)V

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 17
    iget-boolean v0, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    .line 19
    if-nez v0, :cond_1f

    .line 21
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    .line 28
    :cond_1b
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->draw(Landroid/graphics/Canvas;)V

    .line 31
    return-void

    .line 32
    :cond_1f
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 42
    iget-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    .line 44
    if-eqz v0, :cond_3e

    .line 46
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 48
    if-eqz v0, :cond_34

    .line 50
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    .line 53
    :cond_34
    const/high16 v0, 0x437f0000  # 255.0f

    .line 55
    iget v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    .line 57
    mul-float/2addr v1, v0

    .line 58
    float-to-int v0, v1

    .line 59
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 62
    goto :goto_43

    .line 63
    :cond_3e
    const/16 v0, 0x4c

    .line 65
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 68
    :goto_43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 74
    move-result-object v0

    .line 75
    iget v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 77
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 79
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 81
    add-int/2addr v3, v4

    .line 82
    div-int/2addr v3, v2

    .line 83
    int-to-float v3, v3

    .line 84
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 86
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 88
    add-int/2addr v4, v0

    .line 89
    div-int/2addr v4, v2

    .line 90
    int-to-float v0, v4

    .line 91
    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 94
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->draw(Landroid/graphics/Canvas;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 100
    return-void
.end method

.method public getCheckWidgetDrawableStyle()I
    .registers 2

    .line 1
    sget v0, Lmiuix/appcompat/R$style;->CheckWidgetDrawable_CheckBox:I

    .line 3
    return v0
.end method

.method public getContentAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    .line 3
    return v0
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 3
    return v0
.end method

.method public isSingleSelectionWidget()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newCheckWidgetConstantState()Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
    .registers 2

    .line 1
    new-instance v0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;

    .line 3
    invoke-direct {v0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;-><init>()V

    .line 6
    return-object v0
.end method

.method public onStateChange([I)Z
    .registers 10

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 7
    if-nez v1, :cond_9

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_18

    .line 16
    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 18
    if-eqz v1, :cond_18

    .line 20
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_18
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    .line 28
    array-length v2, p1

    .line 29
    move v3, v1

    .line 30
    move v4, v3

    .line 31
    :goto_1e
    if-ge v1, v2, :cond_3b

    .line 33
    aget v5, p1, v1

    .line 35
    const v6, 0x10100a7

    .line 38
    const/4 v7, 0x1

    .line 39
    if-ne v5, v6, :cond_2a

    .line 41
    move v3, v7

    .line 42
    goto :goto_38

    .line 43
    :cond_2a
    const v6, 0x10100a0

    .line 46
    if-ne v5, v6, :cond_31

    .line 48
    move v4, v7

    .line 49
    goto :goto_38

    .line 50
    :cond_31
    const v6, 0x101009e

    .line 53
    if-ne v5, v6, :cond_38

    .line 55
    iput-boolean v7, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    .line 57
    :cond_38
    :goto_38
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_1e

    .line 60
    :cond_3b
    if-eqz v3, :cond_40

    .line 62
    invoke-virtual {p0, v4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->startPressedAnim(Z)V

    .line 65
    :cond_40
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 67
    if-nez p1, :cond_4b

    .line 69
    if-nez v3, :cond_4b

    .line 71
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    .line 73
    invoke-virtual {p0, v4, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->verifyChecked(ZZ)V

    .line 76
    :cond_4b
    if-nez v3, :cond_58

    .line 78
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 80
    if-nez p1, :cond_55

    .line 82
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    .line 84
    if-eq v4, p1, :cond_58

    .line 86
    :cond_55
    invoke-virtual {p0, v4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->startUnPressedAnim(Z)V

    .line 89
    :cond_58
    iput-boolean v3, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 91
    iput-boolean v4, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    .line 93
    return v0
.end method

.method public setBounds(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCheckWidgetDrawableBounds(IIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->setBounds(IIII)V

    :cond_7
    return-void
.end method

.method public setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public setContentAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    .line 3
    return-void
.end method

.method public setScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 3
    return-void
.end method

.method public startPressedAnim(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v1, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 7
    iget-boolean v1, v1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    .line 9
    invoke-virtual {v0, p1, v1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->startPressedAnim(ZZ)V

    .line 12
    :cond_b
    return-void
.end method

.method public startUnPressedAnim(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v1, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 7
    iget-boolean v1, v1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    .line 9
    invoke-virtual {v0, p1, v1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->startUnPressedAnim(ZZ)V

    .line 12
    :cond_b
    return-void
.end method

.method public verifyChecked(ZZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0, p1, p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->verifyChecked(ZZ)V

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    :cond_a
    return-void
.end method
