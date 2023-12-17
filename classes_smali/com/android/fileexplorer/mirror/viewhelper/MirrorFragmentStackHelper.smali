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
.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->key_map:Landroid/util/ArrayMap;

    .line 25
    new-instance v0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 27
    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 32
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 34
    return-void
.end method


# virtual methods
.method public addStack(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_55

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_55

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 14
    if-nez v0, :cond_12

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 18
    return-void

    .line 19
    :cond_12
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getPath_key()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->key_map:Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2c

    .line 31
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    .line 33
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->key_map:Landroid/util/ArrayMap;

    .line 35
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 41
    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 44
    goto :goto_3a

    .line 45
    :cond_2c
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    .line 47
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 49
    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 52
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->key_map:Landroid/util/ArrayMap;

    .line 54
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 56
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :goto_3a
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 61
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    .line 63
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_49

    .line 69
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    .line 71
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 74
    :cond_49
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 76
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    .line 78
    const/4 v0, 0x1

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 86
    :cond_55
    :goto_55
    return-void
.end method

.method public backForward()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    .line 10
    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isBackEmpty()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_22

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 24
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 34
    goto :goto_2e

    .line 35
    :cond_22
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 37
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    .line 39
    const/4 v2, 0x3

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 47
    :goto_2e
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 49
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 56
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setSelected(I)V

    .line 62
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 64
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setNeed_add_stack(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 69
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    .line 71
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 73
    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 76
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 78
    return-object v0
.end method

.method public getBackInfo()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    .line 3
    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setSelected(I)V

    .line 26
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 28
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setNeed_add_stack(Z)V

    .line 31
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 33
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    .line 35
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 37
    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 40
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    .line 42
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_34

    .line 48
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    .line 50
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 53
    :cond_34
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 55
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    .line 57
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    .line 59
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    move-result v2

    .line 63
    xor-int/lit8 v2, v2, 0x1

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 72
    return-object v0
.end method

.method public goForward()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    .line 10
    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isForwardEmpty()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_22

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 24
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 34
    goto :goto_2e

    .line 35
    :cond_22
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 37
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    .line 39
    const/4 v2, 0x3

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 47
    :goto_2e
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 49
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 56
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setSelected(I)V

    .line 62
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 64
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setNeed_add_stack(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 69
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    .line 71
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->clickInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 73
    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 76
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 78
    return-object v0
.end method

.method public isBackEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->back_forward_stack:Ljava/util/Deque;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isBackEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isForwardEmpty()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public isEqualToCurrentMirrorPage(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_c

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->mCurInfo:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public isForwardEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->go_forward_stack:Ljava/util/Deque;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
