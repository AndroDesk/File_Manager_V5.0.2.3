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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/BaseCloudFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 4

    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$2;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$2;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onActionModeChanged(Z)V

    invoke-super {p0, p1, p2}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$2;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onActionModeChanged(Z)V

    return-void
.end method
