.class Lcom/android/fileexplorer/fragment/CloudContainerFragment$7;
.super Ljava/lang/Object;
.source "CloudContainerFragment.java"

# interfaces
.implements Lcom/micloud/midrive/task/CommonJobQueryTask$CommonJobQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CloudContainerFragment;->doCommonQueryTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$7;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryFinished(Lcom/micloud/midrive/task/CommonJobQueryTask;)V
    .registers 10

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_e6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$7;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$800(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/task/CommonJobQueryTask;

    move-result-object v0

    if-eq v0, p1, :cond_10

    goto/16 :goto_e6

    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$7;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$802(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/task/CommonJobQueryTask;)Lcom/micloud/midrive/task/CommonJobQueryTask;

    invoke-virtual {p1}, Lcom/micloud/midrive/task/CommonJobQueryTask;->getResultIfSuccessOrNull()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_28

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "common job query failed. "

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    return-void

    :cond_28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    return-void

    :cond_2f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;

    iget-object v1, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->FAIL:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    const-string v3, ", fileName: "

    const-string v4, "id: "

    const-string v5, "----------"

    if-ne v1, v2, :cond_69

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", failed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_69
    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->RUNNING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    if-ne v1, v2, :cond_9b

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->progress:J

    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    iget-wide v6, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->size:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_9b
    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->DONE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    if-ne v1, v2, :cond_be

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", succeed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    :cond_be
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    :cond_e6
    :goto_e6
    return-void
.end method
