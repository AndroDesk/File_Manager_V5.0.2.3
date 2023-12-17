.class Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$2;
.super Ljava/lang/Object;
.source "ExpandableRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$2;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$2;->val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6

    .line 1
    const-string v0, "2.0"

    .line 3
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1b

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 13
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v2}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 22
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_TIME:I

    .line 24
    invoke-virtual {v0, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(I)Z

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 31
    :goto_1e
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$2;->val$viewHolder:Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 36
    move-result v0

    .line 37
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$2;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 39
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 41
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 44
    move-result-object v2

    .line 45
    iget v3, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 47
    if-gez v3, :cond_32

    .line 49
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_32
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$2;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 53
    invoke-static {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->access$000(Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_49

    .line 59
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$2;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 61
    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->access$000(Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 64
    move-result-object v1

    .line 65
    iget v3, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 67
    iget v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 69
    invoke-interface {v1, p1, v0, v3, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;->onChildLongClick(Landroid/view/View;III)Z

    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    :cond_49
    return v1
.end method
