.class Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;
.super Landroid/os/AsyncTask;
.source "MirrorRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->loadLocalFileGroupInfo(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public lastGroupTime:J

.field public pageLimit:I

.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

.field public final synthetic val$loadMore:Z

.field public final synthetic val$startTime:J

.field public final synthetic val$uploadEvent:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;ZJZ)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->val$loadMore:Z

    .line 5
    iput-wide p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->val$startTime:J

    .line 7
    iput-boolean p5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->val$uploadEvent:Z

    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 9

    const-string p1, "RecentFragment"

    const-string v0, "doInBackground: real"

    .line 2
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    move v0, p1

    .line 3
    :cond_9
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {v4}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$1000(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)J

    move-result-wide v4

    iget v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->pageLimit:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-eqz v2, :cond_24

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_25

    :cond_24
    move v2, p1

    :goto_25
    add-int/2addr v0, v2

    if-lez v2, :cond_3a

    .line 5
    iget-object v3, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    iget-object v2, v2, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->lastGroupTime:J

    .line 6
    :cond_3a
    iget-object v2, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->mergeGroupWhenShow(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 7
    iget v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->pageLimit:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->pageLimit:I

    if-eqz v2, :cond_55

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_55

    iget-boolean v2, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    if-nez v2, :cond_9

    .line 9
    :cond_55
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$1000(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_67

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$902(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;I)I

    goto :goto_6c

    .line 11
    :cond_67
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$912(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;I)I

    :goto_6c
    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V
    .registers 7

    const-string v0, "onPostExecute: endTime = "

    .line 1
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->val$startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->val$uploadEvent:Z

    if-eqz v0, :cond_38

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/util/TimeCost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->getCostTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_38

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "recent_load_time"

    const-string v2, "count"

    invoke-static {v1, v2, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_38
    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-eqz v0, :cond_8d

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->val$loadMore:Z

    if-eqz v1, :cond_4f

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_58

    .line 10
    :cond_4f
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11
    :goto_58
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createFileGroupDatas(Ljava/util/List;Ljava/util/List;Z)V

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8$1;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 18
    :cond_8d
    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-eqz p1, :cond_9e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9e

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    iget-wide v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->lastGroupTime:J

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$1002(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;J)J

    .line 20
    :cond_9e
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$402(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;Z)Z

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->onPostExecute(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->val$loadMore:Z

    .line 3
    const/16 v1, 0xa

    .line 5
    if-eqz v0, :cond_9

    .line 7
    iput v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->pageLimit:I

    .line 9
    goto :goto_1d

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->pageLimit:I

    .line 18
    if-lez v0, :cond_14

    .line 20
    move v1, v0

    .line 21
    :cond_14
    iput v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->pageLimit:I

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 25
    const-wide/16 v1, 0x0

    .line 27
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$1002(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;J)J

    .line 30
    :goto_1d
    return-void
.end method
