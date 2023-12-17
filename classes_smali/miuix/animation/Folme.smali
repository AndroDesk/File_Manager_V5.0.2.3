.class public Lmiuix/animation/Folme;
.super Ljava/lang/Object;
.source "Folme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/Folme$FolmeImpl;,
        Lmiuix/animation/Folme$FontWeight;,
        Lmiuix/animation/Folme$FontType;
    }
.end annotation


# static fields
.field private static final DEFALUT_FRICTION:F = 0.4761905f

.field private static DEFAULT_THRESHOLD_VELOCITY:F = 0.0f

.field private static final DELAY_TIME:J = 0x4e20L

.field private static final DELAY_TIME_MSG_TARGET_CLEAN_DIE_MUCH:J = 0x3e8L

.field private static final DELAY_TIME_MSG_TARGET_CLEAN_UI_FREE:J = 0x4e20L

.field private static final MSG_TARGET:I = 0x1

.field private static final MSG_TARGET_CLEAN_DIE_MUCH:I = 0x2

.field private static final MSG_TARGET_CLEAN_UI_FREE:I = 0x1

.field private static final THRESHOLD_LIMIT:J = 0x400L

.field private static final USE_PHY_MIN_VELOCITY:D = 1000.0

.field private static final sImplMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/Folme$FolmeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sMainHandler:Landroid/os/Handler;

.field private static sRunLooper:Landroid/os/Looper;

