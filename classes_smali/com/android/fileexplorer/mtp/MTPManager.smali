.class public Lcom/android/fileexplorer/mtp/MTPManager;
.super Ljava/lang/Object;
.source "MTPManager.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.mtp.documents"

.field private static final TAG:Ljava/lang/String; = "MTPManager"

.field private static sInstance:Lcom/android/fileexplorer/mtp/MTPManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/fileexplorer/mtp/MTPManager;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/mtp/MTPManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/mtp/MTPManager;->sInstance:Lcom/android/fileexplorer/mtp/MTPManager;

    if-nez v1, :cond_18

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    :try_start_8
    sget-object v1, Lcom/android/fileexplorer/mtp/MTPManager;->sInstance:Lcom/android/fileexplorer/mtp/MTPManager;

    if-nez v1, :cond_13

    new-instance v1, Lcom/android/fileexplorer/mtp/MTPManager;

    invoke-direct {v1}, Lcom/android/fileexplorer/mtp/MTPManager;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/mtp/MTPManager;->sInstance:Lcom/android/fileexplorer/mtp/MTPManager;

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
    sget-object v1, Lcom/android/fileexplorer/mtp/MTPManager;->sInstance:Lcom/android/fileexplorer/mtp/MTPManager;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getDocumentById(Ljava/lang/String;)Lcom/android/fileexplorer/mtp/DocumentInfo;
    .registers 3

    const-string v0, "com.android.mtp.documents"

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getRootDoc()Lcom/android/fileexplorer/mtp/DocumentInfo;
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized hasMtpProvider()Z
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.action.DOCUMENTS_PROVIDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    const-string v3, "com.android.mtp.documents"

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_3a

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_38
    monitor-exit p0

    return v2

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public listDocumentInfos(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/mtp/DocumentInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_6
    const-string v1, "com.android.mtp.documents"

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildChildDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v8, Lcom/android/fileexplorer/mtp/MTPManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start load in background id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " DocumentID:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_b8

    const/4 v9, 0x0

    :try_start_3b
    const-string v2, "com.android.mtp.documents"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_9b
    .catchall {:try_start_3b .. :try_end_41} :catchall_98

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    :try_start_46
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_86

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " files found under folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_67
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_7e

    const-string p1, "com.android.mtp.documents"

    invoke-static {v9, p1}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    move-result-object p1

    sget-object v2, Lcom/android/fileexplorer/mtp/MTPManager;->TAG:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_7d} :catch_93
    .catchall {:try_start_46 .. :try_end_7d} :catchall_8e

    goto :goto_67

    :cond_7e
    :try_start_7e
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    invoke-static {v9}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    monitor-exit p0
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_b8

    return-object v0

    :cond_86
    :try_start_86
    new-instance p1, Landroid/os/RemoteException;

    const-string v2, "Provider returned null"

    invoke-direct {p1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8e} :catch_93
    .catchall {:try_start_86 .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p1

    move-object v10, v9

    move-object v9, v1

    move-object v1, v10

    goto :goto_af

    :catch_93
    move-exception p1

    move-object v10, v9

    move-object v9, v1

    move-object v1, v10

    goto :goto_9d

    :catchall_98
    move-exception p1

    move-object v1, v9

    goto :goto_af

    :catch_9b
    move-exception p1

    move-object v1, v9

    :goto_9d
    :try_start_9d
    sget-object v2, Lcom/android/fileexplorer/mtp/MTPManager;->TAG:Ljava/lang/String;

    const-string v3, "Error while loading directory contents"

    invoke-static {v2, v3, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_ae

    if-eqz v9, :cond_a9

    :try_start_a6
    invoke-virtual {v9}, Landroid/content/ContentProviderClient;->release()Z

    :cond_a9
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    monitor-exit p0

    return-object v0

    :catchall_ae
    move-exception p1

    :goto_af
    if-eqz v9, :cond_b4

    invoke-virtual {v9}, Landroid/content/ContentProviderClient;->release()Z

    :cond_b4
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :catchall_b8
    move-exception p1

    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_b8

    throw p1
.end method

.method public listFileInfos(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mtp/MTPManager;->listDocumentInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/mtp/DocumentInfo;

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Lcom/android/fileexplorer/mtp/DocumentInfo;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v2, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_27
    return-object v0
.end method
