.class Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;
.super Landroid/os/AsyncTask;
.source "AbsCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadGroupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup<",
        "TT;>;>",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult<",
        "TT;TD;>;>;"
    }
.end annotation


# instance fields
.field private limit:I

.field private loadAd:Z

.field public final loadMore:Z

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment<",
            "TT;TD;>;>;"
        }
    .end annotation
.end field

.field private offset:I


# direct methods
.method public constructor <init>(ZLcom/android/fileexplorer/fragment/category/AbsCategoryFragment;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment<",
            "TT;TD;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->loadMore:Z

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 13
    iput-boolean p3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->loadAd:Z

    .line 15
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult<",
            "TT;TD;>;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->loadMore:Z

    iget v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->offset:I

    iget v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->limit:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->access$200(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;ZII)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;

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

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult<",
            "TT;TD;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    iget v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->offset:I

    iget v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->limit:I

    add-int/2addr v1, v2

    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->access$300(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;I)V

    :cond_1a
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->onPostExecute(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_33

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_33

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getStartIndex()I

    .line 22
    move-result v0

    .line 23
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->loadMore:Z

    .line 25
    if-nez v1, :cond_23

    .line 27
    if-nez v0, :cond_1d

    .line 29
    goto :goto_23

    .line 30
    :cond_1d
    iput v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->limit:I

    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->offset:I

    .line 35
    goto :goto_33

    .line 36
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 38
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 44
    invoke-virtual {v1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getPageCount()I

    .line 47
    move-result v1

    .line 48
    iput v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->limit:I

    .line 50
    iput v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->offset:I

    .line 52
    :cond_33
    :goto_33
    return-void
.end method
