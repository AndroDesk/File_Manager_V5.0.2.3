.class public Lcom/android/fileexplorer/fragment/MoreAppFragment;
.super Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;
.source "MoreAppFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MoreAppFragment"


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter<",
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

.field private mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/MoreAppFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/MoreAppFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->startFileCategory(I)V

    return-void
.end method

.method private getMiShareTag()Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 8

    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getMiShareFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "MoreAppFragment"

    const-string v2, "getMiShareTag: "

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/fileexplorer/fragment/MoreAppFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/MoreAppFragment$2;-><init>(Lcom/android/fileexplorer/fragment/MoreAppFragment;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    array-length v0, v0

    :goto_21
    move v6, v0

    new-instance v0, Lcom/android/fileexplorer/dao/file/AppTag;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v1, "com.miui.mishare.connectivity"

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getSystemAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v3, "com.miui.mishare.connectivity"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    return-object v0
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

    const-string v2, "handleAddAll.pkgName = "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MoreAppFragment"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v4, v2, :cond_50

    const-string v4, "contain oldTag "

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_40

    if-eq v2, v0, :cond_40

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_62

    :cond_40
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    goto :goto_62

    :cond_50
    const-string v2, "add fixTag "

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5d

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_62

    :cond_5d
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

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

    const-string v2, "handleAddAllDyna.pkgName = "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newTag.count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MoreAppFragment"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v4, v2, :cond_62

    const-string v4, "contain oldTag "

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

    add-int/2addr v3, v0

    if-eq v2, v3, :cond_52

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    iget v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

    add-int/2addr v3, v0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6f

    :cond_52
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    goto :goto_6f

    :cond_62
    const-string v2, "add fixTag "

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    iget v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

    add-int/2addr v3, v0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

    :goto_79
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_97

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private handleDynaPostExecute()V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handleSourceResult(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handleAddAllDyna(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->updateAdapter()V

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

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handleAddAll(Ljava/util/List;Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->showEmptyView(Z)V

    return-void
.end method

.method private handlePreExecute()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->showEmptyView(Z)V

    return-void
.end method

.method public static handleSourceResult(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_74

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_74

    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    :cond_59
    if-eqz v2, :cond_74

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qqIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MoreAppFragment"

    invoke-static {v3, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_74
    :goto_74
    return-void
.end method

.method private showEmptyView(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz p1, :cond_e

    goto :goto_10

    :cond_e
    const/16 v1, 0x8

    :goto_10
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    return-void
.end method

.method private startFileCategory(I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const-class v2, Lcom/android/fileexplorer/activity/FileCategoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "file_category"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateAdapter()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->showEmptyView(Z)V

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
    .registers 19
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

    new-instance v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getFavCount()I

    move-result v8

    const-string v2, "favCount = "

    const-string v3, "MoreAppFragment"

    invoke-static {v2, v8, v3}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Z)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object v2

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1, v4, v3}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Z)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object v9

    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object v1

    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v10, Lcom/android/fileexplorer/dao/file/AppTag;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v5, "com.android.fileexplorer.fav"

    const/4 v7, 0x0

    move-object v3, v10

    move-object/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Lcom/android/fileexplorer/dao/file/AppTag;

    const v4, 0x7f11007f

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-wide v4, v9, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    long-to-int v4, v4

    const-string v13, "com.android.fileexplorer.zip"

    const/4 v5, 0x0

    move-object v11, v3

    move-object/from16 v12, v17

    move-object v15, v5

    move/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v4, Lcom/android/fileexplorer/dao/file/AppTag;

    const v6, 0x7f110063

    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-wide v6, v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    long-to-int v2, v6

    const-string v13, "com.android.fileexplorer.apk"

    move-object v11, v4

    move/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/android/fileexplorer/dao/file/AppTag;

    const v6, 0x7f110453

    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-wide v6, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    long-to-int v1, v6

    const-string v13, "com.android.fileexplorer.file"

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0078

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "MoreAppFragment"

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .registers 2

    const-string v0, "more"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    const v0, 0x7f032cf5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/EmptyView;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    new-instance v0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;-><init>(Lcom/android/fileexplorer/fragment/MoreAppFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    const-string v0, "PAGE_MoreAppFragment"

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

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

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handleDynaPostExecute()V

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

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handleFinishGetFixTags(Ljava/util/List;)V

    return-void
.end method

.method public onPreLoadDynamicTag()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handlePreExecute()V

    return-void
.end method

.method public onPreLoadFixedTag()V
    .registers 1

    return-void
.end method
