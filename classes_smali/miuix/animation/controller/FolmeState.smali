.class public Lmiuix/animation/controller/FolmeState;
.super Ljava/lang/Object;
.source "FolmeState.java"

# interfaces
.implements Lmiuix/animation/controller/IFolmeStateStyle;


# instance fields
.field public mConfigLink:Lmiuix/animation/base/AnimConfigLink;

.field private mEnableAnim:Z

.field public mStateMgr:Lmiuix/animation/controller/StateManager;

.field public mTarget:Lmiuix/animation/IAnimTarget;


# direct methods
.method public constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/animation/controller/StateManager;

    .line 6
    invoke-direct {v0}, Lmiuix/animation/controller/StateManager;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 11
    new-instance v0, Lmiuix/animation/base/AnimConfigLink;

    .line 13
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mConfigLink:Lmiuix/animation/base/AnimConfigLink;

    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    .line 21
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 23
    return-void
.end method

.method public static synthetic access$000(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lmiuix/animation/controller/FolmeState;)Lmiuix/animation/base/AnimConfigLink;
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    .line 4
    return-void
.end method

.method private fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    if-eqz v0, :cond_30

    .line 2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p2}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    if-eqz p1, :cond_e

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 4
    :cond_e
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v1, v0, p3}, Lmiuix/animation/controller/StateManager;->addTempConfig(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 6
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v1

    iget-object v2, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2, p3}, Lmiuix/animation/internal/AnimRunner;->run(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 7
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p1, v0}, Lmiuix/animation/controller/StateManager;->clearTempState(Lmiuix/animation/controller/AnimState;)V

    .line 8
    invoke-virtual {p3}, Lmiuix/animation/base/AnimConfigLink;->clear()V

    :cond_30
    return-void
.end method

.method private getConfigLink()Lmiuix/animation/base/AnimConfigLink;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mConfigLink:Lmiuix/animation/base/AnimConfigLink;

    .line 3
    return-object v0
.end method

.method private setTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_3e

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_f

    goto :goto_3e

    .line 3
    :cond_f
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 5
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolmeState.setTo, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_33
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/internal/AnimManager;->setTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 8
    iget-object p2, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p2, p1}, Lmiuix/animation/controller/StateManager;->clearTempState(Lmiuix/animation/controller/AnimState;)V

    return-void

    :cond_3e
    :goto_3e
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 9
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeState;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;F)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 7
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;F)V

    return-object p0
.end method

.method public add(Ljava/lang/String;FJ)Lmiuix/animation/IStateStyle;
    .registers 6

    .line 8
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;FJ)V

    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 6
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(Ljava/lang/String;IJ)Lmiuix/animation/IStateStyle;
    .registers 6

    .line 2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;IJ)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;F)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;FJ)Lmiuix/animation/IStateStyle;
    .registers 6

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;FJ)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;I)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;IJ)Lmiuix/animation/IStateStyle;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;IJ)V

    return-object p0
.end method

.method public varargs addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public addInitProperty(Ljava/lang/String;F)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Ljava/lang/String;F)V

    return-object p0
.end method

.method public addInitProperty(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Lmiuix/animation/property/FloatProperty;F)V

    return-object p0
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Lmiuix/animation/property/FloatProperty;I)V

    return-object p0
.end method

.method public addListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->addListener(Lmiuix/animation/listener/TransitionListener;)V

    .line 6
    return-object p0
.end method

