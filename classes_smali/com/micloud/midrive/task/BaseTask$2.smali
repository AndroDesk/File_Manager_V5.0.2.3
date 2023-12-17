.class Lcom/micloud/midrive/task/BaseTask$2;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/task/BaseTask;->setStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/task/BaseTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask$2;->this$0:Lcom/micloud/midrive/task/BaseTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask$2;->this$0:Lcom/micloud/midrive/task/BaseTask;

    invoke-static {v0}, Lcom/micloud/midrive/task/BaseTask;->access$000(Lcom/micloud/midrive/task/BaseTask;)Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask$2;->this$0:Lcom/micloud/midrive/task/BaseTask;

    invoke-static {v0}, Lcom/micloud/midrive/task/BaseTask;->access$000(Lcom/micloud/midrive/task/BaseTask;)Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask$2;->this$0:Lcom/micloud/midrive/task/BaseTask;

    invoke-interface {v0, v1}, Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;->onRunningStepChanged(Lcom/micloud/midrive/task/BaseTask;)V

    :cond_13
    return-void
.end method
