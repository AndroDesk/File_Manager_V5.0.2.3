.class public Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;
.super Ljava/lang/Object;
.source "ItemViewDelegateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDelegates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    .line 11
    return-void
.end method


# virtual methods
.method public addDelegate(ILcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
            "TT;>;)",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string p1, "addDelegate"

    const-string p2, " \"An ItemViewDelegate is already registered for the viewType = \"\n                            + viewType\n                            + \". Already registered ItemViewDelegate is \"\n                            + mDelegates.get(viewType)"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 5
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addDelegate(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
            "TT;>;)",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz p1, :cond_d

    .line 2
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_d
    return-object p0
.end method

.method public getItemViewDelegate(I)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;

    .line 9
    return-object p1
.end method

.method public getItemViewDelegateCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewLayoutId(I)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;->getItemViewLayoutId()I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getItemViewType(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
            "TT;>;)I"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getItemViewType(Ljava/lang/Object;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1f

    .line 2
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;

    .line 3
    invoke-interface {v1, p1, p2}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    .line 5
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No ItemViewDelegate added that matches position="

    const-string v1, " in data source"

    .line 6
    invoke-static {v0, p2, v1}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;

    .line 18
    invoke-interface {v2, p2, p3}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1b

    .line 24
    invoke-interface {v2, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V

    .line 27
    return-void

    .line 28
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_7

    .line 31
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string p2, "No ItemViewDelegateManager added that matches position="

    .line 35
    const-string v0, " in data source"

    .line 37
    invoke-static {p2, p3, v0}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1
.end method

.method public removeAllDelegate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    return-void
.end method

.method public removeDelegate(I)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_d

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_d
    return-object p0
.end method

.method public removeDelegate(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
            "TT;>;)",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->mDelegates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_f
    return-object p0

    .line 3
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ItemViewDelegate is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
