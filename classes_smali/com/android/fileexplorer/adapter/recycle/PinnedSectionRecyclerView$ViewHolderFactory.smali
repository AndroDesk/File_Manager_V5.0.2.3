.class Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;
.super Ljava/lang/Object;
.source "PinnedSectionRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderFactory"
.end annotation


# instance fields
.field private currentViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field private mPosition:I

.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;-><init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    return-void
.end method


# virtual methods
.method public getViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;->mPosition:I

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;->currentViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;->mPosition:I

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;->currentViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    return-object p1
.end method
