.class Lcom/miui/maml/data/BroadcastBinder$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/BroadcastBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/data/BroadcastBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/BroadcastBinder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/BroadcastBinder$1;->this$0:Lcom/miui/maml/data/BroadcastBinder;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    const-string v0, "onNotify: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/data/BroadcastBinder$1;->this$0:Lcom/miui/maml/data/BroadcastBinder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "BroadcastBinder"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/miui/maml/data/BroadcastBinder$1;->this$0:Lcom/miui/maml/data/BroadcastBinder;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/maml/data/BroadcastBinder;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 31
    return-void
.end method
