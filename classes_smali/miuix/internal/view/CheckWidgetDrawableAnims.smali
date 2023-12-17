.class public Lmiuix/internal/view/CheckWidgetDrawableAnims;
.super Ljava/lang/Object;
.source "CheckWidgetDrawableAnims.java"


# static fields
.field private static final FULL_ALPHA:I = 0xff

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
.method public constructor <init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V
    .registers 22

    move-object v0, p0

    move/from16 v8, p6

    move/from16 v9, p7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000  # 1.0f

    .line 2
    iput v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    .line 3
    new-instance v1, Lmiuix/androidbasewidget/internal/view/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lmiuix/androidbasewidget/internal/view/b;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 4
    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;

    invoke-direct {v1, p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 5
    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

    const-string v2, "Scale"

    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 6
    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$3;

    const-string v3, "ContentAlpha"

    invoke-direct {v1, p0, v3}, Lmiuix/internal/view/CheckWidgetDrawableAnims$3;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 7
    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$4;

    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$4;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 8
    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;

    const-string v2, "Alpha"

    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 9
    iput v8, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    .line 10
    iput v9, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundDisableAlpha:I

    move v1, p2

    .line 11
    iput-boolean v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    .line 12
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

    .line 13
    iget v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    invoke-virtual {v10, v1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 14
    new-instance v1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    move v2, p4

    invoke-direct {v1, p4, v8, v9}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(III)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 16
    new-instance v1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    move/from16 v2, p5

    invoke-direct {v1, v2, v8, v9}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(III)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/16 v2, 0xff

    .line 17
    invoke-virtual {v1, v2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    move-object v1, p1

    .line 18
    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 19
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

    .line 1
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 3
    return-object p0
.end method

.method private initAnim()V
    .registers 12

    .line 1
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 3
    iget-object v1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 5
    const v2, 0x3f59999a  # 0.85f

    .line 8
    invoke-direct {v0, p0, v1, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 11
    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 13
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 16
    move-result-object v0

    .line 17
    const v1, 0x4476bd71

    .line 20
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 23
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 25
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 28
    move-result-object v0

    .line 29
    const v3, 0x3f7d70a4  # 0.99f

    .line 32
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 35
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 37
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    .line 44
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 46
    const v2, 0x3b03126f  # 0.002f

    .line 49
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 52
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 54
    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 56
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 59
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 61
    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 63
    const/high16 v5, 0x3f800000  # 1.0f

    .line 65
    invoke-direct {v0, p0, v4, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 68
    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 70
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 77
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 79
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 82
    move-result-object v0

    .line 83
    const v4, 0x3f19999a  # 0.6f

    .line 86
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 89
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 91
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 94
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 96
    new-instance v6, Lmiuix/internal/view/CheckWidgetDrawableAnims$6;

    .line 98
    invoke-direct {v6, p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims$6;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    .line 101
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 104
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 106
    iget-object v6, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 108
    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 110
    const/high16 v8, 0x3f000000  # 0.5f

    .line 112
    invoke-direct {v0, v6, v7, v8}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 115
    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 117
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 124
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 126
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 133
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 135
    const/high16 v6, 0x3b800000  # 0.00390625f

    .line 137
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 140
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 142
    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 144
    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 147
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 149
    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 151
    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 153
    const v9, 0x3dcccccd  # 0.1f

    .line 156
    invoke-direct {v0, v7, v8, v9}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 159
    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 161
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 168
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 170
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 177
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 179
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 182
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 184
    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 186
    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 189
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 191
    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 193
    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 195
    const/4 v9, 0x0

    .line 196
    invoke-direct {v0, v7, v8, v9}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 199
    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 201
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 208
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 210
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 217
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 219
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 222
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 224
    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 226
    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 229
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 231
    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 233
    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 235
    invoke-direct {v0, v7, v8, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 238
    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 240
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 247
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 249
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 252
    move-result-object v0

    .line 253
    const v7, 0x3f333333  # 0.7f

    .line 256
    invoke-virtual {v0, v7}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 259
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 261
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 264
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 266
    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 268
    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 271
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 273
    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 275
    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 277
    invoke-direct {v0, v7, v8, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 280
    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 282
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 285
    move-result-object v0

    .line 286
    const v7, 0x43db51ec

    .line 289
    invoke-virtual {v0, v7}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 292
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 294
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 301
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 303
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 306
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 308
    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 310
    invoke-virtual {v0, v8}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 313
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 315
    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 317
    iget-object v10, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 319
    invoke-direct {v0, v8, v10, v9}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 322
    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 324
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 331
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 333
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 340
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 342
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 345
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 347
    iget-object v6, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 349
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 352
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 354
    iget-object v6, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 356
    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 358
    invoke-direct {v0, v6, v8, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 361
    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 363
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0, v7}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 370
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 372
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 379
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 381
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 384
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 386
    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 388
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 391
    iget-boolean v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    .line 393
    if-eqz v0, :cond_192

    .line 395
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 397
    const/high16 v4, 0x40a00000  # 5.0f

    .line 399
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 402
    goto :goto_199

    .line 403
    :cond_192
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 405
    const/high16 v4, 0x41200000  # 10.0f

    .line 407
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 410
    :goto_199
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 412
    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 414
    iget-object v5, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 416
    const v6, 0x3e99999a  # 0.3f

    .line 419
    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 422
    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 424
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 431
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 433
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 440
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 442
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 445
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 447
    iget-object v1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 449
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 452
    return-void
.end method

.method private synthetic lambda$new$0(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    return-void
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    .line 3
    return v0
.end method

.method public setBounds(IIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 6
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setScale(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    .line 6
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    .line 11
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    .line 16
    iput p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    .line 18
    return-void
.end method

.method public startPressedAnim(ZZ)V
    .registers 4

    .line 1
    if-eqz p2, :cond_96

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object p2

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 14
    move-result-object v0

    .line 15
    if-eq p2, v0, :cond_12

    .line 17
    goto/16 :goto_96

    .line 19
    :cond_12
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 21
    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_1f

    .line 27
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 29
    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 32
    :cond_1f
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 34
    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_2c

    .line 40
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 42
    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 45
    :cond_2c
    if-nez p1, :cond_3b

    .line 47
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 49
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3b

    .line 55
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 57
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 60
    :cond_3b
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 62
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_48

    .line 68
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 70
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 73
    :cond_48
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 75
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_55

    .line 81
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 83
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 86
    :cond_55
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 88
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_62

    .line 94
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 96
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 99
    :cond_62
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 101
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_6f

    .line 107
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 109
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 112
    :cond_6f
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 114
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_7c

    .line 120
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 122
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 125
    :cond_7c
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 127
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_89

    .line 133
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 135
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 138
    :cond_89
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 140
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_96

    .line 146
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 148
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 151
    :cond_96
    :goto_96
    return-void
.end method

.method public startUnPressedAnim(ZZ)V
    .registers 5

    .line 1
    if-eqz p2, :cond_b2

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object p2

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 14
    move-result-object v0

    .line 15
    if-eq p2, v0, :cond_12

    .line 17
    goto/16 :goto_b2

    .line 19
    :cond_12
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 21
    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_1f

    .line 27
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 29
    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 32
    :cond_1f
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 34
    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_2c

    .line 40
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 42
    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 45
    :cond_2c
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 47
    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_39

    .line 53
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 55
    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 58
    :cond_39
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 60
    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_46

    .line 66
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 68
    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 71
    :cond_46
    if-eqz p1, :cond_85

    .line 73
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 75
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_55

    .line 81
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 83
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 86
    :cond_55
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 88
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_62

    .line 94
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 96
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 99
    :cond_62
    new-instance p1, Landroid/os/Handler;

    .line 101
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 104
    new-instance p2, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;

    .line 106
    invoke-direct {p2, p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    .line 109
    const-wide/16 v0, 0x32

    .line 111
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    iget-boolean p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    .line 116
    if-eqz p1, :cond_7d

    .line 118
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 120
    const/high16 p2, 0x41200000  # 10.0f

    .line 122
    invoke-virtual {p1, p2}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 125
    goto :goto_ac

    .line 126
    :cond_7d
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 128
    const/high16 p2, 0x40a00000  # 5.0f

    .line 130
    invoke-virtual {p1, p2}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 133
    goto :goto_ac

    .line 134
    :cond_85
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 136
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_92

    .line 142
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 144
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 147
    :cond_92
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 149
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_9f

    .line 155
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 157
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 160
    :cond_9f
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 162
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_ac

    .line 168
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 170
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 173
    :cond_ac
    :goto_ac
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 175
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 178
    return-void

    .line 179
    :cond_b2
    :goto_b2
    const/high16 p2, 0x437f0000  # 255.0f

    .line 181
    if-eqz p1, :cond_c8

    .line 183
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 185
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 187
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 194
    move-result v0

    .line 195
    mul-float/2addr v0, p2

    .line 196
    float-to-int p2, v0

    .line 197
    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 200
    goto :goto_d9

    .line 201
    :cond_c8
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 203
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 205
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 212
    move-result v0

    .line 213
    mul-float/2addr v0, p2

    .line 214
    float-to-int p2, v0

    .line 215
    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 218
    :goto_d9
    return-void
.end method

.method public verifyChecked(ZZ)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_26

    .line 4
    if-eqz p1, :cond_14

    .line 6
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 8
    const/16 p2, 0xff

    .line 10
    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 13
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 15
    const/16 p2, 0x19

    .line 17
    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 20
    goto :goto_1e

    .line 21
    :cond_14
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 23
    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 26
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 28
    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 31
    :goto_1e
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 33
    iget p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    .line 35
    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 38
    goto :goto_37

    .line 39
    :cond_26
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 41
    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 44
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 46
    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 49
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 51
    iget p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundDisableAlpha:I

    .line 53
    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 56
    :goto_37
    return-void
.end method
