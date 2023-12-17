.class Lmiuix/animation/controller/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# static fields
.field public static final TAG_AUTO_SET_TO:Ljava/lang/String; = "autoSetTo"

.field public static final TAG_SET_TO:Ljava/lang/String; = "defaultSetTo"

.field public static final TAG_TO:Ljava/lang/String; = "defaultTo"


# instance fields
.field public final mAutoSetToState:Lmiuix/animation/controller/AnimState;

.field public mCurTag:Ljava/lang/Object;

.field public final mSetToState:Lmiuix/animation/controller/AnimState;

.field public mStateHelper:Lmiuix/animation/controller/StateHelper;

.field public final mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lmiuix/animation/controller/AnimState;",
            ">;"
        }
    .end annotation
.end field

.field public final mToState:Lmiuix/animation/controller/AnimState;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    .line 11
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 13
    const-string v1, "defaultTo"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    .line 19
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mToState:Lmiuix/animation/controller/AnimState;

    .line 21
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 23
    const-string v1, "defaultSetTo"

    .line 25
    invoke-direct {v0, v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    .line 28
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mSetToState:Lmiuix/animation/controller/AnimState;

    .line 30
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 32
    const-string v1, "autoSetTo"

    .line 34
    invoke-direct {v0, v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    .line 37
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mAutoSetToState:Lmiuix/animation/controller/AnimState;

    .line 39
    new-instance v0, Lmiuix/animation/controller/StateHelper;

    .line 41
    invoke-direct {v0}, Lmiuix/animation/controller/StateHelper;-><init>()V

    .line 44
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateHelper:Lmiuix/animation/controller/StateHelper;

    .line 46
    return-void
.end method

.method private getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_4
    instance-of v0, p1, Lmiuix/animation/controller/AnimState;

    if-eqz v0, :cond_b

    .line 3
    check-cast p1, Lmiuix/animation/controller/AnimState;

    goto :goto_22

    .line 4
    :cond_b
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/AnimState;

    if-nez v0, :cond_21

    if-eqz p2, :cond_21

    .line 5
    new-instance p2, Lmiuix/animation/controller/AnimState;

    invoke-direct {p2, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/StateManager;->addState(Lmiuix/animation/controller/AnimState;)V

    move-object p1, p2

    goto :goto_22

    :cond_21
    move-object p1, v0

    :goto_22
    return-object p1
.end method

.method private varargs getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .registers 5

    .line 1
    array-length v0, p2

    .line 2
    if-lez v0, :cond_11

    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object v1, p2, v0

    .line 7
    invoke-direct {p0, v1, v0}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_12

    .line 13
    invoke-direct {p0, p2}, Lmiuix/animation/controller/StateManager;->getStateByName([Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :cond_12
    :goto_12
    if-nez v0, :cond_18

    .line 21
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 24
    move-result-object v0

    .line 25
    :cond_18
    return-object v0
.end method

.method private varargs getStateByName([Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    .line 4
    array-length v1, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-le v1, v3, :cond_b

    .line 9
    aget-object p1, p1, v3

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move-object p1, v2

    .line 13
    :goto_c
    instance-of v1, v0, Ljava/lang/String;

    .line 15
    if-eqz v1, :cond_19

    .line 17
    instance-of p1, p1, Ljava/lang/String;

    .line 19
    if-eqz p1, :cond_19

    .line 21
    invoke-direct {p0, v0, v3}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_19
    return-object v2
.end method

.method private varargs setAnimState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateHelper:Lmiuix/animation/controller/StateHelper;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateHelper;->parse(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)V

    .line 6
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;F)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Ljava/lang/String;FJ)V
    .registers 6

    .line 3
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, p3, p4}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    float-to-double p2, p2

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Ljava/lang/String;I)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    int-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Ljava/lang/String;IJ)V
    .registers 6

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p3, p4}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    int-to-double p2, p2

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Lmiuix/animation/property/FloatProperty;F)V
    .registers 6

    .line 10
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Lmiuix/animation/property/FloatProperty;FJ)V
    .registers 6

    .line 14
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p3, p4}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    float-to-double p2, p2

    .line 16
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Lmiuix/animation/property/FloatProperty;I)V
    .registers 6

    .line 9
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    int-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Lmiuix/animation/property/FloatProperty;IJ)V
    .registers 6

    .line 11
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p3, p4}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    int-to-double p2, p2

    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public addInitProperty(Ljava/lang/String;F)V
    .registers 5

    const-wide/16 v0, 0x2

    .line 4
    invoke-virtual {p0, p1, p2, v0, v1}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;FJ)V

    return-void
