.class public Lcom/micloud/midrive/infos/FileItemInfo$Factory;
.super Ljava/lang/Object;
.source "FileItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/FileItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "private constructor of FileItemInfo.Factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/micloud/midrive/infos/FileItemInfo;
    .registers 18

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_56

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_56

    :try_start_26
    const-string v0, "date_added"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v5, "date_modified"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_3c} :catch_47

    :try_start_3c
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_44} :catch_45

    goto :goto_52

    :catch_45
    move-exception v0

    goto :goto_49

    :catch_47
    move-exception v0

    move-wide v7, v2

    :goto_49
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :goto_52
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_57

    :cond_56
    move-wide v7, v2

    :goto_57
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/Coder;->encodeSHA1(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/micloud/midrive/utils/Coder;->encodeMD5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v0

    move-object v10, v1

    move-wide v12, v2

    goto :goto_9f

    :cond_7b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/micloud/midrive/utils/FileSystemUtils;->reliableNotExists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_a7

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-static {v0}, Lcom/micloud/midrive/utils/Coder;->encodeMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/micloud/midrive/utils/Coder;->encodeSHA1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v0}, Lcom/micloud/midrive/utils/FileSystemUtils;->getCreateTime(Ljava/io/File;)J

    move-result-wide v7

    move-object v10, v1

    move-object v11, v2

    move-wide v12, v3

    :goto_9f
    move-wide v14, v7

    new-instance v0, Lcom/micloud/midrive/infos/FileItemInfo;

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/micloud/midrive/infos/FileItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0

    :cond_a7
    new-instance v0, Ljava/io/IOException;

    const-string v2, " file info error."

    invoke-static {v1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileItemInfo;
    .registers 9

    new-instance v7, Lcom/micloud/midrive/infos/FileItemInfo;

    const-string v0, "md5"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "sha1"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "localModifyTime"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "localCreateTime"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/micloud/midrive/infos/FileItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v7
.end method
