.class public Lcom/android/fileexplorer/util/SupportPrivateFolder;
.super Ljava/lang/Object;
.source "SupportPrivateFolder.java"


# static fields
.field private static instance:Lcom/android/fileexplorer/util/SupportPrivateFolder;


# instance fields
.field private isPrivateFolderSupport:Z

.field private isPrivateFolderSupportLoaded:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/util/SupportPrivateFolder;->instance:Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 10
    invoke-direct {v1}, Lcom/android/fileexplorer/util/SupportPrivateFolder;-><init>()V

    .line 13
    sput-object v1, Lcom/android/fileexplorer/util/SupportPrivateFolder;->instance:Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 15
    :cond_e
    sget-object v1, Lcom/android/fileexplorer/util/SupportPrivateFolder;->instance:Lcom/android/fileexplorer/util/SupportPrivateFolder;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method private isSecondaryUser()Z
    .registers 6

    .line 1
    const-string v0, "isSecondaryUser"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    const-string v2, "android.os.UserHandle"

    .line 6
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    move-result-object v2

    .line 10
    const-string v3, "myUserId"

    .line 12
    new-array v4, v1, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    move-result-object v3

    .line 18
    new-array v4, v1, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Integer;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v2

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v4, "userId:"

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_31} :catch_35

    .line 50
    if-eqz v2, :cond_34

    .line 52
    const/4 v1, 0x1

    .line 53
    :cond_34
    return v1

    .line 54
    :catch_35
    move-exception v2

    .line 55
    const-string v3, "erro:"

    .line 57
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return v1
.end method


# virtual methods
.method public isPrivateFolderSupported()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupportLoaded:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_2a

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getACLockType(Landroid/content/Context;)I

    .line 18
    move-result v0

    .line 19
    const/4 v3, -0x1

    .line 20
    if-eq v0, v3, :cond_18

    .line 22
    iput-boolean v2, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupport:Z

    .line 24
    goto :goto_28

    .line 25
    :cond_18
    :try_start_18
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->hasCommonPassword(Landroid/content/Context;)Z

    .line 36
    iput-boolean v2, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupport:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_26

    .line 38
    goto :goto_28

    .line 39
    :catch_26
    iput-boolean v1, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupport:Z

    .line 41
    :goto_28
    iput-boolean v2, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupportLoaded:Z

    .line 43
    :cond_2a
    invoke-direct {p0}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isSecondaryUser()Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_35

    .line 49
    iget-boolean v0, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupport:Z

    .line 51
    if-eqz v0, :cond_35

    .line 53
    move v1, v2

    .line 54
    :cond_35
    return v1
.end method
