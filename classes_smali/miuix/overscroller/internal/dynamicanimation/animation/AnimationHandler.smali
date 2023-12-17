.class Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY_MS:J = 0xaL

.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackDispatcher:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

.field public mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mListDirty:Z

.field private mProvider:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 20
    invoke-direct {v0, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;)V

    .line 23
    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 25
    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 32
    return-void
.end method

.method private cleanUpList()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 3
    if-eqz v0, :cond_21

    .line 5
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 13
    :goto_c
    if-ltz v0, :cond_1e

    .line 15
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1b

    .line 23
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    .line 30
    goto :goto_c

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 34
    :cond_21
    return-void
.end method

.method public static getFrameTime()J
    .registers 2

    .line 1
    sget-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_b

    .line 9
    const-wide/16 v0, 0x0

    .line 11
    return-wide v0

    .line 12
    :cond_b
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    .line 18
    iget-wide v0, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    .line 20
    return-wide v0
.end method

.method public static getInstance()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;
    .registers 2

    .line 1
    sget-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_10

    .line 9
    new-instance v1, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    .line 11
    invoke-direct {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    :cond_10
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    .line 23
    return-object v0
.end method

.method private isCallbackDue(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_c

    .line 12
    return v1

    .line 13
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 16
    move-result-wide v2

    .line 17
    cmp-long p2, v2, p2

    .line 19
    if-gez p2, :cond_1a

    .line 21
    iget-object p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 23
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return v1

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return p1
.end method


# virtual methods
.method public addAnimationFrameCallback(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 9
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getProvider()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1c

    .line 24
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1c
    const-wide/16 v0, 0x0

    .line 31
    cmp-long v0, p2, v0

    .line 33
    if-lez v0, :cond_30

    .line 35
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    move-result-wide v1

    .line 41
    add-long/2addr v1, p2

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_30
    return-void
.end method

.method public doAnimationFrame(J)V
    .registers 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_5
    iget-object v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_24

    .line 14
    iget-object v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    .line 22
    if-nez v3, :cond_18

    .line 24
    goto :goto_21

    .line 25
    :cond_18
    invoke-direct {p0, v3, v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->isCallbackDue(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_21

    .line 31
    invoke-interface {v3, p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    .line 34
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_5

    .line 37
    :cond_24
    invoke-direct {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->cleanUpList()V

    .line 40
    return-void
.end method

.method public getProvider()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 3
    if-nez v0, :cond_d

    .line 5
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    .line 7
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 9
    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 12
    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 16
    return-object v0
.end method

.method public removeCallback(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 11
    move-result p1

    .line 12
    if-ltz p1, :cond_16

    .line 14
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 23
    :cond_16
    return-void
.end method

.method public setProvider(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 3
    return-void
.end method
