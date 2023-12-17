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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;

    iget-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;

    iget-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    :cond_20
    return-void
.end method
