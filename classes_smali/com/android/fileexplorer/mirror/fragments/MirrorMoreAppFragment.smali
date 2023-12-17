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

    .line 1
    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    .line 3
    const-string v0, "MirrorMoreAppFragment"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    .line 14
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 3
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

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_65

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 14
    sget-object v2, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    .line 16
    const-string v3, "handleAddAll.pkgName = "

    .line 18
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 38
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 41
    move-result v3

    .line 42
    const/4 v4, -0x1

    .line 43
    if-eq v4, v3, :cond_50

    .line 45
    const-string v4, "contain oldTag "

    .line 47
    invoke-static {v2, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-eqz p2, :cond_40

    .line 52
    if-eq v3, v0, :cond_40

    .line 54
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 56
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 61
    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    goto :goto_62

    .line 65
    :cond_40
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 67
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 73
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    .line 76
    move-result v1

    .line 77
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    .line 80
    goto :goto_62

    .line 81
    :cond_50
    const-string v3, "add fixTag "

    .line 83
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p2, :cond_5d

    .line 88
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 90
    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    goto :goto_62

    .line 94
    :cond_5d
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 96
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_62
    add-int/lit8 v0, v0, 0x1

    .line 101
    goto :goto_1

    .line 102
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

    .line 1
    if-eqz p1, :cond_72

    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_72

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 16
    sget-object v2, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    .line 18
    const-string v3, "handleAddAllDyna.pkgName = "

    .line 20
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v4, ", newTag.count = "

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    .line 39
    move-result v4

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 52
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 55
    move-result v3

    .line 56
    const/4 v4, -0x1

    .line 57
    if-eq v4, v3, :cond_62

    .line 59
    const-string v4, "contain oldTag "

    .line 61
    invoke-static {v2, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    .line 66
    add-int/2addr v2, v0

    .line 67
    if-eq v3, v2, :cond_52

    .line 69
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 71
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 76
    iget v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    .line 78
    add-int/2addr v3, v0

    .line 79
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    goto :goto_6f

    .line 83
    :cond_52
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 85
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 91
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    .line 94
    move-result v1

    .line 95
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    .line 98
    goto :goto_6f

    .line 99
    :cond_62
    const-string v3, "add fixTag "

    .line 101
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 106
    iget v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    .line 108
    add-int/2addr v3, v0

    .line 109
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 112
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    .line 114
    goto :goto_3

    .line 115
    :cond_72
    new-instance v0, Ljava/util/ArrayList;

    .line 117
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    .line 122
    :goto_79
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 124
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 127
    move-result v2

    .line 128
    if-ge v1, v2, :cond_97

    .line 130
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 132
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 138
    if-eqz p1, :cond_91

    .line 140
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_94

    .line 146
    :cond_91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_94
    add-int/lit8 v1, v1, 0x1

    .line 151
    goto :goto_79

    .line 152
    :cond_97
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 154
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 157
    return-void
.end method

.method private handleDynaPostExecute()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handleSourceResult(Ljava/util/List;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handleAddAllDyna(Ljava/util/List;)V

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->updateAdapter()V

    .line 18
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

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handleAddAll(Ljava/util/List;Z)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mFixCount:I

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    move-result p1

    .line 22
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->showEmptyView(Z)V

    .line 25
    return-void
.end method

.method private handlePreExecute()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->showEmptyView(Z)V

    .line 10
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

    .line 1
    if-eqz p1, :cond_74

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    goto/16 :goto_74

    .line 11
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move-object v2, v1

    .line 17
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_52

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 29
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    const-string v5, "com.tencent.mm"

    .line 35
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2d

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 44
    move-object v1, v3

    .line 45
    goto :goto_10

    .line 46
    :cond_2d
    const-string v5, "com.tencent.mobileqq"

    .line 48
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_3a

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 57
    move-object v2, v3

    .line 58
    goto :goto_10

    .line 59
    :cond_3a
    const-string v3, "com.android.providers.downloads.ui"

    .line 61
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_46

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 70
    goto :goto_10

    .line 71
    :cond_46
    const-string v3, "com.xlredapple.bluetooth"

    .line 73
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_10

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 82
    goto :goto_10

    .line 83
    :cond_52
    const/4 v0, 0x0

    .line 84
    if-eqz v1, :cond_59

    .line 86
    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 89
    const/4 v0, 0x1

    .line 90
    :cond_59
    if-eqz v2, :cond_74

    .line 92
    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v4, "qqIndex = "

    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    invoke-static {v1, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    :cond_74
    :goto_74
    return-void
.end method

.method private refreshAdapter(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 8
    const/16 v1, 0xb

    .line 10
    if-nez v0, :cond_18

    .line 12
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 27
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 29
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 34
    const/16 v2, 0x1c

    .line 36
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 39
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 41
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 43
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 46
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 48
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 50
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 53
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 55
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    if-eqz p1, :cond_40

    .line 60
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 62
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 65
    :cond_40
    return-void
.end method

.method private showEmptyView(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz p1, :cond_9

    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 p1, 0x8

    .line 12
    :goto_b
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    .line 15
    return-void
.end method

.method private updateAdapter()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->showEmptyView(Z)V

    .line 15
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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calcAppTagList(Ljava/util/List;)V

    .line 26
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getFavCount()I

    .line 13
    move-result v7

    .line 14
    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    .line 16
    const-string v2, "favCount = "

    .line 18
    invoke-static {v2, v7, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    .line 23
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v1

    .line 35
    new-instance v8, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 37
    const-wide/16 v2, 0x0

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    move-result-object v3

    .line 43
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v5

    .line 47
    const-string v4, "com.android.fileexplorer.fav"

    .line 49
    const/4 v6, 0x0

    .line 50
    move-object v2, v8

    .line 51
    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0079

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    .line 1
    const v0, 0x102000a

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 12
    const v0, 0x7f0a0163

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 21
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 23
    new-instance p1, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 27
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;-><init>(Ljava/util/List;)V

    .line 30
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->refreshAdapter(Z)V

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 42
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 46
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 51
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;

    .line 53
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)V

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    new-instance p1, Landroidx/lifecycle/c0;

    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 13
    const-class v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 15
    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 21
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 23
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

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handleDynaPostExecute()V

    .line 4
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

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handleFinishGetFixTags(Ljava/util/List;)V

    .line 4
    return-void
.end method

.method public onPreLoadDynamicTag()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->handlePreExecute()V

    .line 4
    return-void
.end method

.method public onPreLoadFixedTag()V
    .registers 1

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_9

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->prepareVisible()V

    .line 9
    goto :goto_c

    .line 10
    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->invisible()V

    .line 13
    :goto_c
    return-void
.end method
