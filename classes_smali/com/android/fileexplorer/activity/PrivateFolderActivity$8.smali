.class Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;
.super Landroid/os/AsyncTask;
.source "PrivateFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/PrivateFolderActivity;->sortCurrentList()V
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
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

.field public final synthetic val$mCachePrivateFile:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->val$mCachePrivateFile:Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 2
    :try_start_0
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->val$mCachePrivateFile:Ljava/util/ArrayList;

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object v1

    iget v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    aget-object v1, v1, v2

    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 7
    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_2a

    :catch_20
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrivateFolderActivity"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$900(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->val$mCachePrivateFile:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_2b

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$900(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$900(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->val$mCachePrivateFile:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->val$mCachePrivateFile:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 6
    :cond_2b
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$1000(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    return-void
.end method
