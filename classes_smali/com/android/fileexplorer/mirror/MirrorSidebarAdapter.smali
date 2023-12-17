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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter$1;-><init>(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)V

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->handleSideBarClick(Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->setChoiceListener(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    return-object p0
.end method

.method private handleSideBarClick(Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->getSelected()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_57

    :cond_11
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->getSelected()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    goto :goto_57

    :cond_19
    move v0, v1

    :goto_1a
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_57

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {v3}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->getId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v5

    if-ne v4, v5, :cond_54

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack()Z

    move-result p1

    if-eqz p1, :cond_46

    const-string p1, ""

    invoke-virtual {v3, p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->key(Ljava/lang/String;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    invoke-virtual {p1, v3}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :cond_46
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    iput-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_57

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_57
    :goto_57
    return-void
.end method

.method private setChoiceListener(I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->hasChildList()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->isExpand()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->setExpand(Z)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getChild_list()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->remove(Ljava/util/List;I)V

    goto :goto_4c

    :cond_25
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->setExpand(Z)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getChild_list()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->add(Ljava/util/List;I)V

    goto :goto_4c

    :cond_30
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    if-eqz p1, :cond_4c

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->key(Ljava/lang/String;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {p1, v3}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getViewType()I

    move-result p1

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setVM(Landroidx/lifecycle/m;Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p2, p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->init_tab_model:Landroidx/lifecycle/q;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setSelected(Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p2, p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mSelectedInfo:Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p2, p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    return-void
.end method
