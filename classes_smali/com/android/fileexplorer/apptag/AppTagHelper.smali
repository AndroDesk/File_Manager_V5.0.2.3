.class public Lcom/android/fileexplorer/apptag/AppTagHelper;
.super Ljava/lang/Object;
.source "AppTagHelper.java"


# static fields
.field public static final APK_SELF_PACKAGE_NAME:Ljava/lang/String; = "com.android.fileexplorer.apk"

.field public static final BLUETOOTH_PACKAGE_NAME:Ljava/lang/String; = "com.xlredapple.bluetooth"

.field public static final DOWNLOAD_APP_NAME:Ljava/lang/String; = "zh_cn=下载&zh_tw=下載&=Downloads"

.field public static final DOWNLOAD_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.downloads.ui"

.field public static final FILE_SELF_PACKAGE_NAME:Ljava/lang/String; = "com.android.fileexplorer.file"

.field public static final MI_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.miui.mishare.connectivity"

.field public static final PACKAGE_NAME_BACKUP:Ljava/lang/String; = "com.miui.backup"

.field public static final PACKAGE_NAME_FAV:Ljava/lang/String; = "com.android.fileexplorer.fav"

.field public static final RECORDER_SELF_PACKAGE_NAME:Ljava/lang/String; = "com.android.soundrecorder"

.field private static final TAG:Ljava/lang/String; = "AppTagHelper"

.field public static final ZIP_SELF_PACKAGE_NAME:Ljava/lang/String; = "com.android.fileexplorer.zip"

.field private static volatile sInstance:Lcom/android/fileexplorer/apptag/AppTagHelper;


# instance fields
.field private mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

.field private mAppTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation
.end field

.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation
.end field

.field private mInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 19
    new-instance v0, Lcom/android/fileexplorer/apptag/AppTagHelper$1;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/AppTagHelper$1;-><init>(Lcom/android/fileexplorer/apptag/AppTagHelper;)V

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mComparator:Ljava/util/Comparator;

    .line 26
    return-void
.end method

