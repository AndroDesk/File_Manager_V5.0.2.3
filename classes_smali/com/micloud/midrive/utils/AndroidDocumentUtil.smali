.class public Lcom/micloud/midrive/utils/AndroidDocumentUtil;
.super Ljava/lang/Object;
.source "AndroidDocumentUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 1
    const-string v0, "_data"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v3

    .line 7
    const/4 v7, 0x0

    .line 8
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v1

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v2, p1

    .line 14
    move-object v4, p2

    .line 15
    move-object v5, p3

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_3d
    .catchall {:try_start_7 .. :try_end_13} :catchall_3b

    .line 20
    if-eqz p0, :cond_35

    .line 22
    :cond_15
    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_35

    .line 28
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 31
    move-result p2

    .line 32
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result p3

    .line 40
    if-nez p3, :cond_2f

    .line 42
    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    move-result p3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_33
    .catchall {:try_start_15 .. :try_end_2d} :catchall_65

    .line 46
    if-eqz p3, :cond_15

    .line 48
    :cond_2f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 51
    return-object p2

    .line 52
    :catch_33
    move-exception p2

    .line 53
    goto :goto_3f

    .line 54
    :cond_35
    if-eqz p0, :cond_64

    .line 56
    :goto_37
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 59
    goto :goto_64

    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    goto :goto_67

    .line 62
    :catch_3d
    move-exception p2

    .line 63
    move-object p0, v7

    .line 64
    :goto_3f
    const/4 p3, 0x1

    .line 65
    :try_start_40
    new-array p3, p3, [Ljava/lang/Object;

    .line 67
    const/4 p4, 0x0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string v1, "Failed to get data column. from uri "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string p1, ", e = "

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    aput-object p1, p3, p4

    .line 95
    invoke-static {p3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_61
    .catchall {:try_start_40 .. :try_end_61} :catchall_65

    .line 98
    if-eqz p0, :cond_64

    .line 100
    goto :goto_37

    .line 101
    :cond_64
    :goto_64
    return-object v7

    .line 102
    :catchall_65
    move-exception p1

    .line 103
    move-object v7, p0

    .line 104
    :goto_67
    if-eqz v7, :cond_6c

    .line 106
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_6c
    throw p1
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_bd

    .line 8
    invoke-static {p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->isExternalStorageDocument(Landroid/net/Uri;)Z

    .line 11
    move-result v0

    .line 12
    const-string v2, ":"

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v0, :cond_42

    .line 18
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    aget-object v1, v0, v4

    .line 28
    const-string v2, "primary"

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_112

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const-string v2, "/"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    aget-object v0, v0, v3

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getPathFromInputStreamUriIfNoPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_42
    invoke-static {p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->isDownloadsDocument(Landroid/net/Uri;)Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_7a

    .line 73
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    :try_start_4c
    const-string v2, "content://downloads/public_downloads"

    .line 79
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    move-result-object v2

    .line 83
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 90
    move-result-wide v5

    .line 91
    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 94
    move-result-object v0
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_5e} :catch_5f

    .line 95
    goto :goto_71

    .line 96
    :catch_5f
    move-exception v0

    .line 97
    const/4 v2, 0x2

    .line 98
    new-array v2, v2, [Ljava/lang/Object;

    .line 100
    const-string v5, "doc id format failed, use uri "

    .line 102
    invoke-static {v5, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 105
    move-result-object v5

    .line 106
    aput-object v5, v2, v4

    .line 108
    aput-object v0, v2, v3

    .line 110
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 113
    move-object v0, p1

    .line 114
    :goto_71
    invoke-static {p0, v0, v1, v1, v1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getPathFromInputStreamUriIfNoPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_7a
    invoke-static {p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->isMediaDocument(Landroid/net/Uri;)Z

    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_112

    .line 129
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    aget-object v2, v0, v4

    .line 139
    const-string v5, "image"

    .line 141
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_95

    .line 147
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 149
    goto :goto_ac

    .line 150
    :cond_95
    const-string v5, "video"

    .line 152
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_a0

    .line 158
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 160
    goto :goto_ac

    .line 161
    :cond_a0
    const-string v5, "audio"

    .line 163
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_ab

    .line 169
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 171
    goto :goto_ac

    .line 172
    :cond_ab
    move-object v2, v1

    .line 173
    :goto_ac
    new-array v5, v3, [Ljava/lang/String;

    .line 175
    aget-object v0, v0, v3

    .line 177
    aput-object v0, v5, v4

    .line 179
    const-string v0, "_id=?"

    .line 181
    invoke-static {p0, v2, v0, v5, v1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getPathFromInputStreamUriIfNoPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :cond_bd
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    const-string v2, "content"

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_fd

    .line 202
    invoke-static {p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->isOldGooglePhotosUri(Landroid/net/Uri;)Z

    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_d8

    .line 208
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getPathFromInputStreamUriIfNoPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object p0

    .line 216
    return-object p0

    .line 217
    :cond_d8
    invoke-static {p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->isNewGooglePhotosUri(Landroid/net/Uri;)Z

    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_e3

    .line 223
    invoke-static {p0, p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getPathFromInputStreamUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 226
    move-result-object p0

    .line 227
    return-object p0

    .line 228
    :cond_e3
    invoke-static {p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->isContactsFilesUri(Landroid/net/Uri;)Z

    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_ee

    .line 234
    invoke-static {p0, p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getPathFromInputStreamUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 237
    move-result-object p0

    .line 238
    return-object p0

    .line 239
    :cond_ee
    invoke-static {p0, p1, v1, v1, v1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 243
    if-nez v0, :cond_f8

    .line 245
    invoke-static {p0, p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 248
    move-result-object v0

    .line 249
    :cond_f8
    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getPathFromInputStreamUriIfNoPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    move-result-object p0

    .line 253
    return-object p0

    .line 254
    :cond_fd
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    const-string v1, "file"

    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_112

    .line 266
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 269
    move-result-object v0

    .line 270
    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getPathFromInputStreamUriIfNoPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    move-result-object p0

    .line 274
    return-object p0

    .line 275
    :cond_112
    invoke-static {p0, p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getPathFromInputStreamUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 278
    move-result-object p0

    .line 279
    return-object p0
.end method

.method private static getPathFromInputStreamUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v3

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v4, p1

    .line 13
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_63

    .line 19
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_63

    .line 25
    const-string v4, "_display_name"

    .line 27
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 30
    move-result v4

    .line 31
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 42
    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_85
    .catchall {:try_start_3 .. :try_end_2a} :catchall_82

    .line 43
    :try_start_2a
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 50
    move-result-object v5

    .line 51
    sget-object v6, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->PREVIEW:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 53
    const-string v7, "send"

    .line 55
    invoke-static {p0, v5, v6, v7, v4}, Lcom/micloud/midrive/utils/LocalPathUtils;->getDownloadFilePath(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3a} :catch_60
    .catchall {:try_start_2a .. :try_end_3a} :catchall_5d

    .line 59
    :try_start_3a
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 61
    new-instance v5, Ljava/io/FileOutputStream;

    .line 63
    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_44} :catch_59
    .catchall {:try_start_3a .. :try_end_44} :catchall_5d

    .line 69
    const/16 v0, 0x800

    .line 71
    :try_start_46
    new-array v0, v0, [B

    .line 73
    :goto_48
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 76
    move-result v5

    .line 77
    if-lez v5, :cond_52

    .line 79
    invoke-virtual {v4, v0, v2, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 82
    goto :goto_48

    .line 83
    :cond_52
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_55} :catch_57
    .catchall {:try_start_46 .. :try_end_55} :catchall_b3

    .line 86
    move-object v0, p1

    .line 87
    goto :goto_65

    .line 88
    :catch_57
    move-exception v0

    .line 89
    goto :goto_8a

    .line 90
    :catch_59
    move-exception v3

    .line 91
    move-object v4, v0

    .line 92
    move-object v0, v3

    .line 93
    goto :goto_8a

    .line 94
    :catchall_5d
    move-exception p0

    .line 95
    move-object v4, v0

    .line 96
    goto :goto_b4

    .line 97
    :catch_60
    move-exception p0

    .line 98
    move-object v4, v0

    .line 99
    goto :goto_88

    .line 100
    :cond_63
    move-object p0, v0

    .line 101
    move-object v4, p0

    .line 102
    :goto_65
    if-eqz v0, :cond_73

    .line 104
    :try_start_67
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 107
    goto :goto_73

    .line 108
    :catch_6b
    move-exception p1

    .line 109
    new-array v0, v1, [Ljava/lang/Object;

    .line 111
    aput-object p1, v0, v2

    .line 113
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 116
    :cond_73
    :goto_73
    if-eqz v4, :cond_b2

    .line 118
    :try_start_75
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    .line 121
    goto :goto_b2

    .line 122
    :catch_79
    move-exception p1

    .line 123
    new-array v0, v1, [Ljava/lang/Object;

    .line 125
    aput-object p1, v0, v2

    .line 127
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 130
    goto :goto_b2

    .line 131
    :catchall_82
    move-exception p0

    .line 132
    move-object v4, v0

    .line 133
    goto :goto_b5

    .line 134
    :catch_85
    move-exception p0

    .line 135
    move-object p1, v0

    .line 136
    move-object v4, p1

    .line 137
    :goto_88
    move-object v0, p0

    .line 138
    move-object p0, v4

    .line 139
    :goto_8a
    const/4 v3, 0x2

    .line 140
    :try_start_8b
    new-array v3, v3, [Ljava/lang/Object;

    .line 142
    const-string v5, "getPathFromInputStreamUri error:"

    .line 144
    aput-object v5, v3, v2

    .line 146
    aput-object v0, v3, v1

    .line 148
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_b3

    .line 151
    if-eqz p1, :cond_a4

    .line 153
    :try_start_98
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    .line 156
    goto :goto_a4

    .line 157
    :catch_9c
    move-exception p1

    .line 158
    new-array v0, v1, [Ljava/lang/Object;

    .line 160
    aput-object p1, v0, v2

    .line 162
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 165
    :cond_a4
    :goto_a4
    if-eqz v4, :cond_b2

    .line 167
    :try_start_a6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    .line 170
    goto :goto_b2

    .line 171
    :catch_aa
    move-exception p1

    .line 172
    new-array v0, v1, [Ljava/lang/Object;

    .line 174
    aput-object p1, v0, v2

    .line 176
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 179
    :cond_b2
    :goto_b2
    return-object p0

    .line 180
    :catchall_b3
    move-exception p0

    .line 181
    :goto_b4
    move-object v0, p1

    .line 182
    :goto_b5
    if-eqz v0, :cond_c3

    .line 184
    :try_start_b7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    .line 187
    goto :goto_c3

    .line 188
    :catch_bb
    move-exception p1

    .line 189
    new-array v0, v1, [Ljava/lang/Object;

    .line 191
    aput-object p1, v0, v2

    .line 193
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 196
    :cond_c3
    :goto_c3
    if-eqz v4, :cond_d1

    .line 198
    :try_start_c5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    .line 201
    goto :goto_d1

    .line 202
    :catch_c9
    move-exception p1

    .line 203
    new-array v0, v1, [Ljava/lang/Object;

    .line 205
    aput-object p1, v0, v2

    .line 207
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 210
    :cond_d1
    :goto_d1
    throw p0
.end method

.method private static getPathFromInputStreamUriIfNoPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-ge v0, v1, :cond_e

    .line 7
    invoke-static {p2}, Lcom/micloud/midrive/utils/FileSystemUtils;->canRead(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    return-object p2

    .line 15
    :cond_e
    :goto_e
    invoke-static {p0, p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getPathFromInputStreamUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/utils/FileHelper;->getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/micloud/midrive/utils/FileHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "content://media/external/file"

    .line 11
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    new-array v2, v2, [Ljava/lang/String;

    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v0, v2, v3

    .line 21
    const-string v0, "title=?"

    .line 23
    invoke-static {p0, v1, v0, v2, p1}, Lcom/micloud/midrive/utils/AndroidDocumentUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private static isContactsFilesUri(Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.android.contacts.files"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.android.providers.downloads.documents"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.android.externalstorage.documents"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static isMediaDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.android.providers.media.documents"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static isNewGooglePhotosUri(Landroid/net/Uri;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.google.android.apps.photos.contentprovider"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1a

    .line 13
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    const-string v0, "mediakey"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1a

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p0, 0x0

    .line 28
    :goto_1b
    return p0
.end method

.method private static isOldGooglePhotosUri(Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.google.android.apps.photos.content"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method
