.class Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;
.super Landroid/os/AsyncTask;
.source "AbsFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/AbsFileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitStorageTask"
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
.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/fragment/AbsFileFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/AbsFileFragment;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->doInitStorage()V

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 3

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1d

    const-string p1, "AbsFileFragment"

    const-string v0, "mRefs.get() is not null"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->handleInitStorageResult()V

    :cond_1d
    return-void
.end method
