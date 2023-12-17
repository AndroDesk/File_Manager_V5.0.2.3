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
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 8
    return-void
.end method

.method public static generateFromMirrorUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;
    .registers 13

    .line 1
    const-string v0, "ContentFile"

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_b6

    .line 10
    const-string v1, "content"

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_13

    .line 18
    goto/16 :goto_b6

    .line 20
    :cond_13
    new-instance v1, Lcom/android/fileexplorer/model/ContentFile;

    .line 22
    invoke-direct {v1}, Lcom/android/fileexplorer/model/ContentFile;-><init>()V

    .line 25
    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->uriStr:Ljava/lang/String;

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_23

    .line 33
    iput-object v2, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 35
    goto :goto_29

    .line 36
    :cond_23
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    move-result-object p0

    .line 40
    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 42
    :goto_29
    const-string p0, "_size"

    .line 44
    const-string v3, "_display_name"

    .line 46
    const-string v4, "relative_path"

    .line 48
    filled-new-array {p0, v3, v4}, [Ljava/lang/String;

    .line 51
    move-result-object v7

    .line 52
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 55
    move-result-object v11

    .line 56
    :try_start_37
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    move-result-object v5

    .line 60
    iget-object v6, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_5e

    .line 71
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_5e

    .line 77
    invoke-static {v2, p0}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    .line 80
    move-result-wide v5

    .line 81
    iput-wide v5, v1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 83
    invoke-static {v2, v3}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 89
    invoke-static {v2, v4}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->relativePath:Ljava/lang/String;

    .line 95
    :cond_5e
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    move-result-object p0

    .line 99
    iget-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 101
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->mimeType:Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_6a} :catch_6d
    .catchall {:try_start_37 .. :try_end_6a} :catchall_6b

    .line 107
    goto :goto_86

    .line 108
    :catchall_6b
    move-exception p0

    .line 109
    goto :goto_b2

    .line 110
    :catch_6d
    move-exception p0

    .line 111
    :try_start_6e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string v4, "generateFromUri: error: "

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_6e .. :try_end_86} :catchall_6b

    .line 135
    :goto_86
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    const-string v2, "generateFromUri: fileSize = "

    .line 145
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-wide v2, v1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 150
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    const-string v2, " path = "

    .line 155
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v2, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 160
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p0

    .line 167
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 172
    if-nez p0, :cond_b1

    .line 174
    const-string p0, ""

    .line 176
    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 178
    :cond_b1
    return-object v1

    .line 179
    :goto_b2
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    throw p0

    .line 183
    :cond_b6
    :goto_b6
    return-object v2
.end method

.method public static generateFromUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;
    .registers 14

    .line 1
    const-string v0, "ContentFile"

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_c5

    .line 10
    const-string v1, "content"

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_13

    .line 18
    goto/16 :goto_c5

    .line 20
    :cond_13
    new-instance v1, Lcom/android/fileexplorer/model/ContentFile;

    .line 22
    invoke-direct {v1}, Lcom/android/fileexplorer/model/ContentFile;-><init>()V

    .line 25
    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->uriStr:Ljava/lang/String;

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_23

    .line 33
    iput-object v2, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 35
    goto :goto_29

    .line 36
    :cond_23
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    move-result-object v3

    .line 40
    iput-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 42
    :goto_29
    const-string v3, "_size"

    .line 44
    const-string v4, "_display_name"

    .line 46
    const-string v5, "_data"

    .line 48
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    .line 51
    move-result-object v8

    .line 52
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 55
    move-result-object v12

    .line 56
    :try_start_37
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    move-result-object v6

    .line 60
    iget-object v7, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v10, 0x0

    .line 64
    const/4 v11, 0x0

    .line 65
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_7a

    .line 71
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_7a

    .line 77
    invoke-static {v2, v3}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    .line 80
    move-result-wide v6

    .line 81
    iput-wide v6, v1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 83
    invoke-static {v2, v4}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    iput-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 89
    invoke-static {v2, v5}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    iput-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5e} :catch_61
    .catchall {:try_start_37 .. :try_end_5e} :catchall_5f

    .line 95
    goto :goto_7a

    .line 96
    :catchall_5f
    move-exception p0

    .line 97
    goto :goto_c1

    .line 98
    :catch_61
    move-exception v3

    .line 99
    :try_start_62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v5, "generateFromUri: error: "

    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_5f

    .line 123
    :cond_7a
    :goto_7a
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 126
    :try_start_7d
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 129
    move-result-object v2

    .line 130
    iget-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 132
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 135
    move-result-object v2

    .line 136
    iput-object v2, v1, Lcom/android/fileexplorer/model/ContentFile;->mimeType:Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_89} :catch_8a

    .line 138
    goto :goto_8e

    .line 139
    :catch_8a
    move-exception v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    :goto_8e
    const-string v2, "generateFromUri: originalFileName = "

    .line 145
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    move-result-object v2

    .line 149
    iget-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, ", path = "

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v3, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v2

    .line 168
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_b8

    .line 179
    invoke-static {p0}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object p0

    .line 183
    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 185
    :cond_b8
    iget-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 187
    if-nez p0, :cond_c0

    .line 189
    const-string p0, ""

    .line 191
    iput-object p0, v1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 193
    :cond_c0
    return-object v1

    .line 194
    :goto_c1
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 197
    throw p0

    .line 198
    :cond_c5
    :goto_c5
    return-object v2
.end method

.method public static getRelativePathFromMirrorUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 7
    if-nez v0, :cond_5e

    .line 9
    const-string v0, "content"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    goto :goto_5e

    .line 18
    :cond_11
    const-string v0, "relative_path"

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    const/4 v8, 0x0

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 28
    move-result-object v2

    .line 29
    :try_start_1c
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    move-result-object v3

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    move-result-object v8

    .line 44
    if-eqz v8, :cond_37

    .line 46
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_37

    .line 52
    invoke-static {v8, v0}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_3d
    .catchall {:try_start_1c .. :try_end_37} :catchall_3b

    .line 56
    :cond_37
    :goto_37
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    goto :goto_59

    .line 60
    :catchall_3b
    move-exception p0

    .line 61
    goto :goto_5a

    .line 62
    :catch_3d
    move-exception p0

    .line 63
    :try_start_3e
    const-string v0, "ContentFile"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v3, "generateFromUri: error: "

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_3b

    .line 89
    goto :goto_37

    .line 90
    :goto_59
    return-object v1

    .line 91
    :goto_5a
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    throw p0

    .line 95
    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public static isEmpty(Lcom/android/fileexplorer/model/ContentFile;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_11

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 5
    if-eqz v0, :cond_11

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/model/ContentFile;->uriStr:Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_11

    .line 11
    iget-object p0, p0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 13
    if-nez p0, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 p0, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 p0, 0x1

    .line 19
    :goto_12
    return p0
.end method
