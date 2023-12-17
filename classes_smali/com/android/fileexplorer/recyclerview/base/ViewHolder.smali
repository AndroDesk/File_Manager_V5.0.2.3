.class public Lcom/android/fileexplorer/recyclerview/base/ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "ViewHolder.java"


# instance fields
.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->mViews:Landroid/util/SparseArray;

    .line 11
    return-void
.end method

.method public static createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/recyclerview/base/ViewHolder;
    .registers 5

    .line 2
    new-instance v0, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getCacheView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static createViewHolder(Landroid/view/View;)Lcom/android/fileexplorer/recyclerview/base/ViewHolder;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->mViews:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-nez v0, :cond_15

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->mViews:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    :cond_15
    return-object v0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/android/fileexplorer/recyclerview/base/ViewHolder;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    return-object p0
.end method

.method public setOnLongClickListener(ILandroid/view/View$OnLongClickListener;)Lcom/android/fileexplorer/recyclerview/base/ViewHolder;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8
    return-object p0
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)Lcom/android/fileexplorer/recyclerview/base/ViewHolder;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    return-object p0
.end method
