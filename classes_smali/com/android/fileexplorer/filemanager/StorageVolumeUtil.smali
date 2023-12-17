.class public Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;
.super Ljava/lang/Object;
.source "StorageVolumeUtil.java"


# static fields
.field private static final ANDROID_P:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "StorageVolumeUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/app/Activity;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startDocumentTreeIntent(Landroid/app/Activity;)V

    .line 4
    return-void
.end method

.method public static checkSDRootPathWritable()Z
    .registers 14

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->isAndroidPAndLater()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getSDRootPath()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v3, "checkSDRootPathWritable: path = "

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const-string v3, "StorageVolumeUtil"

    .line 36
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2d

    .line 45
    return v1

    .line 46
    :cond_2d
    new-instance v2, Ljava/io/File;

    .line 48
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    .line 54
    move-result v0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v4, "checkSDRootPathWritable: cabWrite = "

    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz v0, :cond_4d

    .line 77
    return v1

    .line 78
    :cond_4d
    invoke-static {}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->checkSDUriValid()Z

    .line 81
    move-result v0

    .line 82
    const/4 v2, 0x0

    .line 83
    if-nez v0, :cond_5a

    .line 85
    const-string v0, "checkSDRootPathWritable: url not valid, not has right permission."

    .line 87
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return v2

    .line 91
    :cond_5a
    invoke-static {}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getRootDocumentFile()Ls0/a;

    .line 94
    move-result-object v0

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v5, "checkSDRootPathWritable: documentFile = "

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v4

    .line 112
    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-eqz v0, :cond_f7

    .line 117
    check-cast v0, Ls0/c;

    .line 119
    iget-object v3, v0, Ls0/c;->b:Landroid/content/Context;

    .line 121
    iget-object v5, v0, Ls0/c;->c:Landroid/net/Uri;

    .line 123
    const/4 v0, 0x2

    .line 124
    invoke-virtual {v3, v5, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_83

    .line 130
    goto/16 :goto_ef

    .line 132
    :cond_83
    const/4 v10, 0x0

    .line 133
    const-string v4, "mime_type"

    .line 135
    invoke-static {v3, v5, v4}, Ls0/b;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v11

    .line 139
    const-string v4, "flags"

    .line 141
    int-to-long v12, v2

    .line 142
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 145
    move-result-object v3

    .line 146
    :try_start_91
    filled-new-array {v4}, [Ljava/lang/String;

    .line 149
    move-result-object v6

    .line 150
    const/4 v7, 0x0

    .line 151
    const/4 v8, 0x0

    .line 152
    const/4 v9, 0x0

    .line 153
    move-object v4, v3

    .line 154
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 157
    move-result-object v10

    .line 158
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_c7

    .line 164
    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_c7

    .line 170
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 173
    move-result-wide v12
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_ad} :catch_b0
    .catchall {:try_start_91 .. :try_end_ad} :catchall_ae

    .line 174
    goto :goto_c7

    .line 175
    :catchall_ae
    move-exception v0

    .line 176
    goto :goto_f3

    .line 177
    :catch_b0
    move-exception v3

    .line 178
    :try_start_b1
    const-string v4, "DocumentFile"

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    const-string v6, "Failed query: "

    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v3

    .line 197
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_b1 .. :try_end_c7} :catchall_ae

    .line 200
    :cond_c7
    :goto_c7
    invoke-static {v10}, Ls0/b;->a(Landroid/database/Cursor;)V

    .line 203
    long-to-int v3, v12

    .line 204
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_d2

    .line 210
    goto :goto_ef

    .line 211
    :cond_d2
    and-int/lit8 v4, v3, 0x4

    .line 213
    if-eqz v4, :cond_d7

    .line 215
    goto :goto_ed

    .line 216
    :cond_d7
    const-string v4, "vnd.android.document/directory"

    .line 218
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v4

    .line 222
    if-eqz v4, :cond_e4

    .line 224
    and-int/lit8 v4, v3, 0x8

    .line 226
    if-eqz v4, :cond_e4

    .line 228
    goto :goto_ed

    .line 229
    :cond_e4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 232
    move-result v4

    .line 233
    if-nez v4, :cond_ef

    .line 235
    and-int/2addr v0, v3

    .line 236
    if-eqz v0, :cond_ef

    .line 238
    :goto_ed
    move v0, v1

    .line 239
    goto :goto_f0

    .line 240
    :cond_ef
    :goto_ef
    move v0, v2

    .line 241
    :goto_f0
    if-eqz v0, :cond_f7

    .line 243
    goto :goto_f8

    .line 244
    :goto_f3
    invoke-static {v10}, Ls0/b;->a(Landroid/database/Cursor;)V

    .line 247
    throw v0

    .line 248
    :cond_f7
    move v1, v2

    .line 249
    :goto_f8
    return v1
.end method

