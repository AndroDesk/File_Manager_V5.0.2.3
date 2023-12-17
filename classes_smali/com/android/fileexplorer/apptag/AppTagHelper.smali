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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    new-instance v0, Lcom/android/fileexplorer/apptag/AppTagHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/AppTagHelper$1;-><init>(Lcom/android/fileexplorer/apptag/AppTagHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mComparator:Ljava/util/Comparator;

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

    if-eqz p1, :cond_91

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    iget-object v2, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    iget-object v3, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    goto :goto_67

    :cond_50
    new-instance v3, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-direct {v3}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>()V

    iget-object v4, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/dao/file/AppTag;->setPackageName(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/dao/file/AppTag;->setAppName(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appIcon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/dao/file/AppTag;->setAppIcon(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    :goto_67
    iget-object v1, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_6d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :cond_90
    return-object p1

    :cond_91
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/apptag/AppTagHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/apptag/AppTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagHelper;

    if-nez v1, :cond_18

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    :try_start_8
    sget-object v1, Lcom/android/fileexplorer/apptag/AppTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagHelper;

    if-nez v1, :cond_13

    new-instance v1, Lcom/android/fileexplorer/apptag/AppTagHelper;

    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/AppTagHelper;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/apptag/AppTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagHelper;

    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1

    :cond_18
    :goto_18
    sget-object v1, Lcom/android/fileexplorer/apptag/AppTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagHelper;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleIdConflict()V
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getId()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_1e

    goto :goto_b

    :cond_1e
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/dao/file/AppTag;->setId(Ljava/lang/Long;)V

    sget-object v4, Lcom/android/fileexplorer/apptag/AppTagHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "conflict id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_5d
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

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

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calculateFileSource(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V

    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteAll()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

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

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.providers.downloads.ui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v1, 0x1

    :cond_23
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-nez v1, :cond_3f

    new-instance v1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "com.android.providers.downloads.ui"

    const-string v5, "com.android.providers.downloads.ui"

    invoke-static {v5, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    new-instance v1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "storage"

    const-string v5, "storage"

    invoke-static {v5, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "cloud"

    const-string v3, "cloud"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_70

    monitor-exit p0

    return-object v0

    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppTag(Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_22

    if-eqz v2, :cond_7

    monitor-exit p0

    return-object v1

    :cond_1f
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_22
    move-exception p1

    monitor-exit p0

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

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "com.miui.mishare.connectivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xlredapple.bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

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

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_30

    goto :goto_c

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

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

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

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9d

    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calculateFileSource(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9b

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2c

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v2, 0x1

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    :cond_59
    if-nez v2, :cond_1b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_5f
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    invoke-virtual {p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->handleIdConflict()V

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagDaoUtils:Lcom/android/fileexplorer/util/dao/AppTagDaoUtils;

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mAppTagList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7f} :catch_80
    .catchall {:try_start_4 .. :try_end_7f} :catchall_9d

    goto :goto_9b

    :catch_80
    move-exception p1

    :try_start_81
    sget-object v0, Lcom/android/fileexplorer/apptag/AppTagHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertAppTagList error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_81 .. :try_end_9b} :catchall_9d

    :cond_9b
    :goto_9b
    monitor-exit p0

    return-void

    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAppTagInited()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppTagHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
