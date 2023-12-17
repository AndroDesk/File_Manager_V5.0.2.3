.class public Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;
.super Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;
.source "SeekBaThumbShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;
    }
.end annotation


# static fields
.field private static final FULL_ALPHA:I = 0xff

.field private static final TAG:Ljava/lang/String; = "SeekBaThumbShape"

.field private static mShadowDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mScale:F

.field private mScaleFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowAlpha:F

.field private mShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 2
    iput v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    .line 4
    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;

    const-string v1, "ShadowAlpha"

    invoke-direct {v0, p0, v1}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 5
    new-instance v0, Lmiuix/androidbasewidget/internal/view/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/androidbasewidget/internal/view/a;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;I)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 6
    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;

    const-string v1, "Scale"

    invoke-direct {v0, p0, v1}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 7
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->initAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V
    .registers 4

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V

    const/high16 p2, 0x3f800000  # 1.0f

    .line 9
    iput p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    .line 11
    new-instance p2, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;

    const-string p3, "ShadowAlpha"

    invoke-direct {p2, p0, p3}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 12
    new-instance p2, Lmiuix/androidbasewidget/internal/view/a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lmiuix/androidbasewidget/internal/view/a;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;I)V

    iput-object p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 13
    new-instance p2, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;

    const-string p3, "Scale"

    invoke-direct {p2, p0, p3}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 14
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->initAnim()V

    if-eqz p1, :cond_35

    .line 15
    sget-object p2, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_35

    .line 16
    sget p2, Lmiuix/androidbasewidget/R$drawable;->miuix_appcompat_sliding_btn_slider_shadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    :cond_35
    return-void
.end method

.method public static synthetic a(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->lambda$new$0(Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    if-eqz v1, :cond_41

    .line 9
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    move-result v1

    .line 13
    sget-object v2, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->getIntrinsicWidth()I

    .line 22
    move-result v3

    .line 23
    sub-int/2addr v1, v3

    .line 24
    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->getIntrinsicHeight()I

    .line 27
    move-result v3

    .line 28
    sub-int/2addr v2, v3

    .line 29
    sget-object v3, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 33
    div-int/lit8 v1, v1, 0x2

    .line 35
    sub-int/2addr v4, v1

    .line 36
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 38
    div-int/lit8 v2, v2, 0x2

    .line 40
    sub-int/2addr v5, v2

    .line 41
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 43
    add-int/2addr v6, v1

    .line 44
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 46
    add-int/2addr v0, v2

    .line 47
    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    sget-object v0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    const/high16 v1, 0x437f0000  # 255.0f

    .line 54
    iget v2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    .line 56
    mul-float/2addr v2, v1

    .line 57
    float-to-int v1, v2

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 61
    sget-object v0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    :cond_41
    return-void
.end method

.method private initAnim()V
    .registers 7

    .line 1
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 3
    iget-object v1, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 5
    const v2, 0x404c28f6  # 3.19f

    .line 8
    invoke-direct {v0, p0, v1, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 11
    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 13
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 16
    move-result-object v0

    .line 17
    const v1, 0x4476bd71

    .line 20
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 23
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 25
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 28
    move-result-object v0

    .line 29
    const v2, 0x3f333333  # 0.7f

    .line 32
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 35
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 37
    const v2, 0x3b03126f  # 0.002f

    .line 40
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 43
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 45
    iget-object v3, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 47
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 50
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 52
    iget-object v3, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 54
    const/high16 v4, 0x3f800000  # 1.0f

    .line 56
    invoke-direct {v0, p0, v3, v4}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 59
    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 61
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 68
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 70
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 73
    move-result-object v0

    .line 74
    const v3, 0x3f4ccccd  # 0.8f

    .line 77
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 80
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 82
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 85
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 87
    iget-object v2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 89
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 92
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 94
    iget-object v2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 96
    invoke-direct {v0, p0, v2, v4}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 99
    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 101
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 108
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 110
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 113
    move-result-object v0

    .line 114
    const v2, 0x3f7d70a4  # 0.99f

    .line 117
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 120
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 122
    const/high16 v3, 0x3b800000  # 0.00390625f

    .line 124
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 127
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 129
    iget-object v4, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 131
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 134
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 136
    iget-object v4, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 138
    const/4 v5, 0x0

    .line 139
    invoke-direct {v0, p0, v4, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 142
    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 144
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 151
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 153
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 160
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 162
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 165
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 167
    iget-object v1, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 169
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 172
    return-void
.end method

.method private synthetic lambda$new$0(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 7
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 9
    add-int/2addr v1, v2

    .line 10
    div-int/lit8 v1, v1, 0x2

    .line 12
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 14
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 16
    add-int/2addr v2, v0

    .line 17
    div-int/lit8 v2, v2, 0x2

    .line 19
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->drawShadow(Landroid/graphics/Canvas;)V

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    iget v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    .line 27
    int-to-float v1, v1

    .line 28
    int-to-float v2, v2

    .line 29
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 32
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 38
    return-void
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    .line 3
    return v0
.end method

.method public getShadowAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    .line 3
    return v0
.end method

.method public newSeekBarGradientState()Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
    .registers 2

    .line 1
    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;

    .line 3
    invoke-direct {v0}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;-><init>()V

    .line 6
    return-object v0
.end method

.method public setScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    .line 3
    return-void
.end method

.method public setShadowAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    .line 3
    return-void
.end method

.method public startPressedAnim()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 11
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 16
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1a

    .line 22
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 24
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 27
    :cond_1a
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 29
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_27

    .line 35
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 37
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 40
    :cond_27
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 42
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_34

    .line 48
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 50
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 53
    :cond_34
    return-void
.end method

.method public startUnPressedAnim()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 11
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 16
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1a

    .line 22
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 24
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 27
    :cond_1a
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 29
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_27

    .line 35
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 37
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 40
    :cond_27
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 42
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_34

    .line 48
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 50
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 53
    :cond_34
    return-void
.end method
