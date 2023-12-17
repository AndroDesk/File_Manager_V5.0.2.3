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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mData:Ljava/util/List;

    new-instance p1, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-direct {p1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

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

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->useItemViewDelegateManager()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewType(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public isEnabled(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    check-cast p1, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/recyclerview/base/ViewHolder;
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v1, p2}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    move-result-object v0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->onViewHolderCreated(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Landroid/view/View;I)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->setListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V

    return-object v0

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

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->removeDelegate(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    return-object p0
.end method

.method public setListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V
    .registers 4

    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$1;-><init>(Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$2;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$2;-><init>(Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mOnItemClickListener:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;

    return-void
.end method

.method public useItemViewDelegateManager()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegateCount()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
