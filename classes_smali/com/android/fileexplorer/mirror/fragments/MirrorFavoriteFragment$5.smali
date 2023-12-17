.class Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;
.super Landroid/os/AsyncTask;
.source "MirrorFavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->onFavoriteRemove(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

.field public final synthetic val$items:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;Ljava/util/List;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;->val$items:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;->doInBackground([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    iget-object v0, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;->val$items:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;Lcom/android/fileexplorer/activity/BaseActivity;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;->val$items:Ljava/util/List;

    invoke-static {p1}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFavoriteItem(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;->onPostExecute(Ljava/util/HashSet;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2, v1, v0}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    :cond_12
    if-nez p1, :cond_21

    const p1, 0x7f11005f

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FavoriteFragment"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 7
    :cond_21
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    const p1, 0x7f11045c

    .line 8
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_77

    .line 9
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v2

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x5

    if-ne v3, v5, :cond_4d

    const-string p1, "..."

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    :cond_4d
    if-eqz v3, :cond_54

    const-string v5, ", "

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    const-string v5, "/"

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_65
    :goto_65
    const p1, 0x7f11045d

    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 15
    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    :goto_77
    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    if-eqz v0, :cond_c

    .line 7
    const v1, 0x7f1102f8

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/activity/BaseActivity;->showLoadingDialog(I)V

    .line 13
    :cond_c
    return-void
.end method
