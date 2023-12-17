.class final Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Lmiuix/overscroller/internal/dynamicanimation/animation/Force;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DragForce"
.end annotation


# static fields
.field private static final DEFAULT_FRICTION:F = -4.2f

.field private static final MAX_DELTA_TIME:I = 0x10

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:F = 62.5f


# instance fields
.field private final MILLISECONDS_PER_SECOND:F

.field private mDragRate:D

.field private mFriction:F

.field private final mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

.field private mVelocityThreshold:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, -0x3f79999a  # -4.2f

    .line 7
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 9
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 11
    invoke-direct {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 16
    const/high16 v0, 0x447a0000  # 1000.0f

    .line 18
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->MILLISECONDS_PER_SECOND:F

    .line 20
    return-void
.end method

.method public static synthetic access$000(Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 3
    return p0
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 3

    .line 1
    iget p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 3
    mul-float/2addr p2, p1

    .line 4
    return p2
.end method

.method public getFrictionScalar()F
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 3
    const v1, -0x3f79999a  # -4.2f

    .line 6
    div-float/2addr v0, v1

    .line 7
    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 3

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 4
    move-result p1

    .line 5
    iget p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 7
    cmpg-float p1, p1, p2

    .line 9
    if-gez p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public setFrictionScalar(F)V
    .registers 6

    .line 1
    const v0, -0x3f79999a  # -4.2f

    .line 4
    mul-float/2addr p1, v0

    .line 5
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 7
    float-to-double v0, p1

    .line 8
    const-wide v2, 0x4005bf0a8b145769L  # Math.E

    .line 13
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 16
    move-result-wide v0

    .line 17
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 19
    sub-double/2addr v2, v0

    .line 20
    iput-wide v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mDragRate:D

    .line 22
    return-void
.end method

.method public setValueThreshold(F)V
    .registers 3

    .line 1
    const/high16 v0, 0x427a0000  # 62.5f

    .line 3
    mul-float/2addr p1, v0

    .line 4
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 6
    return-void
.end method

.method public updateValueAndVelocity(FFJ)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    .registers 9

    .line 1
    const-wide/16 v0, 0x10

    .line 3
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 6
    move-result-wide p3

    .line 7
    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mDragRate:D

    .line 9
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 11
    sub-double/2addr v2, v0

    .line 12
    long-to-float p3, p3

    .line 13
    const/high16 p4, 0x447a0000  # 1000.0f

    .line 15
    div-float/2addr p3, p4

    .line 16
    float-to-double v0, p3

    .line 17
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 20
    move-result-wide v0

    .line 21
    iget-object p4, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 23
    float-to-double v2, p2

    .line 24
    mul-double/2addr v2, v0

    .line 25
    double-to-float p2, v2

    .line 26
    iput p2, p4, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 28
    mul-float/2addr p3, p2

    .line 29
    add-float/2addr p3, p1

    .line 30
    iput p3, p4, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 32
    invoke-virtual {p0, p3, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2a

    .line 38
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 40
    const/4 p2, 0x0

    .line 41
    iput p2, p1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 43
    :cond_2a
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 45
    return-object p1
.end method
