.class public Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;
.super Ljava/lang/Object;
.source "DecorMultiChoiceListener.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;


# instance fields
.field private mListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;->mListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 6
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;->mListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;->mListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 6
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;->mListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;->mListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 6
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;->mListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    .line 6
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;->mListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
