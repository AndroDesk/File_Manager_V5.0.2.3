.class public Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;
.super Ljava/lang/Object;
.source "MirrorFragmentStackHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentStackHelper"


# instance fields
.field private back_forward_stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

.field private go_forward_stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private key_map:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

.field private mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->key_map:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    return-void
.end method


# virtual methods
.method public addStack(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 5

    if-eqz p1, :cond_55

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_55

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    if-nez v0, :cond_12

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    return-void

    :cond_12
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getPath_key()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->key_map:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->key_map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_3a

    :cond_2c
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->key_map:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3a
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_49

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    :cond_49
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public backForward()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isBackEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_22
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :goto_2e
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setSelected(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setNeed_add_stack(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    return-object v0
.end method

.method public getBackInfo()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setSelected(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setNeed_add_stack(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    :cond_34
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-object v0
.end method

.method public goForward()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isForwardEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_22
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :goto_2e
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setSelected(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setNeed_add_stack(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    return-object v0
.end method

.method public isBackEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isBackEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isForwardEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isEqualToCurrentMirrorPage(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)Z
    .registers 3

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public isForwardEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method
