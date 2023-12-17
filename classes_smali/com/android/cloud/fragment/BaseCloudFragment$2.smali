.class Lcom/android/cloud/fragment/BaseCloudFragment$2;
.super Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;
.source "BaseCloudFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/BaseCloudFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/fragment/BaseCloudFragment;


# direct methods
.method public constructor <init>(Lcom/android/cloud/fragment/BaseCloudFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$2;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$2;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onActionModeChanged(Z)V

    .line 7
    invoke-super {p0, p1, p2}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$2;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onActionModeChanged(Z)V

    .line 10
    return-void
.end method
