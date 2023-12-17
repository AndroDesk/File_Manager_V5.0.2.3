.class Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$1;
.super Ljava/lang/Object;
.source "MultiTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$1;->this$0:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;

    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$1;->val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$1;->this$0:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mOnItemClickListener:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$1;->val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$1;->this$0:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;

    iget-object v1, v1, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mOnItemClickListener:Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$1;->val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-interface {v1, p1, v2, v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    :cond_15
    return-void
.end method
