.class Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;
.super Ljava/lang/Object;
.source "StorageVolumesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/StorageVolumesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$000(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Landroid/app/Activity;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_25

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$000(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Landroid/app/Activity;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_25

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 23
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_25

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 38
    :cond_25
    return-void
.end method
