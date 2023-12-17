.class public Lcom/android/fileexplorer/model/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageUtil"

.field private static final TYPE_EMULATED:I = 0x2

.field private static final TYPE_PUBLIC:I

.field public static storageListCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/model/StorageUtil;->storageListCache:Ljava/util/List;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAvailableStorage()V
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/StorageUtil;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "updateAvailableStorage: "

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Lcom/android/fileexplorer/model/StorageUtil;->storageListCache:Ljava/util/List;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    sget-object v1, Lcom/android/fileexplorer/model/StorageUtil;->storageListCache:Ljava/util/List;

    .line 13
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    .line 20
    throw v1
.end method

.method private static getMaintenanceModeStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->isMaintenanceModeEnable()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_39

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getMaintenanceModeId()I

    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory(I)Ljava/io/File;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_39

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_39

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_39

    .line 29
    new-instance v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const v2, 0x7f110403

    .line 38
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    const-string v3, "mounted"

    .line 44
    invoke-direct {v1, v0, v2, v3}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/model/StorageInfo;->setVisible(Z)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/model/StorageInfo;->setPrimary(Z)V

    .line 54
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/model/StorageInfo;->setMaintenanceMode(Z)V

    .line 57
    return-object v1

    .line 58
    :cond_39
    const/4 v0, 0x0

    .line 59
    return-object v0
.end method

