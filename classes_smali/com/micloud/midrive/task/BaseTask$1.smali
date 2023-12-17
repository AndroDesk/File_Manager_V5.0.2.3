.class Lcom/micloud/midrive/task/BaseTask$1;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/task/BaseTask;->setState(Lcom/micloud/midrive/task/BaseTask$TaskState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/task/BaseTask;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask$1;->this$0:Lcom/micloud/midrive/task/BaseTask;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask$1;->this$0:Lcom/micloud/midrive/task/BaseTask;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/task/BaseTask;->access$000(Lcom/micloud/midrive/task/BaseTask;)Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask$1;->this$0:Lcom/micloud/midrive/task/BaseTask;

    .line 11
    invoke-static {v0}, Lcom/micloud/midrive/task/BaseTask;->access$000(Lcom/micloud/midrive/task/BaseTask;)Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask$1;->this$0:Lcom/micloud/midrive/task/BaseTask;

    .line 17
    invoke-interface {v0, v1}, Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;->onStateChanged(Lcom/micloud/midrive/task/BaseTask;)V

    .line 20
    :cond_13
    return-void
.end method
