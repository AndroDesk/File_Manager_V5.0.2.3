.class Lcom/android/fileexplorer/fragment/RecentFragment$10;
.super Landroid/os/AsyncTask;
.source "RecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/RecentFragment;->refreshFileGroupInfo()V
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
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/apptag/FileItemGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field public cacheGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->cacheGroupList:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment$10;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    const-string p1, "refreshFileGroupInfo :"

    const-string v0, "RecentFragment"

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :try_start_f
    iget-object v6, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->cacheGroupList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v7}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_57

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 7
    instance-of v11, v10, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v11, :cond_42

    .line 8
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 9
    :cond_42
    new-instance v11, Ljava/io/File;

    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_55

    .line 11
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_55
    const/4 v4, 0x1

    goto :goto_2e

    .line 12
    :cond_57
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_15

    .line 13
    invoke-virtual {v7}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 14
    invoke-virtual {v7}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 16
    :cond_6f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doInBackground: change = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_83} :catch_af
    .catchall {:try_start_f .. :try_end_83} :catchall_ad

    if-nez v4, :cond_99

    .line 17
    :goto_85
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 19
    :cond_99
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_ad
    move-exception v1

    goto :goto_b6

    :catch_af
    move-exception v1

    :try_start_b0
    const-string v4, "refreshFileGroupInfo"

    .line 21
    invoke-static {v0, v4, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_ad

    goto :goto_85

    .line 22
    :goto_b6
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    throw v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment$10;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    const-string p1, "RecentFragment"

    const-string v0, "onPostExecute: null, return"

    .line 2
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$400(Lcom/android/fileexplorer/fragment/RecentFragment;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 4
    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$200(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->cacheGroupList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->cacheGroupList:Ljava/util/List;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$10;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 10
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    return-void
.end method
