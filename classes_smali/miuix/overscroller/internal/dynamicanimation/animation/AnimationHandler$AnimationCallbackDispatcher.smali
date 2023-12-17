.class Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationCallbackDispatcher"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;


# direct methods
.method public constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public dispatchAnimationFrame()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    .line 9
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    .line 11
    iget-wide v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    .line 13
    invoke-virtual {v0, v1, v2}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->doAnimationFrame(J)V

    .line 16
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    .line 18
    iget-object v0, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_22

    .line 26
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    .line 28
    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getProvider()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 35
    :cond_22
    return-void
.end method
