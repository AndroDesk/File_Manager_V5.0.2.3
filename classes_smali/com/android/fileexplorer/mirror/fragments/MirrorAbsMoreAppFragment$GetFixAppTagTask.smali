.class Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;
.super Landroid/os/AsyncTask;
.source "MirrorAbsMoreAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;
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
            "Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;->mRefs:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->asyncLoadFixedTag()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;->onPostExecute(Ljava/util/List;)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->access$202(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;Z)Z

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->onFinishLoadFixedTag(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public onPreExecute()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->onPreLoadFixedTag()V

    :cond_d
    return-void
.end method
