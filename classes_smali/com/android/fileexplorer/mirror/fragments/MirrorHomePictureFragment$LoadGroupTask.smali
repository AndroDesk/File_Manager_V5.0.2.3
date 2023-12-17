.class Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;
.super Landroid/os/AsyncTask;
.source "MirrorHomePictureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadGroupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/fileexplorer/model/group/FileGroupDataBean<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private limit:I

.field public final loadMore:Z

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;",
            ">;"
        }
    .end annotation
.end field

.field private offset:I


# direct methods
.method public constructor <init>(ZLcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->loadMore:Z

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/model/group/FileGroupDataBean;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/android/fileexplorer/model/group/FileGroupDataBean<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->loadMore:Z

    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->offset:I

    iget v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->limit:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleQueryData(ZII)Lcom/android/fileexplorer/model/group/FileGroupDataBean;

    move-result-object p1

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/model/group/FileGroupDataBean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/model/group/FileGroupDataBean;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupDataBean<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->offset:I

    iget v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->limit:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleLoadDataResult(Lcom/android/fileexplorer/model/group/FileGroupDataBean;I)V

    :cond_1a
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupDataBean;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->onPostExecute(Lcom/android/fileexplorer/model/group/FileGroupDataBean;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_29

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_29

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->getStartIndex()I

    .line 22
    move-result v0

    .line 23
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->loadMore:Z

    .line 25
    if-nez v1, :cond_23

    .line 27
    if-nez v0, :cond_1d

    .line 29
    goto :goto_23

    .line 30
    :cond_1d
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->limit:I

    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->offset:I

    .line 35
    goto :goto_29

    .line 36
    :cond_23
    :goto_23
    const/16 v1, 0x7d0

    .line 38
    iput v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->limit:I

    .line 40
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;->offset:I

    .line 42
    :cond_29
    :goto_29
    return-void
.end method