.field private static sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/animation/Folme$1;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/Folme$1;-><init>()V

    .line 6
    invoke-static {v0}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 15
    invoke-static {v0}, Lmiuix/animation/Folme;->createMainHandler(Landroid/os/Looper;)V

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    const/high16 v1, 0x3f800000  # 1.0f

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 29
    sput-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 36
    sput-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    const/high16 v0, 0x41480000  # 12.5f

    .line 40
    sput v0, Lmiuix/animation/Folme;->DEFAULT_THRESHOLD_VELOCITY:F

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Z)V
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/animation/Folme;->sendToTargetMessage(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100()V
    .registers 0

    .line 1
    invoke-static {}, Lmiuix/animation/Folme;->performTargetCleanForTooMuchInvalid()V

    .line 4
    return-void
.end method

.method public static synthetic access$300()V
    .registers 0

    .line 1
    invoke-static {}, Lmiuix/animation/Folme;->clearTargets()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Ljava/util/List;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/animation/Folme;->clearInvalidTargets(Ljava/util/List;)V

    .line 4
    return-void
.end method

.method public static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    return-object v0
.end method

.method public static afterFrictionValue(FF)F
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 4
    if-nez v1, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    cmpl-float v0, p0, v0

    .line 9
    const/high16 v1, 0x3f800000  # 1.0f

    .line 11
    if-ltz v0, :cond_e

    .line 13
    move v0, v1

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const/high16 v0, -0x40800000  # -1.0f

    .line 17
    :goto_10
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 20
    move-result p0

    .line 21
    div-float/2addr p0, p1

    .line 22
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 25
    move-result p0

    .line 26
    mul-float v1, p0, p0

    .line 28
    mul-float v2, v1, p0

    .line 30
    const/high16 v3, 0x40400000  # 3.0f

    .line 32
    div-float/2addr v2, v3

    .line 33
    sub-float/2addr v2, v1

    .line 34
    add-float/2addr v2, p0

    .line 35
    mul-float/2addr v2, v0

    .line 36
    mul-float/2addr v2, p1

    .line 37
    return v2
.end method

.method public static varargs clean([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_20

    .line 7
    sget-object p0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2c

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 29
    invoke-static {v0}, Lmiuix/animation/Folme;->cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    array-length v0, p0

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_22
    if-ge v1, v0, :cond_2c

    .line 37
    aget-object v2, p0, v1

    .line 39
    invoke-static {v2}, Lmiuix/animation/Folme;->doClean(Ljava/lang/Object;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_22

    .line 45
    :cond_2c
    return-void
.end method

.method private static cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    .line 1
    if-eqz p0, :cond_1e

    .line 3
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->clean()V

    .line 6
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lmiuix/animation/Folme$FolmeImpl;

    .line 14
    iget-object v1, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 16
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimManager;->clear()V

    .line 19
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners()V

    .line 26
    if-eqz v0, :cond_1e

    .line 28
    invoke-virtual {v0}, Lmiuix/animation/Folme$FolmeImpl;->clean()V

    .line 31
    :cond_1e
    return-void
.end method

.method private static clearInvalidTargets(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/animation/IAnimTarget;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_38

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 17
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->isValid()Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_4

    .line 23
    iget-object v1, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v3, v2, [Lmiuix/animation/property/FloatProperty;

    .line 28
    invoke-virtual {v1, v3}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_4

    .line 34
    iget-object v1, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 36
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimManager;->isAnimSetup()Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_4

    .line 42
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->isValidFlag()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 48
    const/4 v1, 0x1

    .line 49
    new-array v1, v1, [Lmiuix/animation/IAnimTarget;

    .line 51
    aput-object v0, v1, v2

    .line 53
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 56
    goto :goto_4

    .line 57
    :cond_38
    return-void
.end method

.method private static clearTargetMessage(I)V
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/animation/Folme;->getMainHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    :cond_9
    return-void
.end method

.method private static clearTargets()V
    .registers 6

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_46

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 23
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isValid()Z

    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_3d

    .line 30
    const-wide/16 v4, 0x1

    .line 32
    invoke-virtual {v1, v4, v5}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_a

    .line 38
    iget-object v2, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 40
    new-array v4, v3, [Lmiuix/animation/property/FloatProperty;

    .line 42
    invoke-virtual {v2, v4}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_a

    .line 48
    iget-object v2, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 50
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimManager;->isAnimSetup()Z

    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_a

    .line 56
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isValidFlag()Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_a

    .line 62
    :cond_3d
    const/4 v2, 0x1

    .line 63
    new-array v2, v2, [Lmiuix/animation/IAnimTarget;

    .line 65
    aput-object v1, v2, v3

    .line 67
    invoke-static {v2}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 70
    goto :goto_a

    .line 71
    :cond_46
    return-void
.end method

.method private static createMainHandler(Landroid/os/Looper;)V
    .registers 2

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Lmiuix/animation/Folme$2;

    .line 6
    invoke-direct {v0, p0}, Lmiuix/animation/Folme$2;-><init>(Landroid/os/Looper;)V

    .line 9
    sput-object v0, Lmiuix/animation/Folme;->sMainHandler:Landroid/os/Handler;

    .line 11
    return-void
.end method

.method private static doClean(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Lmiuix/animation/Folme;->cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V

    .line 9
    return-void
.end method

.method public static varargs end([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_1e

    .line 5
    aget-object v2, p0, v1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_e

    .line 14
    goto :goto_1b

    .line 15
    :cond_e
    sget-object v3, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lmiuix/animation/Folme$FolmeImpl;

    .line 23
    if-eqz v2, :cond_1b

    .line 25
    invoke-virtual {v2}, Lmiuix/animation/Folme$FolmeImpl;->end()V

    .line 28
    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_2

    .line 31
    :cond_1e
    return-void
.end method

.method private static fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiuix/animation/IAnimTarget;)Lmiuix/animation/Folme$FolmeImpl;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_4
    array-length v4, p0

    .line 6
    if-ge v1, v4, :cond_23

    .line 8
    aget-object v4, p0, v1

    .line 10
    sget-object v5, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 12
    invoke-static {v4, v5}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 15
    move-result-object v4

    .line 16
    aput-object v4, p1, v1

    .line 18
    sget-object v5, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lmiuix/animation/Folme$FolmeImpl;

    .line 26
    if-nez v3, :cond_1d

    .line 28
    move-object v3, v4

    .line 29
    goto :goto_20

    .line 30
    :cond_1d
    if-eq v3, v4, :cond_20

    .line 32
    const/4 v2, 0x1

    .line 33
    :cond_20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_4

    .line 36
    :cond_23
    if-eqz v2, :cond_26

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move-object v0, v3

    .line 40
    :goto_27
    return-object v0
.end method

.method public static getDefaultThresholdVelocity()F
    .registers 1

    .line 1
    sget v0, Lmiuix/animation/Folme;->DEFAULT_THRESHOLD_VELOCITY:F

    .line 3
    return v0
.end method

.method public static getLooper()Landroid/os/Looper;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 3
    if-nez v0, :cond_a

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 11
    :cond_a
    sget-object v0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 13
    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sMainHandler:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method private static getPredict(FF)F
    .registers 3

    const v0, -0x3f79999a  # -4.2f

    mul-float/2addr p1, v0

    neg-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method private static getPredict(FFF)F
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lmiuix/animation/Folme;->getPredict(FF)F

    .line 4
    move-result p0

    .line 5
    invoke-static {p2, p1}, Lmiuix/animation/Folme;->getPredict(FF)F

    .line 8
    move-result p1

    .line 9
    sub-float/2addr p0, p1

    .line 10
    return p0
.end method

.method public static getPredictDistance(F)F
    .registers 2

    const v0, 0x3ef3cf3e

    .line 1
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getPredict(FF)F

    move-result p0

    return p0
.end method

.method public static varargs getPredictDistance(F[F)F
    .registers 4

    const v0, 0x3ef3cf3e

    if-eqz p1, :cond_10

    .line 2
    array-length v1, p1

    if-lez v1, :cond_10

    const/4 v1, 0x0

    .line 3
    aget p1, p1, v1

    invoke-static {p0, v0, p1}, Lmiuix/animation/Folme;->getPredict(FFF)F

    move-result p0

    return p0

    .line 4
    :cond_10
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getPredict(FF)F

    move-result p0

    return p0
.end method

.method public static varargs getPredictDistanceWithFriction(FF[F)F
    .registers 4

    .line 1
    if-eqz p2, :cond_d

    .line 3
    array-length v0, p2

    .line 4
    if-lez v0, :cond_d

    .line 6
    const/4 v0, 0x0

    .line 7
    aget p2, p2, v0

    .line 9
    invoke-static {p0, p1, p2}, Lmiuix/animation/Folme;->getPredict(FFF)F

    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_d
    invoke-static {p0, p1}, Lmiuix/animation/Folme;->getPredict(FF)F

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static varargs getPredictFriction(FFF[F)F
    .registers 5

    .line 1
    sub-float/2addr p1, p0

    .line 2
    mul-float p0, p2, p1

    .line 4
    const/4 v0, 0x0

    .line 5
    cmpg-float p0, p0, v0

    .line 7
    if-gtz p0, :cond_b

    .line 9
    const/high16 p0, -0x40800000  # -1.0f

    .line 11
    return p0

    .line 12
    :cond_b
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 15
    move-result p0

    .line 16
    invoke-static {}, Lmiuix/animation/Folme;->getDefaultThresholdVelocity()F

    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 23
    move-result v0

    .line 24
    mul-float/2addr v0, p0

    .line 25
    if-eqz p3, :cond_2a

    .line 27
    array-length p0, p3

    .line 28
    if-lez p0, :cond_2a

    .line 30
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 33
    move-result p0

    .line 34
    const/4 v0, 0x0

    .line 35
    aget p3, p3, v0

    .line 37
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 40
    move-result p3

    .line 41
    mul-float v0, p3, p0

    .line 43
    :cond_2a
    sub-float/2addr p2, v0

    .line 44
    const p0, 0x40866666  # 4.2f

    .line 47
    mul-float/2addr p1, p0

    .line 48
    div-float/2addr p2, p1

    .line 49
    return p2
.end method

.method public static getTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lmiuix/animation/IAnimTarget;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    return-object p0
.end method

.method public static getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lmiuix/animation/ITargetCreator<",
            "TT;>;)",
            "Lmiuix/animation/IAnimTarget;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2
    :cond_4
    instance-of v1, p0, Lmiuix/animation/IAnimTarget;

    if-eqz v1, :cond_b

    .line 3
    check-cast p0, Lmiuix/animation/IAnimTarget;

    return-object p0

    .line 4
    :cond_b
    sget-object v1, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 5
    invoke-virtual {v2}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 6
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    return-object v2

    :cond_2e
    if-eqz p1, :cond_3a

    .line 7
    invoke-interface {p1, p0}, Lmiuix/animation/ITargetCreator;->createTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 8
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    return-object p0

    :cond_3a
    return-object v0
.end method

.method public static getTargetById(I)Lmiuix/animation/IAnimTarget;
    .registers 4

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1b

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 23
    iget v2, v1, Lmiuix/animation/IAnimTarget;->id:I

    .line 25
    if-ne v2, p0, :cond_a

    .line 27
    return-object v1

    .line 28
    :cond_1b
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static getTargets()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/IAnimTarget;

    .line 3
    invoke-virtual {v3}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v3

    if-nez v3, :cond_12

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_27
    const-string v0, "current sImplMap total : "

    .line 4
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    sget-object v3, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  , target invalid count :  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_47
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getTargets(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiuix/animation/IAnimTarget;",
            ">;)V"
        }
    .end annotation

    .line 10
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 11
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_34

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    new-array v4, v3, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v2, v4}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_34

    .line 12
    :cond_30
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_34
    :goto_34
    const/4 v2, 0x1

    new-array v2, v2, [Lmiuix/animation/IAnimTarget;

    aput-object v1, v2, v3

    .line 13
    invoke-static {v2}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_a

    :cond_3d
    return-void
.end method

.method public static getTimeRatio()F
    .registers 1

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Float;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lmiuix/animation/ValueTarget;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 3
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/animation/ValueTarget;

    .line 9
    return-object p0
.end method

.method public static isInDraggingState(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget v0, Lmiuix/folme/R$id;->miuix_animation_tag_is_dragging:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_a

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    :goto_b
    return p0
.end method

.method public static onListViewTouchEvent(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/animation/controller/FolmeTouch;->getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p0, p1}, Lmiuix/animation/controller/ListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 10
    :cond_9
    return-void
.end method

.method public static perFromValue(FFF)F
    .registers 4

    cmpl-float v0, p2, p1

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0
.end method

.method private static performTargetCleanForTooMuchInvalid()V
    .registers 4

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1e

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 12
    move-result v0

    .line 13
    int-to-long v0, v0

    .line 14
    const-wide/16 v2, 0x400

    .line 16
    rem-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x0

    .line 19
    cmp-long v0, v0, v2

    .line 21
    if-nez v0, :cond_1e

    .line 23
    new-instance v0, Lmiuix/animation/Folme$3;

    .line 25
    invoke-direct {v0}, Lmiuix/animation/Folme$3;-><init>()V

    .line 28
    invoke-static {v0}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    .line 31
    :cond_1e
    return-void
.end method

.method public static post(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 5
    move-result-object p0

    .line 6
    if-eqz p0, :cond_a

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    .line 11
    :cond_a
    return-void
.end method

.method private static sendToTargetMessage(Z)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lmiuix/animation/Folme;->clearTargetMessage(I)V

    .line 5
    if-eqz p0, :cond_46

    .line 7
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_46

    .line 13
    sget-object p0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 23
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_46

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 35
    const-string v2, "exist target:"

    .line 37
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, " , target isValid : "

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isValid()Z

    .line 56
    move-result v1

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x0

    .line 65
    new-array v2, v2, [Ljava/lang/Object;

    .line 67
    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    goto :goto_16

    .line 71
    :cond_46
    sget-object p0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 76
    move-result p0

    .line 77
    if-lez p0, :cond_5a

    .line 79
    invoke-static {}, Lmiuix/animation/Folme;->getMainHandler()Landroid/os/Handler;

    .line 82
    move-result-object p0

    .line 83
    if-eqz p0, :cond_5d

    .line 85
    const-wide/16 v1, 0x4e20

    .line 87
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    goto :goto_5d

    .line 91
    :cond_5a
    invoke-static {v0}, Lmiuix/animation/Folme;->clearTargetMessage(I)V

    .line 94
    :cond_5d
    :goto_5d
    return-void
.end method

.method public static setAnimPlayRatio(F)V
    .registers 2

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public static setDraggingState(Landroid/view/View;Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_a

    .line 3
    sget p1, Lmiuix/folme/R$id;->miuix_animation_tag_is_dragging:I

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    sget p1, Lmiuix/folme/R$id;->miuix_animation_tag_is_dragging:I

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 17
    :goto_10
    return-void
.end method

.method public static setLooper(Landroid/os/Looper;)V
    .registers 1

    .line 1
    sput-object p0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 3
    invoke-static {p0}, Lmiuix/animation/Folme;->createMainHandler(Landroid/os/Looper;)V

    .line 6
    sget-object p0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 8
    invoke-static {p0}, Lmiuix/animation/utils/ObjectPool;->createMainHandler(Landroid/os/Looper;)V

    .line 11
    sget-object p0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 13
    invoke-static {p0}, Lmiuix/animation/internal/AnimRunner;->createMainHandler(Landroid/os/Looper;)V

    .line 16
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lmiuix/animation/physics/AnimationHandler;->recreateProvider()V

    .line 23
    return-void
.end method

.method public static setThreadPriority(I)V
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/animation/internal/AnimRunner;->setThreadPriority(I)V

    .line 4
    invoke-static {p0}, Lmiuix/animation/internal/ThreadPoolUtil;->setThreadPriority(I)V

    .line 7
    return-void
.end method

.method public static useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;
    .registers 5

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/Folme$FolmeImpl;

    if-nez v1, :cond_1f

    .line 2
    new-instance v1, Lmiuix/animation/Folme$FolmeImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Lmiuix/animation/IAnimTarget;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmiuix/animation/Folme$FolmeImpl;-><init>([Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/Folme$FolmeImpl;

    if-eqz p0, :cond_1f

    move-object v1, p0

    :cond_1f
    return-object v1
.end method

.method public static varargs useAt([Landroid/view/View;)Lmiuix/animation/IFolme;
    .registers 6

    .line 4
    array-length v0, p0

    if-eqz v0, :cond_39

    .line 5
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 6
    aget-object p0, p0, v1

    sget-object v0, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object p0

    return-object p0

    .line 7
    :cond_15
    array-length v0, p0

    new-array v2, v0, [Lmiuix/animation/IAnimTarget;

    .line 8
    invoke-static {p0, v2}, Lmiuix/animation/Folme;->fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiuix/animation/IAnimTarget;)Lmiuix/animation/Folme$FolmeImpl;

    move-result-object p0

    if-nez p0, :cond_38

    .line 9
    new-instance p0, Lmiuix/animation/Folme$FolmeImpl;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lmiuix/animation/Folme$FolmeImpl;-><init>([Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V

    :goto_24
    if-ge v1, v0, :cond_38

    .line 10
    aget-object v3, v2, v1

    .line 11
    sget-object v4, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/Folme$FolmeImpl;

    if-eqz v3, :cond_35

    .line 12
    invoke-virtual {v3}, Lmiuix/animation/Folme$FolmeImpl;->clean()V

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_38
    return-object p0

    .line 13
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "useAt can not be applied to empty views array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static useSystemAnimatorDurationScale(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "animator_duration_scale"

    .line 7
    const/high16 v1, 0x3f800000  # 1.0f

    .line 9
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 12
    move-result p0

    .line 13
    sget-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public static varargs useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 1
    array-length v0, p0

    .line 2
    if-lez v0, :cond_11

    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    .line 7
    sget-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 9
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 16
    move-result-object p0

    .line 17
    goto :goto_1f

    .line 18
    :cond_11
    new-instance p0, Lmiuix/animation/ValueTarget;

    .line 20
    invoke-direct {p0}, Lmiuix/animation/ValueTarget;-><init>()V

    .line 23
    const-wide/16 v0, 0x1

    .line 25
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/IAnimTarget;->setFlags(J)V

    .line 28
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 31
    move-result-object p0

    .line 32
    :goto_1f
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static useVarFontAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/animation/controller/FolmeFont;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/controller/FolmeFont;-><init>()V

    .line 6
    invoke-virtual {v0, p0, p1, p2}, Lmiuix/animation/controller/FolmeFont;->useAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static valueFromPer(FFF)F
    .registers 3

    invoke-static {p2, p1, p0, p1}, Lf0/e;->a(FFFF)F

    move-result p0

    return p0
.end method
