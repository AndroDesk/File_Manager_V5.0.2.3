.class Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;
.super Ljava/lang/Object;
.source "PadFabExpandView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

.field public final synthetic val$viewHolder:Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;->val$viewHolder:Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    .line 7
    iget-wide v2, p1, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->mLastClickTime:J

    .line 9
    sub-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x190

    .line 12
    cmp-long p1, v0, v2

    .line 14
    if-gez p1, :cond_19

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/view/PadFabExpandView;->access$000()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "quick click skip"

    .line 22
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void

    .line 26
    :cond_19
    iget-object p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;->val$viewHolder:Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;

    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 31
    move-result p1

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    .line 34
    iget-object v0, v0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    .line 36
    invoke-static {v0}, Lcom/android/fileexplorer/view/PadFabExpandView;->access$100(Lcom/android/fileexplorer/view/PadFabExpandView;)Ljava/util/List;

    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;

    .line 46
    iget-object v1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    .line 48
    invoke-static {v1, p1}, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->access$200(Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;I)V

    .line 51
    iget-object v1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    .line 53
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 56
    iget-object v1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    .line 58
    iget-object v1, v1, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    .line 60
    invoke-static {v1}, Lcom/android/fileexplorer/view/PadFabExpandView;->access$300(Lcom/android/fileexplorer/view/PadFabExpandView;)Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;

    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_50

    .line 66
    iget-object v1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    .line 68
    iget-object v1, v1, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    .line 70
    invoke-static {v1}, Lcom/android/fileexplorer/view/PadFabExpandView;->access$300(Lcom/android/fileexplorer/view/PadFabExpandView;)Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->getSelectId()I

    .line 77
    move-result v0

    .line 78
    invoke-interface {v1, v0, p1}, Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;->onItemClick(II)V

    .line 81
    :cond_50
    iget-object p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;->this$1:Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    move-result-wide v0

    .line 87
    iput-wide v0, p1, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->mLastClickTime:J

    .line 89
    return-void
.end method
