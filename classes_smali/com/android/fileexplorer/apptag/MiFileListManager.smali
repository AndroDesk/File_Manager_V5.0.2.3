.class public Lcom/android/fileexplorer/apptag/MiFileListManager;
.super Ljava/lang/Object;
.source "MiFileListManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;,
        Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;
    }
.end annotation


# static fields
.field private static final GROUP_BY_APP:I

.field private static final GROUP_BY_DATE:I

.field public static final MI_DRIVE:Ljava/lang/String; = ".MiDrive"

.field private static final TAG:Ljava/lang/String; = "MiFileListManager"

.field private static volatile mInstance:Lcom/android/fileexplorer/apptag/MiFileListManager;


# instance fields
.field private mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

.field private mDBFileGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastScanTime:J

.field private final mOnAppTagScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSysMediaStoreHelper:Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/apptag/MiFileListManager;->GROUP_BY_APP:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/apptag/MiFileListManager;->GROUP_BY_DATE:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnAppTagScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mLastScanTime:J

    new-instance v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mSysMediaStoreHelper:Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/apptag/MiFileListManager;Z)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesList(Z)I

    move-result p0

    return p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/apptag/MiFileListManager;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mLastScanTime:J

    return-wide p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/apptag/MiFileListManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnAppTagScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/apptag/MiFileListManager;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->mergeList(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method private classifyFileByGroup(Ljava/util/List;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_90

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_90

    :cond_f
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_90

    if-nez v3, :cond_4a

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    if-nez v4, :cond_34

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    :cond_34
    iget-object v4, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    invoke-static {v2, v1, v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileGroupItem(Ljava/util/List;Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/apptag/AppScanConfigManager;)Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    move-wide v9, v5

    move-object v5, v2

    move-wide v1, v9

    goto :goto_8d

    :cond_4a
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Lcom/android/fileexplorer/apptag/FileUtils;->isInSameGroupTime(JJ)Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    :cond_70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    invoke-static {v1, v6, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileGroupItem(Ljava/util/List;Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/apptag/AppScanConfigManager;)Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v9, v4

    move-object v5, v1

    move-wide v1, v9

    move-object v4, v6

    :goto_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_90
    :goto_90
    return-object v0
.end method

.method private createGroupKey(Ljava/lang/String;JJI)J
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "st"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "p"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "et"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ft"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method private filterFileInBlackList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_29

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_29

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->isPathIgnore(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_29
    :goto_29
    return-void
.end method

.method private findFileItemNotExitDb(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemByFileItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_71

    :cond_11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_45
    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_45

    :cond_5e
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_70
    return-object v0

    :cond_71
    :goto_71
    return-object p1
.end method

.method private fullGroup(Ljava/util/List;Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2e

    :cond_a
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->DATE:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;ZZ)Ljava/util/List;

    move-result-object v1

    const-string v3, "MiFileListManager"

    const-string v4, "fullGroup DATE complete"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->APP:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    invoke-static {p1, v4, v0, v2}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;ZZ)Ljava/util/List;

    move-result-object v0

    const-string v2, "fullGroup APP complete"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_2e
    :goto_2e
    return v0
.end method

.method private getAllFileItems(Ljava/util/List;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    const/4 v2, 0x6

    new-array v3, v2, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v6, 0x4

    aput-object v4, v3, v6

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v6, 0x5

    aput-object v4, v3, v6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getLastScanId()I

    move-result v6

    iget-object v7, v0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mSysMediaStoreHelper:Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;

    invoke-virtual {v7}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->getMaxID()I

    move-result v7

    move v8, v5

    :goto_3b
    if-ge v8, v2, :cond_51

    aget-object v9, v3, v8

    invoke-direct {v0, v9, v6}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllMediasFromSysDb(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4e

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4e

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4e
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_51
    const-string v2, "MiFileListManager, getItemsFromDb end Time: "

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastScanID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentMaxID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiFileListManager"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-gt v6, v8, :cond_130

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v8, "mounted"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_130

    new-instance v6, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;

    sget-object v8, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getBlackDirList()Ljava/util/List;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;-><init>([Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getScanPathList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a6
    :goto_a6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_130

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getConfigForPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    move-result-object v11

    if-eqz v11, :cond_df

    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_df

    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/fileexplorer/util/SpecialUtils;->isWechatTempVideo(J)Z

    move-result v12

    if-nez v12, :cond_123

    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/fileexplorer/util/SpecialUtils;->isWechatVideo(J)Z

    move-result v11

    if-nez v11, :cond_123

    :cond_df
    const-string v11, "com.unnoo.quan"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11f

    invoke-static {v9}, Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil;->isZSXQParentDir(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11f

    invoke-static {}, Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil;->getZSXQDocDir()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_123

    array-length v11, v9

    move v12, v5

    :goto_f5
    if-ge v12, v11, :cond_123

    aget-object v13, v9, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "zsxq child = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v13, v6, v5}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesInDir(Ljava/lang/String;Ljava/io/FilenameFilter;Z)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_11c

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_11c

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_11c
    add-int/lit8 v12, v12, 0x1

    goto :goto_f5

    :cond_11f
    invoke-direct {v0, v9, v6, v5}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesInDir(Ljava/lang/String;Ljava/io/FilenameFilter;Z)Ljava/util/List;

    move-result-object v10

    :cond_123
    if-eqz v10, :cond_a6

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a6

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a6

    :cond_130
    const-string v3, "MiFileListManager, dirFileList  size:"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", getDirFileList time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15a

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_15a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16b

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getLastScanId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_16b

    invoke-direct {v0, v3}, Lcom/android/fileexplorer/apptag/MiFileListManager;->findFileItemNotExitDb(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :cond_16b
    const-string v2, "MiFileListManager, findFileItemNotExitDb dirFileList size:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", loadFileItemsFromDb time: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18b

    return v7

    :cond_18b
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_1a1

    new-instance v4, Lcom/android/fileexplorer/apptag/MiFileListManager$3;

    invoke-direct {v4, v0, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager$3;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/CollectionUtils;->partitionTask(Ljava/util/List;Lcom/android/fileexplorer/util/CollectionUtils$Task;)V

    goto :goto_1a4

    :cond_1a1
    invoke-direct {v0, v3, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->mergeList(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V

    :goto_1a4
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b3

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b3
    const-string v2, "MiFileListManager, getAllFileItems end Time: "

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    return v7
.end method

.method private getAllFilesInDir(Ljava/lang/String;Ljava/io/FilenameFilter;Z)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FilenameFilter;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_d

    return-object v1

    :cond_d
    invoke-virtual {v0, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_14

    return-object v1

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_74

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_27

    goto :goto_71

    :cond_27
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3e

    if-eqz p3, :cond_71

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, p2, v5}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesInDir(Ljava/lang/String;Ljava/io/FilenameFilter;Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_71

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_71

    :cond_3e
    new-instance v5, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-direct {v5}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/FileItem;->setOcrStatus(Ljava/lang/Integer;)V

    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryType(Ljava/io/File;)Lcom/android/fileexplorer/apptag/FileUtils$Categroy;

    move-result-object v4

    if-eqz v4, :cond_6e

    iget v6, v4, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    iget-object v4, v4, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->subFileType:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    :cond_6e
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_74
    return-object v0
.end method

.method private getAllFilesList(Z)I
    .registers 8

    const-string p1, "MiFileListManager"

    const-string v0, "getAllFilesList: start"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {p1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {p1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    const-string v0, "MiFileListManager, getAllFilesList loadAppScanConfig time: "

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFileItems(Ljava/util/List;)I

    move-result v1

    const-string v2, "MiFileListManager, getAllFileItems newFileItems size:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getAllFilesList getAllFileItems time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->loadAppScanConfig()V

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getLastScanId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_63

    invoke-direct {p0, v0, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->fullGroup(Ljava/util/List;Ljava/util/List;)I

    move-result v3

    const-string v4, "MiFileListManager, fullGroup newFileItems size:"

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", getAllFilesList fullGroup finish time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    goto :goto_80

    :cond_63
    invoke-direct {p0, v0, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->group(Ljava/util/List;Ljava/util/List;)I

    move-result v3

    const-string v4, "MiFileListManager, group newFileItems size:"

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", getAllFilesList group finish time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    :goto_80
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_94

    :cond_8c
    invoke-direct {p0, v0, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->updateGroupDetails(Ljava/util/List;Ljava/util/List;)V

    const-string v0, "MiFileListManager, getAllFilesList updateGroupDetails time: "

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    :cond_94
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setLastScanID(I)V

    const-string v0, "MiFileListManager, getAllFilesList step1 time: "

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/fileexplorer/util/SettingsUtils;->setApptagListInited(Ljava/lang/Boolean;)V

    new-instance v0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;

    invoke-direct {v0, p0, v3}, Lcom/android/fileexplorer/apptag/MiFileListManager$2;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager;I)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    const-string v0, "MiFileListManagergetAllFilesList all finish"

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->releaseDbMap()V

    return v3
.end method

.method private getAllMediasFromSysDb(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mSysMediaStoreHelper:Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;

    sget-object v1, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->Other:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;->dateAsc:Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->query(Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Ljava/util/List;Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;JI)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_13

    const/4 p1, 0x0

    return-object p1

    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "getAllMediasFromSysDb: cursor.count = "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiFileListManager"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_80

    new-instance v1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-direct {v1}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".MiDrive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5f

    goto :goto_3a

    :cond_5f
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_80
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mInstance:Lcom/android/fileexplorer/apptag/MiFileListManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/fileexplorer/apptag/MiFileListManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/apptag/MiFileListManager;->mInstance:Lcom/android/fileexplorer/apptag/MiFileListManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/fileexplorer/apptag/MiFileListManager;

    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/apptag/MiFileListManager;->mInstance:Lcom/android/fileexplorer/apptag/MiFileListManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mInstance:Lcom/android/fileexplorer/apptag/MiFileListManager;

    return-object v0
.end method

.method private getNewFileInfos(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez p1, :cond_11

    return-object v0

    :cond_11
    :goto_11
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_24

    goto :goto_40

    :cond_24
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_43
    return-object v0
.end method

.method private group(Ljava/util/List;Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_34

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->DATE:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    const/4 v3, 0x1

    invoke-static {p1, v2, v0, v3}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;ZZ)Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->APP:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    invoke-static {p1, v4, v0, v3}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->mergeGroupsByKey(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_34
    :goto_34
    return v0
.end method

.method private groupByCategory(Ljava/util/List;)Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    if-eqz p1, :cond_39

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_32

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_32
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b

    :cond_39
    return-object v0
.end method

.method private groupFileItem(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->classifyFileByGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private loadAppScanConfig()V
    .registers 7

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    const-string v1, "ver_code"

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getVersion(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    const-string v3, "black_ver_code"

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getVersion(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getAppConfigVersion()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_29

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getBlackDirConfigVersion()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_25

    goto :goto_29

    :cond_25
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->updateFileItems()V

    goto :goto_49

    :cond_29
    :goto_29
    iget-object v4, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    invoke-virtual {v4}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->clear()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteAll()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/fileexplorer/apptag/AppTagHelper;->deleteAll()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/ContentTagHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->deleteAll()V

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/SettingManager;->setAppConfigVersion(J)V

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/SettingManager;->setBlackDirConfigVersion(J)V

    :goto_49
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadScanConfig()V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadScanConfigFromServer()V

    return-void
.end method

.method private loadGroupsFromDb()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mDBFileGroupMap:Ljava/util/Map;

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAllFileGroups()Ljava/util/List;

    move-result-object v1

    const-string v2, "MiFileListManagerloadGroupsFromDb: "

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    if-eqz v1, :cond_38

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    iget-object v3, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mDBFileGroupMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_38
    return-object v1
.end method

.method private mergeFileItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5d

    if-eqz p2, :cond_5d

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_35
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_39
    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_5d
    if-eqz p1, :cond_62

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_62
    if-eqz p2, :cond_67

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_67
    return-object v0
.end method

.method private mergeGroup(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5f

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_5f

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    if-eqz v2, :cond_5b

    invoke-static {v2, v4}, Lcom/android/fileexplorer/apptag/FileUtils;->canGroupMerge(Lcom/android/fileexplorer/apptag/FileItemAppGroup;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Z

    move-result v5

    if-eqz v5, :cond_5b

    iget-wide v5, v4, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_55

    invoke-virtual {v4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/FileItem;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_55
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_5c

    :cond_5b
    move-object v2, v4

    :goto_5c
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_5f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6c

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileGroupInTx(Ljava/util/List;)V

    :cond_6c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_79

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->insertOrReplaceFileItems(Ljava/util/List;)V

    :cond_79
    return-void
.end method

.method private mergeGroupsByKey(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_31
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_35
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private mergeList(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_149

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_4

    :cond_31
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_6a

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_6a

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_6a

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_6a

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_6a

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_6a

    goto :goto_4

    :cond_6a
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_da

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_da

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setOcrStatus(Ljava/lang/Integer;)V

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryType(Ljava/io/File;)Lcom/android/fileexplorer/apptag/FileUtils$Categroy;

    move-result-object v2

    if-eqz v2, :cond_10e

    iget v3, v2, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    iget-object v2, v2, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->subFileType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    goto :goto_10e

    :cond_da
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Util;->canReadCompat(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e6

    goto/16 :goto_4

    :cond_e6
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    :cond_10e
    :goto_10e
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_13c

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_13c

    const-string v0, "MiFileListManager"

    const-string v1, "fileTime == 0 lastModified get invalid: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_13c
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_149
    return-void
.end method

.method private releaseDbMap()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mDBFileGroupMap:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mDBFileGroupMap:Ljava/util/Map;

    :cond_a
    return-void
.end method

.method private sortFileListByDir(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    new-instance v0, Lcom/android/fileexplorer/apptag/MiFileListManager$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager$4;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_a
    return-void
.end method

.method private updateFileItems()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadConfigStateDisable()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_23
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->delFileGroupAndFileItemsByDirId(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized updateGroupDetails(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_16

    :try_start_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_16

    :cond_a
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->updateGroupDetails(Ljava/util/List;Ljava/util/List;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_16
    :goto_16
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized updateOrInsertFileGroup(Ljava/util/List;Landroid/util/LongSparseArray;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "MiFileListManager"

    const-string v1, "updateOrInsertFileGroup"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_11a

    if-nez p1, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_109

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v3

    iget-object v5, v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupStartTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, v2, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v4, v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/fileexplorer/apptag/MiFileListManager;->createGroupKey(Ljava/lang/String;JJI)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/dao/file/FileGroup;

    const/4 v5, 0x0

    if-eqz v4, :cond_af

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag1(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag2(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag3()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag3(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_83
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_1a

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupCreateTime(Ljava/lang/Long;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_af
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->convert2FileGroup(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag1(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag2(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag3()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag3(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    :cond_f5
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->DATE:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    invoke-static {v3, v2, v5}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;Z)Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->APP:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    invoke-static {v3, v4, v5}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1a

    :cond_109
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->loadGroupsFromDb()Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mDBFileGroupMap:Ljava/util/Map;

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->replaceFileItemsAndGroups(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->releaseDbMap()V
    :try_end_118
    .catchall {:try_start_c .. :try_end_118} :catchall_11a

    monitor-exit p0

    return-void

    :catchall_11a
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getAllFilesListAsync(Z)V
    .registers 4

    const-string v0, "MiFileListManager"

    const-string v1, "getAllFilesListAsync: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/apptag/MiFileListManager$1;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager;Z)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getSingleExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public getLastScanTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mLastScanTime:J

    return-wide v0
.end method

.method public insertNewFiles(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_2e

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_28
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_2e
    if-eqz p1, :cond_4e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_4e

    :cond_37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->group(Ljava/util/List;Ljava/util/List;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    :cond_4b
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->updateGroupDetails(Ljava/util/List;Ljava/util/List;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public isScanning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public registerOnAppTagScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnAppTagScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnAppTagScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public release()V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->releaseDbMap()V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public resetLastScanTime()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mLastScanTime:J

    return-void
.end method

.method public unRegisterOnAppTagScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnAppTagScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
