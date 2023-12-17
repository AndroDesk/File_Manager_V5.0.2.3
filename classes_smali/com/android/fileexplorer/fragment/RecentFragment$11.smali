.class Lcom/android/fileexplorer/fragment/RecentFragment$11;
.super Landroid/os/AsyncTask;
.source "RecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V
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

.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

.field public final synthetic val$displayBySource:Z

.field public final synthetic val$loadMore:Z

.field public final synthetic val$startTime:J

.field public final synthetic val$uploadEvent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;ZZJZ)V
    .registers 7

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    iput-boolean p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->val$loadMore:Z

    iput-boolean p3, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->val$displayBySource:Z

    iput-wide p4, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->val$startTime:J

    iput-boolean p6, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->val$uploadEvent:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemDateGroup;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {p1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {p1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->val$displayBySource:Z

    if-nez v0, :cond_ae

    const-string v0, "doInBackground, showCloud:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1400(Lcom/android/fileexplorer/fragment/RecentFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :cond_26
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1300(Lcom/android/fileexplorer/fragment/RecentFragment;)J

    move-result-wide v3

    iget v5, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->pageLimit:I

    iget-object v6, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v6}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1400(Lcom/android/fileexplorer/fragment/RecentFragment;)Z

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadDateFileGroupItems(JIZ)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v2

    iget-object v3, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-eqz v3, :cond_45

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_46

    :cond_45
    move v3, v0

    :goto_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileGroups size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiDrive_LOG"

    invoke-static {v5, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v1, v3

    if-lez v3, :cond_71

    iget-object v4, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/apptag/FileItemDateGroup;

    iget-object v3, v3, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->lastGroupTime:J

    :cond_71
    iget v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->pageLimit:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->pageLimit:I

    iget-object v3, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-eqz v3, :cond_8c

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v4, v3}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1500(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_8c

    iget-boolean v3, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    if-nez v3, :cond_26

    :cond_8c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1300(Lcom/android/fileexplorer/fragment/RecentFragment;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1202(Lcom/android/fileexplorer/fragment/RecentFragment;I)I

    goto :goto_a3

    :cond_9e
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1212(Lcom/android/fileexplorer/fragment/RecentFragment;I)I

    :goto_a3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    iget-object v1, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1500(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    goto :goto_d7

    :cond_ae
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->isAppTagInited()Z

    move-result v0

    if-nez v0, :cond_bf

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    :cond_bf
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppGroupList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1400(Lcom/android/fileexplorer/fragment/RecentFragment;)Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppGroupFileItems(Ljava/util/List;IZ)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v2

    :goto_d7
    invoke-static {}, Lcom/android/fileexplorer/apptag/CategoryHelper;->getInstance()Lcom/android/fileexplorer/apptag/CategoryHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/CategoryHelper;->recentLoadCountDown()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checktimecost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->val$displayBySource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment$11;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V
    .registers 8

    const-string v0, "onPostExecute: endTime = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->val$startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->val$uploadEvent:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$300(Lcom/android/fileexplorer/fragment/RecentFragment;)Lcom/android/fileexplorer/util/TimeCost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->getCostTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_38

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "recent_load_time"

    const-string v2, "count"

    invoke-static {v1, v2, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_38
    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_c9

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->val$loadMore:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_88

    :cond_4d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-boolean v0, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    iget-object v2, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1600(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1700(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    const-string v2, "1.301.1.12"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1800(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    const-string v2, "1.301.1.13"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1800(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V

    :cond_88
    :goto_88
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    iget-object v2, v0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_a3

    const/4 v2, 0x1

    goto :goto_a4

    :cond_a3
    move v2, v1

    :goto_a4
    invoke-static {v0, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1900(Lcom/android/fileexplorer/fragment/RecentFragment;Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$200(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$RefreshLoadStateRunnable;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$2100(Lcom/android/fileexplorer/fragment/RecentFragment;)Z

    move-result v3

    iget-boolean v4, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/fileexplorer/fragment/RecentFragment$RefreshLoadStateRunnable;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;ZZLcom/android/fileexplorer/fragment/RecentFragment$1;)V

    invoke-static {v0, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$2002(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$2000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-static {v0, v2, v3}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    goto :goto_d7

    :cond_c9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$200(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    :goto_d7
    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-eqz p1, :cond_e8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e8

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    iget-wide v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->lastGroupTime:J

    invoke-static {p1, v2, v3}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1302(Lcom/android/fileexplorer/fragment/RecentFragment;J)J

    :cond_e8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$402(Lcom/android/fileexplorer/fragment/RecentFragment;Z)Z

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment$11;->onPostExecute(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->val$loadMore:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_9

    iput v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->pageLimit:I

    goto :goto_1d

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1200(Lcom/android/fileexplorer/fragment/RecentFragment;)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->pageLimit:I

    if-lez v0, :cond_14

    move v1, v0

    :cond_14
    iput v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->pageLimit:I

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$11;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1302(Lcom/android/fileexplorer/fragment/RecentFragment;J)J

    :goto_1d
    return-void
.end method
