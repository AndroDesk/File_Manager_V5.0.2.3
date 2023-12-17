.class Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;
.super Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;
.source "StorageVolumesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->initRecyclerView(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    const-string p1, "initRecyclerView onItemClick position = "

    .line 3
    const-string p3, "StorageVolumesFragment"

    .line 5
    invoke-static {p1, p2, p3}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$200(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_46

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 18
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getData()Ljava/util/List;

    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_46

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 30
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getData()Ljava/util/List;

    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    move-result p1

    .line 42
    if-le p1, p2, :cond_46

    .line 44
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 46
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$200(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    .line 49
    move-result-object p1

    .line 50
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 52
    invoke-static {p3}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p3}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getData()Ljava/util/List;

    .line 59
    move-result-object p3

    .line 60
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lcom/android/fileexplorer/model/StorageVolumeInfo;

    .line 66
    iget-object p2, p2, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 68
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;->onVolumeClick(Lcom/android/fileexplorer/model/StorageInfo;)V

    .line 71
    :cond_46
    return-void
.end method
