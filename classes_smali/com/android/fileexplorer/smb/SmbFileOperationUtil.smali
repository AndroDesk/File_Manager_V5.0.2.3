.class public Lcom/android/fileexplorer/smb/SmbFileOperationUtil;
.super Ljava/lang/Object;
.source "SmbFileOperationUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmbFileOperation"

.field private static final SMB_URL:Ljava/lang/String; = "smb:%s"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyTo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 1
    const-string v0, "/"

    .line 3
    const-string v1, "copyTo failed"

    .line 5
    const-string v2, "SmbFileOperation"

    .line 7
    :try_start_6
    new-instance v3, Ljcifs/smb/SmbFile;

    .line 9
    invoke-direct {v3, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_2c

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_2c

    .line 24
    new-instance v3, Ljcifs/smb/SmbFile;

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v3, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 44
    goto :goto_31

    .line 45
    :cond_2c
    new-instance v3, Ljcifs/smb/SmbFile;

    .line 47
    invoke-direct {v3, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 50
    :goto_31
    if-eqz p0, :cond_3a

    .line 52
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->length()J

    .line 55
    move-result-wide v4

    .line 56
    invoke-interface {p0, v4, v5}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    .line 59
    :cond_3a
    new-instance p1, Ljcifs/smb/SmbFile;

    .line 61
    const-string v0, "smb://"

    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    move-result v0

    .line 67
    const/4 v4, 0x0

    .line 68
    if-eqz v0, :cond_46

    .line 70
    goto :goto_51

    .line 71
    :cond_46
    const-string v0, "smb:%s"

    .line 73
    const/4 v5, 0x1

    .line 74
    new-array v5, v5, [Ljava/lang/Object;

    .line 76
    aput-object p2, v5, v4

    .line 78
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    :goto_51
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-direct {p1, p2, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_6c

    .line 103
    const-string p0, "cannot copy file to same folder"

    .line 105
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return v4

    .line 109
    :cond_6c
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isFile()Z

    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_78

    .line 115
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 118
    move-result p2

    .line 119
    if-nez p2, :cond_84

    .line 121
    :cond_78
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_87

    .line 127
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isFile()Z

    .line 130
    move-result p2

    .line 131
    if-eqz p2, :cond_87

    .line 133
    :cond_84
    const/16 p0, 0xe

    .line 135
    return p0

    .line 136
    :cond_87
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isFile()Z

    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_a8

    .line 142
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 145
    move-result-object p2

    .line 146
    invoke-static {p0, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    .line 149
    move-result p2

    .line 150
    if-eqz p0, :cond_9f

    .line 152
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 155
    move-result p0

    .line 156
    if-eqz p0, :cond_9f

    .line 158
    const/4 p0, 0x5

    .line 159
    return p0

    .line 160
    :cond_9f
    if-eqz p2, :cond_ab

    .line 162
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->delete()V

    .line 165
    invoke-virtual {v3, p1}, Ljcifs/smb/SmbFile;->copyTo(Ljcifs/smb/SmbFile;)V

    .line 168
    goto :goto_ab

    .line 169
    :cond_a8
    invoke-virtual {v3, p1}, Ljcifs/smb/SmbFile;->copyTo(Ljcifs/smb/SmbFile;)V

    .line 172
    :cond_ab
    :goto_ab
    new-instance p0, Ljava/lang/StringBuilder;

    .line 174
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    const-string p2, "copy: "

    .line 179
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string p2, " -> "

    .line 191
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p0

    .line 205
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_cf} :catch_d5
    .catch Ljcifs/smb/SmbException; {:try_start_6 .. :try_end_cf} :catch_d0

    .line 208
    return v4

    .line 209
    :catch_d0
    move-exception p0

    .line 210
    invoke-static {v2, v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    goto :goto_d9

    .line 214
    :catch_d5
    move-exception p0

    .line 215
    invoke-static {v2, v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :goto_d9
    const/4 p0, 0x4

    .line 219
    return p0
.end method

.method public static delete(Ljava/lang/String;)Z
    .registers 6

    .line 1
    const-string v0, "del file failed: "

    .line 3
    const-string v1, "SmbFileOperation"

    .line 5
    :try_start_4
    new-instance v2, Ljcifs/smb/SmbFile;

    .line 7
    invoke-direct {v2, p0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->isFile()Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_18

    .line 16
    new-instance v2, Ljcifs/smb/SmbFile;

    .line 18
    invoke-direct {v2, p0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->delete()V

    .line 24
    goto :goto_31

    .line 25
    :cond_18
    new-instance v2, Ljcifs/smb/SmbFile;

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v4, "/"

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v2, v3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->delete()V
    :try_end_31
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_31} :catch_47
    .catch Ljcifs/smb/SmbException; {:try_start_4 .. :try_end_31} :catch_33

    .line 50
    :goto_31
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :catch_33
    move-exception v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-static {v1, p0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    goto :goto_5a

    .line 72
    :catch_47
    move-exception v2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    invoke-static {v1, p0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :goto_5a
    const/4 p0, 0x0

    .line 92
    return p0
.end method

.method public static deleteFiles(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/ArrayList;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    move v1, v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_32

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 20
    if-eqz p0, :cond_1d

    .line 22
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1d

    .line 28
    const/4 p0, 0x5

    .line 29
    return p0

    .line 30
    :cond_1d
    if-eqz v1, :cond_29

    .line 32
    iget-object v1, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 34
    invoke-static {v1}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->delete(Ljava/lang/String;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_29

    .line 40
    move v1, v0

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v1, v3

    .line 43
    :goto_2a
    if-eqz p0, :cond_6

    .line 45
    iget-wide v2, v2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 47
    invoke-interface {p0, v2, v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    .line 50
    goto :goto_6

    .line 51
    :cond_32
    if-eqz v1, :cond_35

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    const/4 v3, 0x4

    .line 55
    :goto_36
    return v3
.end method

.method public static download(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;Z)I
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move/from16 v3, p3

    .line 9
    const-string v4, "/"

    .line 11
    const-string v5, "SmbFileOperation"

    .line 13
    if-eqz v1, :cond_17e

    .line 15
    if-nez v2, :cond_12

    .line 17
    goto/16 :goto_17e

    .line 19
    :cond_12
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x4

    .line 21
    :try_start_14
    new-instance v8, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v9, "download: "

    .line 28
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v9, " -> "

    .line 36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 42
    move-result-object v9

    .line 43
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v8

    .line 50
    invoke-static {v5, v8}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v8, Ljcifs/smb/SmbFile;

    .line 55
    invoke-direct {v8, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v8}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 61
    move-result v9

    .line 62
    const/4 v10, 0x1

    .line 63
    const/4 v11, 0x5

    .line 64
    if-eqz v9, :cond_c7

    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 69
    move-result v9

    .line 70
    if-nez v9, :cond_5b

    .line 72
    new-instance v8, Ljcifs/smb/SmbFile;

    .line 74
    new-instance v9, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v4

    .line 89
    invoke-direct {v8, v4}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 92
    :cond_5b
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_70

    .line 98
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    .line 101
    move-result v4
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_65} :catch_15f
    .catchall {:try_start_14 .. :try_end_65} :catchall_15c

    .line 102
    if-nez v4, :cond_70

    .line 104
    const/16 v0, 0x8

    .line 106
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 109
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    return v0

    .line 113
    :cond_70
    :try_start_70
    invoke-virtual {v8}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    .line 116
    move-result-object v4

    .line 117
    if-eqz v4, :cond_bf

    .line 119
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 122
    move-result-object v8

    .line 123
    array-length v9, v4

    .line 124
    move v14, v10

    .line 125
    const/4 v13, 0x0

    .line 126
    :goto_7d
    if-ge v13, v9, :cond_b7

    .line 128
    aget-object v15, v4, v13

    .line 130
    if-eqz v0, :cond_90

    .line 132
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 135
    move-result v16
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_87} :catch_15f
    .catchall {:try_start_70 .. :try_end_87} :catchall_15c

    .line 136
    if-eqz v16, :cond_90

    .line 138
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    return v11

    .line 145
    :cond_90
    :try_start_90
    new-instance v12, Ljava/io/File;

    .line 147
    invoke-virtual {v15}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 150
    move-result-object v11

    .line 151
    invoke-static {v8, v11}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object v11

    .line 155
    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v15}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 161
    move-result-object v11

    .line 162
    invoke-static {v0, v11, v12, v3}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->download(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;Z)I

    .line 165
    move-result v7
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a5} :catch_15f
    .catchall {:try_start_90 .. :try_end_a5} :catchall_15c

    .line 166
    if-eqz v7, :cond_a8

    .line 168
    const/4 v14, 0x0

    .line 169
    :cond_a8
    if-eqz v7, :cond_b3

    .line 171
    if-eq v7, v10, :cond_b3

    .line 173
    :cond_ac
    :goto_ac
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 176
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 179
    return v7

    .line 180
    :cond_b3
    add-int/lit8 v13, v13, 0x1

    .line 182
    const/4 v11, 0x5

    .line 183
    goto :goto_7d

    .line 184
    :cond_b7
    if-eqz v14, :cond_ac

    .line 186
    if-eqz v3, :cond_ac

    .line 188
    :try_start_bb
    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->delete(Ljava/lang/String;)Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_15f
    .catchall {:try_start_bb .. :try_end_be} :catchall_15c

    .line 191
    goto :goto_ac

    .line 192
    :cond_bf
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 195
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 198
    goto/16 :goto_175

    .line 200
    :cond_c7
    :try_start_c7
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    .line 203
    move-result v4

    .line 204
    const/16 v9, 0x1000

    .line 206
    if-eqz v4, :cond_12c

    .line 208
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isFile()Z

    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_12c

    .line 214
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 217
    move-result-object v4

    .line 218
    invoke-static {v0, v4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    .line 221
    move-result v4

    .line 222
    if-eqz v0, :cond_ed

    .line 224
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 227
    move-result v11
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_e3} :catch_15f
    .catchall {:try_start_c7 .. :try_end_e3} :catchall_15c

    .line 228
    if-eqz v11, :cond_ed

    .line 230
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    const/4 v0, 0x5

    .line 237
    return v0

    .line 238
    :cond_ed
    if-eqz v4, :cond_125

    .line 240
    :try_start_ef
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_11c

    .line 246
    new-instance v4, Ljcifs/smb/SmbFileInputStream;

    .line 248
    invoke-direct {v4, v8}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fa} :catch_15f
    .catchall {:try_start_ef .. :try_end_fa} :catchall_15c

    .line 251
    :try_start_fa
    new-instance v8, Ljava/io/FileOutputStream;

    .line 253
    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_ff} :catch_158
    .catchall {:try_start_fa .. :try_end_ff} :catchall_154

    .line 256
    :try_start_ff
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0, v4, v8, v9}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 263
    move-result v6
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_107} :catch_152
    .catchall {:try_start_ff .. :try_end_107} :catchall_150

    .line 264
    const/4 v0, 0x5

    .line 265
    if-ne v6, v0, :cond_10e

    .line 267
    :try_start_10a
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 270
    goto :goto_115

    .line 271
    :cond_10e
    if-nez v6, :cond_115

    .line 273
    if-eqz v3, :cond_115

    .line 275
    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->delete(Ljava/lang/String;)Z
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_115} :catch_145
    .catchall {:try_start_10a .. :try_end_115} :catchall_150

    .line 278
    :cond_115
    :goto_115
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 281
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 284
    return v6

    .line 285
    :cond_11c
    const/16 v0, 0xa

    .line 287
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 290
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 293
    return v0

    .line 294
    :cond_125
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 297
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 300
    return v10

    .line 301
    :cond_12c
    :try_start_12c
    new-instance v4, Ljcifs/smb/SmbFileInputStream;

    .line 303
    invoke-direct {v4, v8}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_131} :catch_15f
    .catchall {:try_start_12c .. :try_end_131} :catchall_15c

    .line 306
    :try_start_131
    new-instance v8, Ljava/io/FileOutputStream;

    .line 308
    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_136} :catch_158
    .catchall {:try_start_131 .. :try_end_136} :catchall_154

    .line 311
    :try_start_136
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 314
    move-result-object v0

    .line 315
    invoke-static {v0, v4, v8, v9}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 318
    move-result v6
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13e} :catch_152
    .catchall {:try_start_136 .. :try_end_13e} :catchall_150

    .line 319
    const/4 v0, 0x5

    .line 320
    if-ne v6, v0, :cond_148

    .line 322
    :try_start_141
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 325
    goto :goto_115

    .line 326
    :catch_145
    move-exception v0

    .line 327
    move v7, v6

    .line 328
    goto :goto_15a

    .line 329
    :cond_148
    if-nez v6, :cond_115

    .line 331
    if-eqz v3, :cond_115

    .line 333
    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->delete(Ljava/lang/String;)Z
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_14f} :catch_145
    .catchall {:try_start_141 .. :try_end_14f} :catchall_150

    .line 336
    goto :goto_115

    .line 337
    :catchall_150
    move-exception v0

    .line 338
    goto :goto_156

    .line 339
    :catch_152
    move-exception v0

    .line 340
    goto :goto_15a

    .line 341
    :catchall_154
    move-exception v0

    .line 342
    move-object v8, v6

    .line 343
    :goto_156
    move-object v6, v4

    .line 344
    goto :goto_177

    .line 345
    :catch_158
    move-exception v0

    .line 346
    move-object v8, v6

    .line 347
    :goto_15a
    move-object v6, v4

    .line 348
    goto :goto_161

    .line 349
    :catchall_15c
    move-exception v0

    .line 350
    move-object v8, v6

    .line 351
    goto :goto_177

    .line 352
    :catch_15f
    move-exception v0

    .line 353
    move-object v8, v6

    .line 354
    :goto_161
    :try_start_161
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_16a

    .line 360
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 363
    :cond_16a
    const-string v1, "download smb file failed"

    .line 365
    invoke-static {v5, v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16f
    .catchall {:try_start_161 .. :try_end_16f} :catchall_176

    .line 368
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 371
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 374
    :goto_175
    return v7

    .line 375
    :catchall_176
    move-exception v0

    .line 376
    :goto_177
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 379
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 382
    throw v0

    .line 383
    :cond_17e
    :goto_17e
    const-string v0, "CopyFile: null parameter"

    .line 385
    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x2

    .line 389
    return v0
.end method

.method public static mkDir(Ljava/lang/String;)I
    .registers 7

    .line 1
    const-string v0, "create dir failed: "

    .line 3
    const-string v1, "SmbFileOperation"

    .line 5
    const-string v2, "/"

    .line 7
    :try_start_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_1b

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    :cond_1b
    new-instance v2, Ljcifs/smb/SmbFile;

    .line 30
    const-string v3, "smb://"

    .line 32
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v3, :cond_28

    .line 39
    move-object v3, p0

    .line 40
    goto :goto_33

    .line 41
    :cond_28
    const-string v3, "smb:%s"

    .line 43
    const/4 v5, 0x1

    .line 44
    new-array v5, v5, [Ljava/lang/Object;

    .line 46
    aput-object p0, v5, v4

    .line 48
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    :goto_33
    invoke-direct {v2, v3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->exists()Z

    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_45

    .line 61
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_45

    .line 67
    const/16 p0, 0xe

    .line 69
    return p0

    .line 70
    :cond_45
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->mkdir()V
    :try_end_48
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_48} :catch_5d
    .catch Ljcifs/smb/SmbException; {:try_start_6 .. :try_end_48} :catch_49

    .line 73
    return v4

    .line 74
    :catch_49
    move-exception v2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {v1, p0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    goto :goto_70

    .line 94
    :catch_5d
    move-exception v2

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    invoke-static {v1, p0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    :goto_70
    const/4 p0, 0x4

    .line 114
    return p0
.end method

.method public static move(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Z)I
    .registers 7

    .line 1
    if-eqz p0, :cond_7

    .line 3
    iget-wide v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    .line 8
    :cond_7
    :try_start_7
    new-instance v0, Ljcifs/smb/SmbFile;

    .line 10
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 12
    invoke-direct {v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljcifs/smb/SmbFile;

    .line 17
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 19
    invoke-direct {v1, p2, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->isFile()Z

    .line 25
    move-result p1

    .line 26
    const/4 p2, 0x0

    .line 27
    if-eqz p1, :cond_56

    .line 29
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_56

    .line 35
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_31

    .line 49
    return p2

    .line 50
    :cond_31
    const/4 p1, 0x1

    .line 51
    if-nez p3, :cond_41

    .line 53
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 56
    move-result-object p3

    .line 57
    invoke-static {p0, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    .line 60
    move-result p3

    .line 61
    if-eqz p3, :cond_3f

    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    move p3, p2

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    :goto_41
    move p3, p1

    .line 67
    :goto_42
    if-eqz p0, :cond_4c

    .line 69
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_4c

    .line 75
    const/4 p0, 0x5

    .line 76
    return p0

    .line 77
    :cond_4c
    if-eqz p3, :cond_55

    .line 79
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->delete()V

    .line 82
    invoke-virtual {v0, v1}, Ljcifs/smb/SmbFile;->renameTo(Ljcifs/smb/SmbFile;)V

    .line 85
    return p2

    .line 86
    :cond_55
    return p1

    .line 87
    :cond_56
    invoke-virtual {v0, v1}, Ljcifs/smb/SmbFile;->renameTo(Ljcifs/smb/SmbFile;)V
    :try_end_59
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_59} :catch_5f
    .catch Ljcifs/smb/SmbException; {:try_start_7 .. :try_end_59} :catch_5a

    .line 90
    return p2

    .line 91
    :catch_5a
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    goto :goto_63

    .line 96
    :catch_5f
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    :goto_63
    const/4 p0, 0x4

    .line 101
    return p0
.end method

.method public static rename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Z
    .registers 7

    .line 1
    const-string v0, "rename failed: "

    .line 3
    const-string v1, "SmbFileOperation"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    new-instance v3, Ljcifs/smb/SmbFile;

    .line 8
    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 10
    invoke-direct {v3, v4}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 15
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_24

    .line 29
    const-string p0, "SmbFileOperationUtil"

    .line 31
    const-string v3, "path error"

    .line 33
    invoke-static {p0, v3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return v2

    .line 37
    :cond_24
    new-instance v4, Ljcifs/smb/SmbFile;

    .line 39
    invoke-direct {v4, p0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3, v4}, Ljcifs/smb/SmbFile;->renameTo(Ljcifs/smb/SmbFile;)V
    :try_end_2c
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_2c} :catch_42
    .catch Ljcifs/smb/SmbException; {:try_start_5 .. :try_end_2c} :catch_2e

    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :catch_2e
    move-exception p0

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {v1, p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    goto :goto_55

    .line 67
    :catch_42
    move-exception p0

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-static {v1, p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :goto_55
    return v2
.end method

.method public static upload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 14

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    const-string v2, "SmbFileOperation"

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v4, "upload: "

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v4, " -> "

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    invoke-static {p2, v2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3d

    .line 47
    const-string p0, "SmbFileOperationUtil"

    .line 49
    const-string p1, "path error"

    .line 51
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_13a
    .catchall {:try_start_2 .. :try_end_35} :catchall_137

    .line 54
    const/4 p0, 0x2

    .line 55
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 58
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 61
    return p0

    .line 62
    :cond_3d
    :try_start_3d
    new-instance v2, Ljava/io/File;

    .line 64
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 70
    move-result v3
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_13a
    .catchall {:try_start_3d .. :try_end_46} :catchall_137

    .line 71
    const-string v4, "smb:%s"

    .line 73
    const-string v5, "smb://"

    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v7, 0x1

    .line 77
    if-eqz v3, :cond_a9

    .line 79
    :try_start_4e
    new-instance v3, Ljcifs/smb/SmbFile;

    .line 81
    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_58

    .line 87
    move-object v4, p2

    .line 88
    goto :goto_60

    .line 89
    :cond_58
    new-array v5, v7, [Ljava/lang/Object;

    .line 91
    aput-object p2, v5, v6

    .line 93
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object v4

    .line 97
    :goto_60
    invoke-direct {v3, v4}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->mkdir()V

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 106
    move-result-object v3
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6a} :catch_13a
    .catchall {:try_start_4e .. :try_end_6a} :catchall_137

    .line 107
    if-nez v3, :cond_73

    .line 109
    :cond_6c
    :goto_6c
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 115
    return v0

    .line 116
    :cond_73
    :try_start_73
    array-length v4, v3

    .line 117
    :goto_74
    if-ge v6, v4, :cond_a1

    .line 119
    aget-object v5, v3, v6

    .line 121
    if-eqz p0, :cond_81

    .line 123
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 126
    move-result v8

    .line 127
    if-eqz v8, :cond_81

    .line 129
    goto :goto_a1

    .line 130
    :cond_81
    new-instance v8, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v9, "/"

    .line 140
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v5

    .line 150
    invoke-static {p0, v5, p2, p3}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->upload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_9e

    .line 156
    if-eq v0, v7, :cond_9e

    .line 158
    goto :goto_6c

    .line 159
    :cond_9e
    add-int/lit8 v6, v6, 0x1

    .line 161
    goto :goto_74

    .line 162
    :cond_a1
    :goto_a1
    if-nez v0, :cond_6c

    .line 164
    if-eqz p3, :cond_6c

    .line 166
    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z

    .line 169
    goto :goto_6c

    .line 170
    :cond_a9
    new-instance v3, Ljcifs/smb/SmbFile;

    .line 172
    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_b2

    .line 178
    goto :goto_ba

    .line 179
    :cond_b2
    new-array v5, v7, [Ljava/lang/Object;

    .line 181
    aput-object p2, v5, v6

    .line 183
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    move-result-object p2

    .line 187
    :goto_ba
    invoke-direct {v3, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 193
    move-result p2

    .line 194
    const/16 v4, 0x1000

    .line 196
    const/4 v5, 0x5

    .line 197
    if-nez p2, :cond_10a

    .line 199
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->exists()Z

    .line 202
    move-result p2

    .line 203
    if-eqz p2, :cond_10a

    .line 205
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 208
    move-result-object p2

    .line 209
    invoke-static {p0, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    .line 212
    move-result p2

    .line 213
    if-eqz p0, :cond_e3

    .line 215
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 218
    move-result v6
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_da} :catch_13a
    .catchall {:try_start_73 .. :try_end_da} :catchall_137

    .line 219
    if-eqz v6, :cond_e3

    .line 221
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 224
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 227
    return v5

    .line 228
    :cond_e3
    if-eqz p2, :cond_108

    .line 230
    :try_start_e5
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->delete()V

    .line 233
    new-instance p2, Ljava/io/FileInputStream;

    .line 235
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ed} :catch_13a
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_137

    .line 238
    :try_start_ed
    new-instance p1, Ljcifs/smb/SmbFileOutputStream;

    .line 240
    invoke-direct {p1, v3}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f2} :catch_133
    .catchall {:try_start_ed .. :try_end_f2} :catchall_12f

    .line 243
    :try_start_f2
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 246
    move-result-object p0

    .line 247
    invoke-static {p0, p2, p1, v4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 250
    move-result v0

    .line 251
    if-ne v0, v5, :cond_100

    .line 253
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->delete()V

    .line 256
    goto :goto_129

    .line 257
    :cond_100
    if-nez v0, :cond_129

    .line 259
    if-eqz p3, :cond_129

    .line 261
    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_107} :catch_12d
    .catchall {:try_start_f2 .. :try_end_107} :catchall_12b

    .line 264
    goto :goto_129

    .line 265
    :cond_108
    move-object p1, v1

    .line 266
    goto :goto_13f

    .line 267
    :cond_10a
    :try_start_10a
    new-instance p2, Ljava/io/FileInputStream;

    .line 269
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10f} :catch_13a
    .catchall {:try_start_10a .. :try_end_10f} :catchall_137

    .line 272
    :try_start_10f
    new-instance p1, Ljcifs/smb/SmbFileOutputStream;

    .line 274
    invoke-direct {p1, v3}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_114} :catch_133
    .catchall {:try_start_10f .. :try_end_114} :catchall_12f

    .line 277
    :try_start_114
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 280
    move-result-object p0

    .line 281
    invoke-static {p0, p2, p1, v4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 284
    move-result v0

    .line 285
    if-ne v0, v5, :cond_122

    .line 287
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->delete()V

    .line 290
    goto :goto_129

    .line 291
    :cond_122
    if-nez v0, :cond_129

    .line 293
    if-eqz p3, :cond_129

    .line 295
    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_129} :catch_12d
    .catchall {:try_start_114 .. :try_end_129} :catchall_12b

    .line 298
    :cond_129
    :goto_129
    move-object v1, p2

    .line 299
    goto :goto_13f

    .line 300
    :catchall_12b
    move-exception p0

    .line 301
    goto :goto_131

    .line 302
    :catch_12d
    move-exception p0

    .line 303
    goto :goto_135

    .line 304
    :catchall_12f
    move-exception p0

    .line 305
    move-object p1, v1

    .line 306
    :goto_131
    move-object v1, p2

    .line 307
    goto :goto_147

    .line 308
    :catch_133
    move-exception p0

    .line 309
    move-object p1, v1

    .line 310
    :goto_135
    move-object v1, p2

    .line 311
    goto :goto_13c

    .line 312
    :catchall_137
    move-exception p0

    .line 313
    move-object p1, v1

    .line 314
    goto :goto_147

    .line 315
    :catch_13a
    move-exception p0

    .line 316
    move-object p1, v1

    .line 317
    :goto_13c
    :try_start_13c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_146

    .line 320
    :goto_13f
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 323
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 326
    return v0

    .line 327
    :catchall_146
    move-exception p0

    .line 328
    :goto_147
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 331
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 334
    throw p0
.end method

.method public static uploadSingleContentFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;Z)I
    .registers 13

    .line 1
    const-string v0, "SmbFileOperation"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    :try_start_4
    invoke-static {p1}, Lcom/android/fileexplorer/model/ContentFile;->isEmpty(Lcom/android/fileexplorer/model/ContentFile;)Z

    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_16

    .line 11
    const-string p0, "error contentFile is null"

    .line 13
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_f5
    .catchall {:try_start_4 .. :try_end_f} :catchall_f2

    .line 16
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 19
    :goto_12
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 22
    return v2

    .line 23
    :cond_16
    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v4, "uploadSingleContentFile uriPath = "

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v4, p1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v3, p1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 47
    invoke-static {p2, v3}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_45

    .line 57
    const-string p0, "path error"

    .line 59
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3d} :catch_f5
    .catchall {:try_start_16 .. :try_end_3d} :catchall_f2

    .line 62
    const/4 p0, 0x2

    .line 63
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 69
    return p0

    .line 70
    :cond_45
    :try_start_45
    new-instance v3, Ljcifs/smb/SmbFile;

    .line 72
    const-string v4, "smb://"

    .line 74
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_50

    .line 80
    goto :goto_5c

    .line 81
    :cond_50
    const-string v4, "smb:%s"

    .line 83
    const/4 v5, 0x1

    .line 84
    new-array v5, v5, [Ljava/lang/Object;

    .line 86
    const/4 v6, 0x0

    .line 87
    aput-object p2, v5, v6

    .line 89
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    :goto_5c
    invoke-direct {v3, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 99
    move-result p2

    .line 100
    const/4 v4, 0x5

    .line 101
    if-nez p2, :cond_88

    .line 103
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->exists()Z

    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_88

    .line 109
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 112
    move-result-object p2

    .line 113
    invoke-static {p0, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    .line 116
    move-result p2

    .line 117
    if-eqz p0, :cond_83

    .line 119
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 122
    move-result v5
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_7a} :catch_f5
    .catchall {:try_start_45 .. :try_end_7a} :catchall_f2

    .line 123
    if-eqz v5, :cond_83

    .line 125
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 131
    return v4

    .line 132
    :cond_83
    if-eqz p2, :cond_88

    .line 134
    :try_start_85
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->delete()V

    .line 137
    :cond_88
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 144
    move-result-object p2

    .line 145
    iget-object v5, p1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 147
    invoke-virtual {p2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 150
    move-result-object p2
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_96} :catch_f5
    .catchall {:try_start_85 .. :try_end_96} :catchall_f2

    .line 151
    if-nez p2, :cond_9d

    .line 153
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 156
    goto/16 :goto_12

    .line 158
    :cond_9d
    if-eqz p0, :cond_c4

    .line 160
    :try_start_9f
    iget-wide v5, p1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 162
    const-wide/16 v7, 0x0

    .line 164
    cmp-long v5, v5, v7

    .line 166
    if-gtz v5, :cond_ae

    .line 168
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    .line 171
    move-result v5

    .line 172
    int-to-long v5, v5

    .line 173
    iput-wide v5, p1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 175
    :cond_ae
    iget-wide v5, p1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 177
    cmp-long v7, v5, v7

    .line 179
    if-gtz v7, :cond_c1

    .line 181
    if-eqz p3, :cond_ba

    .line 183
    const v5, 0x7f11030d

    .line 186
    goto :goto_bd

    .line 187
    :cond_ba
    const v5, 0x7f110317

    .line 190
    :goto_bd
    invoke-interface {p0, v5}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    .line 193
    goto :goto_c4

    .line 194
    :cond_c1
    invoke-interface {p0, v5, v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    .line 197
    :cond_c4
    :goto_c4
    new-instance v5, Ljcifs/smb/SmbFileOutputStream;

    .line 199
    invoke-direct {v5, v3}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_c9} :catch_ee
    .catchall {:try_start_9f .. :try_end_c9} :catchall_ea

    .line 202
    :try_start_c9
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 205
    move-result-object p0

    .line 206
    const/16 v1, 0x1000

    .line 208
    invoke-static {p0, p2, v5, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 211
    move-result v2

    .line 212
    if-ne v2, v4, :cond_d9

    .line 214
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->delete()V

    .line 217
    goto :goto_e2

    .line 218
    :cond_d9
    if-nez v2, :cond_e2

    .line 220
    if-eqz p3, :cond_e2

    .line 222
    iget-object p0, p1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 224
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_e2} :catch_e8
    .catchall {:try_start_c9 .. :try_end_e2} :catchall_e6

    .line 227
    :cond_e2
    :goto_e2
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 230
    goto :goto_112

    .line 231
    :catchall_e6
    move-exception p0

    .line 232
    goto :goto_ec

    .line 233
    :catch_e8
    move-exception p0

    .line 234
    goto :goto_f0

    .line 235
    :catchall_ea
    move-exception p0

    .line 236
    move-object v5, v1

    .line 237
    :goto_ec
    move-object v1, p2

    .line 238
    goto :goto_117

    .line 239
    :catch_ee
    move-exception p0

    .line 240
    move-object v5, v1

    .line 241
    :goto_f0
    move-object v1, p2

    .line 242
    goto :goto_f7

    .line 243
    :catchall_f2
    move-exception p0

    .line 244
    move-object v5, v1

    .line 245
    goto :goto_117

    .line 246
    :catch_f5
    move-exception p0

    .line 247
    move-object v5, v1

    .line 248
    :goto_f7
    :try_start_f7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    const-string p2, "uploadSingleContentFile error: "

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object p0

    .line 269
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catchall {:try_start_f7 .. :try_end_10f} :catchall_116

    .line 272
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    :goto_112
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    return v2

    .line 279
    :catchall_116
    move-exception p0

    .line 280
    :goto_117
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 283
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 286
    throw p0
.end method
