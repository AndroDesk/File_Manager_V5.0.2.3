.class public Lmiuix/internal/view/CheckWidgetDrawableAnims;
.super Ljava/lang/Object;
.source "CheckWidgetDrawableAnims.java"


# static fields
.field private static final FULL_ALPHA:I

.field private static final HIGH_STIFFNESS:F = 986.96f


# instance fields
.field private mBackgroundDisableAlpha:I

.field private mBackgroundNormalAlpha:I

.field private mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

.field private mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

.field private mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/internal/view/CheckWidgetCircleDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

.field private mIsSingleSelection:Z

.field private mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

.field private mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mParentContentAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mParentScaleFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mParentScaleInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mScale:F

.field private mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field private scaleFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/internal/view/CheckWidgetDrawableAnims;",
            ">;"
        }
    .end annotation
.end field

.field private unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d69

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->FULL_ALPHA:I

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V
    .registers 22

    move-object v0, p0

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    new-instance v1, Lmiuix/androidbasewidget/internal/view/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lmiuix/androidbasewidget/internal/view/b;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;

    invoke-direct {v1, p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

    const-string v2, "Scale"

    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$3;

    const-string v3, "ContentAlpha"

    invoke-direct {v1, p0, v3}, Lmiuix/internal/view/CheckWidgetDrawableAnims$3;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$4;

    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$4;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;

    const-string v2, "Alpha"

    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    iput v8, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    iput v9, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundDisableAlpha:I

    move v1, p2

    iput-boolean v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    new-instance v10, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    move-object v1, v10

    move v2, p3

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(IIIIII)V

    iput-object v10, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    invoke-virtual {v10, v1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    new-instance v1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    move v2, p4

    invoke-direct {v1, p4, v8, v9}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(III)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    new-instance v1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    move/from16 v2, p5

    invoke-direct {v1, v2, v8, v9}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(III)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    move-object v1, p1

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-direct {p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->initAnim()V

    return-void
.end method

.method public static synthetic a(Lmiuix/internal/view/CheckWidgetDrawableAnims;Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->lambda$new$0(Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;
    .registers 1

    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    return-object p0
.end method

.method private initAnim()V
    .registers 12

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const v2, 0x3f59999a  # 0.85f

    invoke-direct {v0, p0, v1, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v3, 0x3f7d70a4  # 0.99f

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const v2, 0x3b03126f  # 0.002f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v0, p0, v4, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v4, 0x3f19999a  # 0.6f

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    new-instance v6, Lmiuix/internal/view/CheckWidgetDrawableAnims$6;

    invoke-direct {v6, p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims$6;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v6, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 v8, 0x3f000000  # 0.5f

    invoke-direct {v0, v6, v7, v8}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v6, 0x3b800000  # 0.00390625f

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    const v9, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v7, v8, v9}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    const/4 v9, 0x0

    invoke-direct {v0, v7, v8, v9}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v7, v8, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v7, 0x3f333333  # 0.7f

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v7, v8, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v7, 0x43db51ec

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v8}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object v10, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v8, v10, v9}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v6, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v6, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v6, v8, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    iget-boolean v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    if-eqz v0, :cond_192

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v4, 0x40a00000  # 5.0f

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    goto :goto_199

    :cond_192
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v4, 0x41200000  # 10.0f

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    :goto_199
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v5, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const v6, 0x3e99999a  # 0.3f

    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    return-void
.end method

.method private synthetic lambda$new$0(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getScale()F
    .registers 2

    iget v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    return v0
.end method

.method public setBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setScale(F)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    iput p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    return-void
.end method

.method public startPressedAnim(ZZ)V
    .registers 4

    if-eqz p2, :cond_96

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p2, v0, :cond_12

    goto/16 :goto_96

    :cond_12
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1f

    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_1f
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2c

    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_2c
    if-nez p1, :cond_3b

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3b

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_3b
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_48
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_55
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_62

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_62
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6f

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_6f
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_7c
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_89

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_89
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_96

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_96
    :goto_96
    return-void
.end method

.method public startUnPressedAnim(ZZ)V
    .registers 5

    if-eqz p2, :cond_b2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p2, v0, :cond_12

    goto/16 :goto_b2

    :cond_12
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_1f
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_2c

    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_2c
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_39

    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_39
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_46

    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_46
    if-eqz p1, :cond_85

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_55
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_62

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_62
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;

    invoke-direct {p2, p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    if-eqz p1, :cond_7d

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 p2, 0x41200000  # 10.0f

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    goto :goto_ac

    :cond_7d
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 p2, 0x40a00000  # 5.0f

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    goto :goto_ac

    :cond_85
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_92

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_92
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_9f

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_9f
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_ac

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_ac
    :goto_ac
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    return-void

    :cond_b2
    :goto_b2
    const/high16 p2, 0x437f0000  # 255.0f

    if-eqz p1, :cond_c8

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    move-result v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    goto :goto_d9

    :cond_c8
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    move-result v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    :goto_d9
    return-void
.end method

.method public verifyChecked(ZZ)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_26

    if-eqz p1, :cond_14

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/16 p2, 0x19

    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    goto :goto_1e

    :cond_14
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    :goto_1e
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    goto :goto_37

    :cond_26
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundDisableAlpha:I

    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    :goto_37
    return-void
.end method
