.class Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;
.super Landroid/os/AsyncTask;
.source "FileGroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/FileGroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadGroupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
        "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field public lastGroupTime:J

.field public loadMore:Z

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/fragment/FileGroupFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;ZLcom/android/fileexplorer/fragment/FileGroupFragment;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    iput-boolean p2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->loadMore:Z

    .line 8
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 15
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    .line 3
    new-instance p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    return-object p1

    .line 4
    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$500(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I

    move-result p1

    const/4 v0, 0x0

    move v7, v0

    .line 5
    :cond_1c
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$600(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I

    move-result v2

    const/4 v8, 0x1

    if-ne v8, v2, :cond_3d

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v4}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$700(Lcom/android/fileexplorer/fragment/FileGroupFragment;)J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v1

    goto :goto_80

    :cond_3d
    const/4 v2, 0x4

    .line 8
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$800(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I

    move-result v3

    if-ne v2, v3, :cond_57

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$900(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$700(Lcom/android/fileexplorer/fragment/FileGroupFragment;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v1

    goto :goto_80

    .line 10
    :cond_57
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$1000(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v3, v2}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$1100(Lcom/android/fileexplorer/fragment/FileGroupFragment;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$700(Lcom/android/fileexplorer/fragment/FileGroupFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3, p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$1200(Lcom/android/fileexplorer/fragment/FileGroupFragment;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v1

    goto :goto_80

    :cond_74
    const/4 v3, 0x0

    .line 13
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v4}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$700(Lcom/android/fileexplorer/fragment/FileGroupFragment;)J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v1

    .line 14
    :goto_80
    iget-object v2, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-eqz v2, :cond_89

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_8a

    :cond_89
    move v2, v0

    :goto_8a
    add-int/2addr v7, v2

    if-lez v2, :cond_9f

    .line 15
    iget-object v3, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    iget-object v3, v3, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->lastGroupTime:J

    .line 16
    :cond_9f
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$800(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I

    move-result v3

    if-ne v8, v3, :cond_af

    .line 17
    iget-object v3, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->mergeGroupWhenShow(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    :cond_af
    mul-int/lit8 p1, p1, 0x3

    .line 18
    div-int/lit8 p1, p1, 0x2

    .line 19
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$1300(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I

    move-result v3

    if-ge v2, v3, :cond_bf

    iget-boolean v2, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    if-nez v2, :cond_1c

    .line 20
    :cond_bf
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$700(Lcom/android/fileexplorer/fragment/FileGroupFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_d1

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {p1, v7}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$1402(Lcom/android/fileexplorer/fragment/FileGroupFragment;I)I

    goto :goto_d6

    .line 22
    :cond_d1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {p1, v7}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$1412(Lcom/android/fileexplorer/fragment/FileGroupFragment;I)I

    :goto_d6
    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/FileGroupFragment;

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->loadMore:Z

    iget-wide v2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->lastGroupTime:J

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$1500(Lcom/android/fileexplorer/fragment/FileGroupFragment;Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V

    :cond_17
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;->onPostExecute(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V

    return-void
.end method
