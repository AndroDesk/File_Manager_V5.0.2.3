.class Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;
.super Ljava/lang/Object;
.source "VHPrivateGridItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;

    .line 3
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 5
    if-eqz v1, :cond_20

    .line 7
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->isFolder()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_20

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;

    .line 15
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 17
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 22
    move-result v0

    .line 23
    const/4 v3, 0x2

    .line 24
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;

    .line 26
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 29
    move-result v4

    .line 30
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    .line 33
    :cond_20
    return-void
.end method
