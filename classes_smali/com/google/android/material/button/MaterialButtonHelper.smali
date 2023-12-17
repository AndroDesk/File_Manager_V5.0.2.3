.class Lcom/google/android/material/button/MaterialButtonHelper;
.super Ljava/lang/Object;
.source "MaterialButtonHelper.java"


# static fields
.field private static final IS_LOLLIPOP:Z


# instance fields
.field private backgroundOverwritten:Z

.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private checkable:Z

.field private cornerRadius:I

.field private cornerRadiusSet:Z

.field private insetBottom:I

.field private insetLeft:I

.field private insetRight:I

.field private insetTop:I

.field private maskDrawable:Landroid/graphics/drawable/Drawable;

.field private final materialButton:Lcom/google/android/material/button/MaterialButton;

.field private rippleColor:Landroid/content/res/ColorStateList;

.field private rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private shouldDrawSurfaceColorStroke:Z

.field private strokeColor:Landroid/content/res/ColorStateList;

.field private strokeWidth:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 11
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 13
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 15
    return-void
.end method

.method private createBackground()Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 1
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 17
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 19
    invoke-static {v0, v1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 22
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 24
    if-eqz v1, :cond_1c

    .line 26
    invoke-static {v0, v1}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 29
    :cond_1c
    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 31
    int-to-float v1, v1

    .line 32
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 37
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 39
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 41
    invoke-direct {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 48
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 50
    int-to-float v3, v3

    .line 51
    iget-boolean v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    .line 53
    if-eqz v4, :cond_3f

    .line 55
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 57
    sget v5, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 59
    invoke-static {v4, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 62
    move-result v4

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v4, v2

    .line 65
    :goto_40
    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 68
    sget-boolean v3, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    .line 70
    const/4 v4, 0x2

    .line 71
    const/4 v5, 0x1

    .line 72
    if-eqz v3, :cond_75

    .line 74
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 76
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 78
    invoke-direct {v3, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 81
    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    const/4 v6, -0x1

    .line 84
    invoke-static {v3, v6}, Lg0/a$b;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 87
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    .line 89
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 91
    invoke-static {v6}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 94
    move-result-object v6

    .line 95
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    .line 97
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 99
    aput-object v1, v4, v2

    .line 101
    aput-object v0, v4, v5

    .line 103
    invoke-direct {v7, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-direct {p0, v7}, Lcom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    .line 109
    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-direct {v3, v6, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 115
    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 117
    return-object v3

    .line 118
    :cond_75
    new-instance v3, Lcom/google/android/material/ripple/RippleDrawableCompat;

    .line 120
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 122
    invoke-direct {v3, v6}, Lcom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 125
    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 129
    invoke-static {v6}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 132
    move-result-object v6

    .line 133
    invoke-static {v3, v6}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 136
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    .line 138
    const/4 v6, 0x3

    .line 139
    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    .line 141
    aput-object v1, v6, v2

    .line 143
    aput-object v0, v6, v5

    .line 145
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    aput-object v0, v6, v4

    .line 149
    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 152
    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 154
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    .line 157
    move-result-object v0

    .line 158
    return-object v0
.end method

.method private getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_31

    .line 2
    sget-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_26

    .line 3
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p1

    .line 6
    :cond_26
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p1

    :cond_31
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method private updateButtonShape(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 14
    :cond_d
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1a

    .line 20
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/Shapeable;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_27

    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/Shapeable;

    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, p1}, Lcom/google/android/material/shape/Shapeable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 40
    :cond_27
    return-void
.end method

.method private updateStroke()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_28

    .line 11
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 13
    int-to-float v2, v2

    .line 14
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 16
    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 19
    if-eqz v1, :cond_28

    .line 21
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 23
    int-to-float v0, v0

    .line 24
    iget-boolean v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    .line 26
    if-eqz v2, :cond_24

    .line 28
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 30
    sget v3, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 32
    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 35
    move-result v2

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v2, 0x0

    .line 38
    :goto_25
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 41
    :cond_28
    return-void
.end method

.method private wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .registers 9

    .line 1
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    .line 3
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    .line 5
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 7
    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    .line 9
    iget v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 11
    move-object v0, v6

    .line 12
    move-object v1, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 16
    return-object v6
.end method


# virtual methods
.method public getCornerRadius()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 3
    return v0
.end method

.method public getMaskDrawable()Lcom/google/android/material/shape/Shapeable;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 3
    if-eqz v0, :cond_26

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_26

    .line 12
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x2

    .line 19
    if-le v0, v2, :cond_1d

    .line 21
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    .line 29
    return-object v0

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    .line 38
    return-object v0

    .line 39
    :cond_26
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 2

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getStrokeWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 3
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    return-object v0
.end method

.method public isBackgroundOverwritten()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 3
    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 3
    return v0
.end method

.method public loadFromAttributes(Landroid/content/res/TypedArray;)V
    .registers 8

    .line 1
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetLeft:I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    .line 10
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetRight:I

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    .line 18
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetTop:I

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 26
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetBottom:I

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 34
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 39
    move-result v2

    .line 40
    const/4 v3, -0x1

    .line 41
    if-eqz v2, :cond_3d

    .line 43
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 49
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 51
    int-to-float v0, v0

    .line 52
    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 62
    :cond_3d
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_strokeWidth:I

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 70
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTintMode:I

    .line 72
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 75
    move-result v0

    .line 76
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 78
    invoke-static {v0, v2}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 84
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v0

    .line 90
    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTint:I

    .line 92
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 98
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    move-result-object v0

    .line 104
    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_strokeColor:I

    .line 106
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 112
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    move-result-object v0

    .line 118
    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_rippleColor:I

    .line 120
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 126
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_checkable:I

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 131
    move-result v0

    .line 132
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 134
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_elevation:I

    .line 136
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 139
    move-result v0

    .line 140
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 142
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 144
    invoke-static {v1}, Lm0/g0$e;->f(Landroid/view/View;)I

    .line 147
    move-result v1

    .line 148
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 153
    move-result v2

    .line 154
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 156
    invoke-static {v3}, Lm0/g0$e;->e(Landroid/view/View;)I

    .line 159
    move-result v3

    .line 160
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 162
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 165
    move-result v4

    .line 166
    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_android_background:I

    .line 168
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_b1

    .line 174
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    .line 177
    goto :goto_c4

    .line 178
    :cond_b1
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 180
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->createBackground()Landroid/graphics/drawable/Drawable;

    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {p1, v5}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_c4

    .line 193
    int-to-float v0, v0

    .line 194
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 197
    :cond_c4
    :goto_c4
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 199
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    .line 201
    add-int/2addr v1, v0

    .line 202
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 204
    add-int/2addr v2, v0

    .line 205
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    .line 207
    add-int/2addr v3, v0

    .line 208
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 210
    add-int/2addr v4, v0

    .line 211
    invoke-static {p1, v1, v2, v3, v4}, Lm0/g0$e;->k(Landroid/view/View;IIII)V

    .line 214
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 14
    :cond_d
    return-void
.end method

.method public setBackgroundOverwritten()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 4
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 6
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 13
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    return-void
.end method

.method public setCheckable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 3
    return-void
.end method

.method public setCornerRadius(I)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 7
    if-eq v0, p1, :cond_17

    .line 9
    :cond_8
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 14
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 16
    int-to-float p1, p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 24
    :cond_17
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_3f

    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 7
    sget-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    .line 9
    if-eqz v0, :cond_24

    .line 11
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1

    .line 17
    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    .line 19
    if-eqz v1, :cond_24

    .line 21
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 29
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 36
    goto :goto_3f

    .line 37
    :cond_24
    if-nez v0, :cond_3f

    .line 39
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object v0

    .line 45
    instance-of v0, v0, Lcom/google/android/material/ripple/RippleDrawableCompat;

    .line 47
    if-eqz v0, :cond_3f

    .line 49
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/google/android/material/ripple/RippleDrawableCompat;

    .line 57
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/android/material/ripple/RippleDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->updateButtonShape(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 6
    return-void
.end method

.method public setShouldDrawSurfaceColorStroke(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 6
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 10
    :cond_9
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 10
    :cond_9
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_15

    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_15

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 19
    invoke-static {p1, v0}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 22
    :cond_15
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    if-eq v0, p1, :cond_19

    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_19

    .line 13
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 15
    if-eqz p1, :cond_19

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 23
    invoke-static {p1, v0}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 26
    :cond_19
    return-void
.end method

.method public updateMaskBounds(II)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    .line 7
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 9
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    .line 11
    sub-int/2addr p2, v3

    .line 12
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 14
    sub-int/2addr p1, v3

    .line 15
    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    :cond_11
    return-void
.end method
