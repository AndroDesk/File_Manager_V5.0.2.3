.class Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;
.super Ljava/lang/Object;
.source "FabExpandView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

.field public final synthetic val$viewHolder:Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    iput-object p2, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;->val$viewHolder:Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    iget-wide v2, p1, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long p1, v0, v2

    if-gez p1, :cond_19

    invoke-static {}, Lcom/android/fileexplorer/view/FabExpandView;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "quick click skip"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;->val$viewHolder:Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    iget-object v0, v0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-static {v0}, Lcom/android/fileexplorer/view/FabExpandView;->access$600(Lcom/android/fileexplorer/view/FabExpandView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    invoke-static {v1, p1}, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->access$700(Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;I)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    iget-object v1, v1, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-static {v1}, Lcom/android/fileexplorer/view/FabExpandView;->access$400(Lcom/android/fileexplorer/view/FabExpandView;)Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    iget-object v1, v1, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-static {v1}, Lcom/android/fileexplorer/view/FabExpandView;->access$400(Lcom/android/fileexplorer/view/FabExpandView;)Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->getSelectId()I

    move-result v0

    invoke-interface {v1, v0, p1}, Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;->onItemClick(II)V

    :cond_50
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->mLastClickTime:J

    return-void
.end method