.method public addState(Lmiuix/animation/controller/AnimState;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->addState(Lmiuix/animation/controller/AnimState;)V

    .line 6
    return-void
.end method

.method public varargs autoSetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 2

    return-object p0
.end method

.method public cancel()V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/internal/AnimRunner;->cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .registers 4

    .line 3
    array-length v0, p1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    instance-of v0, v0, Lmiuix/animation/ValueTarget;

    if-nez v0, :cond_a

    goto :goto_13

    .line 4
    :cond_a
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/internal/AnimRunner;->cancel(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .registers 4

    .line 2
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/internal/AnimRunner;->cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public clean()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->cancel()V

    .line 4
    return-void
.end method

.method public enableDefaultAnim(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    .line 3
    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .registers 5

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_2b

    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object v1, p1, v0

    .line 7
    instance-of v1, v1, Lmiuix/animation/property/FloatProperty;

    .line 9
    if-eqz v1, :cond_1b

    .line 11
    array-length v1, p1

    .line 12
    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    .line 14
    array-length v2, p1

    .line 15
    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 24
    invoke-virtual {p1, v0, v1}, Lmiuix/animation/internal/AnimRunner;->end(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    .line 27
    goto :goto_2b

    .line 28
    :cond_1b
    array-length v1, p1

    .line 29
    new-array v1, v1, [Ljava/lang/String;

    .line 31
    array-length v2, p1

    .line 32
    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 41
    invoke-virtual {p1, v0, v1}, Lmiuix/animation/internal/AnimRunner;->end(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V

    .line 44
    :cond_2b
    :goto_2b
    return-void
.end method

.method public varargs fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 6

    .line 9
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_5

    return-object p0

    .line 10
    :cond_5
    new-instance v1, Lmiuix/animation/controller/FolmeState$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lmiuix/animation/controller/FolmeState$2;-><init>(Lmiuix/animation/controller/FolmeState;[Lmiuix/animation/base/AnimConfig;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public getCurrentState()Lmiuix/animation/controller/AnimState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPredictFriction(Lmiuix/animation/property/FloatProperty;F)F
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    cmpl-float v1, v0, v1

    .line 11
    if-nez v1, :cond_f

    .line 13
    const/high16 p1, -0x40800000  # -1.0f

    .line 15
    return p1

    .line 16
    :cond_f
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 18
    invoke-virtual {v1, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 21
    move-result v1

    .line 22
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 25
    move-result v2

    .line 26
    iget-object v3, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 28
    invoke-static {v3}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, p1}, Lmiuix/animation/IAnimTarget;->getThresholdVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 35
    move-result-wide v3

    .line 36
    double-to-float p1, v3

    .line 37
    mul-float/2addr v2, p1

    .line 38
    const/4 p1, 0x1

    .line 39
    new-array p1, p1, [F

    .line 41
    const/4 v3, 0x0

    .line 42
    aput v2, p1, v3

    .line 44
    invoke-static {v1, p2, v0, p1}, Lmiuix/animation/Folme;->getPredictFriction(FFF[F)F

    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public varargs getPredictValue(Lmiuix/animation/property/FloatProperty;[F)F
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 10
    invoke-virtual {v1, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 16
    invoke-static {v2}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, p1}, Lmiuix/animation/IAnimTarget;->getThresholdVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 23
    move-result-wide v2

    .line 24
    double-to-float p1, v2

    .line 25
    const/4 v2, 0x0

    .line 26
    cmpl-float v2, v0, v2

    .line 28
    if-eqz v2, :cond_26

    .line 30
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 33
    move-result v2

    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 37
    move-result p1

    .line 38
    mul-float/2addr p1, v2

    .line 39
    :cond_26
    const/4 v2, 0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz p2, :cond_3a

    .line 43
    array-length v4, p2

    .line 44
    if-nez v4, :cond_2e

    .line 46
    goto :goto_3a

    .line 47
    :cond_2e
    aget p2, p2, v3

    .line 49
    new-array v2, v2, [F

    .line 51
    aput p1, v2, v3

    .line 53
    invoke-static {v0, p2, v2}, Lmiuix/animation/Folme;->getPredictDistanceWithFriction(FF[F)F

    .line 56
    move-result p1

    .line 57
    :goto_38
    add-float/2addr p1, v1

    .line 58
    return p1

    .line 59
    :cond_3a
    :goto_3a
    new-array p2, v2, [F

    .line 61
    aput p1, p2, v3

    .line 63
    invoke-static {v0, p2}, Lmiuix/animation/Folme;->getPredictDistance(F[F)F

    .line 66
    move-result p1

    .line 67
    goto :goto_38
.end method

.method public getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTarget()Lmiuix/animation/IAnimTarget;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 3
    return-object v0
.end method

.method public varargs predictDuration([Ljava/lang/Object;)J
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 11
    invoke-virtual {v2, v0, v1, p1}, Lmiuix/animation/controller/StateManager;->getToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 14
    move-result-object p1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v2, p1, v1}, Lmiuix/animation/internal/PredictTask;->predictDuration(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)J

    .line 19
    move-result-wide v2

    .line 20
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 22
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->clearTempState(Lmiuix/animation/controller/AnimState;)V

    .line 25
    invoke-virtual {v1}, Lmiuix/animation/base/AnimConfigLink;->clear()V

    .line 28
    return-wide v2
.end method

.method public removeListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->removeListener(Lmiuix/animation/listener/TransitionListener;)V

    .line 6
    return-object p0
.end method

.method public set(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 6
    return-object p0
.end method

.method public varargs setConfig(Lmiuix/animation/base/AnimConfig;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public varargs setEase(I[F)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->setEase(I[F)V

    return-object p0
.end method

.method public varargs setEase(Lmiuix/animation/property/FloatProperty;I[F)Lmiuix/animation/IStateStyle;
    .registers 5

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/StateManager;->setEase(Lmiuix/animation/property/FloatProperty;I[F)V

    return-object p0
.end method

.method public varargs setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)V

    return-object p0
.end method

.method public setFlags(J)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-object p0

    .line 6
    :cond_5
    invoke-virtual {v0, p1, p2}, Lmiuix/animation/IAnimTarget;->setFlags(J)V

    .line 9
    return-object p0
.end method

.method public setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 10
    invoke-virtual {p0, p1, v0}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 5

    .line 11
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_5

    return-object p0

    .line 12
    :cond_5
    new-instance v1, Lmiuix/animation/controller/FolmeState$1;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/animation/controller/FolmeState$1;-><init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 13
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_5

    return-object p0

    .line 14
    :cond_5
    new-instance v1, Lmiuix/animation/controller/FolmeState$3;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/controller/FolmeState$3;-><init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs setTransitionFlags(J[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1, p2, p3}, Lmiuix/animation/controller/StateManager;->setTransitionFlags(Ljava/lang/Object;J[Lmiuix/animation/property/FloatProperty;)V

    .line 10
    return-object p0
.end method

.method public setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 6
    return-object p0
.end method

.method public varargs then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/StateManager;->setStateFlags(Ljava/lang/Object;J)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs then([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance v1, Lmiuix/animation/controller/FolmeState$4;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/controller/FolmeState$4;-><init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 6

    .line 2
    instance-of v0, p1, Lmiuix/animation/controller/AnimState;

    if-nez v0, :cond_39

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->hasState(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_39

    .line 3
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 4
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 5
    array-length v2, p2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    array-length p1, p2

    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p0, v2}, Lmiuix/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1

    :cond_2c
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 9
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1

    :cond_39
    :goto_39
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 5

    .line 11
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lmiuix/animation/controller/StateManager;->getToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmiuix/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method
