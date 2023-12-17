.class public Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;
.super Ljava/lang/Object;
.source "StorageVolumeUtil.java"


# static fields
.field private static final ANDROID_P:I

.field private static final TAG:Ljava/lang/String; = "StorageVolumeUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d8a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->ANDROID_P:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startDocumentTreeIntent(Landroid/app/Activity;)V

    return-void
.end method

.method public static checkSDRootPathWritable()Z
    .registers 14

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->isAndroidPAndLater()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getSDRootPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSDRootPathWritable: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageVolumeUtil"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    return v1

    :cond_2d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSDRootPathWritable: cabWrite = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4d

    return v1

    :cond_4d
    invoke-static {}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->checkSDUriValid()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5a

    const-string v0, "checkSDRootPathWritable: url not valid, not has right permission."

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5a
    invoke-static {}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getRootDocumentFile()Ls0/a;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSDRootPathWritable: documentFile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_f7

    check-cast v0, Ls0/c;

    iget-object v3, v0, Ls0/c;->b:Landroid/content/Context;

    iget-object v5, v0, Ls0/c;->c:Landroid/net/Uri;

    const/4 v0, 0x2

    invoke-virtual {v3, v5, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v4

    if-eqz v4, :cond_83

    goto/16 :goto_ef

    :cond_83
    const/4 v10, 0x0

    const-string v4, "mime_type"

    invoke-static {v3, v5, v4}, Ls0/b;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "flags"

    int-to-long v12, v2

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :try_start_91
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_c7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_ad} :catch_b0
    .catchall {:try_start_91 .. :try_end_ad} :catchall_ae

    goto :goto_c7

    :catchall_ae
    move-exception v0

    goto :goto_f3

    :catch_b0
    move-exception v3

    :try_start_b1
    const-string v4, "DocumentFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_b1 .. :try_end_c7} :catchall_ae

    :cond_c7
    :goto_c7
    invoke-static {v10}, Ls0/b;->a(Landroid/database/Cursor;)V

    long-to-int v3, v12

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d2

    goto :goto_ef

    :cond_d2
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_d7

    goto :goto_ed

    :cond_d7
    const-string v4, "vnd.android.document/directory"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_e4

    goto :goto_ed

    :cond_e4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ef

    and-int/2addr v0, v3

    if-eqz v0, :cond_ef

    :goto_ed
    move v0, v1

    goto :goto_f0

    :cond_ef
    :goto_ef
    move v0, v2

    :goto_f0
    if-eqz v0, :cond_f7

    goto :goto_f8

    :goto_f3
    invoke-static {v10}, Ls0/b;->a(Landroid/database/Cursor;)V

    throw v0

    :cond_f7
    move v1, v2

    :goto_f8
    return v1
.end method

.method private static increaseRequestOpenExternalDocumentCount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_a

    const-string p0, "StorageVolumeUtil"

    const-string p1, "increaseRequestOpenExternalDocumentCount context null"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {p1}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->increaseRequestCount(Ljava/lang/String;)V

    return-void
.end method

.method public static isAndroidPAndLater()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static needRequestOpenExternalDocumentUri(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "StorageVolumeUtil"

    const-string p1, "needRequestOpenExternalDocumentUri context null"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    invoke-static {p1}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->getRequestCount(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public static needUseDocumentFile(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

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

    :cond_1b
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getSDRootPath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "needUseDocumentFile: can writ = "

    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StorageVolumeUtil"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public static needUseDocumentFile(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static noSDWritePermission(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needRequestPermissionOnExSDAfterAndroidP: path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageVolumeUtil"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->checkSDRootPathWritable()Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private static requestDocumentTreePermission(Landroid/app/Activity;)V
    .registers 6

    if-nez p0, :cond_a

    const-string p0, "StorageVolumeUtil"

    const-string v0, "requestDocumentTreePermission activity is null"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    instance-of v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    move-object v2, p0

    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/android/fileexplorer/activity/BaseActivity;->getRequestDocumentPermissionDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    if-nez v2, :cond_5c

    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f110398

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1100eb

    new-instance v4, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$2;

    invoke-direct {v4, p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110050

    new-instance v4, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$1;

    invoke-direct {v4}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$1;-><init>()V

    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d01c0

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    if-eqz v0, :cond_5c

    check-cast p0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/activity/BaseActivity;->setRequestDocumentPermissionDialog(Lmiuix/appcompat/app/AlertDialog;)V

    :cond_5c
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static setActionOpenExternalDocumentUri(Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "StorageVolumeUtil"

    const-string v0, "setActionOpenExternalDocumentUri uri is null"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageHelper;->getCacheMountVolumeList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object v0, v2

    :cond_38
    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->saveDocumentUri(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static startDocumentTreeIntent(Landroid/app/Activity;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_1d

    :catch_10
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->clearActionCache()V

    const p0, 0x7f1102da

    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :goto_1d
    return-void
.end method

.method public static startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    const-string v0, "StorageVolumeUtil"

    if-nez p0, :cond_a

    const-string p0, "startPermissionActivityForResult activity null"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->requestDocumentTreePermission(Landroid/app/Activity;)V

    goto :goto_5c

    :cond_14
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needRequestOpenExternalDocumentUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->increaseRequestOpenExternalDocumentCount(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    if-nez p1, :cond_3c

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->requestDocumentTreePermission(Landroid/app/Activity;)V

    return-void

    :cond_3c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_47

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->requestDocumentTreePermission(Landroid/app/Activity;)V

    return-void

    :cond_47
    const/16 v0, 0x7f

    :try_start_49
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_5c

    :catch_4d
    const p0, 0x7f1102da

    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_5c

    :cond_54
    const-string p1, "request time more than 2"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->requestDocumentTreePermission(Landroid/app/Activity;)V

    :goto_5c
    return-void
.end method
