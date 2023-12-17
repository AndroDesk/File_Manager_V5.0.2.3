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
.method public constructor <init>(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$200(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_31

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$200(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->start_drop_model:Landroidx/lifecycle/q;

    .line 17
    new-instance v1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;

    .line 19
    new-instance v2, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 21
    invoke-direct {v2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 24
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 26
    invoke-static {v3}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$300(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Ljava/util/List;

    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 36
    invoke-virtual {p2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v2, p2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 43
    move-result-object p2

    .line 44
    invoke-direct {v1, p1, p2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;-><init>(Landroid/view/DragEvent;Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    .line 47
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 50
    :cond_31
    const/4 p1, 0x1

    .line 51
    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 3
    invoke-static {p1, p2}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$000(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;I)V

    .line 6
    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 3
    invoke-static {p1, p2}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$000(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;I)V

    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public processHover(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$100(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 19
    if-eq p1, v0, :cond_28

    .line 21
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 23
    if-eq p1, v0, :cond_28

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 27
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->access$200(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->hoverMaskState:Landroidx/lifecycle/q;

    .line 33
    new-instance v0, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;

    .line 35
    invoke-direct {v0, p2}, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;-><init>(Z)V

    .line 38
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 41
    :cond_28
    return-void
.end method
