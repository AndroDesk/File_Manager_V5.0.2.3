.class public Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil;
.super Ljava/lang/Object;
.source "PrivateFileOpenUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivateFileOpenUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrivateFileOpenCachedPath(Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_3c

    .line 16
    const-string v1, "/FileExplorer/.safebox"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3c

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 27
    move-result v1

    .line 28
    add-int/lit8 v1, v1, 0x16

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/io/File;

    .line 36
    invoke-static {}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->getOpenFileCacheDir()Ljava/io/File;

    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Ljava/io/File;

    .line 49
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-object v1

    .line 61
    :cond_3c
    const/4 p0, 0x0

    .line 62
    return-object p0
.end method

.method public static moveNormalPendingOpenFile(Landroid/app/Activity;Lcom/android/fileexplorer/encryption/PrivateFile;)Lcom/android/fileexplorer/encryption/PrivateFile;
    .registers 19

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_c0

    .line 17
    const-string v3, "/FileExplorer/.safebox"

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_c0

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 28
    move-result v3

    .line 29
    add-int/lit8 v3, v3, 0x16

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    new-instance v3, Ljava/io/File;

    .line 37
    invoke-static {}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->getOpenFileCacheDir()Ljava/io/File;

    .line 40
    move-result-object v4

    .line 41
    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 47
    move-result v1

    .line 48
    const-string v4, "PrivateFileOpenUtil"

    .line 50
    if-nez v1, :cond_3b

    .line 52
    const-string v1, "moveNormalPendingOpenFile parent not exists, mkdirs"

    .line 54
    invoke-static {v4, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_3b
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    new-instance v3, Ljava/io/File;

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_56

    .line 79
    const-string v5, " destFile exists, delete."

    .line 81
    invoke-static {v4, v5}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 87
    :cond_56
    const/4 v5, 0x0

    .line 88
    move-object/from16 v6, p0

    .line 90
    invoke-static {v6, v0, v3, v5}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_c0

    .line 96
    new-instance v0, Ljava/io/File;

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_7a

    .line 115
    const-string v2, "moveNormalPendingOpenFile delete ole decryped file"

    .line 117
    invoke-static {v4, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 123
    :cond_7a
    new-instance v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 125
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 132
    move-result-object v10

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    .line 136
    move-result-wide v11

    .line 137
    const/4 v13, 0x0

    .line 138
    const/4 v14, 0x0

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    move-result-wide v15

    .line 143
    const-string v6, ""

    .line 145
    const-string v8, ""

    .line 147
    const-string v9, ""

    .line 149
    move-object v5, v2

    .line 150
    invoke-direct/range {v5 .. v16}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    const-string v6, "destDir = "

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ", destFile = "

    .line 168
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", displayPath = "

    .line 176
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 190
    invoke-static {v4, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_c0
    return-object v2
.end method
