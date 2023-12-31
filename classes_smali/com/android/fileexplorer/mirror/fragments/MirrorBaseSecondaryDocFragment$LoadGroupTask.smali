.class Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;
.super Landroid/os/AsyncTask;
.source "MirrorBaseSecondaryDocFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;
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
        "Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field private limit:I

.field public final loadMore:Z

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;",
            ">;"
        }
    .end annotation
.end field

.field private offset:I


# direct methods
.method public constructor <init>(ZLcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->loadMore:Z

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 4

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->offset:I

    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->limit:I

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->handleQueryData(II)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->loadMore:Z

    iget v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->offset:I

    iget v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->limit:I

    add-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->handleLoadDataResult(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;ZI)V

    :cond_1c
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->onPostExecute(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_36

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_36

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->getStartIndex()I

    .line 22
    move-result v0

    .line 23
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->loadMore:Z

    .line 25
    if-nez v1, :cond_23

    .line 27
    if-nez v0, :cond_1d

    .line 29
    goto :goto_23

    .line 30
    :cond_1d
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->limit:I

    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->offset:I

    .line 35
    goto :goto_29

    .line 36
    :cond_23
    :goto_23
    const/16 v1, 0xc8

    .line 38
    iput v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->limit:I

    .line 40
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->offset:I

    .line 42
    :goto_29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 44
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 50
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;->loadMore:Z

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->handlePreExecute(Z)V

    .line 55
    :cond_36
    return-void
.end method
