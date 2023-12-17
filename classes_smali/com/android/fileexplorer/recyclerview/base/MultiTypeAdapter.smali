.class public Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MultiTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/fileexplorer/recyclerview/base/ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mOnItemClickListener:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mData:Ljava/util/List;

    .line 6
    new-instance p1, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 8
    invoke-direct {p1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 13
    return-void
.end method


# virtual methods
.method public addItemViewDelegate(ILcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
            "TT;>;)",
            "Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->addDelegate(ILcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    return-object p0
.end method

.method public addItemViewDelegate(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
            "TT;>;)",
            "Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->addDelegate(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    return-object p0
.end method

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mData:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mData:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->useItemViewDelegateManager()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mData:Ljava/util/List;

    .line 16
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewType(Ljava/lang/Object;I)I

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public isEnabled(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/recyclerview/base/ViewHolder;
    .registers 5

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v1, p2}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 4
    invoke-interface {v1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v1

    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    move-result-object v0

    .line 6
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->onViewHolderCreated(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Landroid/view/View;I)V

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->setListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V

    return-object v0

    .line 8
    :cond_1d
    new-instance p1, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewHolderCreated(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public removeItemViewDelegate(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
            "TT;>;)",
            "Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->removeDelegate(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 6
    return-object p0
.end method

.method public setListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->isEnabled(I)Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 10
    new-instance p3, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$1;

    .line 12
    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$1;-><init>(Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;)V

    .line 15
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 20
    new-instance p3, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$2;

    .line 22
    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$2;-><init>(Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;)V

    .line 25
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 28
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mOnItemClickListener:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;

    .line 3
    return-void
.end method

.method public useItemViewDelegateManager()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegateCount()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method
