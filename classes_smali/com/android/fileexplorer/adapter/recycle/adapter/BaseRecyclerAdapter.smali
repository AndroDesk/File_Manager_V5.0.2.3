.class public abstract Lcom/android/fileexplorer/adapter/recycle/adapter/BaseRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
        "TT;>;>;"
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

.field private mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/BaseRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/BaseRecyclerAdapter;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/ViewHolderFactory;->getView(Landroid/view/ViewGroup;ILcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    move-result-object p1

    return-object p1
.end method
