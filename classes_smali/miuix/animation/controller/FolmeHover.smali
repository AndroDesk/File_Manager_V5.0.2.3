.class public Lmiuix/animation/controller/FolmeHover;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeHover.java"

# interfaces
.implements Lmiuix/animation/IHoverStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;
    }
.end annotation


# static fields
.field private static final CORNER_DIS:I = 0x24

.field private static final DEFAULT_CORNER:F = 0.5f

.field private static final DEFAULT_SCALE:F = 1.15f

.field private static final SCALE_DIS:I = 0xc

.field private static sHoverRecord:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private HoverMoveType:Ljava/lang/String;

.field private isSetAutoTranslation:Z

.field private mChildView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mClearTint:Z

.field private mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

.field private mDefListener:Lmiuix/animation/listener/TransitionListener;

.field private mEnterConfig:Lmiuix/animation/base/AnimConfig;

.field private mExitConfig:Lmiuix/animation/base/AnimConfig;

.field private mExtraTranslationX:F

.field private mHoverView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnter:Z

.field private mLocation:[I

.field private mMoveConfig:Lmiuix/animation/base/AnimConfig;

.field private mParentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRadius:F

.field private mScaleSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IHoverStyle$HoverType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSetTint:Z

.field private mTargetHeight:I

.field private mTargetWidth:I

.field private mTranslateDist:F

.field private mTranslationSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IHoverStyle$HoverType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    .line 8
    return-void
.end method

.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 4
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 7
    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslateDist:F

    .line 9
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 11
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v2, v1, [F

    .line 17
    fill-array-data v2, :array_9c

    .line 20
    const/4 v3, -0x2

    .line 21
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mMoveConfig:Lmiuix/animation/base/AnimConfig;

    .line 31
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 33
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 36
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    .line 38
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 40
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 43
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    .line 47
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 50
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    .line 54
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 57
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 59
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 61
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 63
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 66
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    .line 68
    new-array v2, v1, [I

    .line 70
    iput-object v2, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 72
    const/4 v2, 0x0

    .line 73
    iput v2, p0, Lmiuix/animation/controller/FolmeHover;->mRadius:F

    .line 75
    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 77
    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    .line 79
    iput v2, p0, Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F

    .line 81
    const-string v2, "MOVE"

    .line 83
    iput-object v2, p0, Lmiuix/animation/controller/FolmeHover;->HoverMoveType:Ljava/lang/String;

    .line 85
    new-instance v2, Lmiuix/animation/controller/FolmeHover$1;

    .line 87
    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeHover$1;-><init>(Lmiuix/animation/controller/FolmeHover;)V

    .line 90
    iput-object v2, p0, Lmiuix/animation/controller/FolmeHover;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 92
    array-length v2, p1

    .line 93
    if-lez v2, :cond_61

    .line 95
    aget-object p1, p1, v0

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    const/4 p1, 0x0

    .line 99
    :goto_62
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->initDist(Lmiuix/animation/IAnimTarget;)V

    .line 102
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 104
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->updateHoverState(Lmiuix/animation/IHoverStyle$HoverEffect;)V

    .line 107
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    .line 109
    new-array v2, v1, [F

    .line 111
    fill-array-data v2, :array_a4

    .line 114
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 121
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    .line 123
    const/4 v2, 0x1

    .line 124
    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    .line 126
    iget-object v4, p0, Lmiuix/animation/controller/FolmeHover;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 128
    aput-object v4, v2, v0

    .line 130
    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 133
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    .line 135
    new-array v0, v1, [F

    .line 137
    fill-array-data v0, :array_ac

    .line 140
    invoke-virtual {p1, v3, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 143
    move-result-object p1

    .line 144
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 146
    const-wide/16 v2, -0x2

    .line 148
    new-array v1, v1, [F

    .line 150
    fill-array-data v1, :array_b4

    .line 153
    invoke-virtual {p1, v0, v2, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    .line 156
    return-void

    .line 157
    :array_9c
    .array-data 4
        0x3f666666  # 0.9f
        0x3ecccccd  # 0.4f
    .end array-data

    .line 165
    :array_a4
    .array-data 4
        0x3f7d70a4  # 0.99f
        0x3f19999a  # 0.6f
    .end array-data

    .line 173
    :array_ac
    .array-data 4
        0x3f7d70a4  # 0.99f
        0x3ecccccd  # 0.4f
    .end array-data

    .line 181
    :array_b4
    .array-data 4
        0x3f666666  # 0.9f
        0x3e4ccccd  # 0.2f
    .end array-data
.end method

.method public static synthetic access$100(Lmiuix/animation/controller/FolmeHover;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lmiuix/animation/controller/FolmeHover;F)F
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lmiuix/animation/controller/FolmeHover;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 4
    return-void
.end method

.method private actualTranslatDist(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 8
    const/4 v1, 0x0

    .line 9
    aget v0, v0, v1

    .line 11
    int-to-float v0, v0

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 15
    move-result v2

    .line 16
    add-float/2addr v2, v0

    .line 17
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 19
    const/4 v3, 0x1

    .line 20
    aget v0, v0, v3

    .line 22
    int-to-float v0, v0

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 26
    move-result p2

    .line 27
    add-float/2addr p2, v0

    .line 28
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 30
    aget v0, v0, v1

    .line 32
    int-to-float v0, v0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 36
    move-result v4

    .line 37
    int-to-float v4, v4

    .line 38
    const/high16 v5, 0x3f000000  # 0.5f

    .line 40
    mul-float/2addr v4, v5

    .line 41
    add-float/2addr v4, v0

    .line 42
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 44
    aget v0, v0, v3

    .line 46
    int-to-float v0, v0

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 50
    move-result v6

    .line 51
    int-to-float v6, v6

    .line 52
    mul-float/2addr v6, v5

    .line 53
    add-float/2addr v6, v0

    .line 54
    sub-float/2addr v2, v4

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 58
    move-result v0

    .line 59
    int-to-float v0, v0

    .line 60
    div-float/2addr v2, v0

    .line 61
    sub-float/2addr p2, v6

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 65
    move-result p1

    .line 66
    int-to-float p1, p1

    .line 67
    div-float/2addr p2, p1

    .line 68
    const/high16 p1, 0x3f800000  # 1.0f

    .line 70
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    .line 73
    move-result v0

    .line 74
    const/high16 v2, -0x40800000  # -1.0f

    .line 76
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 79
    move-result v0

    .line 80
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 83
    move-result p2

    .line 84
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    .line 87
    move-result p2

    .line 88
    iget v2, p0, Lmiuix/animation/controller/FolmeHover;->mTranslateDist:F

    .line 90
    const v4, 0x7f7fffff  # Float.MAX_VALUE

    .line 93
    cmpl-float v5, v2, v4

    .line 95
    if-nez v5, :cond_62

    .line 97
    move v5, p1

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move v5, v2

    .line 100
    :goto_63
    mul-float/2addr v0, v5

    .line 101
    cmpl-float v4, v2, v4

    .line 103
    if-nez v4, :cond_69

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    move p1, v2

    .line 107
    :goto_6a
    mul-float/2addr p2, p1

    .line 108
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 110
    iget-object v2, p0, Lmiuix/animation/controller/FolmeHover;->HoverMoveType:Ljava/lang/String;

    .line 112
    invoke-interface {p1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 115
    move-result-object p1

    .line 116
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 118
    iget v4, p0, Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F

    .line 120
    add-float/2addr v0, v4

    .line 121
    float-to-double v4, v0

    .line 122
    invoke-virtual {p1, v2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 125
    move-result-object p1

    .line 126
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 128
    float-to-double v4, p2

    .line 129
    invoke-virtual {p1, v0, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 132
    move-result-object p1

    .line 133
    iget-object p2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 135
    new-array v0, v3, [Lmiuix/animation/base/AnimConfig;

    .line 137
    iget-object v2, p0, Lmiuix/animation/controller/FolmeHover;->mMoveConfig:Lmiuix/animation/base/AnimConfig;

    .line 139
    aput-object v2, v0, v1

    .line 141
    invoke-interface {p2, p1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 144
    return-void
.end method

.method private static addMagicPoint(Landroid/view/View;Landroid/graphics/Point;)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    const-class v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "addMagicPoint"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 7
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_28

    :catch_1c
    move-exception p0

    const-string p1, "addMagicPoint failed , e:"

    .line 8
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_28
    return-void
.end method

.method private static clearMagicPoint(Landroid/view/View;)V
    .registers 5

    :try_start_0
    const-string v0, "android.view.View"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clearMagicPoint"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_21

    :catch_15
    move-exception p0

    const-string v0, "clearMagicPoint failed , e:"

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    .line 8
    invoke-static {p0, v0, v1}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method private clearRound()V
    .registers 1

    return-void
.end method

.method private clearScale()V
    .registers 4

    .line 1
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 3
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1e

    .line 9
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 11
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 17
    invoke-virtual {v1, v2}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 20
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 22
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 28
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 31
    :cond_1e
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 33
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3c

    .line 39
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 41
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 47
    invoke-virtual {v1, v2}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 50
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 52
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 58
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 61
    :cond_3c
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 63
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 66
    return-void
.end method

.method private clearTranslation()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 4
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 6
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_21

    .line 12
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 14
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 20
    invoke-virtual {v1, v2}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 23
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 25
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 31
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 34
    :cond_21
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 36
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3f

    .line 42
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 44
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 47
    move-result-object v1

    .line 48
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 50
    invoke-virtual {v1, v2}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 53
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 55
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 58
    move-result-object v0

    .line 59
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 61
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 64
    :cond_3f
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 66
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 69
    return-void
.end method

.method private varargs doHandleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->handleViewHover(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 4
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setHoverView(Landroid/view/View;)Z

    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_26

    .line 10
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_26

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v0, "handleViewHover for "

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    new-array p2, p2, [Ljava/lang/Object;

    .line 36
    invoke-static {p1, p2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_26
    return-void
.end method

.method private varargs getEnterConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 4
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    .line 15
    return-object p1
.end method

.method private varargs getExitConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 4
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    .line 15
    return-object p1
.end method

.method private static getFeedbackColor(Landroid/view/View;)I
    .registers 5

    :try_start_0
    const-string v0, "android.view.View"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getFeedbackColor"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    const-string v0, "getFeedbackColor failed , e:"

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    .line 8
    invoke-static {p0, v0, v1}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static getFeedbackRadius(Landroid/view/View;)F
    .registers 5

    :try_start_0
    const-string v0, "android.view.View"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getFeedbackRadius"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    const-string v0, "getFeedbackRadius failed , e:"

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    .line 8
    invoke-static {p0, v0, v1}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/high16 p0, -0x40800000  # -1.0f

    return p0
.end method

.method private static getPointerShapeType(Landroid/view/View;)I
    .registers 5

    :try_start_0
    const-string v0, "android.view.View"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPointerShapeType"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    const-string v0, "getPointerShapeType failed , e:"

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    .line 8
    invoke-static {p0, v0, v1}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private varargs getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;
    .registers 3

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_7

    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object p1, p1, v0

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    sget-object p1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 10
    :goto_9
    return-object p1
.end method

.method private varargs handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-eq v0, v1, :cond_2a

    .line 8
    const/16 v1, 0x9

    .line 10
    if-eq v0, v1, :cond_1d

    .line 12
    const/16 v1, 0xa

    .line 14
    if-eq v0, v1, :cond_10

    .line 16
    goto :goto_36

    .line 17
    :cond_10
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 20
    instance-of p2, p1, Lmiuix/animation/ViewHoverListener;

    .line 22
    if-eqz p2, :cond_36

    .line 24
    check-cast p1, Lmiuix/animation/ViewHoverListener;

    .line 26
    invoke-interface {p1}, Lmiuix/animation/ViewHoverListener;->onExitHover()V

    .line 29
    goto :goto_36

    .line 30
    :cond_1d
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 33
    instance-of p2, p1, Lmiuix/animation/ViewHoverListener;

    .line 35
    if-eqz p2, :cond_36

    .line 37
    check-cast p1, Lmiuix/animation/ViewHoverListener;

    .line 39
    invoke-interface {p1}, Lmiuix/animation/ViewHoverListener;->onEnterHover()V

    .line 42
    goto :goto_36

    .line 43
    :cond_2a
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 46
    instance-of p2, p1, Lmiuix/animation/ViewHoverListener;

    .line 48
    if-eqz p2, :cond_36

    .line 50
    check-cast p1, Lmiuix/animation/ViewHoverListener;

    .line 52
    invoke-interface {p1}, Lmiuix/animation/ViewHoverListener;->onMoveHover()V

    .line 55
    :cond_36
    :goto_36
    return-void
.end method

.method private varargs handleViewHover(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 5

    .line 1
    sget-object v0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;

    .line 9
    if-nez v0, :cond_15

    .line 11
    new-instance v0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;-><init>(Lmiuix/animation/controller/FolmeHover$1;)V

    .line 17
    sget-object v1, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    .line 19
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_15
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 25
    invoke-virtual {v0, p0, p2}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->addHover(Lmiuix/animation/controller/FolmeHover;[Lmiuix/animation/base/AnimConfig;)V

    .line 28
    return-void
.end method

.method private varargs hoverEnterAuto(Z[Lmiuix/animation/base/AnimConfig;)V
    .registers 8

    .line 1
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    .line 6
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 8
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 10
    if-ne v0, v1, :cond_1f

    .line 12
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    .line 14
    if-eqz v0, :cond_16

    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/View;

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    if-eqz v0, :cond_1f

    .line 26
    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setMagicView(Landroid/view/View;Z)V

    .line 29
    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setWrapped(Landroid/view/View;Z)V

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeHover;->isHideHover()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2b

    .line 38
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setMagicView(Z)V

    .line 41
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerHide(Z)V

    .line 44
    :cond_2b
    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mRadius:F

    .line 46
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeHover;->setCorner(F)Lmiuix/animation/IHoverStyle;

    .line 49
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 52
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getEnterConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    .line 55
    move-result-object p2

    .line 56
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 58
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 60
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p0, v1}, Lmiuix/animation/controller/FolmeHover;->isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_72

    .line 70
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 72
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 75
    move-result-object v1

    .line 76
    sget-object v2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 78
    invoke-virtual {v1, v2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 81
    move-result v2

    .line 82
    sget-object v3, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 84
    invoke-virtual {v1, v3}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 87
    move-result v1

    .line 88
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 91
    move-result v1

    .line 92
    const/high16 v2, 0x41400000  # 12.0f

    .line 94
    add-float/2addr v2, v1

    .line 95
    div-float/2addr v2, v1

    .line 96
    const v1, 0x3f933333  # 1.15f

    .line 99
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 102
    move-result v1

    .line 103
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 105
    float-to-double v3, v1

    .line 106
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 109
    move-result-object v1

    .line 110
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 112
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 115
    :cond_72
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    .line 117
    if-eqz v1, :cond_9a

    .line 119
    new-array p1, p1, [Landroid/view/View;

    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroid/view/View;

    .line 128
    aput-object v1, p1, v2

    .line 130
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 133
    move-result-object p1

    .line 134
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 137
    move-result-object p1

    .line 138
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 140
    const/high16 v2, 0x3f800000  # 1.0f

    .line 142
    invoke-interface {p1, v1, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 145
    move-result-object p1

    .line 146
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 148
    invoke-interface {p1, v1, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 151
    move-result-object p1

    .line 152
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 155
    :cond_9a
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 157
    invoke-interface {p1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 160
    return-void
.end method

.method private varargs hoverEnterToolType(I[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_14

    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_14

    .line 7
    if-nez p1, :cond_9

    .line 9
    goto :goto_14

    .line 10
    :cond_9
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_f

    .line 13
    const/4 v0, 0x2

    .line 14
    if-ne p1, v0, :cond_17

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnterAuto(Z[Lmiuix/animation/base/AnimConfig;)V

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    :goto_14
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnter([Lmiuix/animation/base/AnimConfig;)V

    .line 24
    :cond_17
    :goto_17
    return-void
.end method

.method private initDist(Lmiuix/animation/IAnimTarget;)V
    .registers 8

    .line 1
    instance-of v0, p1, Lmiuix/animation/ViewTarget;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lmiuix/animation/ViewTarget;

    .line 8
    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-eqz v0, :cond_93

    .line 16
    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 18
    invoke-virtual {p1, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 21
    move-result v1

    .line 22
    sget-object v2, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 24
    invoke-virtual {p1, v2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 27
    move-result p1

    .line 28
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 31
    move-result p1

    .line 32
    const/high16 v1, 0x41400000  # 12.0f

    .line 34
    add-float/2addr v1, p1

    .line 35
    div-float/2addr v1, p1

    .line 36
    const p1, 0x3f933333  # 1.15f

    .line 39
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 42
    move-result p1

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 46
    move-result v1

    .line 47
    iput v1, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    .line 55
    iget v1, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 57
    add-int/lit8 v1, v1, -0x28

    .line 59
    add-int/lit8 v0, v0, -0x28

    .line 61
    int-to-float v1, v1

    .line 62
    const/4 v2, 0x0

    .line 63
    const/high16 v3, 0x43b40000  # 360.0f

    .line 65
    invoke-direct {p0, v1, v2, v3}, Lmiuix/animation/controller/FolmeHover;->perFromVal(FFF)F

    .line 68
    move-result v1

    .line 69
    const/high16 v4, 0x3f800000  # 1.0f

    .line 71
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    .line 74
    move-result v1

    .line 75
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 78
    move-result v1

    .line 79
    const/high16 v5, 0x41700000  # 15.0f

    .line 81
    invoke-direct {p0, v1, v5, v2}, Lmiuix/animation/controller/FolmeHover;->valFromPer(FFF)F

    .line 84
    move-result v1

    .line 85
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    .line 88
    move-result v1

    .line 89
    int-to-float v0, v0

    .line 90
    invoke-direct {p0, v0, v2, v3}, Lmiuix/animation/controller/FolmeHover;->perFromVal(FFF)F

    .line 93
    move-result v0

    .line 94
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    .line 97
    move-result v0

    .line 98
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 101
    move-result v0

    .line 102
    invoke-direct {p0, v0, v5, v2}, Lmiuix/animation/controller/FolmeHover;->valFromPer(FFF)F

    .line 105
    move-result v0

    .line 106
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    .line 109
    move-result v0

    .line 110
    cmpl-float p1, p1, v4

    .line 112
    if-nez p1, :cond_72

    .line 114
    goto :goto_76

    .line 115
    :cond_72
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 118
    move-result v2

    .line 119
    :goto_76
    iput v2, p0, Lmiuix/animation/controller/FolmeHover;->mTranslateDist:F

    .line 121
    iget p1, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 123
    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    .line 125
    if-ne p1, v0, :cond_8e

    .line 127
    const/16 v1, 0x64

    .line 129
    if-ge p1, v1, :cond_8e

    .line 131
    if-ge v0, v1, :cond_8e

    .line 133
    int-to-float p1, p1

    .line 134
    const/high16 v0, 0x3f000000  # 0.5f

    .line 136
    mul-float/2addr p1, v0

    .line 137
    float-to-int p1, p1

    .line 138
    int-to-float p1, p1

    .line 139
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setCorner(F)Lmiuix/animation/IHoverStyle;

    .line 142
    goto :goto_93

    .line 143
    :cond_8e
    const/high16 p1, 0x42100000  # 36.0f

    .line 145
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setCorner(F)Lmiuix/animation/IHoverStyle;

    .line 148
    :cond_93
    :goto_93
    return-void
.end method

.method private static isMagicView(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.view.View"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isMagicView"

    new-array v3, v0, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    const-string v1, "isMagicView failed , e:"

    .line 7
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    .line 8
    invoke-static {p0, v1, v2}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method public static isOnHoverView(Landroid/view/View;[ILandroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eqz p0, :cond_1f

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 7
    move-result v0

    .line 8
    float-to-int v0, v0

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 12
    move-result p2

    .line 13
    float-to-int p2, p2

    .line 14
    if-ltz v0, :cond_1e

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    move-result v1

    .line 20
    if-gt v0, v1, :cond_1e

    .line 22
    if-ltz p2, :cond_1e

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    move-result p0

    .line 28
    if-gt p2, p0, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :cond_1f
    :goto_1f
    return p1
.end method

.method private isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z
    .registers 4

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z
    .registers 4

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private static isWrapped(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.view.View"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isWrapped"

    new-array v3, v0, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    const-string v1, " isWrapped failed , e:"

    .line 7
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    .line 8
    invoke-static {p0, v1, v2}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method private varargs onEventEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 5

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const-string v1, "onEventEnter, touchEnter"

    .line 12
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_e
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 18
    return-void
.end method

.method private varargs onEventExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const-string v1, "onEventExit, touchExit"

    .line 16
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_12
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 22
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->resetTouchStatus()V

    .line 25
    :cond_18
    return-void
.end method

.method private varargs onEventMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    iget-boolean p3, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    .line 3
    if-eqz p3, :cond_15

    .line 5
    if-eqz p1, :cond_15

    .line 7
    sget-object p3, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 9
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_15

    .line 15
    iget-boolean p3, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 17
    if-eqz p3, :cond_15

    .line 19
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->actualTranslatDist(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 22
    :cond_15
    return-void
.end method

.method private perFromVal(FFF)F
    .registers 4

    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    return p1
.end method

.method private resetTouchStatus()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    .line 4
    return-void
.end method

.method private resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/View;

    .line 7
    if-eqz p1, :cond_c

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 13
    :cond_c
    return-object p1
.end method

.method private setAutoRound()V
    .registers 1

    return-void
.end method

.method private setAutoScale()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 3
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 12
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 19
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 25
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 36
    return-void
.end method

.method private setAutoTranslation()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 6
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 8
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 15
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 22
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 28
    const-wide/16 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 39
    return-void
.end method

.method private static setFeedbackColor(Landroid/view/View;I)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setFeedbackColor"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception p0

    const-string p1, "setFeedbackColor failed , e:"

    .line 8
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private static setFeedbackRadius(Landroid/view/View;F)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setFeedbackRadius"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception p0

    const-string p1, "setFeedbackRadius failed , e:"

    .line 8
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private static setHotXOffset(Landroid/view/View;I)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setHotXOffset"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception p0

    const-string p1, "setHotXOffset failed , e:"

    .line 8
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private static setHotYOffset(Landroid/view/View;I)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setHotYOffset"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception p0

    const-string p1, "setHotYOffset failed , e:"

    .line 8
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private setHoverView(Landroid/view/View;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    if-ne v0, p1, :cond_10

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method private static setMagicView(Landroid/view/View;Z)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setMagicView"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception p0

    const-string p1, "setMagicView failed , e:"

    .line 8
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private static setPointerHide(Landroid/view/View;Z)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setPointerHide"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception p0

    const-string p1, "setPointerHide failed , e:"

    .line 8
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private static setPointerShape(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    const-class v2, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setPointerShape"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 7
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_28

    :catch_1c
    move-exception p0

    const-string p1, "setPointerShape failed , e:"

    .line 8
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_28
    return-void
.end method

.method private static setPointerShapeType(Landroid/view/View;I)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setPointerShapeType"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception p0

    const-string p1, "setPointerShapeType failed , e:"

    .line 8
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private setTintColor()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mSetTint:Z

    .line 3
    if-nez v0, :cond_45

    .line 5
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_45

    .line 10
    :cond_9
    const/16 v0, 0xf

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 19
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Landroid/view/View;

    .line 29
    if-eqz v2, :cond_2a

    .line 31
    check-cast v1, Landroid/view/View;

    .line 33
    sget v0, Lmiuix/folme/R$color;->miuix_folme_color_hover_tint:I

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 42
    move-result v0

    .line 43
    :cond_2a
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 45
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 47
    sget-object v3, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 49
    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 52
    move-result-object v2

    .line 53
    int-to-double v3, v0

    .line 54
    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 57
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 59
    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 61
    invoke-interface {v0, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 64
    move-result-object v0

    .line 65
    const-wide/16 v2, 0x0

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 70
    :cond_45
    :goto_45
    return-void
.end method

.method private static setWrapped(Landroid/view/View;Z)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setWrapped"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception p0

    const-string p1, "setWrapped failed , e:"

    .line 8
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private updateHoverState(Lmiuix/animation/IHoverStyle$HoverEffect;)V
    .registers 4

    .line 1
    sget-object v0, Lmiuix/animation/controller/FolmeHover$2;->$SwitchMap$miuix$animation$IHoverStyle$HoverEffect:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_40

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2b

    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_12

    .line 18
    goto :goto_5f

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 21
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 23
    if-eq v0, v1, :cond_1c

    .line 25
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 27
    if-ne v0, v1, :cond_1f

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeHover;->clearTintColor()Lmiuix/animation/IHoverStyle;

    .line 32
    :cond_1f
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoScale()V

    .line 35
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoTranslation()V

    .line 38
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoRound()V

    .line 41
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 43
    goto :goto_5f

    .line 44
    :cond_2b
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 46
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 48
    if-ne v0, v1, :cond_34

    .line 50
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearRound()V

    .line 53
    :cond_34
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 56
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoScale()V

    .line 59
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoTranslation()V

    .line 62
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 64
    goto :goto_5f

    .line 65
    :cond_40
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 67
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 69
    if-ne v0, v1, :cond_4d

    .line 71
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearScale()V

    .line 74
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearTranslation()V

    .line 77
    goto :goto_5a

    .line 78
    :cond_4d
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 80
    if-ne v0, v1, :cond_5a

    .line 82
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearScale()V

    .line 85
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearTranslation()V

    .line 88
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearRound()V

    .line 91
    :cond_5a
    :goto_5a
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 94
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 96
    :goto_5f
    return-void
.end method

.method private valFromPer(FFF)F
    .registers 4

    invoke-static {p3, p2, p1, p2}, Lf0/e;->a(FFFF)F

    move-result p1

    return p1
.end method


# virtual methods
.method public addMagicPoint(Landroid/graphics/Point;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->addMagicPoint(Landroid/view/View;Landroid/graphics/Point;)V

    :cond_13
    return-void
.end method

.method public clean()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 9
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_12

    .line 14
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 17
    iput-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mChildView:Ljava/lang/ref/WeakReference;

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 26
    iput-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mChildView:Ljava/lang/ref/WeakReference;

    .line 28
    :cond_1b
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    .line 30
    if-eqz v0, :cond_24

    .line 32
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 35
    iput-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    .line 37
    :cond_24
    return-void
.end method

.method public clearMagicPoint()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lmiuix/animation/controller/FolmeHover;->clearMagicPoint(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public clearTintColor()Lmiuix/animation/IHoverStyle;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    .line 4
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 6
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 8
    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 10
    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 17
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 19
    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 21
    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 28
    return-object p0
.end method

.method public getFeedbackColor()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_15

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lmiuix/animation/controller/FolmeHover;->getFeedbackColor(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public getFeedbackRadius()F
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_15

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lmiuix/animation/controller/FolmeHover;->getFeedbackRadius(Landroid/view/View;)F

    move-result v0

    return v0

    :cond_15
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method public getPointerShapeType()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_15

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lmiuix/animation/controller/FolmeHover;->getPointerShapeType(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public varargs handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->doHandleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 4
    return-void
.end method

.method public varargs hoverEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnterToolType(I[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs hoverEnter([Lmiuix/animation/base/AnimConfig;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeHover;->hoverEnterAuto(Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs hoverExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    invoke-static {v0, v1, p1}, Lmiuix/animation/controller/FolmeHover;->isOnHoverView(Landroid/view/View;[ILandroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_33

    const/4 p1, 0x1

    new-array v0, p1, [Landroid/view/View;

    .line 2
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v1, p1, v2

    invoke-interface {v0, p1}, Lmiuix/animation/IHoverStyle;->hoverEnter([Lmiuix/animation/base/AnimConfig;)V

    .line 3
    :cond_33
    sget-object p1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    if-eqz v0, :cond_55

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget v1, p0, Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F

    float-to-double v1, v1

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 7
    :cond_55
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeHover;->hoverExit([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs hoverExit([Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 8
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->getExitConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public varargs hoverMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 4
    return-void
.end method

.method public ignoreHoverOf(Landroid/view/View;)V
    .registers 3

    .line 1
    sget-object v0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;

    .line 9
    if-eqz v0, :cond_15

    .line 11
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->removeHover(Lmiuix/animation/controller/FolmeHover;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_15

    .line 17
    sget-object v0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_15
    return-void
.end method

.method public isHideHover()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 3
    const/16 v1, 0x64

    .line 5
    if-ge v0, v1, :cond_1c

    .line 7
    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    .line 9
    if-ge v0, v1, :cond_1c

    .line 11
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 13
    if-eqz v0, :cond_1a

    .line 15
    if-eqz v0, :cond_1c

    .line 17
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 19
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 21
    if-eq v0, v1, :cond_1a

    .line 23
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 25
    if-ne v0, v1, :cond_1c

    .line 27
    :cond_1a
    const/4 v0, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    return v0
.end method

.method public isMagicView()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_15

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lmiuix/animation/controller/FolmeHover;->isMagicView(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isWrapped()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_15

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lmiuix/animation/controller/FolmeHover;->isWrapped(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1, p1, v0}, Lmiuix/animation/controller/FolmeHover;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 8
    return-void
.end method

.method public varargs onMotionEventEx(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 4
    return-void
.end method

.method public varargs setAlpha(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;

    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 10
    move-result-object p2

    .line 11
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 13
    float-to-double v1, p1

    .line 14
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 17
    return-object p0
.end method

.method public setBackgroundColor(FFFF)Lmiuix/animation/IHoverStyle;
    .registers 6

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setBackgroundColor(I)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColor(I)Lmiuix/animation/IHoverStyle;
    .registers 6

    .line 2
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 3
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    int-to-double v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 4
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p1, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 5
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v1, v1

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setCorner(F)Lmiuix/animation/IHoverStyle;
    .registers 4

    .line 1
    iput p1, p0, Lmiuix/animation/controller/FolmeHover;->mRadius:F

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 5
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Landroid/view/View;

    .line 15
    if-eqz v1, :cond_1b

    .line 17
    check-cast v0, Landroid/view/View;

    .line 19
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 28
    :cond_1b
    return-object p0
.end method

.method public setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->updateHoverState(Lmiuix/animation/IHoverStyle$HoverEffect;)V

    .line 4
    return-object p0
.end method

.method public setFeedbackColor(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setFeedbackColor(Landroid/view/View;I)V

    :cond_13
    return-void
.end method

.method public setFeedbackRadius(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setFeedbackRadius(Landroid/view/View;F)V

    :cond_13
    return-void
.end method

.method public setHotXOffset(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setHotXOffset(Landroid/view/View;I)V

    :cond_13
    return-void
.end method

.method public setHotYOffset(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setHotYOffset(Landroid/view/View;I)V

    :cond_13
    return-void
.end method

.method public setHoverEnter()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 6
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 8
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 11
    return-void
.end method

.method public setHoverExit()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 5
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 8
    return-void
.end method

.method public setMagicView(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setMagicView(Landroid/view/View;Z)V

    :cond_13
    return-void
.end method

.method public setParentView(Landroid/view/View;)Lmiuix/animation/IHoverStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    if-ne p1, v0, :cond_f

    .line 15
    return-object p0

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    .line 23
    return-object p0
.end method

.method public setPointerHide(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerHide(Landroid/view/View;Z)V

    :cond_13
    return-void
.end method

.method public setPointerShape(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerShape(Landroid/view/View;Landroid/graphics/Bitmap;)V

    :cond_13
    return-void
.end method

.method public setPointerShapeType(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerShapeType(Landroid/view/View;I)V

    :cond_13
    return-void
.end method

.method public varargs setScale(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;

    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 14
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 17
    move-result-object p2

    .line 18
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 20
    float-to-double v1, p1

    .line 21
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 24
    move-result-object p1

    .line 25
    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 30
    return-object p0
.end method

.method public setTint(FFFF)Lmiuix/animation/IHoverStyle;
    .registers 6

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 4
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setTint(I)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    return-object p1
.end method

.method public setTint(I)Lmiuix/animation/IHoverStyle;
    .registers 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mSetTint:Z

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 2
    :goto_7
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setTintMode(I)Lmiuix/animation/IHoverStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 6
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 11
    return-object p0
.end method

.method public varargs setTranslate(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 4
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;

    .line 7
    move-result-object p2

    .line 8
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 17
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 20
    move-result-object p2

    .line 21
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 23
    float-to-double v1, p1

    .line 24
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 27
    move-result-object p1

    .line 28
    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 30
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 33
    return-object p0
.end method

.method public setWrapped(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setWrapped(Landroid/view/View;Z)V

    :cond_13
    return-void
.end method
