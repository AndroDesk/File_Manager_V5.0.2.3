.class Lcom/miui/maml/NotifierManager$ContentChangeNotifier$1;
.super Landroid/database/ContentObserver;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager$ContentChangeNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/NotifierManager$ContentChangeNotifier;


# direct methods
.method public constructor <init>(Lcom/miui/maml/NotifierManager$ContentChangeNotifier;Landroid/os/Handler;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$ContentChangeNotifier;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/miui/maml/NotifierManager;->access$100()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    const-string v0, "onNotify: "

    .line 9
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$ContentChangeNotifier;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "NotifierManager"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$ContentChangeNotifier;

    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1, v1, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 41
    return-void
.end method
