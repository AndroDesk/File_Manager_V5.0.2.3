.class final Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;
.super Lcom/miui/maml/MamlDisplayEventReceiver;
.source "RenderVsyncUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/RenderVsyncUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/RenderVsyncUpdater;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 3
    invoke-direct {p0, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onVsync(J)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$200(Lcom/miui/maml/RenderVsyncUpdater;)J

    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x1

    .line 9
    sub-long/2addr v1, v3

    .line 10
    invoke-static {v0, v1, v2}, Lcom/miui/maml/RenderVsyncUpdater;->access$202(Lcom/miui/maml/RenderVsyncUpdater;J)J

    .line 13
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 15
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 25
    invoke-static {v1}, Lcom/miui/maml/RenderVsyncUpdater;->access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    .line 28
    move-result-object v1

    .line 29
    const-wide/32 v2, 0xf4240

    .line 32
    div-long/2addr p1, v2

    .line 33
    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 36
    return-void
.end method

.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$200(Lcom/miui/maml/RenderVsyncUpdater;)J

    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmp-long v0, v0, v2

    .line 11
    if-gtz v0, :cond_12

    .line 13
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 15
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$100(Lcom/miui/maml/RenderVsyncUpdater;)V

    .line 18
    goto :goto_25

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 21
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$400(Lcom/miui/maml/RenderVsyncUpdater;)Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_25

    .line 27
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 29
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$500(Lcom/miui/maml/RenderVsyncUpdater;)Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_25

    .line 35
    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method
