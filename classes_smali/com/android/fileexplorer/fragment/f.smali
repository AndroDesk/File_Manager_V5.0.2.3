.class public final synthetic Lcom/android/fileexplorer/fragment/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/f;->a:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onModeChanged(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/f;->a:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->c(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;II)V

    return-void
.end method

.method public final onStartActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/f;->a:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
