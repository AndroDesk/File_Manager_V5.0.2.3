.class Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager$BaseNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public intent:Landroid/content/Intent;

.field public obj:Ljava/lang/Object;

.field private paused:Z

.field private pendingNotify:Z

.field public ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/NotifierManager$OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    .line 3
    return p0
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    .line 8
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    .line 12
    iput-object p3, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    .line 14
    goto :goto_1b

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/miui/maml/NotifierManager$OnNotifyListener;

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    .line 4
    return-void
.end method

.method public resume()V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    .line 4
    iget-boolean v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    .line 6
    if-eqz v1, :cond_23

    .line 8
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    .line 10
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/miui/maml/NotifierManager$OnNotifyListener;

    .line 16
    if-eqz v1, :cond_23

    .line 18
    iget-object v2, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    .line 20
    iget-object v3, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    .line 22
    iget-object v4, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    .line 24
    invoke-interface {v1, v2, v3, v4}, Lcom/miui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 27
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    .line 34
    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    .line 36
    :cond_23
    return-void
.end method
