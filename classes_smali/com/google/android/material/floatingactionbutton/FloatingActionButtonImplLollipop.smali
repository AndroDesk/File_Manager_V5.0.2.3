.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.source "FloatingActionButtonImplLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V

    .line 4
    return-void
.end method

.method private createElevationAnimator(FF)Landroid/animation/Animator;
    .registers 10

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v3, v2, [F

    .line 11
    const/4 v4, 0x0

    .line 12
    aput p1, v3, v4

    .line 14
    const-string p1, "elevation"

    .line 16
    invoke-static {v1, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 19
    move-result-object p1

    .line 20
    const-wide/16 v5, 0x0

    .line 22
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 29
    move-result-object p1

    .line 30
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 32
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 34
    new-array v2, v2, [F

    .line 36
    aput p2, v2, v4

    .line 38
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 41
    move-result-object p2

    .line 42
    const-wide/16 v1, 0x64

    .line 44
    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 51
    sget-object p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 53
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public createBorderDrawable(ILandroid/content/res/ColorStateList;)Lcom/google/android/material/floatingactionbutton/BorderDrawable;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 9
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-direct {v1, v2}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 17
    sget v2, Lcom/google/android/material/R$color;->design_fab_stroke_top_outer_color:I

    .line 19
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 22
    move-result v2

    .line 23
    sget v3, Lcom/google/android/material/R$color;->design_fab_stroke_top_inner_color:I

    .line 25
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 28
    move-result v3

    .line 29
    sget v4, Lcom/google/android/material/R$color;->design_fab_stroke_end_inner_color:I

    .line 31
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 34
    move-result v4

    .line 35
    sget v5, Lcom/google/android/material/R$color;->design_fab_stroke_end_outer_color:I

    .line 37
    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 40
    move-result v0

    .line 41
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->setGradientColors(IIII)V

    .line 44
    int-to-float p1, p1

    .line 45
    invoke-virtual {v1, p1}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->setBorderWidth(F)V

    .line 48
    invoke-virtual {v1, p2}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 51
    return-object v1
.end method

.method public createShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;

    .line 8
    invoke-direct {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 11
    return-object v1
.end method

.method public getElevation()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    .line 3
    invoke-interface {v0}, Lcom/google/android/material/shadow/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 9
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getPadding(Landroid/graphics/Rect;)V

    .line 12
    goto :goto_25

    .line 13
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shouldExpandBoundsForA11y()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_21

    .line 19
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->minTouchTargetSize:I

    .line 21
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    .line 26
    move-result v1

    .line 27
    sub-int/2addr v0, v1

    .line 28
    div-int/lit8 v0, v0, 0x2

    .line 30
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    :goto_25
    return-void
.end method

.method public initializeBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    if-eqz p2, :cond_10

    .line 12
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 14
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 17
    :cond_10
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 19
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 28
    const/4 p2, 0x0

    .line 29
    if-lez p4, :cond_3d

    .line 31
    invoke-virtual {p0, p4, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 37
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    .line 39
    const/4 p4, 0x2

    .line 40
    new-array p4, p4, [Landroid/graphics/drawable/Drawable;

    .line 42
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    aput-object v1, p4, v0

    .line 50
    const/4 v0, 0x1

    .line 51
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    aput-object v1, p4, v0

    .line 58
    invoke-direct {p1, p4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 61
    goto :goto_41

    .line 62
    :cond_3d
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 64
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 66
    :goto_41
    new-instance p4, Landroid/graphics/drawable/RippleDrawable;

    .line 68
    invoke-static {p3}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 71
    move-result-object p3

    .line 72
    invoke-direct {p4, p3, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 75
    iput-object p4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    iput-object p4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 79
    return-void
.end method

.method public jumpDrawableToCurrentState()V
    .registers 1

    return-void
.end method

.method public onCompatShadowChanged()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updatePadding()V

    .line 4
    return-void
.end method

.method public onDrawableStateChanged([I)V
    .registers 2

    return-void
.end method

.method public onElevationsChanged(FFF)V
    .registers 12

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    new-instance v1, Landroid/animation/StateListAnimator;

    .line 5
    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 8
    sget-object v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 10
    invoke-direct {p0, p1, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {v1, v2, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 17
    sget-object p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, p3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 26
    sget-object p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, p3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 35
    sget-object p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v1, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 44
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 46
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 49
    new-instance p3, Ljava/util/ArrayList;

    .line 51
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 56
    const/4 v3, 0x1

    .line 57
    new-array v4, v3, [F

    .line 59
    const/4 v5, 0x0

    .line 60
    aput p1, v4, v5

    .line 62
    const-string p1, "elevation"

    .line 64
    invoke-static {v2, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 67
    move-result-object p1

    .line 68
    const-wide/16 v6, 0x0

    .line 70
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const/16 p1, 0x18

    .line 79
    const-wide/16 v6, 0x64

    .line 81
    if-gt v0, p1, :cond_69

    .line 83
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 85
    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 87
    new-array v2, v3, [F

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    .line 92
    move-result v4

    .line 93
    aput v4, v2, v5

    .line 95
    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_69
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 108
    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 110
    new-array v2, v3, [F

    .line 112
    const/4 v3, 0x0

    .line 113
    aput v3, v2, v5

    .line 115
    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-array p1, v5, [Landroid/animation/Animator;

    .line 128
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 131
    move-result-object p1

    .line 132
    check-cast p1, [Landroid/animation/Animator;

    .line 134
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 137
    sget-object p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 139
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    sget-object p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    .line 144
    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 147
    sget-object p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    .line 149
    invoke-direct {p0, v3, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 156
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shouldAddPadding()Z

    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_a9

    .line 167
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updatePadding()V

    .line 170
    :cond_a9
    return-void
.end method

.method public requirePreDrawListener()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 5
    if-eqz v1, :cond_10

    .line 7
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 9
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 20
    :goto_13
    return-void
.end method

.method public shouldAddPadding()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    .line 3
    invoke-interface {v0}, Lcom/google/android/material/shadow/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_11

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shouldExpandBoundsForA11y()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 19
    :goto_12
    return v0
.end method

.method public updateFromViewRotation()V
    .registers 1

    return-void
.end method
