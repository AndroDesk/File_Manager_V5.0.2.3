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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/RenderUpdater;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/maml/RenderUpdater;->access$002(Lcom/miui/maml/RenderUpdater;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    invoke-static {v2}, Lcom/miui/maml/RenderUpdater;->access$100(Lcom/miui/maml/RenderUpdater;)Lcom/miui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/miui/maml/ScreenElementRoot;->updateIfNeeded(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    iget-object v2, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    iput-wide v0, v2, Lcom/miui/maml/RenderUpdater;->mLastUpdateTime:J

    iget-boolean v0, v2, Lcom/miui/maml/RenderUpdater;->mPendingRender:Z

    if-nez v0, :cond_4a

    invoke-static {v2}, Lcom/miui/maml/RenderUpdater;->access$200(Lcom/miui/maml/RenderUpdater;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    invoke-static {v0}, Lcom/miui/maml/RenderUpdater;->access$000(Lcom/miui/maml/RenderUpdater;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    iget-wide v1, v0, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_4a

    invoke-static {v0}, Lcom/miui/maml/RenderUpdater;->access$400(Lcom/miui/maml/RenderUpdater;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    invoke-static {v1}, Lcom/miui/maml/RenderUpdater;->access$300(Lcom/miui/maml/RenderUpdater;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/RenderUpdater$1;->this$0:Lcom/miui/maml/RenderUpdater;

    iget-wide v2, v2, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4a
    return-void
.end method
