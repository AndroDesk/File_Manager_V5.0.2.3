.class public Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;
.super Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;
.source "SeekBarBackGroundShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$SeekBarBackGroundShapeDrawableState;
    }
.end annotation


# static fields
.field private static final FULL_ALPHA:I = 0xff


# instance fields
.field private mBlackAlpha:F

.field private mBlackAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    .line 3
    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;

    const-string v1, "BlackAlpha"

    invoke-direct {v0, p0, v1}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 4
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->initAnim()V

    .line 5
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->initMaskDrawable()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V
    .registers 4

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    .line 8
    new-instance p1, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;

    const-string p2, "BlackAlpha"

    invoke-direct {p1, p0, p2}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;Ljava/lang/String;)V

    iput-object p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 9
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->initAnim()V

    .line 10
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->initMaskDrawable()V

    return-void
.end method

.method public static synthetic a(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->lambda$initAnim$0(Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 12
    iget v1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    .line 14
    const/high16 v2, 0x437f0000  # 255.0f

    .line 16
    mul-float/2addr v1, v2

    .line 17
    float-to-int v1, v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 21
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 30
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 32
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    return-void
.end method

.method private initAnim()V
    .registers 7

    .line 1
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 3
    iget-object v1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 5
    const v2, 0x3d4ccccd  # 0.05f

    .line 8
    invoke-direct {v0, p0, v1, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 11
    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 13
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 16
    move-result-object v0

    .line 17
    const v1, 0x4476bd71

    .line 20
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 23
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 25
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 28
    move-result-object v0

    .line 29
    const v2, 0x3f7d70a4  # 0.99f

    .line 32
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 35
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 37
    const/high16 v3, 0x3b800000  # 0.00390625f

    .line 39
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 42
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 44
    new-instance v4, Lmiuix/androidbasewidget/internal/view/b;

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-direct {v4, p0, v5}, Lmiuix/androidbasewidget/internal/view/b;-><init>(Ljava/lang/Object;I)V

    .line 50
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 53
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 55
    iget-object v4, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-direct {v0, p0, v4, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 61
    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 63
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 70
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 72
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 79
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 81
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 84
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 86
    new-instance v1, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$2;

    .line 88
    invoke-direct {v1, p0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$2;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;)V

    .line 91
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 94
    return-void
.end method

.method private initMaskDrawable()V
    .registers 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColors()[I

    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 14
    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 23
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getShape()I

    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 32
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 34
    const/high16 v1, -0x1000000

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 39
    return-void
.end method

.method private synthetic lambda$initAnim$0(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->drawMask(Landroid/graphics/Canvas;)V

    .line 7
    return-void
.end method

.method public getBlackAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    .line 3
    return v0
.end method

.method public newSeekBarGradientState()Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
    .registers 2

    .line 1
    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$SeekBarBackGroundShapeDrawableState;

    .line 3
    invoke-direct {v0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$SeekBarBackGroundShapeDrawableState;-><init>()V

    .line 6
    return-object v0
.end method

.method public setBlackAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    .line 3
    return-void
.end method

.method public startPressedAnim()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 6
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 8
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 11
    return-void
.end method

.method public startUnPressedAnim()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 6
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 8
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 11
    return-void
.end method
