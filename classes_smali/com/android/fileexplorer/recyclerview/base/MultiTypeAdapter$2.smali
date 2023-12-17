.class Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$2;
.super Ljava/lang/Object;
.source "MultiTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->setListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;

.field public final synthetic val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$2;->this$0:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$2;->val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$2;->this$0:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mOnItemClickListener:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;

    .line 5
    if-eqz v0, :cond_17

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$2;->val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$2;->this$0:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;

    .line 15
    iget-object v1, v1, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mOnItemClickListener:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;

    .line 17
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$2;->val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    .line 19
    invoke-interface {v1, p1, v2, v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;->onItemLongClick(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$b0;I)Z

    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    return p1
.end method
