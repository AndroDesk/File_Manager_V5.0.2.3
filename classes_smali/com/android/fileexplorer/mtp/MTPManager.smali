.class public Lcom/android/fileexplorer/mtp/MTPManager;
.super Ljava/lang/Object;
.source "MTPManager.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.mtp.documents"

.field private static final TAG:Ljava/lang/String; = "MTPManager"

.field private static sInstance:Lcom/android/fileexplorer/mtp/MTPManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/fileexplorer/mtp/MTPManager;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/mtp/MTPManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/mtp/MTPManager;->sInstance:Lcom/android/fileexplorer/mtp/MTPManager;

    .line 6
    if-nez v1, :cond_18

    .line 8
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 9
    :try_start_8
    sget-object v1, Lcom/android/fileexplorer/mtp/MTPManager;->sInstance:Lcom/android/fileexplorer/mtp/MTPManager;

    .line 11
    if-nez v1, :cond_13

    .line 13
    new-instance v1, Lcom/android/fileexplorer/mtp/MTPManager;

    .line 15
    invoke-direct {v1}, Lcom/android/fileexplorer/mtp/MTPManager;-><init>()V

    .line 18
    sput-object v1, Lcom/android/fileexplorer/mtp/MTPManager;->sInstance:Lcom/android/fileexplorer/mtp/MTPManager;

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
    sget-object v1, Lcom/android/fileexplorer/mtp/MTPManager;->sInstance:Lcom/android/fileexplorer/mtp/MTPManager;
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


# virtual methods
.method public getDocumentById(Ljava/lang/String;)Lcom/android/fileexplorer/mtp/DocumentInfo;
    .registers 3

    .line 1
    const-string v0, "com.android.mtp.documents"

    .line 3
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public declared-synchronized getRootDoc()Lcom/android/fileexplorer/mtp/DocumentInfo;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 v0, 0x0

    .line 4
    return-object v0
.end method

.method public declared-synchronized hasMtpProvider()Z
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 4
    const-string v1, "android.content.action.DOCUMENTS_PROVIDER"

    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_38

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 42
    const-string v3, "com.android.mtp.documents"

    .line 44
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 46
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v1
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_3a

    .line 52
    if-eqz v1, :cond_1d

    .line 54
    const/4 v0, 0x1

    .line 55
    monitor-exit p0

    .line 56
    return v0

    .line 57
    :cond_38
    monitor-exit p0

    .line 58
    return v2

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    monitor-exit p0

    .line 61
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    monitor-enter p0

    .line 7
    :try_start_6
    const-string v1, "com.android.mtp.documents"

    .line 9
    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildChildDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object v3

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v1

    .line 25
    sget-object v8, Lcom/android/fileexplorer/mtp/MTPManager;->TAG:Ljava/lang/String;

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v4, "Start load in background id:"

    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v4, " DocumentID:"

    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-static {v8, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_b8

    .line 59
    const/4 v9, 0x0

    .line 60
    :try_start_3b
    const-string v2, "com.android.mtp.documents"

    .line 62
    invoke-static {v1, v2}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 65
    move-result-object v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_9b
    .catchall {:try_start_3b .. :try_end_41} :catchall_98

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    move-object v2, v1

    .line 71
    :try_start_46
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 74
    move-result-object v9

    .line 75
    if-eqz v9, :cond_86

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 85
    move-result v3

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v3, " files found under folder "

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-static {v8, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_67
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_7e

    .line 110
    const-string p1, "com.android.mtp.documents"

    .line 112
    invoke-static {v9, p1}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 115
    move-result-object p1

    .line 116
    sget-object v2, Lcom/android/fileexplorer/mtp/MTPManager;->TAG:Ljava/lang/String;

    .line 118
    iget-object v3, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 120
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_7d} :catch_93
    .catchall {:try_start_46 .. :try_end_7d} :catchall_8e

    .line 126
    goto :goto_67

    .line 127
    :cond_7e
    :try_start_7e
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 130
    invoke-static {v9}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_b8

    .line 134
    return-object v0

    .line 135
    :cond_86
    :try_start_86
    new-instance p1, Landroid/os/RemoteException;

    .line 137
    const-string v2, "Provider returned null"

    .line 139
    invoke-direct {p1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p1
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8e} :catch_93
    .catchall {:try_start_86 .. :try_end_8e} :catchall_8e

    .line 143
    :catchall_8e
    move-exception p1

    .line 144
    move-object v10, v9

    .line 145
    move-object v9, v1

    .line 146
    move-object v1, v10

    .line 147
    goto :goto_af

    .line 148
    :catch_93
    move-exception p1

    .line 149
    move-object v10, v9

    .line 150
    move-object v9, v1

    .line 151
    move-object v1, v10

    .line 152
    goto :goto_9d

    .line 153
    :catchall_98
    move-exception p1

    .line 154
    move-object v1, v9

    .line 155
    goto :goto_af

    .line 156
    :catch_9b
    move-exception p1

    .line 157
    move-object v1, v9

    .line 158
    :goto_9d
    :try_start_9d
    sget-object v2, Lcom/android/fileexplorer/mtp/MTPManager;->TAG:Ljava/lang/String;

    .line 160
    const-string v3, "Error while loading directory contents"

    .line 162
    invoke-static {v2, v3, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_ae

    .line 165
    if-eqz v9, :cond_a9

    .line 167
    :try_start_a6
    invoke-virtual {v9}, Landroid/content/ContentProviderClient;->release()Z

    .line 170
    :cond_a9
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 173
    monitor-exit p0

    .line 174
    return-object v0

    .line 175
    :catchall_ae
    move-exception p1

    .line 176
    :goto_af
    if-eqz v9, :cond_b4

    .line 178
    invoke-virtual {v9}, Landroid/content/ContentProviderClient;->release()Z

    .line 181
    :cond_b4
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 184
    throw p1

    .line 185
    :catchall_b8
    move-exception p1

    .line 186
    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_b8

    .line 187
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mtp/MTPManager;->listDocumentInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_27

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 26
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Lcom/android/fileexplorer/mtp/DocumentInfo;)Lcom/android/fileexplorer/model/FileInfo;

    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_d

    .line 32
    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 34
    if-nez v2, :cond_d

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_d

    .line 40
    :cond_27
    return-object v0
.end method
