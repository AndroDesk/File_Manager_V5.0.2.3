.class Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "ExpandableRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

.field public final synthetic val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$1;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$1;->val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$1;->val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$1;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 9
    iget-object v1, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 11
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$1;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 17
    iget v1, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 19
    invoke-virtual {v2, p1, v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->onGroupClick(Landroid/view/View;II)Z

    .line 22
    return-void
.end method
