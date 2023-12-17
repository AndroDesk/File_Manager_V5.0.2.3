.class public Lcom/android/fileexplorer/model/StorageHelper;
.super Ljava/lang/Object;
.source "StorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StorageHelper"

.field private static final USER_HANDLE:Ljava/lang/String;

.field private static final USER_NULL:I = -0x2710

.field public static final XSPACE_USER_ID:I = 0x3e7

.field private static volatile sManager:Lcom/android/fileexplorer/model/StorageHelper;


# instance fields
.field private mExternalRootPath:Ljava/lang/String;

.field private mMaintenanceModeDirPath:Ljava/lang/String;

.field private mMountVolumes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRootPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUSBStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

.field private mXspaceDirPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    sget v1, Lcom/android/fileexplorer/util/RomUtils;->ANDROID_T:I

    .line 5
    if-lt v0, v1, :cond_9

    .line 7
    const-string v0, "miui.os.UserHandleEx"

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-string v0, "android.os.UserHandle"

    .line 12
    :goto_b
    sput-object v0, Lcom/android/fileexplorer/model/StorageHelper;->USER_HANDLE:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStorageDirectory(I)Ljava/io/File;
    .registers 6

    :try_start_0
    const-string v0, "android.os.Environment$UserEnvironment"

    .line 16
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 17
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getExternalStorageDirectory"

    new-array v2, v4, [Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    const-string v0, "getExternalStorageDirectory error:"

    .line 21
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageHelper"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getExternalStorageDirectory()[Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    if-nez v0, :cond_14

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    goto :goto_39

    .line 3
    :cond_14
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 5
    :cond_39
    :goto_39
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    if-eqz v1, :cond_58

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_58
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->isXSpaceEnable()Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v0, 0x3e7

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_73
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->isMaintenanceModeEnable()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getMaintenanceModeId()I

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    if-eqz v1, :cond_98

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_98
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getFolderSize(Ljava/io/File;)J
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-wide v1

    .line 10
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_24

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_23

    .line 22
    array-length v0, p0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_17
    if-ge v3, v0, :cond_23

    .line 26
    aget-object v4, p0, v3

    .line 28
    invoke-static {v4}, Lcom/android/fileexplorer/model/StorageHelper;->getFolderSize(Ljava/io/File;)J

    .line 31
    move-result-wide v4

    .line 32
    add-long/2addr v1, v4

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_17

    .line 36
    :cond_23
    return-wide v1

    .line 37
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 40
    move-result-wide v0

    .line 41
    return-wide v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/StorageHelper;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/StorageHelper;->sManager:Lcom/android/fileexplorer/model/StorageHelper;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/model/StorageHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/model/StorageHelper;->sManager:Lcom/android/fileexplorer/model/StorageHelper;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/model/StorageHelper;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/model/StorageHelper;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/model/StorageHelper;->sManager:Lcom/android/fileexplorer/model/StorageHelper;

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
    sget-object v0, Lcom/android/fileexplorer/model/StorageHelper;->sManager:Lcom/android/fileexplorer/model/StorageHelper;

    .line 26
    return-object v0
.end method

.method public static getMaintenanceModeId()I
    .registers 4

    .line 1
    const-string v0, "StorageUtil"

    .line 3
    :try_start_2
    sget-object v1, Lcom/android/fileexplorer/model/StorageHelper;->USER_HANDLE:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "MAINTENANCE_MODE_ID"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 18
    move-result v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v3, "modeId :"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_27

    .line 39
    return v1

    .line 40
    :catch_27
    move-exception v1

    .line 41
    const-string v2, "getMaintenanceModeId error:"

    .line 43
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    const/16 v0, -0x2710

    .line 52
    return v0
.end method

.method private isInternalVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public static isMaintenanceModeEnable()Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lcom/android/fileexplorer/model/StorageHelper;->USER_HANDLE:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "myUserId"

    .line 10
    new-array v3, v0, [Ljava/lang/Class;

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object v2

    .line 16
    new-array v3, v0, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v1

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getMaintenanceModeId()I

    .line 31
    move-result v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_23

    .line 32
    if-ne v1, v2, :cond_22

    .line 34
    const/4 v0, 0x1

    .line 35
    :cond_22
    return v0

    .line 36
    :catch_23
    move-exception v1

    .line 37
    const-string v2, "isMaintenanceModeEnable error:"

    .line 39
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v2

    .line 43
    const-string v3, "StorageUtil"

    .line 45
    invoke-static {v1, v2, v3}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    return v0
.end method

.method private isRouter(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_1a

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1a

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const-string v0, "//"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method

.method public static isXSpaceEnable()Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "android.provider.MiuiSettings$Secure"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "getBoolean"

    .line 10
    const/4 v3, 0x3

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    const-class v5, Landroid/content/ContentResolver;

    .line 15
    aput-object v5, v4, v0

    .line 17
    const-class v5, Ljava/lang/String;

    .line 19
    const/4 v6, 0x1

    .line 20
    aput-object v5, v4, v6

    .line 22
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 24
    const/4 v7, 0x2

    .line 25
    aput-object v5, v4, v7

    .line 27
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object v2

    .line 31
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    move-result-object v4

    .line 39
    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    aput-object v4, v3, v0

    .line 43
    const-string v4, "xspace_enabled"

    .line 45
    aput-object v4, v3, v6

    .line 47
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    aput-object v4, v3, v7

    .line 51
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/Boolean;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    move-result v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3d

    .line 61
    return v0

    .line 62
    :catch_3d
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    return v0
.end method

.method private isXmsUSB(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isMiuiSystem()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_10

    .line 7
    if-eqz p1, :cond_10

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    return p1
.end method


# virtual methods
.method public clearExternalStorageDirectory()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_7
    return-void
.end method

.method public destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    .line 9
    move-result-wide v0

    .line 10
    new-instance p2, Ljava/io/File;

    .line 12
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {p2}, Lcom/android/fileexplorer/model/StorageHelper;->getFolderSize(Ljava/io/File;)J

    .line 18
    move-result-wide p1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v3, "freeSpace:"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    const-string v3, ", needSpace:"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    const-string v3, "StorageHelper"

    .line 46
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    cmp-long p1, v0, p1

    .line 51
    if-lez p1, :cond_36

    .line 53
    const/4 p1, 0x1

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    const/4 p1, 0x0

    .line 56
    :goto_37
    return p1
.end method

.method public destVolumeBlockSize(Ljava/lang/String;)J
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 4
    move-result-object p1

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    if-eqz p1, :cond_1a

    .line 9
    :try_start_8
    new-instance v2, Landroid/os/StatFs;

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v2, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 21
    move-result-wide v0
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_15} :catch_16

    .line 22
    return-wide v0

    .line 23
    :catch_16
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :cond_1a
    return-wide v0
.end method

.method public destVolumeFreeSpace(Ljava/lang/String;)J
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageInfoForVolume(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_d

    .line 11
    iget-wide v0, p1, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const-wide/16 v0, 0x0

    .line 16
    :goto_f
    return-wide v0
.end method

.method public getCacheMountVolumeList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMountVolumes:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMountVolumes:Ljava/util/ArrayList;

    .line 10
    return-object v0
.end method

.method public getExternalSDPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mExternalRootPath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mExternalRootPath:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_17

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mExternalRootPath:Ljava/lang/String;

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mExternalRootPath:Ljava/lang/String;

    .line 26
    return-object v0
.end method

.method public getMaintenanceModeDirPath(Z)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMaintenanceModeDirPath:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    if-eqz p1, :cond_26

    .line 7
    :cond_6
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getMaintenanceModeId()I

    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory(I)Ljava/io/File;

    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_23

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_23

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_23

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMaintenanceModeDirPath:Ljava/lang/String;

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMaintenanceModeDirPath:Ljava/lang/String;

    .line 39
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMaintenanceModeDirPath:Ljava/lang/String;

    .line 41
    return-object p1
.end method

.method public declared-synchronized getMountVolumeList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList(Z)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMountVolumeList(Z)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->listAvailableStorage()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/android/fileexplorer/model/StorageHelper;->mUSBStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->updateSDInfo(Lcom/android/fileexplorer/model/StorageInfo;)V

    const-string v2, "StorageHelper"

    if-eqz v0, :cond_8f

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    if-nez v3, :cond_2a

    goto :goto_1b

    :cond_2a
    const-string v4, "volume path:"

    .line 7
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";volume.isMounted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";volume.isVisible()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isVisible()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ";volume.isUsb()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 10
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isVisible()Z

    move-result v4

    if-nez v4, :cond_70

    if-nez p1, :cond_79

    :cond_70
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/model/StorageHelper;->isXmsUSB(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_79
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->updateSDInfo(Lcom/android/fileexplorer/model/StorageInfo;)V

    .line 14
    :cond_86
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 15
    iput-object v3, p0, Lcom/android/fileexplorer/model/StorageHelper;->mUSBStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    goto :goto_1b

    .line 16
    :cond_8f
    iput-object v1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMountVolumes:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9c

    const-string p1, "getMountVolumeList: mountVolumes is empty."

    .line 18
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c
    return-object v1
.end method

.method public getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_23

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_b
    if-ge v2, v1, :cond_23

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    .line 20
    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_20

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/fileexplorer/model/StorageInfo;

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_b

    .line 36
    :cond_23
    const/4 v0, 0x0

    .line 37
    :goto_24
    return-object v0
.end method

.method public getSDStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_23

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_b
    if-ge v2, v1, :cond_23

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    .line 20
    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_20

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/fileexplorer/model/StorageInfo;

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_b

    .line 36
    :cond_23
    const/4 v0, 0x0

    .line 37
    :goto_24
    return-object v0
.end method

.method public getStorageInfo()Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;
    .registers 8

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->listAvailableStorage()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_42

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    .line 26
    if-eqz v2, :cond_d

    .line 28
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_d

    .line 34
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_d

    .line 40
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->isMaintenanceMode()Z

    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_d

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageInfoForVolume(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_d

    .line 52
    iget-wide v3, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    .line 54
    iget-wide v5, v2, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    .line 56
    add-long/2addr v3, v5

    .line 57
    iput-wide v3, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    .line 59
    iget-wide v3, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    .line 61
    iget-wide v5, v2, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    .line 63
    add-long/2addr v3, v5

    .line 64
    iput-wide v3, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    .line 66
    goto :goto_d

    .line 67
    :cond_42
    iget-wide v1, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    .line 69
    const-wide/16 v3, 0x0

    .line 71
    cmp-long v1, v1, v3

    .line 73
    if-nez v1, :cond_4b

    .line 75
    const/4 v0, 0x0

    .line 76
    :cond_4b
    return-object v0
.end method

.method public getStorageInfoByPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_33

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    .line 29
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/FileUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    move-result v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_27

    .line 37
    if-eqz v3, :cond_10

    .line 39
    return-object v2

    .line 40
    :catch_27
    move-exception p1

    .line 41
    const-string v0, "getStoragePath error: "

    .line 43
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v0

    .line 47
    const-string v2, "StorageHelper"

    .line 49
    invoke-static {p1, v0, v2}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 52
    :cond_33
    return-object v1
.end method

.method public getStorageInfoForVolume(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;
    .registers 10

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_51

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_13

    .line 19
    goto :goto_51

    .line 20
    :cond_13
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    .line 27
    move-result p1

    .line 28
    const-string v3, "StorageHelper"

    .line 30
    if-eqz p1, :cond_3e

    .line 32
    :try_start_1f
    new-instance p1, Landroid/os/StatFs;

    .line 34
    invoke-direct {p1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_24} :catch_37

    .line 37
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 40
    move-result-wide v1

    .line 41
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 44
    move-result-wide v4

    .line 45
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 48
    move-result-wide v6

    .line 49
    mul-long/2addr v1, v4

    .line 50
    iput-wide v1, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    .line 52
    mul-long/2addr v6, v4

    .line 53
    iput-wide v6, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    .line 55
    goto :goto_3e

    .line 56
    :catch_37
    move-exception p1

    .line 57
    const-string v0, "statfs failed"

    .line 59
    invoke-static {v3, v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-object v1

    .line 63
    :cond_3e
    :goto_3e
    const-string p1, "free: "

    .line 65
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    move-result-object p1

    .line 69
    iget-wide v1, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    .line 71
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-static {v3, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object v0

    .line 82
    :cond_51
    :goto_51
    return-object v1
.end method

.method public getStoragePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_33

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    .line 29
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/FileUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    move-result v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_27

    .line 37
    if-eqz v3, :cond_10

    .line 39
    return-object v2

    .line 40
    :catch_27
    move-exception p1

    .line 41
    const-string v0, "getStoragePath error: "

    .line 43
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v0

    .line 47
    const-string v2, "StorageHelper"

    .line 49
    invoke-static {p1, v0, v2}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 52
    :cond_33
    return-object v1
.end method

.method public getStoragePathForPrivate(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "StorageHelper"

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_50

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    .line 31
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_3c

    .line 37
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_3c

    .line 43
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isMaintenanceMode()Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_31

    .line 49
    goto :goto_3c

    .line 50
    :cond_31
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/FileUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_12

    .line 60
    return-object v3

    .line 61
    :cond_3c
    :goto_3c
    const-string p1, "getStoragePathForPrivate: is USB or Xspace or Maintenance mode"

    .line 63
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    .line 69
    move-result-object p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_45} :catch_46

    .line 70
    return-object p1

    .line 71
    :catch_46
    move-exception p1

    .line 72
    const-string v1, "getStoragePath error: "

    .line 74
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    move-result-object v1

    .line 78
    invoke-static {p1, v1, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 81
    :cond_50
    return-object v2
.end method

.method public getStorageUuid(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_37

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    .line 29
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/FileUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_10

    .line 39
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getUuid()Ljava/lang/String;

    .line 42
    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_2b

    .line 43
    return-object p1

    .line 44
    :catch_2b
    move-exception p1

    .line 45
    const-string v0, "getStorageUuid error: "

    .line 47
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object v0

    .line 51
    const-string v2, "StorageHelper"

    .line 53
    invoke-static {p1, v0, v2}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    :cond_37
    return-object v1
.end method

.method public getUSBStorageInfo(Z)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    .line 1
    if-eqz p1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mUSBStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 5
    goto :goto_9

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getUSBStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    return-object p1
.end method

.method public getUSBStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1b

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_8

    .line 27
    return-object v1

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public getVolumeAppName(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, ""

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_e

    .line 12
    const-string v0, "zh_cn=USB存储器&zh_tw=USB存儲器&=USB storage"

    .line 14
    goto :goto_1f

    .line 15
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_17

    .line 21
    const-string v0, "zh_cn=SD卡&zh_tw=SD卡&=SD card"

    .line 23
    goto :goto_1f

    .line 24
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isInternalVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1f

    .line 30
    const-string v0, "zh_cn=内部存储设备&zh_tw=內部存儲設備&=Internal storage"

    .line 32
    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;
    .registers 4

    .line 1
    if-nez p1, :cond_5

    .line 3
    const-string p1, ""

    .line 5
    return-object p1

    .line 6
    :cond_5
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_38

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1d

    .line 22
    const p1, 0x7f110405

    .line 25
    invoke-static {p1}, La/a;->e(I)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    goto :goto_38

    .line 30
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2b

    .line 36
    const p1, 0x7f110404

    .line 39
    invoke-static {p1}, La/a;->e(I)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    goto :goto_38

    .line 44
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isInternalVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_38

    .line 50
    const p1, 0x7f110402

    .line 53
    invoke-static {p1}, La/a;->e(I)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    :cond_38
    :goto_38
    return-object v0
.end method

.method public getXspaceDirPath(Z)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mXspaceDirPath:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    if-eqz p1, :cond_24

    .line 7
    :cond_6
    const/16 p1, 0x3e7

    .line 9
    invoke-static {p1}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory(I)Ljava/io/File;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_21

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_21

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_21

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mXspaceDirPath:Ljava/lang/String;

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mXspaceDirPath:Ljava/lang/String;

    .line 37
    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mXspaceDirPath:Ljava/lang/String;

    .line 39
    return-object p1
.end method

.method public hasCacheMountVolumeList()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMountVolumes:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isDiskHasEnoughSpace()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageInfoForVolume(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_14

    .line 11
    iget-wide v0, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    .line 13
    const-wide/16 v2, 0x2800

    .line 15
    cmp-long v0, v0, v2

    .line 17
    if-lez v0, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method public isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_12

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return p1
.end method

.method public isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isSd()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1b

    .line 15
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v2, "/sdcard1"

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    return v1

    .line 28
    :cond_1b
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    const v2, 0x7f110404

    .line 43
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    const-string v2, " "

    .line 49
    const-string v3, ""

    .line 51
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    if-eqz p1, :cond_3c

    .line 57
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    :cond_3c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_49

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_49

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    const/4 v1, 0x0

    .line 75
    :goto_4a
    return v1
.end method

.method public isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_21

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1f

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1f

    .line 19
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isRouter(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1f

    .line 25
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1f

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    :goto_21
    const/4 p1, 0x1

    .line 35
    :goto_22
    return p1
.end method

.method public isVolumeMounted(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_10

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getState()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "mounted"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    return p1
.end method
