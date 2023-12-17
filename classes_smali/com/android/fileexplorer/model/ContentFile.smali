.class public Lcom/android/fileexplorer/model/ContentFile;
.super Ljava/lang/Object;
.source "ContentFile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentFile"


# instance fields
.field public fileSize:J

.field public mimeType:Ljava/lang/String;

.field public originalFileName:Ljava/lang/String;

.field public originalFilePath:Ljava/lang/String;

.field public relativePath:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public uriStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    return-void
.end method

.method public static generateFromMirrorUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;
    .registers 13

    const-string v0, "ContentFile"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b6

    const-string v1, "content"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_b6

    :cond_13
    new-instance v1, Lcom/android/fileexplorer/model/ContentFile;

    invoke-direct {v1}, Lcom/android/fileexplorer/model/ContentFile;-><init>()V

    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->uriStr:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    iput-object v2, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    goto :goto_29

    :cond_23
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    :goto_29
    const-string p0, "_size"

    const-string v3, "_display_name"

    const-string v4, "relative_path"

    filled-new-array {p0, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    :try_start_37
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-static {v2, p0}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->relativePath:Ljava/lang/String;

    :cond_5e
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->mimeType:Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_6a} :catch_6d
    .catchall {:try_start_37 .. :try_end_6a} :catchall_6b

    goto :goto_86

    :catchall_6b
    move-exception p0

    goto :goto_b2

    :catch_6d
    move-exception p0

    :try_start_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateFromUri: error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_6e .. :try_end_86} :catchall_6b

    :goto_86
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateFromUri: fileSize = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " path = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    if-nez p0, :cond_b1

    const-string p0, ""

    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    :cond_b1
    return-object v1

    :goto_b2
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_b6
    :goto_b6
    return-object v2
.end method

.method public static generateFromUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;
    .registers 14

    const-string v0, "ContentFile"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c5

    const-string v1, "content"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_c5

    :cond_13
    new-instance v1, Lcom/android/fileexplorer/model/ContentFile;

    invoke-direct {v1}, Lcom/android/fileexplorer/model/ContentFile;-><init>()V

    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->uriStr:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    iput-object v2, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    goto :goto_29

    :cond_23
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    :goto_29
    const-string v3, "_size"

    const-string v4, "_display_name"

    const-string v5, "_data"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    :try_start_37
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_7a

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-static {v2, v3}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    invoke-static {v2, v4}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5e} :catch_61
    .catchall {:try_start_37 .. :try_end_5e} :catchall_5f

    goto :goto_7a

    :catchall_5f
    move-exception p0

    goto :goto_c1

    :catch_61
    move-exception v3

    :try_start_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateFromUri: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_5f

    :cond_7a
    :goto_7a
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_7d
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/fileexplorer/model/ContentFile;->mimeType:Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8e
    const-string v2, "generateFromUri: originalFileName = "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-static {p0}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    :cond_b8
    iget-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    if-nez p0, :cond_c0

    const-string p0, ""

    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    :cond_c0
    return-object v1

    :goto_c1
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_c5
    :goto_c5
    return-object v2
.end method

.method public static getRelativePathFromMirrorUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_5e

    const-string v0, "content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5e

    :cond_11
    const-string v0, "relative_path"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    :try_start_1c
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_37

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_37

    invoke-static {v8, v0}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_3d
    .catchall {:try_start_1c .. :try_end_37} :catchall_3b

    :cond_37
    :goto_37
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_59

    :catchall_3b
    move-exception p0

    goto :goto_5a

    :catch_3d
    move-exception p0

    :try_start_3e
    const-string v0, "ContentFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateFromUri: error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_3b

    goto :goto_37

    :goto_59
    return-object v1

    :goto_5a
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public static isEmpty(Lcom/android/fileexplorer/model/ContentFile;)Z
    .registers 2

    if-eqz p0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/model/ContentFile;->uriStr:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method
