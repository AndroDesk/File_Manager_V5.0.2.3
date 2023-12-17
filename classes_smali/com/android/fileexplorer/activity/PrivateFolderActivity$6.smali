.class Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;
.super Landroid/os/AsyncTask;
.source "PrivateFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V
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
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/encryption/PrivateFile;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

.field public final synthetic val$currentPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->val$currentPath:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$600(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Landroid/util/Pair;

    move-result-object p1

    const-string v0, "PrivateFolderActivity"

    if-eqz p1, :cond_10

    const-string v1, "doInBackground checkIfRequestSD not null"

    .line 3
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_10
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->val$currentPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1f

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateRootDirs()[Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_1f
    new-array p1, v1, [Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->val$currentPath:Ljava/lang/String;

    aput-object v3, p1, v2

    .line 7
    :goto_25
    invoke-static {}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->getOpenFileCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;Z)Z

    .line 8
    array-length v3, p1

    move v4, v2

    :goto_2e
    if-ge v4, v3, :cond_6b

    aget-object v5, p1, v4

    .line 9
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6$1;

    invoke-direct {v5, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6$1;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;)V

    invoke-virtual {v6, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_43

    goto :goto_68

    .line 10
    :cond_43
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_4b

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_4b
    array-length v6, v5

    move v7, v2

    :goto_4d
    if-ge v7, v6, :cond_68

    aget-object v8, v5, v7

    .line 12
    iget-object v9, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v9, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->operationReEncryptFile(Landroid/app/Activity;Ljava/io/File;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_65

    .line 13
    iget-object v5, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    new-instance v6, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6$2;

    invoke-direct {v6, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6$2;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_68

    :cond_65
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_68
    :goto_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 14
    :cond_6b
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$700(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getAllPrivateFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 15
    sget-boolean v3, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v3, :cond_7e

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getOldGlobalPrivateFileList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_82

    :cond_7e
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 16
    :goto_82
    iget-object v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/2addr v1, v4

    invoke-static {v3, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$800(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Z)V

    .line 17
    :try_start_8c
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object v3

    iget v4, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    aget-object v3, v3, v4

    iget-boolean v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 20
    invoke-static {p1, v3, v1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V
    :try_end_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_a3} :catch_a4

    goto :goto_ac

    :catch_a4
    move-exception v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_ac
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "PrivateFolderActivity"

    if-nez p1, :cond_a

    const-string p1, "runPrivateFolderLoaderTask result is null"

    .line 2
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const/16 v1, 0x11

    .line 3
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1d

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1d
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$000(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    move-result-object v1

    if-nez v1, :cond_26

    return-void

    .line 6
    :cond_26
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_30

    const-string p1, "runPrivateFolderLoaderTask result.second is null"

    .line 7
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$900(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$900(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$1000(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$000(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    .line 12
    iget v0, p1, Lcom/android/fileexplorer/model/PathSegment;->position:I

    if-eqz v0, :cond_68

    iget v0, p1, Lcom/android/fileexplorer/model/PathSegment;->top:I

    if-eqz v0, :cond_68

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$1100(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    iget p1, p1, Lcom/android/fileexplorer/model/PathSegment;->position:I

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_68
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$500(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Z)V

    .line 7
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 10
    return-void
.end method
