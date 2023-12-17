.class Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;
.super Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;
.source "MirrorSidebarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$200(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$200(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->start_drop_model:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;

    new-instance v2, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-direct {v2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    invoke-static {v3}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$300(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {p2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;-><init>(Landroid/view/DragEvent;Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :cond_31
    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$000(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;I)V

    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$000(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public processHover(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$100(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-eq p1, v0, :cond_28

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-eq p1, v0, :cond_28

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$200(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->hoverMaskState:Landroidx/lifecycle/q;

    new-instance v0, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;

    invoke-direct {v0, p2}, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;-><init>(Z)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :cond_28
    return-void
.end method
