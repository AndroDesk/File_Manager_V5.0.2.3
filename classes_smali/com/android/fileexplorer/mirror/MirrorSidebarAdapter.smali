.class public Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;
.super Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;
.source "MirrorSidebarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter<",
        "Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorSidebarAdapter"


# instance fields
.field private mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

.field private mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;-><init>(Ljava/util/List;)V

    .line 4
    new-instance p1, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;

    .line 6
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;-><init>(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->handleSideBarClick(Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->setChoiceListener(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method private handleSideBarClick(Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->getSelected()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, -0x1

    .line 7
    if-ne v0, v2, :cond_11

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 11
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    goto :goto_57

    .line 18
    :cond_11
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->getSelected()I

    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_19

    .line 25
    goto :goto_57

    .line 26
    :cond_19
    move v0, v1

    .line 27
    :goto_1a
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 29
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 32
    move-result v3

    .line 33
    if-ge v0, v3, :cond_57

    .line 35
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 37
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 43
    invoke-virtual {v3}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->getId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 50
    move-result-object v5

    .line 51
    if-ne v4, v5, :cond_54

    .line 53
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack()Z

    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_46

    .line 59
    const-string p1, ""

    .line 61
    invoke-virtual {v3, p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->key(Ljava/lang/String;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 64
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 66
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 68
    invoke-virtual {p1, v3}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 71
    :cond_46
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 73
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    .line 76
    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    .line 79
    iput-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 81
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 84
    goto :goto_57

    .line 85
    :cond_54
    add-int/lit8 v0, v0, 0x1

    .line 87
    goto :goto_1a

    .line 88
    :cond_57
    :goto_57
    return-void
.end method

.method private setChoiceListener(I)V
    .registers 6

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_4

    .line 4
    return-void

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->hasChildList()Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_30

    .line 21
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->isExpand()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_25

    .line 27
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->setExpand(Z)V

    .line 30
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getChild_list()Ljava/util/List;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->remove(Ljava/util/List;I)V

    .line 37
    goto :goto_4c

    .line 38
    :cond_25
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->setExpand(Z)V

    .line 41
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getChild_list()Ljava/util/List;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->add(Ljava/util/List;I)V

    .line 48
    goto :goto_4c

    .line 49
    :cond_30
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 51
    if-eqz p1, :cond_4c

    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->key(Ljava/lang/String;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 57
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 59
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 61
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 66
    invoke-virtual {p1, v3}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    .line 72
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 74
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 77
    :cond_4c
    :goto_4c
    return-void
.end method


# virtual methods
.method public add(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    add-int/lit8 v1, p2, 0x1

    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 15
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 18
    return-void
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getViewType()I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public remove(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 6
    add-int/lit8 v0, p2, 0x1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 15
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 18
    return-void
.end method

.method public setVM(Landroidx/lifecycle/m;Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;)V
    .registers 5

    .line 1
    if-nez p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 6
    iget-object p2, p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->init_tab_model:Landroidx/lifecycle/q;

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 10
    invoke-virtual {p2, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 22
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    .line 28
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 30
    iget-object p2, p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 34
    invoke-virtual {p2, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 37
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 39
    iget-object p2, p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    .line 41
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    .line 43
    const/4 v1, 0x7

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 47
    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 50
    return-void
.end method
