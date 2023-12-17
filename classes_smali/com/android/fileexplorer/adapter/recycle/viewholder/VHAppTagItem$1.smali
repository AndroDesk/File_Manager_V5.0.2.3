.class Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem$1;
.super Ljava/lang/Object;
.source "VHAppTagItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;->onBind(Lcom/android/fileexplorer/dao/file/AppTag;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem$1;->val$position:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    const-string v0, "VHAppTagItem"

    .line 3
    const-string v1, "onClick"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;

    .line 10
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 12
    if-eqz v1, :cond_17

    .line 14
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem$1;->val$position:I

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 20
    move-result v0

    .line 21
    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    .line 24
    :cond_17
    return-void
.end method
