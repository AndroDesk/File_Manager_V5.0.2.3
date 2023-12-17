.class Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "CheckableChildRecyclerViewAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

.field private wrapped:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2d

    .line 6
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_2d

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 14
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$700(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 23
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$800(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;

    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2b

    .line 29
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 31
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$800(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;

    .line 34
    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 37
    invoke-static {p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$500(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)I

    .line 40
    move-result p2

    .line 41
    invoke-interface {p1, v1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;->onModeChanged(II)V

    .line 44
    :cond_2b
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    :cond_2d
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 8
    :cond_7
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$700(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$102(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 24
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 26
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->clearAll()V

    .line 29
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 31
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$700(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 38
    move-result-object p1

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_51

    .line 42
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 44
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$600(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_44

    .line 50
    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 52
    if-eqz p1, :cond_44

    .line 54
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 56
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$700(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 63
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 65
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$300(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 68
    goto :goto_51

    .line 69
    :cond_44
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 71
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$700(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 82
    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 84
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$800(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;

    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_68

    .line 90
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 92
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$800(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;

    .line 95
    move-result-object p1

    .line 96
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 98
    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$500(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)I

    .line 101
    move-result v1

    .line 102
    invoke-interface {p1, v1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;->onModeChanged(II)V

    .line 105
    :cond_68
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isCheckAll()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_18

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 24
    goto :goto_28

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 27
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isClearAll()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_28

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 41
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 43
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroid/view/ActionMode;

    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_39

    .line 49
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 51
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroid/view/ActionMode;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 58
    :cond_39
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public setWrapped(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    return-void
.end method
