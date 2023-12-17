.class Lcom/android/fileexplorer/fragment/FileFragment$10;
.super Landroid/os/AsyncTask;
.source "FileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileFragment;->sortCurrentList()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$10;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$10;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_2b

    .line 3
    :try_start_5
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_26

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$10;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v1, v1, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object v2

    iget v3, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    aget-object v2, v2, v3

    iget-boolean v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 8
    invoke-static {v1, v2, v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V

    .line 9
    :cond_26
    monitor-exit p1

    goto :goto_42

    :catchall_28
    move-exception v0

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p1

    const-string v0, "FileFragment"

    const-string v1, "sortCurrentList error: "

    .line 10
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment$10;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$10;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/FileFragment;->access$500(Lcom/android/fileexplorer/fragment/FileFragment;Z)V

    return-void
.end method
