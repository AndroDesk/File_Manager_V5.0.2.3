.class public Lcom/android/fileexplorer/util/SupportPrivateFolder;
.super Ljava/lang/Object;
.source "SupportPrivateFolder.java"


# static fields
.field private static instance:Lcom/android/fileexplorer/util/SupportPrivateFolder;


# instance fields
.field private isPrivateFolderSupport:Z

.field private isPrivateFolderSupportLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/util/SupportPrivateFolder;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/util/SupportPrivateFolder;->instance:Lcom/android/fileexplorer/util/SupportPrivateFolder;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/fileexplorer/util/SupportPrivateFolder;

    invoke-direct {v1}, Lcom/android/fileexplorer/util/SupportPrivateFolder;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/util/SupportPrivateFolder;->instance:Lcom/android/fileexplorer/util/SupportPrivateFolder;

    :cond_e
    sget-object v1, Lcom/android/fileexplorer/util/SupportPrivateFolder;->instance:Lcom/android/fileexplorer/util/SupportPrivateFolder;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isSecondaryUser()Z
    .registers 6

    const-string v0, "isSecondaryUser"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "android.os.UserHandle"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "myUserId"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_31} :catch_35

    if-eqz v2, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1

    :catch_35
    move-exception v2

    const-string v3, "erro:"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public isPrivateFolderSupported()Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupportLoaded:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getACLockType(Landroid/content/Context;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_18

    iput-boolean v2, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupport:Z

    goto :goto_28

    :cond_18
    :try_start_18
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->hasCommonPassword(Landroid/content/Context;)Z

    iput-boolean v2, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupport:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_26

    goto :goto_28

    :catch_26
    iput-boolean v1, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupport:Z

    :goto_28
    iput-boolean v2, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupportLoaded:Z

    :cond_2a
    invoke-direct {p0}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isSecondaryUser()Z

    move-result v0

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupport:Z

    if-eqz v0, :cond_35

    move v1, v2

    :cond_35
    return v1
.end method
