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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$000(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$000(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$1;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_25
    return-void
.end method
