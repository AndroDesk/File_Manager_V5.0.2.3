.class Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;
.super Landroid/os/AsyncTask;
.source "AbsMoreAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetFixAppTagTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/dao/file/AppTag;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;

    if-eqz p1, :cond_f

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->asyncLoadFixedTag()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->access$202(Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;Z)Z

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->onFinishLoadFixedTag(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public onPreExecute()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->onPreLoadFixedTag()V

    .line 14
    :cond_d
    return-void
.end method