.method public static getVolumePaths()[Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "storage"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :try_start_11
    const-class v1, Landroid/os/storage/StorageManager;

    .line 20
    const-string v2, "getVolumePaths"

    .line 22
    const/4 v3, 0x0

    .line 23
    new-array v4, v3, [Ljava/lang/Class;

    .line 25
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    new-array v2, v3, [Ljava/lang/Object;

    .line 35
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, [Ljava/lang/String;

    .line 41
    if-eqz v0, :cond_48

    .line 43
    array-length v1, v0

    .line 44
    :goto_2b
    if-ge v3, v1, :cond_48

    .line 46
    aget-object v2, v0, v3

    .line 48
    const-string v4, "wizard"

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v6, "volumn path: "

    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v4, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_45} :catch_49

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 72
    goto :goto_2b

    .line 73
    :cond_48
    return-object v0

    .line 74
    :catch_49
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const/4 v0, 0x0

    .line 79
    return-object v0
.end method

.method public static getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->isXSpaceEnable()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_37

    .line 7
    const/16 v0, 0x3e7

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory(I)Ljava/io/File;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_37

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_37

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_37

    .line 27
    new-instance v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const v2, 0x7f110400

    .line 36
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    const-string v3, "mounted"

    .line 42
    invoke-direct {v1, v0, v2, v3}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/model/StorageInfo;->setVisible(Z)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/model/StorageInfo;->setPrimary(Z)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/model/StorageInfo;->setXspace(Z)V

    .line 55
    return-object v1

    .line 56
    :cond_37
    const/4 v0, 0x0

    .line 57
    return-object v0
.end method

.method public static listAvailableStorage()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/StorageUtil;->storageListCache:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/model/StorageUtil;->storageListCache:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_96

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    const/16 v2, 0x1c

    .line 16
    if-lt v1, v2, :cond_16

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->listAvailableStorageCompat28()Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->listAvailableStorageCompat23()Ljava/util/List;

    .line 26
    move-result-object v1

    .line 27
    :goto_1a
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_2a

    .line 33
    if-nez v1, :cond_27

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    :cond_27
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_2a
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getMaintenanceModeStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_76

    .line 49
    sget-object v3, Lcom/android/fileexplorer/model/StorageUtil;->TAG:Ljava/lang/String;

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v5, "maintenanceModeStorageInfo path:"

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-nez v1, :cond_51

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :cond_51
    const/4 v3, 0x0

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v4

    .line 87
    :cond_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_71

    .line 93
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lcom/android/fileexplorer/model/StorageInfo;

    .line 99
    invoke-virtual {v5}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_56

    .line 113
    const/4 v3, 0x1

    .line 114
    :cond_71
    if-nez v3, :cond_76

    .line 116
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_76
    sget-object v2, Lcom/android/fileexplorer/model/StorageUtil;->storageListCache:Ljava/util/List;

    .line 121
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    sget-object v2, Lcom/android/fileexplorer/model/StorageUtil;->TAG:Ljava/lang/String;

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    const-string v4, "listAvailableStorage cache unUsed ："

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 139
    move-result v4

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v3

    .line 147
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    goto :goto_b7

    .line 151
    :cond_96
    new-instance v1, Ljava/util/ArrayList;

    .line 153
    sget-object v2, Lcom/android/fileexplorer/model/StorageUtil;->storageListCache:Ljava/util/List;

    .line 155
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    sget-object v2, Lcom/android/fileexplorer/model/StorageUtil;->TAG:Ljava/lang/String;

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    const-string v4, "listAvailableStorage storage size ："

    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 173
    move-result v4

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v3

    .line 181
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_b7
    monitor-exit v0

    .line 185
    return-object v1

    .line 186
    :catchall_b9
    move-exception v1

    .line 187
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_3 .. :try_end_bb} :catchall_b9

    .line 188
    throw v1
.end method

.method private static listAvailableStorageCompat()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "storage"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    const/4 v2, 0x0

    .line 19
    :try_start_12
    new-array v3, v2, [Ljava/lang/Class;

    .line 21
    const-class v4, Landroid/os/storage/StorageManager;

    .line 23
    const-string v5, "getVolumeList"

    .line 25
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    new-array v5, v2, [Ljava/lang/Object;

    .line 35
    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, [Ljava/lang/Object;

    .line 41
    if-eqz v3, :cond_e7

    .line 43
    array-length v5, v3

    .line 44
    move v6, v2

    .line 45
    :goto_2c
    if-ge v6, v5, :cond_e7

    .line 47
    aget-object v7, v3, v6

    .line 49
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    move-result-object v8

    .line 53
    const-string v9, "getPath"

    .line 55
    new-array v10, v2, [Ljava/lang/Class;

    .line 57
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    move-result-object v8

    .line 61
    new-array v9, v2, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v8

    .line 67
    check-cast v8, Ljava/lang/String;

    .line 69
    new-instance v9, Ljava/io/File;

    .line 71
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_df

    .line 80
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 83
    move-result v10

    .line 84
    if-eqz v10, :cond_df

    .line 86
    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_df

    .line 92
    const-class v9, Landroid/os/storage/StorageManager;

    .line 94
    const-string v10, "getVolumeState"

    .line 96
    new-array v11, v4, [Ljava/lang/Class;

    .line 98
    const-class v12, Ljava/lang/String;

    .line 100
    aput-object v12, v11, v2

    .line 102
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 105
    move-result-object v9

    .line 106
    new-array v10, v4, [Ljava/lang/Object;

    .line 108
    aput-object v8, v10, v2

    .line 110
    invoke-virtual {v9, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-result-object v9

    .line 114
    check-cast v9, Ljava/lang/String;

    .line 116
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    move-result-object v10

    .line 120
    const-string v11, "getDescription"

    .line 122
    new-array v12, v4, [Ljava/lang/Class;

    .line 124
    const-class v13, Landroid/content/Context;

    .line 126
    aput-object v13, v12, v2

    .line 128
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 131
    move-result-object v10

    .line 132
    new-array v11, v4, [Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 137
    move-result-object v12

    .line 138
    aput-object v12, v11, v2

    .line 140
    invoke-virtual {v10, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-result-object v10

    .line 144
    check-cast v10, Ljava/lang/String;

    .line 146
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    move-result-object v11

    .line 150
    const-string v12, "isPrimary"

    .line 152
    new-array v13, v2, [Ljava/lang/Class;

    .line 154
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 157
    move-result-object v11

    .line 158
    new-array v12, v2, [Ljava/lang/Object;

    .line 160
    invoke-virtual {v11, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    move-result-object v11

    .line 164
    check-cast v11, Ljava/lang/Boolean;

    .line 166
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    move-result v11

    .line 170
    if-eqz v11, :cond_ba

    .line 172
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 175
    move-result-object v12

    .line 176
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 179
    move-result-object v12

    .line 180
    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 183
    move-result v12

    .line 184
    if-nez v12, :cond_ba

    .line 186
    goto :goto_df

    .line 187
    :cond_ba
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    move-result-object v12

    .line 191
    const-string v13, "getUuid"

    .line 193
    new-array v14, v2, [Ljava/lang/Class;

    .line 195
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 198
    move-result-object v12

    .line 199
    new-array v13, v2, [Ljava/lang/Object;

    .line 201
    invoke-virtual {v12, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move-result-object v7

    .line 205
    check-cast v7, Ljava/lang/String;

    .line 207
    new-instance v12, Lcom/android/fileexplorer/model/StorageInfo;

    .line 209
    invoke-direct {v12, v8, v10, v9}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v12, v11}, Lcom/android/fileexplorer/model/StorageInfo;->setPrimary(Z)V

    .line 215
    invoke-virtual {v12, v7}, Lcom/android/fileexplorer/model/StorageInfo;->setUuid(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v12, v4}, Lcom/android/fileexplorer/model/StorageInfo;->setVisible(Z)V

    .line 221
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_df} :catch_e3

    .line 224
    :cond_df
    :goto_df
    add-int/lit8 v6, v6, 0x1

    .line 226
    goto/16 :goto_2c

    .line 228
    :catch_e3
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    :cond_e7
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 235
    return-object v1
.end method

.method private static listAvailableStorageCompat23()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "storage"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :try_start_11
    const-class v2, Landroid/os/storage/StorageManager;

    .line 20
    const-string v3, "getVolumes"

    .line 22
    const/4 v4, 0x0

    .line 23
    new-array v5, v4, [Ljava/lang/Class;

    .line 25
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    new-array v5, v4, [Ljava/lang/Object;

    .line 35
    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/List;

    .line 41
    if-eqz v0, :cond_1c0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v0

    .line 47
    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1c0

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-result-object v5

    .line 61
    const-string v6, "getType"

    .line 63
    new-array v7, v4, [Ljava/lang/Class;

    .line 65
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    move-result-object v5

    .line 69
    new-array v6, v4, [Ljava/lang/Object;

    .line 71
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/lang/Integer;

    .line 77
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 80
    move-result v5

    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    move-result-object v6

    .line 85
    const-string v7, "getPath"

    .line 87
    new-array v8, v4, [Ljava/lang/Class;

    .line 89
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    move-result-object v6

    .line 93
    new-array v7, v4, [Ljava/lang/Object;

    .line 95
    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Ljava/io/File;

    .line 101
    if-eqz v6, :cond_2e

    .line 103
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 106
    move-result-object v6

    .line 107
    new-instance v7, Ljava/io/File;

    .line 109
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    const/4 v6, 0x2

    .line 113
    if-eqz v5, :cond_74

    .line 115
    if-ne v5, v6, :cond_2e

    .line 117
    :cond_74
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_2e

    .line 123
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .line 126
    move-result v8

    .line 127
    if-eqz v8, :cond_2e

    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    move-result-object v8

    .line 133
    const-string v9, "getState"

    .line 135
    new-array v10, v4, [Ljava/lang/Class;

    .line 137
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 140
    move-result-object v8

    .line 141
    new-array v9, v4, [Ljava/lang/Object;

    .line 143
    invoke-virtual {v8, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-result-object v8

    .line 147
    check-cast v8, Ljava/lang/Integer;

    .line 149
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 152
    move-result v8

    .line 153
    const-string v9, "android.os.storage.VolumeInfo"

    .line 155
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 158
    move-result-object v9

    .line 159
    const-string v10, "getEnvironmentForState"

    .line 161
    new-array v11, v3, [Ljava/lang/Class;

    .line 163
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 165
    aput-object v12, v11, v4

    .line 167
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 170
    move-result-object v10

    .line 171
    new-array v11, v3, [Ljava/lang/Object;

    .line 173
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v8

    .line 177
    aput-object v8, v11, v4

    .line 179
    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-result-object v8

    .line 183
    check-cast v8, Ljava/lang/String;

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    move-result-object v9

    .line 189
    const-string v10, "getDescription"

    .line 191
    new-array v11, v4, [Ljava/lang/Class;

    .line 193
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 196
    move-result-object v9

    .line 197
    new-array v10, v4, [Ljava/lang/Object;

    .line 199
    invoke-virtual {v9, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    move-result-object v9

    .line 203
    check-cast v9, Ljava/lang/String;

    .line 205
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    move-result-object v10

    .line 209
    const-string v11, "getFsUuid"

    .line 211
    new-array v12, v4, [Ljava/lang/Class;

    .line 213
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 216
    move-result-object v10

    .line 217
    new-array v11, v4, [Ljava/lang/Object;

    .line 219
    invoke-virtual {v10, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-result-object v10

    .line 223
    check-cast v10, Ljava/lang/String;

    .line 225
    new-instance v11, Lcom/android/fileexplorer/model/StorageInfo;

    .line 227
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 230
    move-result-object v7

    .line 231
    invoke-direct {v11, v7, v9, v8}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-ne v5, v6, :cond_ed

    .line 236
    move v5, v3

    .line 237
    goto :goto_ee

    .line 238
    :cond_ed
    move v5, v4

    .line 239
    :goto_ee
    invoke-virtual {v11, v5}, Lcom/android/fileexplorer/model/StorageInfo;->setPrimary(Z)V

    .line 242
    invoke-virtual {v11, v10}, Lcom/android/fileexplorer/model/StorageInfo;->setUuid(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v11}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_fe

    .line 251
    invoke-virtual {v11, v3}, Lcom/android/fileexplorer/model/StorageInfo;->setVisible(Z)V

    .line 254
    goto :goto_119

    .line 255
    :cond_fe
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    move-result-object v5

    .line 259
    const-string v6, "isVisible"

    .line 261
    new-array v7, v4, [Ljava/lang/Class;

    .line 263
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 266
    move-result-object v5

    .line 267
    new-array v6, v4, [Ljava/lang/Object;

    .line 269
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-result-object v5

    .line 273
    check-cast v5, Ljava/lang/Boolean;

    .line 275
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 278
    move-result v5

    .line 279
    invoke-virtual {v11, v5}, Lcom/android/fileexplorer/model/StorageInfo;->setVisible(Z)V

    .line 282
    :goto_119
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    move-result-object v5

    .line 286
    const-string v6, "getDisk"

    .line 288
    new-array v7, v4, [Ljava/lang/Class;

    .line 290
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 293
    move-result-object v5

    .line 294
    new-array v6, v4, [Ljava/lang/Object;

    .line 296
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    move-result-object v2

    .line 300
    if-eqz v2, :cond_18a

    .line 302
    const-string v5, "android.os.storage.DiskInfo"

    .line 304
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 307
    move-result-object v5

    .line 308
    const-string v6, "isSd"

    .line 310
    new-array v7, v4, [Ljava/lang/Class;

    .line 312
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 315
    move-result-object v6

    .line 316
    new-array v7, v4, [Ljava/lang/Object;

    .line 318
    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    move-result-object v6

    .line 322
    check-cast v6, Ljava/lang/Boolean;

    .line 324
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 327
    move-result v6

    .line 328
    invoke-virtual {v11, v6}, Lcom/android/fileexplorer/model/StorageInfo;->setSd(Z)V

    .line 331
    const-string v6, "isUsb"

    .line 333
    new-array v7, v4, [Ljava/lang/Class;

    .line 335
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 338
    move-result-object v5

    .line 339
    new-array v6, v4, [Ljava/lang/Object;

    .line 341
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    move-result-object v2

    .line 345
    check-cast v2, Ljava/lang/Boolean;

    .line 347
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 350
    move-result v2

    .line 351
    invoke-virtual {v11, v2}, Lcom/android/fileexplorer/model/StorageInfo;->setUsb(Z)V

    .line 354
    invoke-virtual {v11}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    .line 357
    move-result v2

    .line 358
    if-eqz v2, :cond_176

    .line 360
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 363
    move-result-object v2

    .line 364
    const v5, 0x7f110405

    .line 367
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v11, v2}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 374
    goto :goto_18a

    .line 375
    :cond_176
    invoke-virtual {v11}, Lcom/android/fileexplorer/model/StorageInfo;->isSd()Z

    .line 378
    move-result v2

    .line 379
    if-eqz v2, :cond_18a

    .line 381
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 384
    move-result-object v2

    .line 385
    const v5, 0x7f110404

    .line 388
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v11, v2}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 395
    :cond_18a
    :goto_18a
    invoke-virtual {v11}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 398
    move-result v2

    .line 399
    if-eqz v2, :cond_1b7

    .line 401
    invoke-virtual {v11}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 404
    move-result-object v2

    .line 405
    if-eqz v2, :cond_1b7

    .line 407
    const-string v2, "mounted"

    .line 409
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 412
    move-result-object v5

    .line 413
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    move-result v2

    .line 417
    if-eqz v2, :cond_1b7

    .line 419
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v11}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 430
    move-result-object v5

    .line 431
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 434
    move-result v5

    .line 435
    if-nez v5, :cond_1b7

    .line 437
    invoke-virtual {v11, v2}, Lcom/android/fileexplorer/model/StorageInfo;->setPath(Ljava/lang/String;)V

    .line 440
    :cond_1b7
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1ba} :catch_1bc

    .line 443
    goto/16 :goto_2e

    .line 445
    :catch_1bc
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 449
    :cond_1c0
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 452
    return-object v1
.end method

.method public static listAvailableStorageCompat28()Ljava/util/List;
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :try_start_5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "storage"

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 18
    const-class v2, Landroid/os/storage/StorageManager;

    .line 20
    const-string v3, "getVolumes"

    .line 22
    const/4 v4, 0x0

    .line 23
    new-array v5, v4, [Ljava/lang/Class;

    .line 25
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    new-array v5, v4, [Ljava/lang/Object;

    .line 35
    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/util/List;

    .line 41
    new-instance v5, Ljava/util/HashMap;

    .line 43
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 46
    if-eqz v2, :cond_5b

    .line 48
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v2

    .line 52
    :cond_33
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_5b

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    move-result-object v7

    .line 66
    const-string v8, "getPath"

    .line 68
    new-array v9, v4, [Ljava/lang/Class;

    .line 70
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    move-result-object v7

    .line 74
    new-array v8, v4, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Ljava/io/File;

    .line 82
    if-eqz v7, :cond_33

    .line 84
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    goto :goto_33

    .line 92
    :cond_5b
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    .line 95
    move-result-object v1

    .line 96
    sget-object v2, Lcom/android/fileexplorer/model/StorageUtil;->TAG:Ljava/lang/String;

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v7, "storageVolumeList size:"

    .line 105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 111
    move-result v7

    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v6

    .line 119
    invoke-static {v2, v6}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v1

    .line 126
    :cond_7d
    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_1c3

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 138
    const-string v6, ""

    .line 140
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    const/16 v8, 0x1e

    .line 144
    if-lt v7, v8, :cond_bb

    .line 146
    invoke-static {v2}, Landroidx/core/content/a;->f(Landroid/os/storage/StorageVolume;)Ljava/io/File;

    .line 149
    move-result-object v7

    .line 150
    if-eqz v7, :cond_a0

    .line 152
    invoke-static {v2}, Landroidx/core/content/a;->f(Landroid/os/storage/StorageVolume;)Ljava/io/File;

    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 159
    move-result-object v6

    .line 160
    goto :goto_d5

    .line 161
    :cond_a0
    sget-object v7, Lcom/android/fileexplorer/model/StorageUtil;->TAG:Ljava/lang/String;

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-static {v2}, Landroidx/core/content/a;->i(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    .line 171
    move-result-object v9

    .line 172
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v9, " getDirectory is null"

    .line 177
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v8

    .line 184
    invoke-static {v7, v8}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    goto :goto_d5

    .line 188
    :cond_bb
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    move-result-object v7

    .line 192
    const-string v8, "getPathFile"

    .line 194
    new-array v9, v4, [Ljava/lang/Class;

    .line 196
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 199
    move-result-object v7

    .line 200
    new-array v8, v4, [Ljava/lang/Object;

    .line 202
    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    move-result-object v7

    .line 206
    check-cast v7, Ljava/io/File;

    .line 208
    if-eqz v7, :cond_d5

    .line 210
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 213
    move-result-object v6

    .line 214
    :cond_d5
    :goto_d5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 217
    move-result v7

    .line 218
    if-nez v7, :cond_7d

    .line 220
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 223
    move-result-object v7

    .line 224
    invoke-virtual {v2, v7}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    .line 227
    move-result-object v7

    .line 228
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 235
    move-result-object v9

    .line 236
    new-instance v10, Lcom/android/fileexplorer/model/StorageInfo;

    .line 238
    invoke-direct {v10, v6, v7, v8}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    .line 244
    move-result v7

    .line 245
    invoke-virtual {v10, v7}, Lcom/android/fileexplorer/model/StorageInfo;->setPrimary(Z)V

    .line 248
    invoke-virtual {v10, v9}, Lcom/android/fileexplorer/model/StorageInfo;->setUuid(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v10}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 254
    move-result v7

    .line 255
    if-eqz v7, :cond_104

    .line 257
    invoke-virtual {v10, v3}, Lcom/android/fileexplorer/model/StorageInfo;->setVisible(Z)V

    .line 260
    goto :goto_10b

    .line 261
    :cond_104
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    .line 264
    move-result v2

    .line 265
    invoke-virtual {v10, v2}, Lcom/android/fileexplorer/model/StorageInfo;->setVisible(Z)V

    .line 268
    :goto_10b
    invoke-virtual {v10}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_138

    .line 274
    invoke-virtual {v10}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 277
    move-result-object v2

    .line 278
    if-eqz v2, :cond_138

    .line 280
    const-string v2, "mounted"

    .line 282
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 285
    move-result-object v7

    .line 286
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_138

    .line 292
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v10}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 303
    move-result-object v7

    .line 304
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 307
    move-result v7

    .line 308
    if-nez v7, :cond_138

    .line 310
    invoke-virtual {v10, v2}, Lcom/android/fileexplorer/model/StorageInfo;->setPath(Ljava/lang/String;)V

    .line 313
    :cond_138
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    move-result-object v2

    .line 317
    if-eqz v2, :cond_1af

    .line 319
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    move-result-object v6

    .line 323
    const-string v7, "getDisk"

    .line 325
    new-array v8, v4, [Ljava/lang/Class;

    .line 327
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 330
    move-result-object v6

    .line 331
    new-array v7, v4, [Ljava/lang/Object;

    .line 333
    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    move-result-object v2

    .line 337
    if-eqz v2, :cond_1af

    .line 339
    const-string v6, "android.os.storage.DiskInfo"

    .line 341
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 344
    move-result-object v6

    .line 345
    const-string v7, "isSd"

    .line 347
    new-array v8, v4, [Ljava/lang/Class;

    .line 349
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 352
    move-result-object v7

    .line 353
    new-array v8, v4, [Ljava/lang/Object;

    .line 355
    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    move-result-object v7

    .line 359
    check-cast v7, Ljava/lang/Boolean;

    .line 361
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 364
    move-result v7

    .line 365
    invoke-virtual {v10, v7}, Lcom/android/fileexplorer/model/StorageInfo;->setSd(Z)V

    .line 368
    const-string v7, "isUsb"

    .line 370
    new-array v8, v4, [Ljava/lang/Class;

    .line 372
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 375
    move-result-object v6

    .line 376
    new-array v7, v4, [Ljava/lang/Object;

    .line 378
    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    move-result-object v2

    .line 382
    check-cast v2, Ljava/lang/Boolean;

    .line 384
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 387
    move-result v2

    .line 388
    invoke-virtual {v10, v2}, Lcom/android/fileexplorer/model/StorageInfo;->setUsb(Z)V

    .line 391
    invoke-virtual {v10}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    .line 394
    move-result v2

    .line 395
    if-eqz v2, :cond_19b

    .line 397
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 400
    move-result-object v2

    .line 401
    const v6, 0x7f110405

    .line 404
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 407
    move-result-object v2

    .line 408
    invoke-virtual {v10, v2}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 411
    goto :goto_1af

    .line 412
    :cond_19b
    invoke-virtual {v10}, Lcom/android/fileexplorer/model/StorageInfo;->isSd()Z

    .line 415
    move-result v2

    .line 416
    if-eqz v2, :cond_1af

    .line 418
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 421
    move-result-object v2

    .line 422
    const v6, 0x7f110404

    .line 425
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 428
    move-result-object v2

    .line 429
    invoke-virtual {v10, v2}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 432
    :cond_1af
    :goto_1af
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b2} :catch_1b4

    .line 435
    goto/16 :goto_7d

    .line 437
    :catch_1b4
    move-exception v1

    .line 438
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 441
    sget-object v2, Lcom/android/fileexplorer/model/StorageUtil;->TAG:Ljava/lang/String;

    .line 443
    const-string v3, "listAvailableStorageCompat28:"

    .line 445
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    move-result-object v3

    .line 449
    invoke-static {v1, v3, v2}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 452
    :cond_1c3
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 455
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 458
    move-result v1

    .line 459
    if-eqz v1, :cond_1d3

    .line 461
    const-string v1, "StorageUtil"

    .line 463
    const-string v2, "listAvailableStorageCompat28: volumes isEmpty, something is wrong."

    .line 465
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1d3
    return-object v0
.end method