.end method

.method public addInitProperty(Ljava/lang/String;I)V
    .registers 5

    const-wide/16 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;IJ)V

    return-void
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;F)V
    .registers 5

    const-wide/16 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;FJ)V

    return-void
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;I)V
    .registers 5

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;IJ)V

    return-void
.end method

.method public addListener(Lmiuix/animation/listener/TransitionListener;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object p1, v1, v2

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 18
    return-void
.end method

.method public addState(Lmiuix/animation/controller/AnimState;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public addTempConfig(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mToState:Lmiuix/animation/controller/AnimState;

    .line 3
    if-eq p1, v0, :cond_e

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Z

    .line 12
    invoke-virtual {p2, p1, v0}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    .line 15
    :cond_e
    return-void
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method

.method public clearTempState(Lmiuix/animation/controller/AnimState;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mToState:Lmiuix/animation/controller/AnimState;

    .line 3
    if-eq p1, v0, :cond_8

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mSetToState:Lmiuix/animation/controller/AnimState;

    .line 7
    if-ne p1, v0, :cond_b

    .line 9
    :cond_8
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->clear()V

    .line 12
    :cond_b
    return-void
.end method

.method public getCurrentState()Lmiuix/animation/controller/AnimState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mCurTag:Ljava/lang/Object;

    .line 3
    if-nez v0, :cond_8

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mToState:Lmiuix/animation/controller/AnimState;

    .line 7
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mCurTag:Ljava/lang/Object;

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mCurTag:Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public varargs getSetToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mSetToState:Lmiuix/animation/controller/AnimState;

    .line 3
    invoke-direct {p0, v0, p3}, Lmiuix/animation/controller/StateManager;->getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1, v0, p2, p3}, Lmiuix/animation/controller/StateManager;->setAnimState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)V

    .line 10
    return-object v0
.end method

.method public getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1
.end method

.method public varargs getToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p3}, Lmiuix/animation/controller/StateManager;->getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, p1, v0, p2, p3}, Lmiuix/animation/controller/StateManager;->setAnimState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)V

    .line 12
    return-object v0
.end method

.method public hasState(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeListener(Lmiuix/animation/listener/TransitionListener;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object p1, v1, v2

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 18
    return-void
.end method

.method public varargs setEase(I[F)V
    .registers 4

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    return-void
.end method

.method public varargs setEase(Lmiuix/animation/property/FloatProperty;I[F)V
    .registers 7

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2, p3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    return-void
.end method

.method public varargs setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    .line 2
    array-length v1, p2

    if-nez v1, :cond_f

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    goto :goto_1e

    .line 4
    :cond_f
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_1e

    aget-object v4, p2, v3

    new-array v5, v2, [F

    .line 5
    invoke-virtual {v0, v4, p1, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1e
    :goto_1e
    return-void
.end method

.method public setStateFlags(Ljava/lang/Object;J)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 4
    move-result-object p1

    .line 5
    iput-wide p2, p1, Lmiuix/animation/controller/AnimState;->flags:J

    .line 7
    return-void
.end method

.method public varargs setTransitionFlags(Ljava/lang/Object;J[Lmiuix/animation/property/FloatProperty;)V
    .registers 9

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 8
    move-result-object p1

    .line 9
    array-length v0, p4

    .line 10
    if-nez v0, :cond_e

    .line 12
    iput-wide p2, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 14
    goto :goto_27

    .line 15
    :cond_e
    array-length v0, p4

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_10
    if-ge v1, v0, :cond_27

    .line 19
    aget-object v2, p4, v1

    .line 21
    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;

    .line 24
    move-result-object v3

    .line 25
    if-nez v3, :cond_22

    .line 27
    new-instance v3, Lmiuix/animation/base/AnimSpecialConfig;

    .line 29
    invoke-direct {v3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 32
    invoke-virtual {p1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 35
    :cond_22
    iput-wide p2, v3, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_10

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method public setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/animation/controller/AnimState;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    check-cast p1, Lmiuix/animation/controller/AnimState;

    .line 7
    goto :goto_1a

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lmiuix/animation/controller/AnimState;

    .line 16
    if-nez v0, :cond_19

    .line 18
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 20
    invoke-direct {v0, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/StateManager;->addState(Lmiuix/animation/controller/AnimState;)V

    .line 26
    :cond_19
    move-object p1, v0

    .line 27
    :goto_1a
    iput-object p1, p0, Lmiuix/animation/controller/StateManager;->mCurTag:Ljava/lang/Object;

    .line 29
    return-object p1
.end method
