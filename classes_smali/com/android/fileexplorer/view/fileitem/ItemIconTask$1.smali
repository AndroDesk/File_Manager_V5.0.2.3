.class Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;
.super Landroid/os/Handler;
.source "ItemIconTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/fileitem/ItemIconTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;->this$0:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    const/16 v0, 0x1101

    .line 8
    if-eq p1, v0, :cond_a

    .line 10
    goto :goto_30

    .line 11
    :cond_a
    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;->this$0:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 13
    invoke-static {p1}, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->access$000(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;)Ljava/util/Queue;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Runnable;

    .line 23
    if-eqz p1, :cond_30

    .line 25
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;->this$0:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 30
    invoke-static {p1}, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->access$100(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;)Landroid/os/Handler;

    .line 33
    move-result-object p1

    .line 34
    iget-object v1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;->this$0:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 36
    invoke-static {v1}, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->access$100(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;)Landroid/os/Handler;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 43
    move-result-object v0

    .line 44
    const-wide/16 v1, 0x14

    .line 46
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 49
    :cond_30
    :goto_30
    return-void
.end method
