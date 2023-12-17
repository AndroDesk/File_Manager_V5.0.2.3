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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLcom/android/fileexplorer/fragment/category/AbsCategoryFragment;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment<",
            "TT;TD;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->loadMore:Z

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->loadAd:Z

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

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1d

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

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

    check-cast p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->onPostExecute(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getStartIndex()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->loadMore:Z

    if-nez v1, :cond_23

    if-nez v0, :cond_1d

    goto :goto_23

    :cond_1d
    iput v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->offset:I

    goto :goto_33

    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    invoke-virtual {v1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getPageCount()I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->limit:I

    iput v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;->offset:I

    :cond_33
    :goto_33
    return-void
.end method
