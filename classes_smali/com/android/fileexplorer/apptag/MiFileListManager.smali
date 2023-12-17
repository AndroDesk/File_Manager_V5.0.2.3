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
.field private static final GROUP_BY_APP:I = 0x1

.field private static final GROUP_BY_DATE:I = 0x0

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
.method private constructor <init>()V
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
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnAppTagScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mLastScanTime:J

    .line 30
    new-instance v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;

    .line 32
    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mSysMediaStoreHelper:Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;

    .line 37
    new-instance v0, Landroid/os/Handler;

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/apptag/MiFileListManager;Z)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesList(Z)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/apptag/MiFileListManager;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mLastScanTime:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/apptag/MiFileListManager;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnAppTagScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/apptag/MiFileListManager;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->mergeList(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 4
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p1, :cond_90

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_f

    .line 14
    goto/16 :goto_90

    .line 16
    :cond_f
    const-wide/16 v1, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v5, v4

    .line 21
    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result v6

    .line 25
    if-ge v3, v6, :cond_90

    .line 27
    if-nez v3, :cond_4a

    .line 29
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v4, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 45
    if-nez v4, :cond_34

    .line 47
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 50
    move-result-object v4

    .line 51
    iput-object v4, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 53
    :cond_34
    iget-object v4, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 55
    invoke-static {v2, v1, v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileGroupItem(Ljava/util/List;Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/apptag/AppScanConfigManager;)Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 66
    move-result-wide v5

    .line 67
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    move-object v4, v1

    .line 71
    move-wide v9, v5

    .line 72
    move-object v5, v2

    .line 73
    move-wide v1, v9

    .line 74
    goto :goto_8d

    .line 75
    :cond_4a
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 81
    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_70

    .line 95
    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 102
    move-result-wide v7

    .line 103
    invoke-static {v1, v2, v7, v8}, Lcom/android/fileexplorer/apptag/FileUtils;->isInSameGroupTime(JJ)Z

    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_70

    .line 109
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_8d

    .line 113
    :cond_70
    new-instance v1, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 123
    invoke-static {v1, v6, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileGroupItem(Ljava/util/List;Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/apptag/AppScanConfigManager;)Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 134
    move-result-wide v4

    .line 135
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    move-wide v9, v4

    .line 139
    move-object v5, v1

    .line 140
    move-wide v1, v9

    .line 141
    move-object v4, v6

    .line 142
    :goto_8d
    add-int/lit8 v3, v3, 0x1

    .line 144
    goto :goto_14

    .line 145
    :cond_90
    :goto_90
    return-object v0
.end method

.method private createGroupKey(Ljava/lang/String;JJI)J
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "st"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    const-string p2, "p"

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, "et"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    const-string p1, "ft"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 45
    move-result p1

    .line 46
    int-to-long p1, p1

    .line 47
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

    .line 1
    if-eqz p1, :cond_29

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_29

    .line 10
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    :goto_f
    if-ltz v0, :cond_29

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 24
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 30
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->isPathIgnore(Ljava/lang/String;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_26

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    :cond_26
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_f

    .line 42
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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemByFileItems(Ljava/util/List;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_71

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_11

    .line 17
    goto :goto_71

    .line 18
    :cond_11
    new-instance v1, Ljava/util/HashMap;

    .line 20
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3c

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 39
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1a

    .line 49
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    goto :goto_1a

    .line 61
    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p1

    .line 70
    :cond_45
    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_70

    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 82
    if-eqz v2, :cond_45

    .line 84
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_5e

    .line 94
    goto :goto_45

    .line 95
    :cond_5e
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_45

    .line 109
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_45

    .line 113
    :cond_70
    return-object v0

    .line 114
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

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2e

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_2e

    .line 11
    :cond_a
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->DATE:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {p1, v1, v0, v2}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;ZZ)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    const-string v3, "MiFileListManager"

    .line 20
    const-string v4, "fullGroup DATE complete"

    .line 22
    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v4, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->APP:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    .line 27
    invoke-static {p1, v4, v0, v2}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;ZZ)Ljava/util/List;

    .line 30
    move-result-object v0

    .line 31
    const-string v2, "fullGroup APP complete"

    .line 33
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
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

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Lcom/android/fileexplorer/util/TimeCost;

    .line 5
    invoke-direct {v1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 8
    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 11
    const/4 v2, 0x6

    .line 12
    new-array v3, v2, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v4, v3, v5

    .line 19
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 21
    const/4 v6, 0x1

    .line 22
    aput-object v4, v3, v6

    .line 24
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 26
    const/4 v6, 0x2

    .line 27
    aput-object v4, v3, v6

    .line 29
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 31
    const/4 v6, 0x3

    .line 32
    aput-object v4, v3, v6

    .line 34
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 36
    const/4 v6, 0x4

    .line 37
    aput-object v4, v3, v6

    .line 39
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 41
    const/4 v6, 0x5

    .line 42
    aput-object v4, v3, v6

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getLastScanId()I

    .line 52
    move-result v6

    .line 53
    iget-object v7, v0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mSysMediaStoreHelper:Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;

    .line 55
    invoke-virtual {v7}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->getMaxID()I

    .line 58
    move-result v7

    .line 59
    move v8, v5

    .line 60
    :goto_3b
    if-ge v8, v2, :cond_51

    .line 62
    aget-object v9, v3, v8

    .line 64
    invoke-direct {v0, v9, v6}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllMediasFromSysDb(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)Ljava/util/List;

    .line 67
    move-result-object v9

    .line 68
    if-eqz v9, :cond_4e

    .line 70
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 73
    move-result v10

    .line 74
    if-nez v10, :cond_4e

    .line 76
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_4e
    add-int/lit8 v8, v8, 0x1

    .line 81
    goto :goto_3b

    .line 82
    :cond_51
    const-string v2, "MiFileListManager, getItemsFromDb end Time: "

    .line 84
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const-string v3, "lastScanID = "

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v3, ", currentMaxID = "

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    const-string v3, "MiFileListManager"

    .line 114
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    .line 119
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    const/16 v8, 0x1e

    .line 126
    if-gt v6, v8, :cond_130

    .line 128
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 131
    move-result-object v6

    .line 132
    const-string v8, "mounted"

    .line 134
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_130

    .line 140
    new-instance v6, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;

    .line 142
    sget-object v8, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 147
    move-result-object v9

    .line 148
    invoke-virtual {v9}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getBlackDirList()Ljava/util/List;

    .line 151
    move-result-object v9

    .line 152
    invoke-direct {v6, v8, v9}, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;-><init>([Ljava/lang/String;Ljava/util/List;)V

    .line 155
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 158
    move-result-object v8

    .line 159
    invoke-virtual {v8}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getScanPathList()Ljava/util/List;

    .line 162
    move-result-object v8

    .line 163
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 166
    move-result-object v8

    .line 167
    :cond_a6
    :goto_a6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    move-result v9

    .line 171
    if-eqz v9, :cond_130

    .line 173
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    move-result-object v9

    .line 177
    check-cast v9, Ljava/lang/String;

    .line 179
    const/4 v10, 0x0

    .line 180
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 183
    move-result-object v11

    .line 184
    invoke-virtual {v11, v9}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getConfigForPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 187
    move-result-object v11

    .line 188
    if-eqz v11, :cond_df

    .line 190
    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    .line 193
    move-result-object v12

    .line 194
    if-eqz v12, :cond_df

    .line 196
    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    .line 199
    move-result-object v12

    .line 200
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 203
    move-result-wide v12

    .line 204
    invoke-static {v12, v13}, Lcom/android/fileexplorer/util/SpecialUtils;->isWechatTempVideo(J)Z

    .line 207
    move-result v12

    .line 208
    if-nez v12, :cond_123

    .line 210
    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    .line 213
    move-result-object v11

    .line 214
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 217
    move-result-wide v11

    .line 218
    invoke-static {v11, v12}, Lcom/android/fileexplorer/util/SpecialUtils;->isWechatVideo(J)Z

    .line 221
    move-result v11

    .line 222
    if-nez v11, :cond_123

    .line 224
    :cond_df
    const-string v11, "com.unnoo.quan"

    .line 226
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 229
    move-result v11

    .line 230
    if-eqz v11, :cond_11f

    .line 232
    invoke-static {v9}, Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil;->isZSXQParentDir(Ljava/lang/String;)Z

    .line 235
    move-result v11

    .line 236
    if-eqz v11, :cond_11f

    .line 238
    invoke-static {}, Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil;->getZSXQDocDir()[Ljava/lang/String;

    .line 241
    move-result-object v9

    .line 242
    if-eqz v9, :cond_123

    .line 244
    array-length v11, v9

    .line 245
    move v12, v5

    .line 246
    :goto_f5
    if-ge v12, v11, :cond_123

    .line 248
    aget-object v13, v9, v12

    .line 250
    new-instance v14, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    const-string v15, "zsxq child = "

    .line 257
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v14

    .line 267
    invoke-static {v3, v14}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-direct {v0, v13, v6, v5}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesInDir(Ljava/lang/String;Ljava/io/FilenameFilter;Z)Ljava/util/List;

    .line 273
    move-result-object v13

    .line 274
    if-eqz v13, :cond_11c

    .line 276
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 279
    move-result v14

    .line 280
    if-nez v14, :cond_11c

    .line 282
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 285
    :cond_11c
    add-int/lit8 v12, v12, 0x1

    .line 287
    goto :goto_f5

    .line 288
    :cond_11f
    invoke-direct {v0, v9, v6, v5}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesInDir(Ljava/lang/String;Ljava/io/FilenameFilter;Z)Ljava/util/List;

    .line 291
    move-result-object v10

    .line 292
    :cond_123
    if-eqz v10, :cond_a6

    .line 294
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 297
    move-result v9

    .line 298
    if-nez v9, :cond_a6

    .line 300
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 303
    goto/16 :goto_a6

    .line 305
    :cond_130
    const-string v3, "MiFileListManager, dirFileList  size:"

    .line 307
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 314
    move-result v5

    .line 315
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    const-string v5, ", getDirFileList time: "

    .line 320
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 330
    new-instance v3, Ljava/util/ArrayList;

    .line 332
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 338
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 341
    move-result v4

    .line 342
    if-nez v4, :cond_15a

    .line 344
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    :cond_15a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 350
    move-result v2

    .line 351
    if-nez v2, :cond_16b

    .line 353
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getLastScanId()I

    .line 356
    move-result v2

    .line 357
    const/4 v4, -0x1

    .line 358
    if-eq v2, v4, :cond_16b

    .line 360
    invoke-direct {v0, v3}, Lcom/android/fileexplorer/apptag/MiFileListManager;->findFileItemNotExitDb(Ljava/util/List;)Ljava/util/List;

    .line 363
    move-result-object v3

    .line 364
    :cond_16b
    const-string v2, "MiFileListManager, findFileItemNotExitDb dirFileList size:"

    .line 366
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    move-result-object v2

    .line 370
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 373
    move-result v4

    .line 374
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    const-string v4, ", loadFileItemsFromDb time: "

    .line 379
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 389
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 392
    move-result v2

    .line 393
    if-eqz v2, :cond_18b

    .line 395
    return v7

    .line 396
    :cond_18b
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 398
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 401
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 404
    move-result v4

    .line 405
    const/16 v5, 0x64

    .line 407
    if-le v4, v5, :cond_1a1

    .line 409
    new-instance v4, Lcom/android/fileexplorer/apptag/MiFileListManager$3;

    .line 411
    invoke-direct {v4, v0, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager$3;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 414
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/CollectionUtils;->partitionTask(Ljava/util/List;Lcom/android/fileexplorer/util/CollectionUtils$Task;)V

    .line 417
    goto :goto_1a4

    .line 418
    :cond_1a1
    invoke-direct {v0, v3, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->mergeList(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 421
    :goto_1a4
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 424
    move-result v3

    .line 425
    if-nez v3, :cond_1b3

    .line 427
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 430
    move-result-object v2

    .line 431
    move-object/from16 v3, p1

    .line 433
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 436
    :cond_1b3
    const-string v2, "MiFileListManager, getAllFileItems end Time: "

    .line 438
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 441
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

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_d

    .line 13
    return-object v1

    .line 14
    :cond_d
    invoke-virtual {v0, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_14

    .line 20
    return-object v1

    .line 21
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    array-length v1, p1

    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    :goto_1c
    if-ge v3, v1, :cond_74

    .line 31
    aget-object v4, p1, v3

    .line 33
    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_27

    .line 39
    goto :goto_71

    .line 40
    :cond_27
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_3e

    .line 46
    if-eqz p3, :cond_71

    .line 48
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    const/4 v5, 0x1

    .line 53
    invoke-direct {p0, v4, p2, v5}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesInDir(Ljava/lang/String;Ljava/io/FilenameFilter;Z)Ljava/util/List;

    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_71

    .line 59
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    goto :goto_71

    .line 63
    :cond_3e
    new-instance v5, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 65
    invoke-direct {v5}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 75
    const-wide/16 v6, -0x1

    .line 77
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/FileItem;->setOcrStatus(Ljava/lang/Integer;)V

    .line 91
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryType(Ljava/io/File;)Lcom/android/fileexplorer/apptag/FileUtils$Categroy;

    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_6e

    .line 97
    iget v6, v4, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    .line 99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 106
    iget-object v4, v4, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->subFileType:Ljava/lang/String;

    .line 108
    invoke-virtual {v5, v4}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    .line 111
    :cond_6e
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_71
    :goto_71
    add-int/lit8 v3, v3, 0x1

    .line 116
    goto :goto_1c

    .line 117
    :cond_74
    return-object v0
.end method

.method private getAllFilesList(Z)I
    .registers 8

    .line 1
    const-string p1, "MiFileListManager"

    .line 3
    const-string v0, "getAllFilesList: start"

    .line 5
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/android/fileexplorer/util/TimeCost;

    .line 10
    invoke-direct {p1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 16
    const-string v0, "MiFileListManager, getAllFilesList loadAppScanConfig time: "

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFileItems(Ljava/util/List;)I

    .line 29
    move-result v1

    .line 30
    const-string v2, "MiFileListManager, getAllFileItems newFileItems size:"

    .line 32
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, ", getAllFilesList getAllFileItems time: "

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->loadAppScanConfig()V

    .line 63
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getLastScanId()I

    .line 66
    move-result v3

    .line 67
    const/4 v4, -0x1

    .line 68
    if-ne v3, v4, :cond_63

    .line 70
    invoke-direct {p0, v0, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->fullGroup(Ljava/util/List;Ljava/util/List;)I

    .line 73
    move-result v3

    .line 74
    const-string v4, "MiFileListManager, fullGroup newFileItems size:"

    .line 76
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    move-result v5

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v5, ", getAllFilesList fullGroup finish time: "

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {p1, v4}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 99
    goto :goto_80

    .line 100
    :cond_63
    invoke-direct {p0, v0, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->group(Ljava/util/List;Ljava/util/List;)I

    .line 103
    move-result v3

    .line 104
    const-string v4, "MiFileListManager, group newFileItems size:"

    .line 106
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 113
    move-result v5

    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v5, ", getAllFilesList group finish time: "

    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {p1, v4}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 129
    :goto_80
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_8c

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_94

    .line 141
    :cond_8c
    invoke-direct {p0, v0, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->updateGroupDetails(Ljava/util/List;Ljava/util/List;)V

    .line 144
    const-string v0, "MiFileListManager, getAllFilesList updateGroupDetails time: "

    .line 146
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 149
    :cond_94
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setLastScanID(I)V

    .line 152
    const-string v0, "MiFileListManager, getAllFilesList step1 time: "

    .line 154
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    .line 164
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 166
    invoke-static {v0}, Lcom/android/fileexplorer/util/SettingsUtils;->setApptagListInited(Ljava/lang/Boolean;)V

    .line 169
    new-instance v0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;

    .line 171
    invoke-direct {v0, p0, v3}, Lcom/android/fileexplorer/apptag/MiFileListManager$2;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager;I)V

    .line 174
    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 177
    const-string v0, "MiFileListManagergetAllFilesList all finish"

    .line 179
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->releaseDbMap()V

    .line 185
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mSysMediaStoreHelper:Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;

    .line 3
    sget-object v1, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->Other:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 5
    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;->dateAsc:Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;

    .line 7
    const/4 v3, 0x0

    .line 8
    const-wide/16 v5, 0x0

    .line 10
    move-object v2, p1

    .line 11
    move v7, p2

    .line 12
    invoke-virtual/range {v0 .. v7}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->query(Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Ljava/util/List;Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;JI)Landroid/database/Cursor;

    .line 15
    move-result-object p2

    .line 16
    if-nez p2, :cond_13

    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    const-string v1, "getAllMediasFromSysDb: cursor.count = "

    .line 27
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v1

    .line 31
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v2, ", category = "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    const-string v2, "MiFileListManager"

    .line 56
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_3a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_80

    .line 65
    new-instance v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 67
    invoke-direct {v1}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 74
    move-result-wide v2

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    const-string v3, ".MiDrive"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_5f

    .line 95
    goto :goto_3a

    .line 96
    :cond_5f
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x3

    .line 100
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 103
    move-result-wide v2

    .line 104
    const-wide/16 v4, 0x3e8

    .line 106
    mul-long/2addr v2, v4

    .line 107
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 114
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 117
    move-result v2

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    goto :goto_3a

    .line 129
    :cond_80
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 132
    return-object v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mInstance:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/apptag/MiFileListManager;->mInstance:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/apptag/MiFileListManager;->mInstance:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mInstance:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 26
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

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    if-nez p1, :cond_11

    .line 17
    return-object v0

    .line 18
    :cond_11
    :goto_11
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_43

    .line 24
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    move-result v3

    .line 28
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/List;

    .line 34
    if-nez v3, :cond_24

    .line 36
    goto :goto_40

    .line 37
    :cond_24
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v3

    .line 41
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_40

    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 53
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_28

    .line 65
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_11

    .line 68
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

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_34

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_34

    .line 11
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->DATE:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-static {p1, v2, v0, v3}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;ZZ)Ljava/util/List;

    .line 22
    move-result-object v2

    .line 23
    sget-object v4, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->APP:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    .line 25
    invoke-static {p1, v4, v0, v3}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;ZZ)Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2f

    .line 41
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->mergeGroupsByKey(Ljava/util/List;)Ljava/util/List;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_2f
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 51
    move-result p1

    .line 52
    return p1

    .line 53
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

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    if-eqz p1, :cond_39

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
    if-eqz v1, :cond_39

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 24
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_b

    .line 30
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/util/List;

    .line 44
    if-nez v3, :cond_32

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    :cond_32
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    goto :goto_b

    .line 58
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

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->classifyFileByGroup(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private loadAppScanConfig()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 7
    const-string v1, "ver_code"

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getVersion(Ljava/lang/String;)J

    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 15
    const-string v3, "black_ver_code"

    .line 17
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getVersion(Ljava/lang/String;)J

    .line 20
    move-result-wide v2

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getAppConfigVersion()J

    .line 24
    move-result-wide v4

    .line 25
    cmp-long v4, v0, v4

    .line 27
    if-nez v4, :cond_29

    .line 29
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getBlackDirConfigVersion()J

    .line 32
    move-result-wide v4

    .line 33
    cmp-long v4, v2, v4

    .line 35
    if-eqz v4, :cond_25

    .line 37
    goto :goto_29

    .line 38
    :cond_25
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->updateFileItems()V

    .line 41
    goto :goto_49

    .line 42
    :cond_29
    :goto_29
    iget-object v4, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 44
    invoke-virtual {v4}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->clear()V

    .line 47
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteAll()V

    .line 54
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lcom/android/fileexplorer/apptag/AppTagHelper;->deleteAll()V

    .line 61
    invoke-static {}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/ContentTagHelper;

    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->deleteAll()V

    .line 68
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/SettingManager;->setAppConfigVersion(J)V

    .line 71
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/SettingManager;->setBlackDirConfigVersion(J)V

    .line 74
    :goto_49
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 76
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadScanConfig()V

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 81
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadScanConfigFromServer()V

    .line 84
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mDBFileGroupMap:Ljava/util/Map;

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAllFileGroups()Ljava/util/List;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "MiFileListManagerloadGroupsFromDb: "

    .line 26
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 29
    if-eqz v1, :cond_38

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_38

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 47
    iget-object v3, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mDBFileGroupMap:Ljava/util/Map;

    .line 49
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    goto :goto_22

    .line 57
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p1, :cond_5d

    .line 8
    if-eqz p2, :cond_5d

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_35

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 34
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_15

    .line 40
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    const-string v3, ""

    .line 50
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    goto :goto_15

    .line 54
    :cond_35
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p1

    .line 58
    :cond_39
    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_67

    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 70
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_39

    .line 76
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_39

    .line 90
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_39

    .line 94
    :cond_5d
    if-eqz p1, :cond_62

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_62
    if-eqz p2, :cond_67

    .line 101
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    if-eqz p1, :cond_5f

    .line 13
    const/4 v2, 0x0

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v4

    .line 24
    if-ge p1, v4, :cond_5f

    .line 26
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 32
    if-eqz v2, :cond_5b

    .line 34
    invoke-static {v2, v4}, Lcom/android/fileexplorer/apptag/FileUtils;->canGroupMerge(Lcom/android/fileexplorer/apptag/FileItemAppGroup;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Z

    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_5b

    .line 40
    iget-wide v5, v4, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupId:J

    .line 42
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_55

    .line 55
    invoke-virtual {v4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v4

    .line 63
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_55

    .line 69
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 75
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/FileItem;->setGroupName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_3e

    .line 86
    :cond_55
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    add-int/lit8 p1, p1, -0x1

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move-object v2, v4

    .line 93
    :goto_5c
    add-int/lit8 p1, p1, 0x1

    .line 95
    goto :goto_13

    .line 96
    :cond_5f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_6c

    .line 102
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileGroupInTx(Ljava/util/List;)V

    .line 109
    :cond_6c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_79

    .line 115
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->insertOrReplaceFileItems(Ljava/util/List;)V

    .line 122
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_35

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_31

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 38
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    goto :goto_9

    .line 50
    :cond_31
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    goto :goto_9

    .line 54
    :cond_35
    new-instance p1, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_149

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 17
    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_4

    .line 29
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileId()Ljava/lang/Long;

    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_4

    .line 35
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_31

    .line 49
    goto :goto_4

    .line 50
    :cond_31
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v1

    .line 58
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 60
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 63
    move-result v2

    .line 64
    if-eq v1, v2, :cond_6a

    .line 66
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 68
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 71
    move-result v2

    .line 72
    if-eq v1, v2, :cond_6a

    .line 74
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 76
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 79
    move-result v2

    .line 80
    if-eq v1, v2, :cond_6a

    .line 82
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 84
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 87
    move-result v2

    .line 88
    if-eq v1, v2, :cond_6a

    .line 90
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 92
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 95
    move-result v2

    .line 96
    if-eq v1, v2, :cond_6a

    .line 98
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 100
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 103
    move-result v2

    .line 104
    if-eq v1, v2, :cond_6a

    .line 106
    goto :goto_4

    .line 107
    :cond_6a
    new-instance v1, Ljava/io/File;

    .line 109
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileId()Ljava/lang/Long;

    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_da

    .line 122
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileId()Ljava/lang/Long;

    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 129
    move-result-wide v2

    .line 130
    const-wide/16 v4, -0x1

    .line 132
    cmp-long v2, v2, v4

    .line 134
    if-nez v2, :cond_da

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 157
    move-result-wide v2

    .line 158
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 168
    move-result-wide v2

    .line 169
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 183
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    .line 190
    const/4 v2, 0x0

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setOcrStatus(Ljava/lang/Integer;)V

    .line 198
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryType(Ljava/io/File;)Lcom/android/fileexplorer/apptag/FileUtils$Categroy;

    .line 201
    move-result-object v2

    .line 202
    if-eqz v2, :cond_10e

    .line 204
    iget v3, v2, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    .line 206
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 213
    iget-object v2, v2, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->subFileType:Ljava/lang/String;

    .line 215
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    .line 218
    goto :goto_10e

    .line 219
    :cond_da
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 222
    move-result-object v2

    .line 223
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Util;->canReadCompat(Ljava/io/File;Ljava/lang/String;)Z

    .line 226
    move-result v2

    .line 227
    if-nez v2, :cond_e6

    .line 229
    goto/16 :goto_4

    .line 231
    :cond_e6
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 241
    move-result-object v2

    .line 242
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 263
    move-result-wide v2

    .line 264
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    .line 271
    :cond_10e
    :goto_10e
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 278
    move-result-wide v2

    .line 279
    const-wide/16 v4, 0x0

    .line 281
    cmp-long v2, v2, v4

    .line 283
    if-nez v2, :cond_13c

    .line 285
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 288
    move-result-wide v1

    .line 289
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 296
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 303
    move-result-wide v1

    .line 304
    cmp-long v1, v1, v4

    .line 306
    if-nez v1, :cond_13c

    .line 308
    const-string v0, "MiFileListManager"

    .line 310
    const-string v1, "fileTime == 0 lastModified get invalid: "

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    goto/16 :goto_4

    .line 317
    :cond_13c
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    goto/16 :goto_4

    .line 330
    :cond_149
    return-void
.end method

.method private releaseDbMap()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mDBFileGroupMap:Ljava/util/Map;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mDBFileGroupMap:Ljava/util/Map;

    .line 11
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

    .line 1
    if-eqz p1, :cond_a

    .line 3
    new-instance v0, Lcom/android/fileexplorer/apptag/MiFileListManager$4;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager$4;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager;)V

    .line 8
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    :cond_a
    return-void
.end method

.method private updateFileItems()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadConfigStateDisable()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_23

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 28
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_f

    .line 36
    :cond_23
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->delFileGroupAndFileItemsByDirId(Ljava/util/List;)V

    .line 43
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

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_16

    .line 4
    :try_start_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    goto :goto_16

    .line 11
    :cond_a
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->updateGroupDetails(Ljava/util/List;Ljava/util/List;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1

    .line 23
    :cond_16
    :goto_16
    monitor-exit p0

    .line 24
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "MiFileListManager"

    .line 4
    const-string v1, "updateOrInsertFileGroup"

    .line 6
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_11a

    .line 9
    if-nez p1, :cond_c

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_109

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 39
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 42
    move-result-object v3

    .line 43
    iget-object v5, v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 45
    iget-object v4, v2, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupStartTime:Ljava/lang/Long;

    .line 47
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 50
    move-result-wide v6

    .line 51
    iget-object v4, v2, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 56
    move-result-wide v8

    .line 57
    iget-object v4, v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 59
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 62
    move-result v10

    .line 63
    move-object v4, p0

    .line 64
    invoke-direct/range {v4 .. v10}, Lcom/android/fileexplorer/apptag/MiFileListManager;->createGroupKey(Ljava/lang/String;JJI)J

    .line 67
    move-result-wide v4

    .line 68
    invoke-virtual {p2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 74
    const/4 v5, 0x0

    .line 75
    if-eqz v4, :cond_af

    .line 77
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v2

    .line 81
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_83

    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 93
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setAppName(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setGroupName(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag1()Ljava/lang/String;

    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag1(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag2()Ljava/lang/String;

    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag2(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag3()Ljava/lang/String;

    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag3(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    goto :goto_50

    .line 132
    :cond_83
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 138
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 145
    move-result-wide v6

    .line 146
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 153
    move-result-wide v8

    .line 154
    cmp-long v2, v6, v8

    .line 156
    if-lez v2, :cond_1a

    .line 158
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 164
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupCreateTime(Ljava/lang/Long;)V

    .line 171
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    goto/16 :goto_1a

    .line 176
    :cond_af
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->convert2FileGroup(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 179
    move-result-object v2

    .line 180
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    move-result-object v4

    .line 184
    :goto_b7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_f5

    .line 190
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    move-result-object v6

    .line 194
    check-cast v6, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 196
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setAppName(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    .line 206
    move-result-object v7

    .line 207
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setGroupName(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag1()Ljava/lang/String;

    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag1(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag2()Ljava/lang/String;

    .line 220
    move-result-object v7

    .line 221
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag2(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag3()Ljava/lang/String;

    .line 227
    move-result-object v7

    .line 228
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag3(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 234
    move-result-wide v7

    .line 235
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v6, v7}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 242
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    goto :goto_b7

    .line 246
    :cond_f5
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->DATE:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    .line 248
    invoke-static {v3, v2, v5}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;Z)Ljava/util/List;

    .line 251
    move-result-object v2

    .line 252
    sget-object v4, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->APP:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    .line 254
    invoke-static {v3, v4, v5}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;Z)Ljava/util/List;

    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 264
    goto/16 :goto_1a

    .line 266
    :cond_109
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->loadGroupsFromDb()Ljava/util/List;

    .line 269
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 272
    move-result-object p1

    .line 273
    iget-object p2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mDBFileGroupMap:Ljava/util/Map;

    .line 275
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->replaceFileItemsAndGroups(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 278
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->releaseDbMap()V
    :try_end_118
    .catchall {:try_start_c .. :try_end_118} :catchall_11a

    .line 281
    monitor-exit p0

    .line 282
    return-void

    .line 283
    :catchall_11a
    move-exception p1

    .line 284
    monitor-exit p0

    .line 285
    throw p1
.end method


# virtual methods
.method public getAllFilesListAsync(Z)V
    .registers 4

    .line 1
    const-string v0, "MiFileListManager"

    .line 3
    const-string v1, "getAllFilesListAsync: "

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;

    .line 10
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/apptag/MiFileListManager$1;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager;Z)V

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getSingleExecutors()Ljava/util/concurrent/ExecutorService;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 20
    return-void
.end method

.method public getLastScanTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mLastScanTime:J

    .line 3
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

    .line 1
    if-eqz p1, :cond_2e

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2e

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 15
    :goto_e
    if-ltz v0, :cond_2e

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 23
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_28

    .line 29
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const-string v2, "/."

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2b

    .line 41
    :cond_28
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 44
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    .line 46
    goto :goto_e

    .line 47
    :cond_2e
    if-eqz p1, :cond_4e

    .line 49
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_37

    .line 55
    goto :goto_4e

    .line 56
    :cond_37
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->group(Ljava/util/List;Ljava/util/List;)I

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4b

    .line 70
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_4e

    .line 76
    :cond_4b
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->updateGroupDetails(Ljava/util/List;Ljava/util/List;)V

    .line 79
    :cond_4e
    :goto_4e
    return-void
.end method

.method public isScanning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public registerOnAppTagScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnAppTagScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnAppTagScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    return-void
.end method

.method public registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    return-void
.end method

.method public release()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->releaseDbMap()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mHandler:Landroid/os/Handler;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 15
    return-void
.end method

.method public resetLastScanTime()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mLastScanTime:J

    .line 5
    return-void
.end method

.method public unRegisterOnAppTagScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnAppTagScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public unRegisterOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager;->mOnScanListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method
