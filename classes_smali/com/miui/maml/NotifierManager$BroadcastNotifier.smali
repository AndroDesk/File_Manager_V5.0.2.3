.class public Lcom/miui/maml/NotifierManager$BroadcastNotifier;
.super Lcom/miui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastNotifier"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    iput-object p2, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->getIntentAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_e

    .line 9
    :cond_8
    new-instance v1, Landroid/content/IntentFilter;

    .line 11
    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 14
    move-object v0, v1

    .line 15
    :goto_e
    return-object v0
.end method

.method public getIntentAction()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public onRegister()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    .line 3
    if-nez v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->createIntentFilter()Landroid/content/IntentFilter;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    .line 13
    if-nez v0, :cond_16

    .line 15
    const-string v0, "NotifierManager"

    .line 17
    const-string v1, "onRegister: mIntentFilter is null"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 23
    :cond_16
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 25
    iget-object v2, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_26

    .line 33
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 39
    :cond_26
    return-void
.end method

.method public onUnregister()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_7

    .line 8
    :catch_7
    return-void
.end method
