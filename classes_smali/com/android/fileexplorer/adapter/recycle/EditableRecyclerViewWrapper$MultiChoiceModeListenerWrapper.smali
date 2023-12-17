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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mIsForceDarkmode:Z

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mActionModeAnimationListener:Lmiuix/view/ActionModeAnimationListener;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    iput-boolean p3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mIsForceDarkmode:Z

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$500(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$700(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    check-cast p1, Lmiuix/view/EditActionMode;

    invoke-static {v0, p2, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$800(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;ZLmiuix/view/EditActionMode;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$402(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setActionMode(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setIsPendingActionModeAnim(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setActionModeState(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setIsPendingActionModeAnim(Z)V

    :cond_38
    const v0, 0x7f11025d

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p2

    if-eqz p2, :cond_6b

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$500(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$700(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;I)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$600(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$300(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/EditActionMode;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mActionModeAnimationListener:Lmiuix/view/ActionModeAnimationListener;

    invoke-interface {p1, p2}, Lmiuix/view/EditActionMode;->addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    return v1

    :cond_6b
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$402(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setActionMode(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$500(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setActionModeState(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setIsPendingActionModeAnim(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v3}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    :cond_4b
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$600(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_66

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_66
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 13

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$500(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$700(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isAllItemsChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    move-result-object v2

    check-cast v2, Lmiuix/view/EditActionMode;

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$800(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;ZLmiuix/view/EditActionMode;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;->mWrapped:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
