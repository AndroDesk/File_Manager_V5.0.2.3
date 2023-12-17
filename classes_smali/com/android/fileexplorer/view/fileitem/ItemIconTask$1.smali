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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;->this$0:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1101

    if-eq p1, v0, :cond_a

    goto :goto_30

    :cond_a
    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;->this$0:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    invoke-static {p1}, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->access$000(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;->this$0:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    invoke-static {p1}, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->access$100(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;->this$0:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    invoke-static {v1}, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->access$100(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_30
    :goto_30
    return-void
.end method