.method private calculateFileSource(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_91

    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_6d

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 24
    iget-object v2, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_b

    .line 32
    iget-object v2, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_b

    .line 40
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_36

    .line 46
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 53
    move-result v2

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    const/4 v2, 0x0

    .line 56
    :goto_37
    iget-object v3, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_50

    .line 64
    iget-object v3, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 72
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    .line 75
    move-result v4

    .line 76
    add-int/2addr v4, v2

    .line 77
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    .line 80
    goto :goto_67

    .line 81
    :cond_50
    new-instance v3, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 83
    invoke-direct {v3}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>()V

    .line 86
    iget-object v4, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 88
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/dao/file/AppTag;->setPackageName(Ljava/lang/String;)V

    .line 91
    iget-object v4, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    .line 93
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/dao/file/AppTag;->setAppName(Ljava/lang/String;)V

    .line 96
    iget-object v4, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appIcon:Ljava/lang/String;

    .line 98
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/dao/file/AppTag;->setAppIcon(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    .line 104
    :goto_67
    iget-object v1, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    goto :goto_b

    .line 110
    :cond_6d
    new-instance p1, Ljava/util/ArrayList;

    .line 112
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object v1

    .line 123
    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_90

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 141
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    goto :goto_7a

    .line 145
    :cond_90
    return-object p1

    .line 146
    :cond_91
    const/4 p1, 0x0

    .line 147
    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/apptag/AppTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 6
    if-nez v1, :cond_18

    .line 8
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 9
    :try_start_8
    sget-object v1, Lcom/android/fileexplorer/apptag/AppTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 11
    if-nez v1, :cond_13

    .line 13
    new-instance v1, Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 15
    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/AppTagHelper;-><init>()V

    .line 18
    sput-object v1, Lcom/android/fileexplorer/apptag/AppTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 20
    :cond_13
    monitor-exit v0

    .line 21
    goto :goto_18

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    .line 24
    :try_start_17
    throw v1

    .line 25
    :cond_18
    :goto_18
    sget-object v1, Lcom/android/fileexplorer/apptag/AppTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagHelper;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    .line 27
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :catchall_1c
    move-exception v1

    .line 30
    monitor-exit v0

    .line 31
    throw v1
.end method

.method private handleIdConflict()V
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_61

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 24
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getId()Ljava/lang/Long;

    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_1e

    .line 30
    goto :goto_b

    .line 31
    :cond_1e
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_5d

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/dao/file/AppTag;->setId(Ljava/lang/Long;)V

    .line 41
    sget-object v4, Lcom/android/fileexplorer/apptag/AppTagHelper;->TAG:Ljava/lang/String;

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v6, "conflict id "

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v6, ":"

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 67
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, " with "

    .line 76
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-static {v4, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    goto :goto_b

    .line 94
    :cond_5d
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    goto :goto_b

    .line 98
    :cond_61
    return-void
.end method


# virtual methods
.method public declared-synchronized calcAppTagList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    .line 5
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calculateFileSource(Ljava/util/List;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    .line 16
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V

    .line 19
    if-eqz p1, :cond_27

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mComparator:Ljava/util/Comparator;

    .line 30
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 37
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 40
    :cond_27
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_29
    move-exception p1

    .line 43
    monitor-exit p0

    .line 44
    throw p1
.end method

.method public declared-synchronized deleteAll()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 4
    if-eqz v0, :cond_8

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 16
    :cond_f
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method public declared-synchronized getAppGroupList()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v2

    .line 11
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_23

    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 23
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    const-string v4, "com.android.providers.downloads.ui"

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_a

    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_23
    const/4 v2, 0x0

    .line 37
    const-wide/16 v3, -0x1

    .line 39
    if-nez v1, :cond_3f

    .line 41
    new-instance v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    move-result-object v6

    .line 47
    const-string v7, "com.android.providers.downloads.ui"

    .line 49
    const-string v5, "com.android.providers.downloads.ui"

    .line 51
    invoke-static {v5, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v8

    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v10, -0x1

    .line 57
    move-object v5, v1

    .line 58
    invoke-direct/range {v5 .. v10}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_3f
    new-instance v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 66
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    move-result-object v12

    .line 70
    const-string v13, "storage"

    .line 72
    const-string v5, "storage"

    .line 74
    invoke-static {v5, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v14

    .line 78
    const/4 v15, 0x0

    .line 79
    const/16 v16, -0x1

    .line 81
    move-object v11, v1

    .line 82
    invoke-direct/range {v11 .. v16}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    move-result-object v6

    .line 94
    const-string v7, "cloud"

    .line 96
    const-string v3, "cloud"

    .line 98
    invoke-static {v3, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v8

    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v10, -0x1

    .line 104
    move-object v5, v1

    .line 105
    invoke-direct/range {v5 .. v10}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_70

    .line 111
    monitor-exit p0

    .line 112
    return-object v0

    .line 113
    :catchall_70
    move-exception v0

    .line 114
    monitor-exit p0

    .line 115
    throw v0
.end method

.method public declared-synchronized getAppTag(Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 8
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1f

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 20
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_22

    .line 28
    if-eqz v2, :cond_7

    .line 30
    monitor-exit p0

    .line 31
    return-object v1

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    monitor-exit p0

    .line 34
    return-object p1

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method

.method public declared-synchronized getAppTagList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "com.miui.mishare.connectivity"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xlredapple.bluetooth"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppTagList(Ljava/util/Set;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    if-eqz v2, :cond_c

    .line 7
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 8
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_30

    goto :goto_c

    .line 10
    :cond_2e
    monitor-exit p0

    return-object v0

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_29

    .line 11
    new-instance v0, Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    .line 18
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_29

    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_29

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mComparator:Ljava/util/Comparator;

    .line 39
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 42
    :cond_29
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_2b
    move-exception v0

    .line 45
    monitor-exit p0

    .line 46
    throw v0
.end method

.method public declared-synchronized insertAppTagList(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9d

    .line 5
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calculateFileSource(Ljava/util/List;)Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_9b

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_9b

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p1

    .line 28
    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_5f

    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v3

    .line 45
    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_59

    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 57
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 61
    if-eqz v5, :cond_2c

    .line 63
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_2c

    .line 77
    const/4 v2, 0x1

    .line 78
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    .line 81
    move-result v3

    .line 82
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    .line 85
    move-result v5

    .line 86
    add-int/2addr v3, v5

    .line 87
    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    .line 90
    :cond_59
    if-nez v2, :cond_1b

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_1b

    .line 96
    :cond_5f
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 98
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 101
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    .line 103
    invoke-virtual {p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V

    .line 106
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 108
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 113
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mComparator:Ljava/util/Comparator;

    .line 115
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->handleIdConflict()V

    .line 121
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    .line 123
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    .line 125
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7f} :catch_80
    .catchall {:try_start_4 .. :try_end_7f} :catchall_9d

    .line 128
    goto :goto_9b

    .line 129
    :catch_80
    move-exception p1

    .line 130
    :try_start_81
    sget-object v0, Lcom/android/fileexplorer/apptag/AppTagHelper;->TAG:Ljava/lang/String;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v2, "insertAppTagList error:"

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_81 .. :try_end_9b} :catchall_9d

    .line 156
    :cond_9b
    :goto_9b
    monitor-exit p0

    .line 157
    return-void

    .line 158
    :catchall_9d
    move-exception p1

    .line 159
    monitor-exit p0

    .line 160
    throw p1
.end method

.method public declared-synchronized isAppTagInited()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method
