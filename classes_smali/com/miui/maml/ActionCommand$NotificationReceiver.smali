.class abstract Lcom/miui/maml/ActionCommand$NotificationReceiver;
.super Lcom/miui/maml/ActionCommand$StatefulActionCommand;
.source "ActionCommand.java"

# interfaces
.implements Lcom/miui/maml/NotifierManager$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NotificationReceiver"
.end annotation


# instance fields
.field private mNotifierManager:Lcom/miui/maml/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 4
    iput-object p3, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/miui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 16
    return-void
.end method


# virtual methods
.method public asyncUpdate()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/miui/maml/ActionCommand;->access$000()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/miui/maml/ActionCommand$NotificationReceiver$1;

    .line 7
    invoke-direct {v1, p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver$1;-><init>(Lcom/miui/maml/ActionCommand$NotificationReceiver;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public finish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->releaseNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 8
    return-void
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->update()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 6
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->acquireNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 11
    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->asyncUpdate()V

    .line 4
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->pause(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 8
    return-void
.end method

.method public resume()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->update()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 6
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->resume(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 11
    return-void
.end method

.method public abstract update()V
.end method