.method private static increaseRequestOpenExternalDocumentCount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 1
    if-nez p0, :cond_a

    .line 3
    const-string p0, "StorageVolumeUtil"

    .line 5
    const-string p1, "increaseRequestOpenExternalDocumentCount context null"

    .line 7
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {p1}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->increaseRequestCount(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static isAndroidPAndLater()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private static needRequestOpenExternalDocumentUri(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_b

    .line 4
    const-string p0, "StorageVolumeUtil"

    .line 6
    const-string p1, "needRequestOpenExternalDocumentUri context null"

    .line 8
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return v0

    .line 12
    :cond_b
    invoke-static {p1}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->getRequestCount(Ljava/lang/String;)I

    .line 15
    move-result p0

    .line 16
    const/4 p1, 0x2

    .line 17
    if-ge p0, p1, :cond_13

    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_13
    return v0
.end method

.method public static needUseDocumentFile(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->isAndroidPAndLater()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->isOnExtSdCard(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_17

    move p0, v2

    goto :goto_18

    :cond_17
    move p0, v0

    :goto_18
    if-nez p0, :cond_1b

    return v0

    .line 2
    :cond_1b
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getSDRootPath()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "needUseDocumentFile: can writ = "

    .line 4
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StorageVolumeUtil"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public static needUseDocumentFile(Ljava/lang/String;)Z
    .registers 2

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 11
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static noSDWritePermission(Ljava/lang/String;)Z
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "needRequestPermissionOnExSDAfterAndroidP: path = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "StorageVolumeUtil"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_24

    .line 29
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->checkSDRootPathWritable()Z

    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_24

    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 p0, 0x0

    .line 38
    :goto_25
    return p0
.end method

.method private static requestDocumentTreePermission(Landroid/app/Activity;)V
    .registers 6

    .line 1
    if-nez p0, :cond_a

    .line 3
    const-string p0, "StorageVolumeUtil"

    .line 5
    const-string v0, "requestDocumentTreePermission activity is null"

    .line 7
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    instance-of v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_17

    .line 16
    move-object v2, p0

    .line 17
    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 19
    invoke-virtual {v2}, Lcom/android/fileexplorer/activity/BaseActivity;->getRequestDocumentPermissionDialog()Lmiuix/appcompat/app/AlertDialog;

    .line 22
    move-result-object v2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move-object v2, v1

    .line 25
    :goto_18
    if-nez v2, :cond_5c

    .line 27
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 29
    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    const v3, 0x7f110398

    .line 35
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 43
    move-result-object v2

    .line 44
    const v3, 0x7f1100eb

    .line 47
    new-instance v4, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$2;

    .line 49
    invoke-direct {v4, p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$2;-><init>(Landroid/app/Activity;)V

    .line 52
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 55
    move-result-object v2

    .line 56
    const v3, 0x7f110050

    .line 59
    new-instance v4, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$1;

    .line 61
    invoke-direct {v4}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$1;-><init>()V

    .line 64
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 71
    move-result-object v2

    .line 72
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 75
    move-result-object v3

    .line 76
    const v4, 0x7f0d01c0

    .line 79
    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 86
    if-eqz v0, :cond_5c

    .line 88
    check-cast p0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 90
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/activity/BaseActivity;->setRequestDocumentPermissionDialog(Lmiuix/appcompat/app/AlertDialog;)V

    .line 93
    :cond_5c
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 96
    return-void
.end method

.method public static setActionOpenExternalDocumentUri(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    const-string p0, "StorageVolumeUtil"

    .line 9
    const-string v0, "setActionOpenExternalDocumentUri uri is null"

    .line 11
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageHelper;->getCacheMountVolumeList()Ljava/util/ArrayList;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v1

    .line 28
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_38

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    .line 40
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getUuid()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_1b

    .line 50
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1b

    .line 56
    move-object v0, v2

    .line 57
    :cond_38
    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->saveDocumentUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private static startDocumentTreeIntent(Landroid/app/Activity;)V
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    .line 6
    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    .line 8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    const/16 v1, 0x7f

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 16
    goto :goto_1d

    .line 17
    :catch_10
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->clearActionCache()V

    .line 24
    const p0, 0x7f1102da

    .line 27
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 30
    :goto_1d
    return-void
.end method

.method public static startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 1
    const-string v0, "StorageVolumeUtil"

    .line 3
    if-nez p0, :cond_a

    .line 5
    const-string p0, "startPermissionActivityForResult activity null"

    .line 7
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_14

    .line 17
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->requestDocumentTreePermission(Landroid/app/Activity;)V

    .line 20
    goto :goto_5c

    .line 21
    :cond_14
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageUuid(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needRequestOpenExternalDocumentUri(Landroid/content/Context;Ljava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_54

    .line 35
    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->increaseRequestOpenExternalDocumentCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    const-string v0, "storage"

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 46
    new-instance v1, Ljava/io/File;

    .line 48
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_3c

    .line 57
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->requestDocumentTreePermission(Landroid/app/Activity;)V

    .line 60
    return-void

    .line 61
    :cond_3c
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_47

    .line 68
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->requestDocumentTreePermission(Landroid/app/Activity;)V

    .line 71
    return-void

    .line 72
    :cond_47
    const/16 v0, 0x7f

    .line 74
    :try_start_49
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 77
    goto :goto_5c

    .line 78
    :catch_4d
    const p0, 0x7f1102da

    .line 81
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 84
    goto :goto_5c

    .line 85
    :cond_54
    const-string p1, "request time more than 2"

    .line 87
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->requestDocumentTreePermission(Landroid/app/Activity;)V

    .line 93
    :goto_5c
    return-void
.end method
