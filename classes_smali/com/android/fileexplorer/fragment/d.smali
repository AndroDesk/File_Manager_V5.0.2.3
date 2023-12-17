.class public final synthetic Lcom/android/fileexplorer/fragment/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;
.implements Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/fragment/RecentFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/d;->a:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/view/View;II)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/d;->a:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/RecentFragment;->b(Lcom/android/fileexplorer/fragment/RecentFragment;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public final onStartActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/d;->a:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
