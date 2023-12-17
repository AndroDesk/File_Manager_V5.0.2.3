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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    const-string p1, "initRecyclerView onItemClick position = "

    const-string p3, "StorageVolumesFragment"

    invoke-static {p1, p2, p3}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$200(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_46

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$200(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;

    move-result-object p1

    iget-object p3, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$2;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {p3}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$100(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/StorageVolumeInfo;

    iget-object p2, p2, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-interface {p1, p2}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;->onVolumeClick(Lcom/android/fileexplorer/model/StorageInfo;)V

    :cond_46
    return-void
.end method
