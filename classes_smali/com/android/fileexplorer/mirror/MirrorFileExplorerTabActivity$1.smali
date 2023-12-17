.class Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;
.super Ljava/lang/Object;
.source "MirrorFileExplorerTabActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDeActive()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_b

    .line 7
    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDeActiveEmptyView()V

    .line 12
    :cond_b
    return-void
.end method

.method public onReverse()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 5
    if-eqz v0, :cond_b

    .line 7
    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->reverseEmptyViewState()V

    .line 12
    :cond_b
    return-void
.end method
