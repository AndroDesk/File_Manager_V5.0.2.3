.class Lcom/miui/maml/RenderUpdater$1;
.super Ljava/lang/Object;
.source "RenderUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/RenderUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/RenderUpdater;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RenderUpdater;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/miui/maml/RenderUpdater;->access$002(Lcom/miui/maml/RenderUpdater;Z)Z

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 13
    invoke-static {v2}, Lcom/miui/maml/RenderUpdater;->access$100(Lcom/miui/maml/RenderUpdater;)Lcom/miui/maml/ScreenElementRoot;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3, v0, v1}, Lcom/miui/maml/ScreenElementRoot;->updateIfNeeded(J)J

    .line 20
    move-result-wide v3

    .line 21
    iput-wide v3, v2, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    .line 23
    iget-object v2, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 25
    iput-wide v0, v2, Lcom/miui/maml/RenderUpdater;->mLastUpdateTime:J

    .line 27
    iget-boolean v0, v2, Lcom/miui/maml/RenderUpdater;->mPendingRender:Z

    .line 29
    if-nez v0, :cond_4a

    .line 31
    invoke-static {v2}, Lcom/miui/maml/RenderUpdater;->access$200(Lcom/miui/maml/RenderUpdater;)Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_4a

    .line 37
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 39
    invoke-static {v0}, Lcom/miui/maml/RenderUpdater;->access$000(Lcom/miui/maml/RenderUpdater;)Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_4a

    .line 45
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 47
    iget-wide v1, v0, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    .line 49
    const-wide v3, 0x7fffffffffffffffL

    .line 54
    cmp-long v1, v1, v3

    .line 56
    if-gez v1, :cond_4a

    .line 58
    invoke-static {v0}, Lcom/miui/maml/RenderUpdater;->access$400(Lcom/miui/maml/RenderUpdater;)Landroid/os/Handler;

    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 64
    invoke-static {v1}, Lcom/miui/maml/RenderUpdater;->access$300(Lcom/miui/maml/RenderUpdater;)Ljava/lang/Runnable;

    .line 67
    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 70
    iget-wide v2, v2, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    .line 72
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    :cond_4a
    return-void
.end method
