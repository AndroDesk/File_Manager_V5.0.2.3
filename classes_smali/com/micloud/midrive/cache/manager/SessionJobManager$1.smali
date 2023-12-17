.class Lcom/micloud/midrive/cache/manager/SessionJobManager$1;
.super Ljava/lang/Object;
.source "SessionJobManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/cache/manager/SessionJobManager;->postStatusChange(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/cache/manager/SessionJobManager;

.field public final synthetic val$transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    iput-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;->this$0:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    iput-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;->val$transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;->this$0:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$2300(Lcom/micloud/midrive/cache/manager/SessionJobManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;->val$transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;->val$transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-interface {v1, v2}, Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;->onJobStatusChanged(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    goto :goto_14

    :cond_26
    return-void
.end method
