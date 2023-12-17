.class Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/physics/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationCallbackDispatcher"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/physics/AnimationHandler;


# direct methods
.method public constructor <init>(Lmiuix/animation/physics/AnimationHandler;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public dispatchAnimationFrame()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lmiuix/animation/physics/AnimationHandler;->access$002(Lmiuix/animation/physics/AnimationHandler;J)J

    .line 10
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    .line 12
    invoke-static {v0}, Lmiuix/animation/physics/AnimationHandler;->access$000(Lmiuix/animation/physics/AnimationHandler;)J

    .line 15
    move-result-wide v1

    .line 16
    invoke-static {v0, v1, v2}, Lmiuix/animation/physics/AnimationHandler;->access$100(Lmiuix/animation/physics/AnimationHandler;J)V

    .line 19
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    .line 21
    invoke-static {v0}, Lmiuix/animation/physics/AnimationHandler;->access$200(Lmiuix/animation/physics/AnimationHandler;)Ljava/util/ArrayList;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_27

    .line 31
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    .line 33
    invoke-static {v0}, Lmiuix/animation/physics/AnimationHandler;->access$300(Lmiuix/animation/physics/AnimationHandler;)Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 40
    :cond_27
    return-void
.end method
