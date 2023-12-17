.class public abstract Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field public static final ROTATION:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final TRANSLATION_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Z:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final UNSET:F = 3.4028235E38f

.field public static final X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Z:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field private mManualAnim:Z

.field public mMaxValue:F

.field public mMinValue:F

.field private mMinVisibleChange:F

.field public final mProperty:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;

.field public mRunning:Z

.field public mStartValueIsSet:Z

.field public final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mValue:F

.field public mVelocity:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$1;

    .line 3
    const-string v1, "translationX"

    .line 5
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 10
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$2;

    .line 12
    const-string v1, "translationY"

    .line 14
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$2;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 19
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$3;

    .line 21
    const-string v1, "translationZ"

    .line 23
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$3;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Z:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 28
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$4;

    .line 30
    const-string v1, "scaleX"

    .line 32
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$4;-><init>(Ljava/lang/String;)V

    .line 35
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 37
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$5;

    .line 39
    const-string v1, "scaleY"

    .line 41
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$5;-><init>(Ljava/lang/String;)V

    .line 44
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 46
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$6;

    .line 48
    const-string v1, "rotation"

    .line 50
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$6;-><init>(Ljava/lang/String;)V

    .line 53
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 55
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$7;

    .line 57
    const-string v1, "rotationX"

    .line 59
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$7;-><init>(Ljava/lang/String;)V

    .line 62
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 64
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$8;

    .line 66
    const-string v1, "rotationY"

    .line 68
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$8;-><init>(Ljava/lang/String;)V

    .line 71
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 73
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$9;

    .line 75
    const-string v1, "x"

    .line 77
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$9;-><init>(Ljava/lang/String;)V

    .line 80
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 82
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$10;

    .line 84
    const-string v1, "y"

    .line 86
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$10;-><init>(Ljava/lang/String;)V

    .line 89
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 91
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$11;

    .line 93
    const-string v1, "z"

    .line 95
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$11;-><init>(Ljava/lang/String;)V

    .line 98
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->Z:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 100
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$12;

    .line 102
    const-string v1, "alpha"

    .line 104
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$12;-><init>(Ljava/lang/String;)V

    .line 107
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ALPHA:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 109
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$13;

    .line 111
    const-string v1, "scrollX"

    .line 113
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$13;-><init>(Ljava/lang/String;)V

    .line 116
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 118
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$14;

    .line 120
    const-string v1, "scrollY"

    .line 122
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$14;-><init>(Ljava/lang/String;)V

    .line 125
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->SCROLL_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 16
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 18
    iput-boolean v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 19
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    .line 20
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;

    .line 26
    sget-object p1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_52

    sget-object p1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_52

    sget-object p1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p2, p1, :cond_38

    goto :goto_52

    .line 27
    :cond_38
    sget-object p1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ALPHA:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v0, 0x3b800000  # 0.00390625f

    if-ne p2, p1, :cond_41

    .line 28
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_57

    .line 29
    :cond_41
    sget-object p1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_4f

    sget-object p1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p2, p1, :cond_4a

    goto :goto_4f

    :cond_4a
    const/high16 p1, 0x3f800000  # 1.0f

    .line 30
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_57

    .line 31
    :cond_4f
    :goto_4f
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_57

    :cond_52
    :goto_52
    const p1, 0x3dcccccd  # 0.1f

    .line 32
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    :goto_57
    return-void
.end method

.method public constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 3
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 5
    iput-boolean v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 6
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    .line 7
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 12
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 p1, 0x3f800000  # 1.0f

    .line 13
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    return-void
.end method

