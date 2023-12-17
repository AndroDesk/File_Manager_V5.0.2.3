.class public Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;
.super Ljava/lang/Object;
.source "GlobalEncryptUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EncryptUtil2"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodedBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string p0, ""

    .line 9
    return-object p0

    .line 10
    :cond_9
    const-string v0, "-"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_19

    .line 18
    const/16 v0, 0x2d

    .line 20
    const/16 v1, 0x2b

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    :cond_19
    const-string v0, "."

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_29

    .line 34
    const/16 v0, 0x2e

    .line 36
    const/16 v1, 0x2f

    .line 38
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    :cond_29
    :try_start_29
    new-instance v0, Ljava/lang/String;

    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_33} :catch_34

    .line 52
    return-object v0

    .line 53
    :catch_34
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public static encodedBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string p0, ""

    .line 9
    return-object p0

    .line 10
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    const-string v0, "+"

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_22

    .line 27
    const/16 v0, 0x2b

    .line 29
    const/16 v1, 0x2d

    .line 31
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    :cond_22
    const-string v0, "/"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_32

    .line 43
    const/16 v0, 0x2f

    .line 45
    const/16 v1, 0x2e

    .line 47
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    :cond_32
    return-object p0
.end method

.method public static getDirsLocal(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    const-string v1, ".thumb_"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_16

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_16
    return-object v0
.end method

.method public static getEncryptedName2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object p0

    .line 8
    :cond_7
    const-string v0, "FE_P_"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2a

    .line 16
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "_"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    :cond_2a
    return-object p0
.end method

.method public static getPrivateEncryptedPath2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, ".thumb_"

    .line 3
    const-string v1, "FE_P_"

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getPrivateFile(Ljava/io/File;)Lcom/android/fileexplorer/encryption/PrivateFile;
    .registers 30

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_34

    .line 13
    sget-object v2, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 15
    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_33

    .line 21
    array-length v12, v2

    .line 22
    new-instance v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 24
    const-string v4, ""

    .line 26
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    const-string v6, ""

    .line 32
    const-string v7, ""

    .line 34
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 37
    move-result-object v8

    .line 38
    const-wide/16 v9, 0x0

    .line 40
    const/4 v11, 0x1

    .line 41
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    .line 44
    move-result-wide v13

    .line 45
    move-object v3, v2

    .line 46
    invoke-direct/range {v3 .. v14}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 49
    :goto_30
    move-object v1, v2

    .line 50
    goto/16 :goto_111

    .line 52
    :cond_33
    return-object v1

    .line 53
    :cond_34
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    const-string v3, "FE_P_"

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    move-result v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3e} :catch_10d

    .line 63
    const-string v3, "path error"

    .line 65
    const-string v4, "EncryptUtil2"

    .line 67
    if-eqz v2, :cond_7f

    .line 69
    :try_start_44
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getPrivateThumbPath2(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v8

    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    .line 80
    move-result-wide v15

    .line 81
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    .line 84
    move-result-wide v11

    .line 85
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 92
    move-result-object v5

    .line 93
    invoke-static {v5}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getRealName2(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v5

    .line 97
    invoke-static {v2, v5}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v10

    .line 101
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_6e

    .line 107
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-object v1

    .line 111
    :cond_6e
    new-instance v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 113
    const-string v6, ""

    .line 115
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 118
    move-result-object v7

    .line 119
    const-string v9, ""

    .line 121
    const/4 v13, 0x0

    .line 122
    const/4 v14, 0x0

    .line 123
    move-object v5, v2

    .line 124
    invoke-direct/range {v5 .. v16}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 127
    goto :goto_30

    .line 128
    :cond_7f
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    const-string v5, "_encrypted_new"

    .line 134
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_c6

    .line 140
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v8

    .line 148
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    .line 151
    move-result-wide v15

    .line 152
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    .line 155
    move-result-wide v11

    .line 156
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 163
    move-result-object v5

    .line 164
    invoke-static {v5}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object v5

    .line 168
    invoke-static {v2, v5}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v10

    .line 172
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_b5

    .line 178
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-object v1

    .line 182
    :cond_b5
    new-instance v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 184
    const-string v6, ""

    .line 186
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 189
    move-result-object v7

    .line 190
    const/4 v9, 0x0

    .line 191
    const/4 v13, 0x0

    .line 192
    const/4 v14, 0x0

    .line 193
    move-object v5, v2

    .line 194
    invoke-direct/range {v5 .. v16}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 197
    goto/16 :goto_30

    .line 199
    :cond_c6
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    .line 202
    move-result-wide v27

    .line 203
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    .line 206
    move-result-wide v23

    .line 207
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 210
    move-result-object v2

    .line 211
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getRealName2(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 215
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 218
    move-result-object v5

    .line 219
    invoke-static {v5, v2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object v22

    .line 223
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 226
    move-result-object v5

    .line 227
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getEncryptedName2(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    move-result-object v2

    .line 231
    invoke-static {v5, v2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    move-result-object v2

    .line 235
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getPrivateThumbPath2(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    move-result-object v20

    .line 239
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_f8

    .line 245
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-object v1

    .line 249
    :cond_f8
    new-instance v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 251
    const-string v18, ""

    .line 253
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 256
    move-result-object v19

    .line 257
    const/16 v21, 0x0

    .line 259
    const/16 v25, 0x0

    .line 261
    const/16 v26, 0x0

    .line 263
    move-object/from16 v17, v2

    .line 265
    invoke-direct/range {v17 .. v28}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_10b} :catch_10d

    .line 268
    goto/16 :goto_30

    .line 270
    :catch_10d
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    :goto_111
    return-object v1
.end method

.method public static getPrivateThumbPath2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "FE_P_"

    .line 3
    const-string v1, ".thumb_"

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getRealName2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object p0

    .line 8
    :cond_7
    const/16 v0, 0x2f

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    const-string v0, "FE_P_"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_32

    .line 28
    const-string v1, ""

    .line 30
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    const-string v0, "_"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 39
    move-result v0

    .line 40
    if-lez v0, :cond_2e

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    :cond_2e
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->decodedBase64(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    :cond_32
    return-object p0
.end method
