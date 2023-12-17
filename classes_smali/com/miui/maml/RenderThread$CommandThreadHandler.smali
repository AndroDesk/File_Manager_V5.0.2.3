.class Lcom/miui/maml/RenderThread$CommandThreadHandler;
.super Landroid/os/Handler;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/RenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandThreadHandler"
.end annotation


# static fields
.field private static final MSG_PAUSE:I = 0x0

.field private static final MSG_RESUME:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/RenderThread;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RenderThread;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_f

    .line 6
    if-eq p1, v0, :cond_8

    .line 8
    goto :goto_14

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lcom/miui/maml/RenderThread;->access$000(Lcom/miui/maml/RenderThread;Z)V

    .line 15
    goto :goto_14

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    .line 18
    invoke-static {p1, v0}, Lcom/miui/maml/RenderThread;->access$000(Lcom/miui/maml/RenderThread;Z)V

    .line 21
    :goto_14
    return-void
.end method

.method public setPause(Z)V
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 6
    xor-int/lit8 p1, p1, 0x1

    .line 8
    iput p1, v0, Landroid/os/Message;->what:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    return-void
.end method