.method private endAnimationInternal(Z)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 4
    iget-boolean v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mManualAnim:Z

    .line 6
    if-nez v1, :cond_e

    .line 8
    invoke-static {}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->removeCallback(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 15
    :cond_e
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mManualAnim:Z

    .line 17
    const-wide/16 v1, 0x0

    .line 19
    iput-wide v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 21
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 23
    :goto_16
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v1

    .line 29
    if-ge v0, v1, :cond_38

    .line 31
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_35

    .line 39
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 47
    iget v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 49
    iget v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 51
    invoke-interface {v1, p0, p1, v2, v3}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V

    .line 54
    :cond_35
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_16

    .line 57
    :cond_38
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 59
    invoke-static {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 62
    return-void
.end method

.method private getPropertyValue()F
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;

    .line 3
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_a

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_a
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    if-ltz v0, :cond_14

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_11

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 18
    :cond_11
    add-int/lit8 v0, v0, -0x1

    .line 20
    goto :goto_6

    .line 21
    :cond_14
    return-void
.end method

.method private startAnimationInternal(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 3
    if-nez v0, :cond_5b

    .line 5
    iput-boolean p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mManualAnim:Z

    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 10
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 12
    if-nez v0, :cond_13

    .line 14
    invoke-direct {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->getPropertyValue()F

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 20
    :cond_13
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 22
    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 24
    cmpl-float v1, v0, v1

    .line 26
    if-gtz v1, :cond_2d

    .line 28
    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 30
    cmpg-float v0, v0, v1

    .line 32
    if-ltz v0, :cond_2d

    .line 34
    if-nez p1, :cond_5b

    .line 36
    invoke-static {}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    .line 39
    move-result-object p1

    .line 40
    const-wide/16 v0, 0x0

    .line 42
    invoke-virtual {p1, p0, v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->addAnimationFrameCallback(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 45
    goto :goto_5b

    .line 46
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    const-string v0, "Starting value("

    .line 50
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v0

    .line 54
    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ") need to be in between min value("

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ") and max value("

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ")"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p1

    .line 92
    :cond_5b
    :goto_5b
    return-void
.end method


# virtual methods
.method public addEndListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    return-object p0
.end method

.method public addUpdateListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_14

    .line 7
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_13

    .line 15
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_13
    return-object p0

    .line 21
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 23
    const-string v0, "Error: Update listeners must be added beforethe animation."

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method

.method public cancel()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_13

    .line 11
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 13
    if-eqz v0, :cond_12

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 19
    :cond_12
    return-void

    .line 20
    :cond_13
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 22
    const-string v1, "Animations may only be canceled on the main thread"

    .line 24
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method public doAnimationFrame(J)Z
    .registers 7

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v2, v0, v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_11

    .line 10
    iput-wide p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 12
    iget p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 17
    return v3

    .line 18
    :cond_11
    sub-long v0, p1, v0

    .line 20
    iput-wide p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 22
    invoke-virtual {p0, v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    .line 25
    move-result p1

    .line 26
    iget p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 28
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 30
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 33
    move-result p2

    .line 34
    iput p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 36
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 38
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    .line 41
    move-result p2

    .line 42
    iput p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 44
    invoke-virtual {p0, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 47
    if-eqz p1, :cond_33

    .line 49
    invoke-direct {p0, v3}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 52
    :cond_33
    return p1
.end method

.method public abstract getAcceleration(FF)F
.end method

.method public getMinimumVisibleChange()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 3
    return v0
.end method

.method public getValueThreshold()F
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 3
    const/high16 v1, 0x3f400000  # 0.75f

    .line 5
    mul-float/2addr v0, v1

    .line 6
    return v0
.end method

.method public abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 3
    return v0
.end method

.method public removeEndListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeUpdateListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public setMaxValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 3
    return-object p0
.end method

.method public setMinValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 3
    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    if-lez v0, :cond_e

    .line 6
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 8
    const/high16 v0, 0x3f400000  # 0.75f

    .line 10
    mul-float/2addr p1, v0

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setValueThreshold(F)V

    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v0, "Minimum visible change must be positive."

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1
.end method

.method public setPropertyValue(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;

    .line 3
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v1, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 8
    const/4 p1, 0x0

    .line 9
    :goto_8
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    if-ge p1, v0, :cond_2a

    .line 17
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 33
    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 35
    iget v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 37
    invoke-interface {v0, p0, v1, v2}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;FF)V

    .line 40
    :cond_27
    add-int/lit8 p1, p1, 0x1

    .line 42
    goto :goto_8

    .line 43
    :cond_2a
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 45
    invoke-static {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 48
    return-void
.end method

.method public setStartValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 6
    return-object p0
.end method

.method public setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 3
    return-object p0
.end method

.method public abstract setValueThreshold(F)V
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->start(Z)V

    return-void
.end method

.method public start(Z)V
    .registers 4

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    .line 3
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_11

    .line 4
    invoke-direct {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->startAnimationInternal(Z)V

    :cond_11
    return-void

    .line 5
    :cond_12
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract updateValueAndVelocity(J)Z
.end method
