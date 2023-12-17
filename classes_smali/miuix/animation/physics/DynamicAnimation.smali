.class public abstract Lmiuix/animation/physics/DynamicAnimation;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;,
        Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;,
        Lmiuix/animation/physics/DynamicAnimation$MassState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lmiuix/animation/physics/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field public mMaxValue:F

.field public mMinValue:F

.field private mMinVisibleChange:F

.field public final mProperty:Lmiuix/animation/property/FloatProperty;

.field public mRunning:Z

.field private mStartDelay:J

.field public mStartValueIsSet:Z

.field public final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mValue:F

.field public mVelocity:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/animation/property/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 17
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 19
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 20
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    .line 21
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 23
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 28
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    if-eq p2, p1, :cond_57

    sget-object p1, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    if-eq p2, p1, :cond_57

    sget-object p1, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    if-ne p2, p1, :cond_3a

    goto :goto_57

    .line 29
    :cond_3a
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    if-ne p2, p1, :cond_43

    const/high16 p1, 0x3b800000  # 0.00390625f

    .line 30
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_5c

    .line 31
    :cond_43
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    if-eq p2, p1, :cond_51

    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    if-ne p2, p1, :cond_4c

    goto :goto_51

    :cond_4c
    const/high16 p1, 0x3f800000  # 1.0f

    .line 32
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_5c

    :cond_51
    :goto_51
    const p1, 0x3b03126f  # 0.002f

    .line 33
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_5c

    :cond_57
    :goto_57
    const p1, 0x3dcccccd  # 0.1f

    .line 34
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    :goto_5c
    return-void
.end method

.method public constructor <init>(Lmiuix/animation/property/FloatValueHolder;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 3
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 5
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 6
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    .line 7
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 9
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 13
    new-instance v0, Lmiuix/animation/physics/DynamicAnimation$1;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lmiuix/animation/physics/DynamicAnimation$1;-><init>(Lmiuix/animation/physics/DynamicAnimation;Ljava/lang/String;Lmiuix/animation/property/FloatValueHolder;)V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 p1, 0x3f800000  # 1.0f

    .line 14
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    return-void
.end method

.method private endAnimationInternal(Z)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 4
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Lmiuix/animation/physics/AnimationHandler;->removeCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;)V

    .line 11
    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 15
    iput-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 17
    :goto_10
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v1

    .line 23
    if-ge v0, v1, :cond_32

    .line 25
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_2f

    .line 33
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;

    .line 41
    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 43
    iget v3, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 45
    invoke-interface {v1, p0, p1, v2, v3}, Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lmiuix/animation/physics/DynamicAnimation;ZFF)V

    .line 48
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_10

    .line 51
    :cond_32
    iget-object p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 53
    invoke-static {p1}, Lmiuix/animation/physics/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 56
    return-void
.end method

.method private getPropertyValue()F
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 3
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

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

.method private startAnimationInternal()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 3
    if-nez v0, :cond_31

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 8
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 10
    if-nez v0, :cond_11

    .line 12
    invoke-direct {p0}, Lmiuix/animation/physics/DynamicAnimation;->getPropertyValue()F

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 18
    :cond_11
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 20
    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 22
    cmpl-float v1, v0, v1

    .line 24
    if-gtz v1, :cond_29

    .line 26
    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 28
    cmpg-float v0, v0, v1

    .line 30
    if-ltz v0, :cond_29

    .line 32
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 35
    move-result-object v0

    .line 36
    iget-wide v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    .line 38
    invoke-virtual {v0, p0, v1, v2}, Lmiuix/animation/physics/AnimationHandler;->addAnimationFrameCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;J)V

    .line 41
    goto :goto_31

    .line 42
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string v1, "Starting value need to be in between min value and max value"

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0

    .line 50
    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    return-object p0
.end method

.method public addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_14

    .line 7
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_13

    .line 15
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_13
    return-object p0

    .line 21
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 23
    const-string v0, "Error: Update listeners must be added beforethe miuix.animation."

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method

.method public cancel()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getAnimationHandler()Lmiuix/animation/physics/AnimationHandler;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/physics/AnimationHandler;->isCurrentThread()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 11
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 13
    if-eqz v0, :cond_12

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, v0}, Lmiuix/animation/physics/DynamicAnimation;->endAnimationInternal(Z)V

    .line 19
    :cond_12
    return-void

    .line 20
    :cond_13
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 22
    const-string v1, "Animations may only be canceled from the same thread as the animation handler"

    .line 24
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method public doAnimationFrame(J)Z
    .registers 7

    .line 1
    iget-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v2, v0, v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_11

    .line 10
    iput-wide p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 12
    iget p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setPropertyValue(F)V

    .line 17
    return v3

    .line 18
    :cond_11
    sub-long v0, p1, v0

    .line 20
    iput-wide p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 22
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->updateValueAndVelocity(J)Z

    .line 25
    move-result p1

    .line 26
    iget p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 28
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 30
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 33
    move-result p2

    .line 34
    iput p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 36
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 38
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    .line 41
    move-result p2

    .line 42
    iput p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 44
    invoke-virtual {p0, p2}, Lmiuix/animation/physics/DynamicAnimation;->setPropertyValue(F)V

    .line 47
    if-eqz p1, :cond_33

    .line 49
    invoke-direct {p0, v3}, Lmiuix/animation/physics/DynamicAnimation;->endAnimationInternal(Z)V

    .line 52
    :cond_33
    return p1
.end method

.method public abstract getAcceleration(FF)F
.end method

.method public getAnimationHandler()Lmiuix/animation/physics/AnimationHandler;
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getMinimumVisibleChange()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    .line 3
    return v0
.end method

.method public getValueThreshold()F
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

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
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 3
    return v0
.end method

.method public removeEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0, p1}, Lmiuix/animation/physics/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0, p1}, Lmiuix/animation/physics/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public setMaxValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 3
    return-object p0
.end method

.method public setMinValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 3
    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;
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
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    .line 8
    const/high16 v0, 0x3f400000  # 0.75f

    .line 10
    mul-float/2addr p1, v0

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setValueThreshold(F)V

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
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 3
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v1, p1}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 8
    const/4 p1, 0x0

    .line 9
    :goto_8
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    if-ge p1, v0, :cond_2a

    .line 17
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 33
    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 35
    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 37
    invoke-interface {v0, p0, v1, v2}, Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lmiuix/animation/physics/DynamicAnimation;FF)V

    .line 40
    :cond_27
    add-int/lit8 p1, p1, 0x1

    .line 42
    goto :goto_8

    .line 43
    :cond_2a
    iget-object p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 45
    invoke-static {p1}, Lmiuix/animation/physics/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 48
    return-void
.end method

.method public setStartDelay(J)V
    .registers 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p1, v0

    .line 5
    if-gez v2, :cond_7

    .line 7
    move-wide p1, v0

    .line 8
    :cond_7
    iput-wide p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    .line 10
    return-void
.end method

.method public setStartValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 6
    return-object p0
.end method

.method public setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 3
    return-object p0
.end method

.method public abstract setValueThreshold(F)V
.end method

.method public start()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getAnimationHandler()Lmiuix/animation/physics/AnimationHandler;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/physics/AnimationHandler;->isCurrentThread()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 13
    if-nez v0, :cond_11

    .line 15
    invoke-direct {p0}, Lmiuix/animation/physics/DynamicAnimation;->startAnimationInternal()V

    .line 18
    :cond_11
    return-void

    .line 19
    :cond_12
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 21
    const-string v1, "Animations may only be started on the same thread as the animation handler"

    .line 23
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0
.end method

.method public abstract updateValueAndVelocity(J)Z
.end method
