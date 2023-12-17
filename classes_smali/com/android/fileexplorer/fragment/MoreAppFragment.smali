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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

    .line 14
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/MoreAppFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/MoreAppFragment;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->startFileCategory(I)V

    .line 4
    return-void
.end method

.method private getMiShareTag()Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 8

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getMiShareFile()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_38

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_38

    .line 13
    const-string v1, "MoreAppFragment"

    .line 15
    const-string v2, "getMiShareTag: "

    .line 17
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v1, Lcom/android/fileexplorer/fragment/MoreAppFragment$2;

    .line 22
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/MoreAppFragment$2;-><init>(Lcom/android/fileexplorer/fragment/MoreAppFragment;)V

    .line 25
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_20

    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    array-length v0, v0

    .line 34
    :goto_21
    move v6, v0

    .line 35
    new-instance v0, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 37
    const-wide/16 v1, 0x0

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    move-result-object v2

    .line 43
    const-string v1, "com.miui.mishare.connectivity"

    .line 45
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getSystemAppName(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    const/4 v5, 0x0

    .line 50
    const-string v3, "com.miui.mishare.connectivity"

    .line 52
    move-object v1, v0

    .line 53
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    const/4 v0, 0x0

    .line 58
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
    const-string v2, "handleAddAll.pkgName = "

    .line 16
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "MoreAppFragment"

    .line 33
    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 38
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 41
    move-result v2

    .line 42
    const/4 v4, -0x1

    .line 43
    if-eq v4, v2, :cond_50

    .line 45
    const-string v4, "contain oldTag "

    .line 47
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-eqz p2, :cond_40

    .line 52
    if-eq v2, v0, :cond_40

    .line 54
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 56
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 61
    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    goto :goto_62

    .line 65
    :cond_40
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 67
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    const-string v2, "add fixTag "

    .line 83
    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p2, :cond_5d

    .line 88
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 90
    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    goto :goto_62

    .line 94
    :cond_5d
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

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
    const-string v2, "handleAddAllDyna.pkgName = "

    .line 18
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v3, ", newTag.count = "

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    const-string v3, "MoreAppFragment"

    .line 47
    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 52
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 55
    move-result v2

    .line 56
    const/4 v4, -0x1

    .line 57
    if-eq v4, v2, :cond_62

    .line 59
    const-string v4, "contain oldTag "

    .line 61
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

    .line 66
    add-int/2addr v3, v0

    .line 67
    if-eq v2, v3, :cond_52

    .line 69
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 71
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 76
    iget v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

    .line 78
    add-int/2addr v3, v0

    .line 79
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    goto :goto_6f

    .line 83
    :cond_52
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 85
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    const-string v2, "add fixTag "

    .line 101
    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 106
    iget v3, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

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
    iget v1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

    .line 122
    :goto_79
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 124
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 127
    move-result v2

    .line 128
    if-ge v1, v2, :cond_97

    .line 130
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

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
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handleSourceResult(Ljava/util/List;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handleAddAllDyna(Ljava/util/List;)V

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->updateAdapter()V

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
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handleAddAll(Ljava/util/List;Z)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mFixCount:I

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    move-result p1

    .line 22
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->showEmptyView(Z)V

    .line 25
    return-void
.end method

.method private handlePreExecute()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->showEmptyView(Z)V

    .line 10
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

    .line 1
    if-eqz p0, :cond_74

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    goto/16 :goto_74

    .line 11
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 89
    const/4 v0, 0x1

    .line 90
    :cond_59
    if-eqz v2, :cond_74

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    const-string v3, "qqIndex = "

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    const-string v3, "MoreAppFragment"

    .line 111
    invoke-static {v3, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {p0, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    :cond_74
    :goto_74
    return-void
.end method

.method private showEmptyView(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 12
    if-eqz p1, :cond_e

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const/16 v1, 0x8

    .line 17
    :goto_10
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    .line 20
    return-void
.end method

.method private startFileCategory(I)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    const-class v2, Lcom/android/fileexplorer/activity/FileCategoryActivity;

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    const-string v1, "file_category"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    return-void
.end method

.method private updateAdapter()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->showEmptyView(Z)V

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
    .registers 19
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
    new-instance v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    .line 8
    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getFavCount()I

    .line 18
    move-result v8

    .line 19
    const-string v2, "favCount = "

    .line 21
    const-string v3, "MoreAppFragment"

    .line 23
    invoke-static {v2, v8, v3}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Z)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 32
    move-result-object v2

    .line 33
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 35
    invoke-virtual {v1, v4, v3}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Z)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 38
    move-result-object v9

    .line 39
    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 41
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 44
    move-result-object v1

    .line 45
    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    .line 47
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 49
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/Integer;

    .line 55
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v3

    .line 59
    new-instance v10, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 61
    const-wide/16 v4, 0x0

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    move-result-object v17

    .line 67
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v6

    .line 71
    const-string v5, "com.android.fileexplorer.fav"

    .line 73
    const/4 v7, 0x0

    .line 74
    move-object v3, v10

    .line 75
    move-object/from16 v4, v17

    .line 77
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    new-instance v3, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 82
    const v4, 0x7f11007f

    .line 85
    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object v14

    .line 89
    iget-wide v4, v9, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    .line 91
    long-to-int v4, v4

    .line 92
    const-string v13, "com.android.fileexplorer.zip"

    .line 94
    const/4 v5, 0x0

    .line 95
    move-object v11, v3

    .line 96
    move-object/from16 v12, v17

    .line 98
    move-object v15, v5

    .line 99
    move/from16 v16, v4

    .line 101
    invoke-direct/range {v11 .. v16}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    new-instance v4, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 106
    const v6, 0x7f110063

    .line 109
    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 112
    move-result-object v14

    .line 113
    iget-wide v6, v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    .line 115
    long-to-int v2, v6

    .line 116
    const-string v13, "com.android.fileexplorer.apk"

    .line 118
    move-object v11, v4

    .line 119
    move/from16 v16, v2

    .line 121
    invoke-direct/range {v11 .. v16}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    new-instance v2, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 126
    const v6, 0x7f110453

    .line 129
    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 132
    move-result-object v14

    .line 133
    iget-wide v6, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    .line 135
    long-to-int v1, v6

    .line 136
    const-string v13, "com.android.fileexplorer.file"

    .line 138
    move-object v11, v2

    .line 139
    move/from16 v16, v1

    .line 141
    invoke-direct/range {v11 .. v16}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
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

    .line 1
    const v0, 0x102000a

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 12
    const v0, 0x7f0a0163

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/fileexplorer/view/EmptyView;

    .line 21
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 23
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAppTagList:Ljava/util/List;

    .line 27
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;-><init>(Ljava/util/List;)V

    .line 30
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 32
    const/16 v0, 0xd

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 37
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 41
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 48
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 50
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 55
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 58
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 60
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 62
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;

    .line 67
    new-instance v0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;

    .line 69
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;-><init>(Lcom/android/fileexplorer/fragment/MoreAppFragment;)V

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 75
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 77
    const-string v0, "PAGE_MoreAppFragment"

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 82
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
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handleDynaPostExecute()V

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
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handleFinishGetFixTags(Ljava/util/List;)V

    .line 4
    return-void
.end method

.method public onPreLoadDynamicTag()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->handlePreExecute()V

    .line 4
    return-void
.end method

.method public onPreLoadFixedTag()V
    .registers 1

    return-void
.end method
