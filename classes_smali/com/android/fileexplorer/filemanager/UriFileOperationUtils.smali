.class public Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;
.super Ljava/lang/Object;
.source "UriFileOperationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UriFileOperationUtils"

.field private static final URI_TEMP_DIR_NAME:Ljava/lang/String; = ".uriTemp"

.field public static final URI_TEMP_DIR_PATH:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".uriTemp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_12
    sput-object v0, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->URI_TEMP_DIR_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->lambda$copySingleFileToLocalFromMirror$0(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;)V

    return-void
.end method

.method public static copyOrMoveSingleFileToMtp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Landroid/net/Uri;Z)I
    .registers 23
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "Error closing destination."

    const-string v6, "Error copying bytes."

    const-string v7, "Cleaning up failed operation leftovers."

    const/4 v8, 0x2

    const-string v9, "UriFileOperationUtils"

    if-eqz v3, :cond_21d

    if-eqz v2, :cond_21d

    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/model/ContentFile;->isEmpty(Lcom/android/fileexplorer/model/ContentFile;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_21d

    :cond_1d
    iget-object v0, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-nez v0, :cond_4a

    new-instance v0, Ljava/io/File;

    iget-object v12, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v12, Ljava/io/File;

    iget-object v13, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v12, v3, v4}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyOrMoveFileAndDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;Z)I

    move-result v0

    if-eqz v0, :cond_49

    if-eq v0, v11, :cond_49

    if-ne v0, v10, :cond_4a

    :cond_49
    return v0

    :cond_4a
    const-string v0, "Doing byte copy of document: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v12, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/fileexplorer/model/ContentFile;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_68

    const-string v0, "copyOrMoveSingleFileToMtp: srcFile mimtType is null"

    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    return v0

    :cond_68
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    move-result-object v13

    invoke-virtual {v13, v0}, Lcom/android/fileexplorer/mtp/MTPManager;->listDocumentInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/fileexplorer/mtp/DocumentInfo;

    invoke-virtual {v13}, Lcom/android/fileexplorer/mtp/DocumentInfo;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_7e

    iget-object v14, v13, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    iget-object v15, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7e

    iget-object v0, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    :try_start_a2
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v13, v13, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    invoke-static {v0, v13}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ab} :catch_ac

    goto :goto_b8

    :catch_ac
    move-exception v0

    const-string v13, "deleteDocument error: "

    invoke-static {v13}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v0, v13, v9}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_b8

    :cond_b7
    return v11

    :cond_b8
    :goto_b8
    iget-object v0, v2, Lcom/android/fileexplorer/model/ContentFile;->mimeType:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-static {v3, v0, v13}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->createDocument(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v13, 0x4

    if-nez v0, :cond_de

    const-string v0, "Couldn\'t create destination document "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_de
    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    move-result-object v3

    if-nez v3, :cond_ed

    return v8

    :cond_ed
    if-eqz v1, :cond_f6

    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v0

    if-eqz v0, :cond_f6

    return v10

    :cond_f6
    new-instance v8, Landroid/os/CancellationSignal;

    invoke-direct {v8}, Landroid/os/CancellationSignal;-><init>()V

    const/4 v0, 0x0

    :try_start_fc
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    iget-object v15, v2, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_10a} :catch_1bc
    .catchall {:try_start_fc .. :try_end_10a} :catchall_1b1

    if-nez v14, :cond_11c

    invoke-static {v9, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/CancellationSignal;->cancel()V

    invoke-static {v14}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v13

    :cond_11c
    if-eqz v1, :cond_143

    :try_start_11e
    iget-wide v10, v2, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    const-wide/16 v16, 0x0

    cmp-long v0, v10, v16

    if-gtz v0, :cond_12d

    invoke-virtual {v14}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v10, v0

    iput-wide v10, v2, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    :cond_12d
    iget-wide v10, v2, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    cmp-long v0, v10, v16

    if-gtz v0, :cond_140

    if-eqz v4, :cond_139

    const v0, 0x7f11030d

    goto :goto_13c

    :cond_139
    const v0, 0x7f110317

    :goto_13c
    invoke-interface {v1, v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    goto :goto_143

    :cond_140
    invoke-interface {v1, v10, v11}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    :cond_143
    :goto_143
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v10, v3, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iget-object v10, v3, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    const-string v11, "w"

    invoke-virtual {v0, v10, v11, v8}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_155} :catch_1ac
    .catchall {:try_start_11e .. :try_end_155} :catchall_1a7

    :try_start_155
    new-instance v11, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v11, v10}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_15a} :catch_1a3
    .catchall {:try_start_155 .. :try_end_15a} :catchall_19f

    :try_start_15a
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-static {v0, v14, v11, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result v1
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_164} :catch_19c
    .catchall {:try_start_15a .. :try_end_164} :catchall_19a

    const/4 v12, 0x5

    if-ne v1, v12, :cond_171

    :try_start_167
    iget-object v0, v3, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->deleteDocument(Landroid/net/Uri;)Z

    goto :goto_17a

    :catchall_16d
    move-exception v0

    goto :goto_1b6

    :catch_16f
    move-exception v0

    goto :goto_1c1

    :cond_171
    if-nez v1, :cond_17a

    if-eqz v4, :cond_17a

    iget-object v0, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_17a} :catch_16f
    .catchall {:try_start_167 .. :try_end_17a} :catchall_16d

    :cond_17a
    :goto_17a
    if-eqz v1, :cond_190

    const/4 v2, 0x1

    if-eq v1, v2, :cond_190

    if-eqz v10, :cond_18a

    :try_start_181
    invoke-virtual {v10, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_185

    goto :goto_18a

    :catch_185
    move-exception v0

    move-object v2, v0

    invoke-static {v9, v5, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18a
    :goto_18a
    invoke-static {v9, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/CancellationSignal;->cancel()V

    :cond_190
    invoke-static {v14}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_19a
    move-exception v0

    goto :goto_1a1

    :catch_19c
    move-exception v0

    const/4 v1, 0x4

    goto :goto_1c1

    :catchall_19f
    move-exception v0

    const/4 v11, 0x0

    :goto_1a1
    const/4 v1, 0x4

    goto :goto_1b6

    :catch_1a3
    move-exception v0

    const/4 v1, 0x4

    const/4 v11, 0x0

    goto :goto_1c1

    :catchall_1a7
    move-exception v0

    const/4 v11, 0x0

    const/4 v1, 0x4

    const/4 v10, 0x0

    goto :goto_1b6

    :catch_1ac
    move-exception v0

    const/4 v1, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x0

    goto :goto_1c1

    :catchall_1b1
    move-exception v0

    const/4 v11, 0x0

    const/4 v1, 0x4

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_1b6
    move/from16 v18, v1

    move-object v1, v0

    move/from16 v0, v18

    goto :goto_1fd

    :catch_1bc
    move-exception v0

    const/4 v1, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_1c1
    :try_start_1c1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open the destination file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for writing due to an exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1dc
    .catchall {:try_start_1c1 .. :try_end_1dc} :catchall_16d

    if-eqz v1, :cond_1f2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f2

    if-eqz v10, :cond_1ec

    :try_start_1e3
    invoke-virtual {v10, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_1e6} :catch_1e7

    goto :goto_1ec

    :catch_1e7
    move-exception v0

    move-object v1, v0

    invoke-static {v9, v5, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1ec
    :goto_1ec
    invoke-static {v9, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/CancellationSignal;->cancel()V

    :cond_1f2
    invoke-static {v14}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x4

    return v0

    :goto_1fd
    if-eqz v0, :cond_213

    const/4 v2, 0x1

    if-eq v0, v2, :cond_213

    if-eqz v10, :cond_20d

    :try_start_204
    invoke-virtual {v10, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_207} :catch_208

    goto :goto_20d

    :catch_208
    move-exception v0

    move-object v2, v0

    invoke-static {v9, v5, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20d
    :goto_20d
    invoke-static {v9, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/CancellationSignal;->cancel()V

    :cond_213
    invoke-static {v14}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_21d
    :goto_21d
    const-string v0, "CopyFile: null parameter"

    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8
.end method

.method public static copySingleFileToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;ZZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I
    .registers 23

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v8, 0x4

    const-string v9, "UriFileOperationUtils"

    if-nez v0, :cond_11

    const-string v0, "contentFile is null or uri is null"

    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_11
    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    const/4 v10, 0x2

    if-eqz v2, :cond_1a6

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a6

    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto/16 :goto_1a6

    :cond_26
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-static/range {p2 .. p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    :cond_3c
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_49
    move-object v11, v1

    const-string v1, "copySingleFileToLocal: fileName = "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v13, 0x5

    const/4 v14, 0x1

    if-nez v1, :cond_8e

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8e

    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v3, v12

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    move-result v1

    if-eqz v1, :cond_8d

    if-eq v1, v14, :cond_8d

    if-ne v1, v13, :cond_8e

    :cond_8d
    return v1

    :cond_8e
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    cmp-long v1, v1, v3

    const/4 v2, 0x3

    if-gez v1, :cond_a3

    const-string v0, "not enough space"

    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_a3
    invoke-static {v11}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f1

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_ee

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/PasteFileInstance;->isToAll()Z

    move-result v3

    if-nez v3, :cond_cf

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v3

    iget-object v4, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/model/PasteFileInstance;->setStatus(I)V

    const-string v3, "PasteFileInstance.getInstance().setStatus(FileOperationManager.ifUserChooseOverwrite2(activity, contentFile.originalFileName));"

    invoke-static {v9, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cf
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/PasteFileInstance;->getStatus()I

    move-result v3

    if-eq v3, v14, :cond_e3

    if-eq v3, v10, :cond_df

    if-eq v3, v2, :cond_de

    return v13

    :cond_de
    return v14

    :cond_df
    invoke-static {v12}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_f1

    :cond_e3
    new-instance v2, Ljava/io/File;

    invoke-static {v12}, Lcom/android/fileexplorer/model/Util;->renameReal(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v2

    goto :goto_f1

    :cond_ee
    const/16 v0, 0xe

    return v0

    :cond_f1
    :goto_f1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f8

    return v8

    :cond_f8
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v7, :cond_105

    :try_start_fc
    const-string v0, "activity is null, return"

    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_101} :catch_171
    .catchall {:try_start_fc .. :try_end_101} :catchall_16f

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v8

    :cond_105
    :try_start_105
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_113} :catch_171
    .catchall {:try_start_105 .. :try_end_113} :catchall_16f

    if-nez v2, :cond_119

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v8

    :cond_119
    :try_start_119
    iget-wide v4, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-nez v4, :cond_13a

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    if-nez v4, :cond_13a

    invoke-static {v11, v3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12f

    move v1, v3

    goto :goto_15c

    :cond_12f
    const-string v0, "copySingleFileToLocal createFile error."

    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_134} :catch_171
    .catchall {:try_start_119 .. :try_end_134} :catchall_16f

    const/16 v0, 0x9

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_13a
    :try_start_13a
    iget-wide v4, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    cmp-long v4, v4, v14

    if-gtz v4, :cond_147

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    :cond_147
    if-eqz p5, :cond_151

    new-instance v4, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils$1;

    invoke-direct {v4, v7, v0}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils$1;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;)V

    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    :cond_151
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v4

    const v5, 0x8000

    invoke-static {v4, v2, v12, v1, v5}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZI)I

    move-result v1

    :goto_15c
    if-ne v1, v13, :cond_162

    invoke-static {v12}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_16b

    :cond_162
    if-nez v1, :cond_16b

    if-eqz p4, :cond_16b

    iget-object v0, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_16b} :catch_171
    .catchall {:try_start_13a .. :try_end_16b} :catchall_16f

    :cond_16b
    :goto_16b
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_16f
    move-exception v0

    goto :goto_1a2

    :catch_171
    move-exception v0

    :try_start_172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copySingleFileToLocal error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19e

    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    const v1, 0x7f11023c

    invoke-static {v0, v1, v3}, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->show(Landroid/content/Context;IZ)V
    :try_end_19e
    .catchall {:try_start_172 .. :try_end_19e} :catchall_16f

    :cond_19e
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v8

    :goto_1a2
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1a6
    :goto_1a6
    const-string v0, "CopyFile: null parameter"

    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10
.end method

.method public static copySingleFileToLocalFromMirror(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;ZZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x4

    const-string v3, "UriFileOperationUtils"

    if-nez v0, :cond_f

    const-string v0, "contentFile is null or uri is null"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f
    iget-object v4, v0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    const/4 v5, 0x2

    if-eqz v4, :cond_1db

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1db

    iget-object v4, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto/16 :goto_1db

    :cond_24
    invoke-static/range {p2 .. p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/fileexplorer/model/ContentFile;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_44

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_44
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_65

    :cond_58
    invoke-static {v4, v6}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_65
    const-string v6, "copySingleFileToLocalFromMirror: fileName = "

    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    move-result-wide v7

    iget-wide v9, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    cmp-long v7, v7, v9

    const/4 v8, 0x3

    if-gez v7, :cond_91

    const-string v0, "not enough space"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_91
    invoke-static {v4}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    const/4 v10, 0x5

    if-eqz v9, :cond_e1

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_de

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/fileexplorer/model/PasteFileInstance;->isToAll()Z

    move-result v9

    if-nez v9, :cond_be

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v9

    iget-object v11, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-static {v1, v11}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/fileexplorer/model/PasteFileInstance;->setStatus(I)V

    const-string v9, "PasteFileInstance.getInstance().setStatus(FileOperationManager.ifUserChooseOverwrite2(activity, contentFile.originalFileName));"

    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/fileexplorer/model/PasteFileInstance;->getStatus()I

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_d3

    if-eq v9, v5, :cond_cf

    if-eq v9, v8, :cond_ce

    return v10

    :cond_ce
    return v11

    :cond_cf
    invoke-static {v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_e1

    :cond_d3
    new-instance v5, Ljava/io/File;

    invoke-static {v6}, Lcom/android/fileexplorer/model/Util;->renameReal(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v5

    goto :goto_e1

    :cond_de
    const/16 v0, 0xe

    return v0

    :cond_e1
    :goto_e1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_ed

    const-string v0, "destFile exists"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_ed
    const/4 v5, 0x0

    const/4 v8, 0x0

    const-string v9, "copySingleFileToLocalFromMirror: finally close"

    if-nez v1, :cond_102

    :try_start_f3
    const-string v0, "activity is null, return"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f8} :catch_198
    .catchall {:try_start_f3 .. :try_end_f8} :catchall_195

    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    :cond_102
    :try_start_102
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v12

    iget-object v13, v0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    invoke-virtual {v11, v12, v13}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->openDirect(Landroid/content/Context;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_110} :catch_198
    .catchall {:try_start_102 .. :try_end_110} :catchall_195

    if-nez v11, :cond_121

    :try_start_112
    const-string v0, "fileDescriptor null"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_117} :catch_193
    .catchall {:try_start_112 .. :try_end_117} :catchall_1d0

    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    :cond_121
    :try_start_121
    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_12a} :catch_193
    .catchall {:try_start_121 .. :try_end_12a} :catchall_1d0

    :try_start_12a
    iget-wide v13, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    const-wide/16 v15, 0x0

    cmp-long v5, v13, v15

    if-nez v5, :cond_151

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v5

    if-nez v5, :cond_151

    invoke-static {v4, v8}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_140

    move v4, v8

    goto :goto_174

    :cond_140
    const-string v0, "copySingleFileToLocal createFile error."

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_145} :catch_190
    .catchall {:try_start_12a .. :try_end_145} :catchall_18d

    const/16 v0, 0x9

    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_151
    :try_start_151
    iget-wide v4, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    cmp-long v4, v4, v15

    if-gtz v4, :cond_15e

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    :cond_15e
    if-eqz p5, :cond_169

    new-instance v4, Landroidx/appcompat/app/s;

    const/4 v5, 0x6

    invoke-direct {v4, v5, v1, v0}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    :cond_169
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v4

    const v5, 0x8000

    invoke-static {v4, v12, v6, v7, v5}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZI)I

    move-result v4

    :goto_174
    if-ne v4, v10, :cond_17a

    invoke-static {v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_183

    :cond_17a
    if-nez v4, :cond_183

    if-eqz p4, :cond_183

    iget-object v0, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_183} :catch_190
    .catchall {:try_start_151 .. :try_end_183} :catchall_18d

    :cond_183
    :goto_183
    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v4

    :catchall_18d
    move-exception v0

    move-object v5, v12

    goto :goto_1d1

    :catch_190
    move-exception v0

    move-object v5, v12

    goto :goto_19a

    :catch_193
    move-exception v0

    goto :goto_19a

    :catchall_195
    move-exception v0

    move-object v11, v5

    goto :goto_1d1

    :catch_198
    move-exception v0

    move-object v11, v5

    :goto_19a
    :try_start_19a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copySingleFileToLocal error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    const v1, 0x7f11023c

    invoke-static {v0, v1, v8}, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->show(Landroid/content/Context;IZ)V
    :try_end_1c6
    .catchall {:try_start_19a .. :try_end_1c6} :catchall_1d0

    :cond_1c6
    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    :catchall_1d0
    move-exception v0

    :goto_1d1
    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1db
    :goto_1db
    const-string v1, "CopyFile: null parameter, uri:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", destDirPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", originalFileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private static synthetic lambda$copySingleFileToLocalFromMirror$0(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;)V
    .registers 4

    iget-wide v0, p1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    invoke-interface {p0, v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    return-void
.end method
