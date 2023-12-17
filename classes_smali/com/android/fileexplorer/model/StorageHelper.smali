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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/android/fileexplorer/util/RomUtils;->ANDROID_T:I

    if-lt v0, v1, :cond_9

    const-string v0, "miui.os.UserHandleEx"

    goto :goto_b

    :cond_9
    const-string v0, "android.os.UserHandle"

    :goto_b
    sput-object v0, Lcom/android/fileexplorer/model/StorageHelper;->USER_HANDLE:Ljava/lang/String;

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

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getExternalStorageDirectory"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    const-string v0, "getExternalStorageDirectory error:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageHelper"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getExternalStorageDirectory()[Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    goto :goto_39

    :cond_14
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

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

    :cond_39
    :goto_39
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    if-eqz v1, :cond_58

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->isXSpaceEnable()Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v0, 0x3e7

    invoke-static {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_73
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->isMaintenanceModeEnable()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getMaintenanceModeId()I

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_98

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    if-eqz v1, :cond_98

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    return-wide v1

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_23

    array-length v0, p0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v0, :cond_23

    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/android/fileexplorer/model/StorageHelper;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_23
    return-wide v1

    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/StorageHelper;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/model/StorageHelper;->sManager:Lcom/android/fileexplorer/model/StorageHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/fileexplorer/model/StorageHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/model/StorageHelper;->sManager:Lcom/android/fileexplorer/model/StorageHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/fileexplorer/model/StorageHelper;

    invoke-direct {v1}, Lcom/android/fileexplorer/model/StorageHelper;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/model/StorageHelper;->sManager:Lcom/android/fileexplorer/model/StorageHelper;

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
    sget-object v0, Lcom/android/fileexplorer/model/StorageHelper;->sManager:Lcom/android/fileexplorer/model/StorageHelper;

    return-object v0
.end method

.method public static getMaintenanceModeId()I
    .registers 4

    const-string v0, "StorageUtil"

    :try_start_2
    sget-object v1, Lcom/android/fileexplorer/model/StorageHelper;->USER_HANDLE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "MAINTENANCE_MODE_ID"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modeId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_27

    return v1

    :catch_27
    move-exception v1

    const-string v2, "getMaintenanceModeId error:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 v0, -0x2710

    return v0
.end method

.method private isInternalVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    move-result p1

    return p1
.end method

.method public static isMaintenanceModeEnable()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/fileexplorer/model/StorageHelper;->USER_HANDLE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "myUserId"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getMaintenanceModeId()I

    move-result v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_23

    if-ne v1, v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0

    :catch_23
    move-exception v1

    const-string v2, "isMaintenanceModeEnable error:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "StorageUtil"

    invoke-static {v1, v2, v3}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method private isRouter(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 3

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public static isXSpaceEnable()Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.provider.MiuiSettings$Secure"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBoolean"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    const-string v4, "xspace_enabled"

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3d

    return v0

    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private isXmsUSB(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isMiuiSystem()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method


# virtual methods
.method public clearExternalStorageDirectory()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mRootPaths:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    return-void
.end method

.method public destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/fileexplorer/model/StorageHelper;->getFolderSize(Ljava/io/File;)J

    move-result-wide p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeSpace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", needSpace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageHelper"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p1, v0, p1

    if-lez p1, :cond_36

    const/4 p1, 0x1

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    :goto_37
    return p1
.end method

.method public destVolumeBlockSize(Ljava/lang/String;)J
    .registers 5

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1a

    :try_start_8
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1a
    return-wide v0
.end method

.method public destVolumeFreeSpace(Ljava/lang/String;)J
    .registers 4

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageInfoForVolume(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-wide v0, p1, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    goto :goto_f

    :cond_d
    const-wide/16 v0, 0x0

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

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMountVolumes:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMountVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExternalSDPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mExternalRootPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mExternalRootPath:Ljava/lang/String;

    return-object v0

    :cond_b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mExternalRootPath:Ljava/lang/String;

    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mExternalRootPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenanceModeDirPath(Z)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMaintenanceModeDirPath:Ljava/lang/String;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_26

    :cond_6
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getMaintenanceModeId()I

    move-result p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory(I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMaintenanceModeDirPath:Ljava/lang/String;

    goto :goto_26

    :cond_23
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMaintenanceModeDirPath:Ljava/lang/String;

    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMaintenanceModeDirPath:Ljava/lang/String;

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

    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->listAvailableStorage()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/fileexplorer/model/StorageHelper;->mUSBStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->updateSDInfo(Lcom/android/fileexplorer/model/StorageInfo;)V

    const-string v2, "StorageHelper"

    if-eqz v0, :cond_8f

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

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

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

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isVisible()Z

    move-result v4

    if-nez v4, :cond_70

    if-nez p1, :cond_79

    :cond_70
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/model/StorageHelper;->isXmsUSB(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v4

    if-nez v4, :cond_79

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->updateSDInfo(Lcom/android/fileexplorer/model/StorageInfo;)V

    :cond_86
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_1b

    iput-object v3, p0, Lcom/android/fileexplorer/model/StorageHelper;->mUSBStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    goto :goto_1b

    :cond_8f
    iput-object v1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMountVolumes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9c

    const-string p1, "getMountVolumeList: mountVolumes is empty."

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c
    return-object v1
.end method

.method public getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_23

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/StorageInfo;

    goto :goto_24

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return-object v0
.end method

.method public getSDStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_23

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/StorageInfo;

    goto :goto_24

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return-object v0
.end method

.method public getStorageInfo()Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;
    .registers 8

    new-instance v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->listAvailableStorage()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v2, :cond_d

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->isMaintenanceMode()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageInfoForVolume(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-wide v3, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    iget-wide v5, v2, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    iget-wide v3, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    iget-wide v5, v2, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    goto :goto_d

    :cond_42
    iget-wide v1, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4b

    const/4 v0, 0x0

    :cond_4b
    return-object v0
.end method

.method public getStorageInfoByPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/FileUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_27

    if-eqz v3, :cond_10

    return-object v2

    :catch_27
    move-exception p1

    const-string v0, "getStoragePath error: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "StorageHelper"

    invoke-static {p1, v0, v2}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_33
    return-object v1
.end method

.method public getStorageInfoForVolume(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;
    .registers 10

    new-instance v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_51

    :cond_13
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    move-result p1

    const-string v3, "StorageHelper"

    if-eqz p1, :cond_3e

    :try_start_1f
    new-instance p1, Landroid/os/StatFs;

    invoke-direct {p1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_24} :catch_37

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    mul-long/2addr v1, v4

    iput-wide v1, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    mul-long/2addr v6, v4

    iput-wide v6, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    goto :goto_3e

    :catch_37
    move-exception p1

    const-string v0, "statfs failed"

    invoke-static {v3, v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_3e
    :goto_3e
    const-string p1, "free: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_51
    :goto_51
    return-object v1
.end method

.method public getStoragePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/FileUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_27

    if-eqz v3, :cond_10

    return-object v2

    :catch_27
    move-exception p1

    const-string v0, "getStoragePath error: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "StorageHelper"

    invoke-static {p1, v0, v2}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_33
    return-object v1
.end method

.method public getStoragePathForPrivate(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "StorageHelper"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isMaintenanceMode()Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_3c

    :cond_31
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/FileUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    return-object v3

    :cond_3c
    :goto_3c
    const-string p1, "getStoragePathForPrivate: is USB or Xspace or Maintenance mode"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    move-result-object p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_45} :catch_46

    return-object p1

    :catch_46
    move-exception p1

    const-string v1, "getStoragePath error: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_50
    return-object v2
.end method

.method public getStorageUuid(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/FileUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getUuid()Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_2b

    return-object p1

    :catch_2b
    move-exception p1

    const-string v0, "getStorageUuid error: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "StorageHelper"

    invoke-static {p1, v0, v2}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_37
    return-object v1
.end method

.method public getUSBStorageInfo(Z)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mUSBStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getUSBStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    :goto_9
    return-object p1
.end method

.method public getUSBStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVolumeAppName(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, "zh_cn=USB存储器&zh_tw=USB存儲器&=USB storage"

    goto :goto_1f

    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "zh_cn=SD卡&zh_tw=SD卡&=SD card"

    goto :goto_1f

    :cond_17
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isInternalVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string v0, "zh_cn=内部存储设备&zh_tw=內部存儲設備&=Internal storage"

    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const p1, 0x7f110405

    invoke-static {p1}, La/a;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const p1, 0x7f110404

    invoke-static {p1}, La/a;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isInternalVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result p1

    if-eqz p1, :cond_38

    const p1, 0x7f110402

    invoke-static {p1}, La/a;->e(I)Ljava/lang/String;

    move-result-object v0

    :cond_38
    :goto_38
    return-object v0
.end method

.method public getXspaceDirPath(Z)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mXspaceDirPath:Ljava/lang/String;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_24

    :cond_6
    const/16 p1, 0x3e7

    invoke-static {p1}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory(I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mXspaceDirPath:Ljava/lang/String;

    goto :goto_24

    :cond_21
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mXspaceDirPath:Ljava/lang/String;

    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/android/fileexplorer/model/StorageHelper;->mXspaceDirPath:Ljava/lang/String;

    return-object p1
.end method

.method public hasCacheMountVolumeList()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageHelper;->mMountVolumes:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isDiskHasEnoughSpace()Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageInfoForVolume(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-wide v0, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    const-wide/16 v2, 0x2800

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 3

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

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

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isSd()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/sdcard1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    :cond_1b
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f182992

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_40

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4d

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    return v1
.end method

.method public isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isRouter(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p1, 0x1

    :goto_22
    return p1
.end method

.method public isVolumeMounted(Lcom/android/fileexplorer/model/StorageInfo;)Z
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
