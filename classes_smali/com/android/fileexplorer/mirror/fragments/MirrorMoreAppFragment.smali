.class public Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;
.source "MirrorMoreAppFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation
.end field

.field private mFixCount:I

.field private mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

.field private mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field public mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    const-string v0, "MirrorMoreAppFragment"

    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    return-object p0
.end method

.method private handleAddAll(Ljava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_65

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    sget-object v2, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    const-string v3, "handleAddAll.pkgName = "

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_50

    const-string v4, "contain oldTag "

    invoke-static {v2, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_40

    if-eq v3, v0, :cond_40

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_62

    :cond_40
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    goto :goto_62

    :cond_50
    const-string v3, "add fixTag "

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5d

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_62

    :cond_5d
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_65
    return-void
.end method

.method private handleAddAllDyna(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_72

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    sget-object v2, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    const-string v3, "handleAddAllDyna.pkgName = "

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newTag.count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_62

    const-string v4, "contain oldTag "

    invoke-static {v2, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    add-int/2addr v2, v0

    if-eq v3, v2, :cond_52

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    iget v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    add-int/2addr v3, v0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6f

    :cond_52
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    goto :goto_6f

    :cond_62
    const-string v3, "add fixTag "

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    iget v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    add-int/2addr v3, v0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    :goto_79
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_97

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    if-eqz p1, :cond_91

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_94

    :cond_91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_97
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private handleDynaPostExecute()V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handleSourceResult(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handleAddAllDyna(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->updateAdapter()V

    return-void
.end method

.method private handleFinishGetFixTags(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handleAddAll(Ljava/util/List;Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->showEmptyView(Z)V

    return-void
.end method

.method private handlePreExecute()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->showEmptyView(Z)V

    return-void
.end method

.method private handleSourceResult(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_74

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_74

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.tencent.mm"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move-object v1, v3

    goto :goto_10

    :cond_2d
    const-string v5, "com.tencent.mobileqq"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move-object v2, v3

    goto :goto_10

    :cond_3a
    const-string v3, "com.android.providers.downloads.ui"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_46
    const-string v3, "com.xlredapple.bluetooth"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_52
    const/4 v0, 0x0

    if-eqz v1, :cond_59

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    :cond_59
    if-eqz v2, :cond_74

    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qqIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_74
    :goto_74
    return-void
.end method

.method private refreshAdapter(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    const/16 v1, 0xb

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_40
    return-void
.end method

.method private showEmptyView(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_b

    :cond_9
    const/16 p1, 0x8

    :goto_b
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    return-void
.end method

.method private updateAdapter()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->showEmptyView(Z)V

    return-void
.end method


# virtual methods
.method public asyncLoadDynamicTag()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calcAppTagList(Ljava/util/List;)V

    return-object v1
.end method

.method public asyncLoadFixedTag()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getFavCount()I

    move-result v7

    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    const-string v2, "favCount = "

    invoke-static {v2, v7, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v8, Lcom/android/fileexplorer/dao/file/AppTag;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "com.android.fileexplorer.fav"

    const/4 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0079

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    const v0, 0x7f032cf5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    new-instance p1, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->refreshAdapter(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/c0;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    return-void
.end method

.method public onFinishLoadDynamicTag(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handleDynaPostExecute()V

    return-void
.end method

.method public onFinishLoadFixedTag(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handleFinishGetFixTags(Ljava/util/List;)V

    return-void
.end method

.method public onPreLoadDynamicTag()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handlePreExecute()V

    return-void
.end method

.method public onPreLoadFixedTag()V
    .registers 1

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->prepareVisible()V

    goto :goto_c

    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->invisible()V

    :goto_c
    return-void
.end method
