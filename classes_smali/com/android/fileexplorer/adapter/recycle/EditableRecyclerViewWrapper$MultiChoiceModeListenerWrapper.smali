.class Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;
.super Ljava/lang/Object;
.source "EditableRecyclerViewWrapper.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiChoiceModeListenerWrapper"
.end annotation


# instance fields
.field private mActionModeAnimationListener:Lmiuix/view/ActionModeAnimationListener;

.field private mIsForceDarkmode:Z

.field private mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mIsForceDarkmode:Z

    .line 9
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;

    .line 11
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;)V

    .line 14
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mActionModeAnimationListener:Lmiuix/view/ActionModeAnimationListener;

    .line 16
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 18
    iput-boolean p3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mIsForceDarkmode:Z

    .line 20
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 9
    invoke-static {v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$500(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Ljava/util/HashMap;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 16
    move-result v2

    .line 17
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$700(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;I)V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 22
    check-cast p1, Lmiuix/view/EditActionMode;

    .line 24
    invoke-static {v0, p2, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$800(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;ZLmiuix/view/EditActionMode;)V

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 29
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 40
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {p1, v0, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 47
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 3
    invoke-static {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$402(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setActionMode(Z)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setIsPendingActionModeAnim(Z)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 27
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 30
    move-result-object v0

    .line 31
    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 33
    if-eqz v0, :cond_38

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 37
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 43
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setActionModeState(Z)V

    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 48
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 54
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setIsPendingActionModeAnim(Z)V

    .line 57
    :cond_38
    const v0, 0x7f11025d

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 63
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 65
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_6b

    .line 71
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 73
    invoke-static {p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$500(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Ljava/util/HashMap;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 80
    move-result v0

    .line 81
    invoke-static {p2, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$700(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;I)V

    .line 84
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 86
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$600(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V

    .line 89
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 91
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$300(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V

    .line 94
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 96
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lmiuix/view/EditActionMode;

    .line 102
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mActionModeAnimationListener:Lmiuix/view/ActionModeAnimationListener;

    .line 104
    invoke-interface {p1, p2}, Lmiuix/view/EditActionMode;->addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    .line 107
    return v1

    .line 108
    :cond_6b
    const/4 p1, 0x0

    .line 109
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$402(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setActionMode(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$500(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Ljava/util/HashMap;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 28
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 31
    move-result-object v0

    .line 32
    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 34
    if-eqz v0, :cond_4b

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 38
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 44
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setActionModeState(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 49
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 55
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setIsPendingActionModeAnim(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 60
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 66
    const/4 v2, -0x1

    .line 67
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 69
    invoke-static {v3}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v0, v1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 76
    :cond_4b
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 78
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 81
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 83
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$600(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V

    .line 86
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 88
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_66

    .line 94
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 96
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 103
    :cond_66
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$500(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Ljava/util/HashMap;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 10
    move-result v1

    .line 11
    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$700(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;I)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 16
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isAllItemsChecked()Z

    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 22
    invoke-static {v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lmiuix/view/EditActionMode;

    .line 28
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$800(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;ZLmiuix/view/EditActionMode;)V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 40
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 42
    move-object v2, p1

    .line 43
    move v3, p2

    .line 44
    move-wide v4, p3

    .line 45
    move v6, p5

    .line 46
    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 49
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
