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
.method public constructor <init>(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;->this$0:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;->val$transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;->this$0:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$2300(Lcom/micloud/midrive/cache/manager/SessionJobManager;)Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;->val$transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/List;

    .line 15
    if-eqz v0, :cond_26

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_26

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;

    .line 33
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;->val$transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 35
    invoke-interface {v1, v2}, Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;->onJobStatusChanged(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 38
    goto :goto_14

    .line 39
    :cond_26
    return-void
.end method
