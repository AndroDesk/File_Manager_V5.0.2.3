.class public Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;
.super Landroid/os/AsyncTask;
.source "CheckStorageTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/model/StorageInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;->mCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageHelper;->hasCacheMountVolumeList()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageHelper;->getCacheMountVolumeList()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_2a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v1, p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    if-eqz p1, :cond_37

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageHelper;->clearExternalStorageDirectory()V

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    :cond_37
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;->mCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    if-eqz p1, :cond_3e

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/fragment/file/task/GenericCallback;->onBackgroundComplete(Ljava/lang/Object;)V

    :cond_3e
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;->mCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/task/GenericCallback;->onComplete(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method
