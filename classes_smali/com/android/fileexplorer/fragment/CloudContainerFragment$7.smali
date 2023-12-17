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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$7;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onQueryFinished(Lcom/micloud/midrive/task/CommonJobQueryTask;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e6

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$7;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$800(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/task/CommonJobQueryTask;

    .line 12
    move-result-object v0

    .line 13
    if-eq v0, p1, :cond_10

    .line 15
    goto/16 :goto_e6

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$7;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$802(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/task/CommonJobQueryTask;)Lcom/micloud/midrive/task/CommonJobQueryTask;

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/task/CommonJobQueryTask;->getResultIfSuccessOrNull()Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_28

    .line 29
    const/4 p1, 0x1

    .line 30
    new-array p1, p1, [Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    .line 33
    const-string v1, "common job query failed. "

    .line 35
    aput-object v1, p1, v0

    .line 37
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 40
    return-void

    .line 41
    :cond_28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2f

    .line 47
    return-void

    .line 48
    :cond_2f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p1

    .line 52
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_e6

    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;

    .line 64
    iget-object v1, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 66
    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->FAIL:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 68
    const-string v3, ", fileName: "

    .line 70
    const-string v4, "id: "

    .line 72
    const-string v5, "----------"

    .line 74
    if-ne v1, v2, :cond_69

    .line 76
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object v1

    .line 80
    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileId:Ljava/lang/String;

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v0, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileName:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v0, ", failed"

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    goto :goto_33

    .line 106
    :cond_69
    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->RUNNING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 108
    if-ne v1, v2, :cond_9b

    .line 110
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    move-result-object v1

    .line 114
    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileId:Ljava/lang/String;

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileName:Ljava/lang/String;

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, ", progress: "

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-wide v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->progress:J

    .line 134
    const-wide/16 v6, 0x64

    .line 136
    mul-long/2addr v2, v6

    .line 137
    iget-wide v6, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->size:J

    .line 139
    div-long/2addr v2, v6

    .line 140
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    const-string v0, "%"

    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    goto :goto_33

    .line 156
    :cond_9b
    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->DONE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 158
    if-ne v1, v2, :cond_be

    .line 160
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    move-result-object v1

    .line 164
    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileId:Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v0, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileName:Ljava/lang/String;

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v0, ", succeed"

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    goto/16 :goto_33

    .line 191
    :cond_be
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    move-result-object v1

    .line 195
    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileId:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v2, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->fileName:Ljava/lang/String;

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v2, ", "

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v0, v0, Lcom/micloud/midrive/ui/bean/TransferFileInfo;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 226
    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    goto/16 :goto_33

    .line 231
    :cond_e6
    :goto_e6
    return-void
.end method
