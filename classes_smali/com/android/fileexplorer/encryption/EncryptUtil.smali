.class public Lcom/android/fileexplorer/encryption/EncryptUtil;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;,
        Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;
    }
.end annotation


# static fields
.field public static final ACTION_COPY:I = 0x1

.field public static final ACTION_MOVE:I = 0x0

.field public static final ACTION_NONE:I = 0x2

.field public static final ACTION_OPEN:I = 0x3

.field public static final BUFFER_SIZE:I = 0x400

.field public static final BUSINESS_ID:Ljava/lang/String; = "file_explorer"

.field public static final ENCRYPTED_THUMB:Ljava/lang/String; = "encrypted_thumbnail"

.field public static final LOCK_TYPE_DISABLED:I = 0x0

.field public static final LOCK_TYPE_ENABLED:I = 0x1

.field public static final LOCK_TYPE_UNSUPPORT:I = -0x1

.field private static final MIUI_SHARER_PATH:Ljava/lang/String; = "/MIUI/Gallery/cloud/sharer"

.field private static final RESULT_CANCEL:I = 0x5

.field public static final RESULT_ERROR_ALL:I = 0x14

.field public static final RESULT_ERROR_NOT_ENOUGH_SPACE:I = 0x3

.field public static final RESULT_ERROR_NOT_FOUND:I = 0x6

.field public static final RESULT_ERROR_NOT_LOGGED_IN:I = 0x12

.field private static final RESULT_ERROR_PARTIAL:I = 0x13

.field private static final RESULT_ERROR_SHARER_FOLDER:I = 0x15

.field private static final RESULT_ERROR_UNKNOWN:I = 0x4

.field public static final RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EncryptUtil"

.field public static final privateFileFilter:Ljava/io/FilenameFilter;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$1;

    invoke-direct {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil$1;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deleteFiles(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic access$200(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->doEncrypt(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V

    return-void
.end method

.method public static synthetic access$400(Ljava/util/List;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInFileInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Ljava/util/List;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllSucceedImagesAndVideos(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Ljava/util/List;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->containsMiuiSharer(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Landroid/app/Activity;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setPattern(Landroid/app/Activity;I)V

    return-void
.end method

.method public static synthetic access$900(Landroid/app/Activity;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setLockPattern(Landroid/app/Activity;I)V

    return-void
.end method

.method public static declared-synchronized addToPrivateFolder(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v0

    if-nez p1, :cond_7

    monitor-exit v0

    return-void

    :cond_7
    :try_start_7
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isPasswordSet(Landroid/app/Activity;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_39

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    :try_start_f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.gallery.ACTION_PRE_SETTING_SECRET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.gallery"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_39

    const/4 v2, 0x0

    :try_start_1c
    new-instance v3, Lcom/android/fileexplorer/encryption/EncryptUtil$7;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil$7;-><init>(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27
    .catchall {:try_start_1c .. :try_end_26} :catchall_39

    goto :goto_31

    :catch_27
    move-exception v1

    :try_start_28
    sget-object v3, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    if-nez v2, :cond_37

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->doEncrypt(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_39

    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static buildDeleteMessage(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    const/4 v1, 0x1

    if-lez v3, :cond_8a

    const v4, 0x7f182f6a

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5d

    if-ne v3, v1, :cond_46

    const p1, 0x7f182c8c

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_59

    :cond_46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f0011

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, p1, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ae

    :cond_5d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0010

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f0012

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, p1, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ae

    :cond_8a
    if-ne p1, v1, :cond_98

    const p1, 0x7f182c8e

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_ab

    :cond_98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0f000f

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_ab
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_ae
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static containsMiuiSharer(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/MIUI/Gallery/cloud/sharer"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .registers 6

    :try_start_0
    const-string v0, "AES/CTS/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {p1}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception p0

    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " decrypt start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, p0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v2, :cond_34

    move-object v2, p0

    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_34
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_63

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exists"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_63
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    const-string v3, "/"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_75

    invoke-static {p4, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_75
    const/4 v3, 0x0

    invoke-static {p4, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_d9

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList([Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4, v5, v3}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p4

    if-nez p4, :cond_9c

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_9c
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    if-eqz v0, :cond_cc

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_cc

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_af
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    move v4, p1

    move-object v6, p3

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_af

    :cond_cc
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_255

    if-nez p1, :cond_255

    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    goto/16 :goto_255

    :cond_d9
    const/4 v4, 0x0

    :try_start_da
    sget-boolean v6, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-nez v6, :cond_12c

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->readBufferFromFile(Ljava/io/File;)[B

    move-result-object v7

    if-nez v7, :cond_f4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "decryptFile error, buffer is null, return"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_f0} :catch_22c
    .catchall {:try_start_da .. :try_end_f0} :catchall_22a

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_f4
    :try_start_f4
    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fa} :catch_22c
    .catchall {:try_start_f4 .. :try_end_fa} :catchall_22a

    :try_start_fa
    invoke-static {v7, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decrypt([BLjava/lang/String;)[B

    move-result-object p3

    if-nez p3, :cond_10e

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_10a} :catch_228
    .catchall {:try_start_fa .. :try_end_10a} :catchall_22a

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_10e
    :try_start_10e
    array-length v7, p3

    const/16 v9, 0x10

    if-ne v7, v9, :cond_118

    invoke-static {v2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleSmallFile(Ljava/io/File;[B)Z

    move-result p3

    goto :goto_11c

    :cond_118
    invoke-static {v2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleLargeFile(Ljava/io/File;[B)Z

    move-result p3

    :goto_11c
    if-nez p3, :cond_12d

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_128} :catch_228
    .catchall {:try_start_10e .. :try_end_128} :catchall_22a

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_12c
    move-object v8, v4

    :cond_12d
    :try_start_12d
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3, v3, v3}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p3

    if-nez p3, :cond_146

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_142} :catch_228
    .catchall {:try_start_12d .. :try_end_142} :catchall_22a

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_146
    const/4 p4, 0x5

    if-eqz p1, :cond_1c4

    if-eq p1, v5, :cond_192

    const/4 p5, 0x2

    if-eq p1, p5, :cond_178

    const/4 p0, 0x3

    if-eq p1, p0, :cond_153

    goto/16 :goto_1f0

    :cond_153
    if-eqz v6, :cond_157

    goto/16 :goto_1f0

    :cond_157
    :try_start_157
    const-string p0, "open file"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v5}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->rename(Ljava/io/File;Ljava/lang/String;Z)I

    move-result p0

    if-eqz p0, :cond_171

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_16d} :catch_228
    .catchall {:try_start_157 .. :try_end_16d} :catchall_22a

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_171
    :try_start_171
    const-string p0, "open file temp success"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f0

    :cond_178
    invoke-static {p0, v2, p3, v5}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result p0
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_17c} :catch_228
    .catchall {:try_start_171 .. :try_end_17c} :catchall_22a

    if-ne p0, p4, :cond_182

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_182
    if-eqz p0, :cond_1f0

    :try_start_184
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_18e} :catch_228
    .catchall {:try_start_184 .. :try_end_18e} :catchall_22a

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_192
    :try_start_192
    invoke-static {p0, v2, p3, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result p0

    if-ne p0, p4, :cond_19f

    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_19b} :catch_228
    .catchall {:try_start_192 .. :try_end_19b} :catchall_22a

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_19f
    if-eqz p0, :cond_1b4

    :try_start_1a1
    const-string p0, "Error when generating copied destination file path"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1b0} :catch_228
    .catchall {:try_start_1a1 .. :try_end_1b0} :catchall_22a

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_1b4
    :try_start_1b4
    invoke-static {p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->updateFile(Ljava/lang/String;)V

    if-eqz p5, :cond_1f0

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f0

    :cond_1c4
    invoke-static {p0, v2, p3, v5}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result p0

    if-ne p0, p4, :cond_1d1

    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1cd} :catch_228
    .catchall {:try_start_1b4 .. :try_end_1cd} :catchall_22a

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_1d1
    if-eqz p0, :cond_1e1

    :try_start_1d3
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1dd} :catch_228
    .catchall {:try_start_1d3 .. :try_end_1dd} :catchall_22a

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_1e1
    :try_start_1e1
    invoke-static {p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->updateFile(Ljava/lang/String;)V

    if-eqz p5, :cond_1f0

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f0
    :goto_1f0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_21a

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->setDecryptedFilePath(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " decrypted success"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_252

    :cond_21a
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->setDecryptedFilePath(Ljava/lang/String;)V

    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_224} :catch_228
    .catchall {:try_start_1e1 .. :try_end_224} :catchall_22a

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catch_228
    move-exception p0

    goto :goto_22e

    :catchall_22a
    move-exception p0

    goto :goto_256

    :catch_22c
    move-exception p0

    move-object v8, v4

    :goto_22e
    :try_start_22e
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V

    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "decryptFile"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_252
    .catchall {:try_start_22e .. :try_end_252} :catchall_22a

    :goto_252
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_255
    :goto_255
    return-object v1

    :goto_256
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static decryptHeader([BLjava/lang/String;)[B
    .registers 4

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decrypt([BLjava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_28

    array-length p1, p0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_20

    const/16 p1, 0xf

    :goto_d
    if-lez p1, :cond_17

    aget-byte v0, p0, p1

    if-eqz v0, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 p1, p1, -0x1

    goto :goto_d

    :cond_17
    :goto_17
    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    :cond_20
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [B

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return-object v0
.end method

.method private static deleteFiles(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteHeader(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteThumb(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteLock(Ljava/lang/String;)Z

    return-void
.end method

.method public static displayPatternDialog(Landroid/app/Activity;I)V
    .registers 9

    invoke-static {}, Lcom/android/fileexplorer/model/AccountHelper;->getInstance()Lcom/android/fileexplorer/model/AccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/AccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setPattern(Landroid/app/Activity;I)V

    goto :goto_1d

    :cond_e
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v5, Lcom/android/fileexplorer/encryption/EncryptUtil$9;

    invoke-direct {v5, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$9;-><init>(Landroid/app/Activity;I)V

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :goto_1d
    return-void
.end method

.method private static doEncrypt(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/data/IExternalSettingSecretInterface;",
            ")V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p2, Lcom/android/fileexplorer/encryption/EncryptUtil$8;

    move-object v0, p2

    move-object v1, p1

    move-object v3, p4

    move-object v4, p3

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/encryption/EncryptUtil$8;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/gallery/data/IExternalSettingSecretInterface;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encrypt([BLjava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encrypt([BLjava/lang/String;)[B
    .registers 6

    :try_start_0
    const-string v0, "AES/CTS/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {p1}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception p0

    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v0, "encrypt cipher error: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encryptFile(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    move-object/from16 v9, p5

    sget-object v2, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " encrypt start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, v7, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v2, :cond_36

    move-object v2, v7

    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_36
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30b

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_49

    goto/16 :goto_30b

    :cond_49
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "/private"

    move-object/from16 v3, p4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    goto :goto_5c

    :cond_5a
    move-object v2, v3

    goto :goto_60

    :cond_5c
    :goto_5c
    invoke-static/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateRootDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_72

    invoke-static {v2, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_72
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/MIUI/Gallery/cloud/sharer"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_8a
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_e7

    sget-object v4, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v11, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_304

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3, v5}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v13

    if-nez v13, :cond_a7

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_a7
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    array-length v15, v12

    move v6, v5

    :goto_b5
    if-ge v6, v15, :cond_d5

    aget-object v1, v12, v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v16, v6

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptFile(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v16, 0x1

    goto :goto_b5

    :cond_d5
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e2

    if-nez v8, :cond_e2

    invoke-static {v11}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    goto/16 :goto_304

    :cond_e2
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_304

    :cond_e7
    const-string v4, "/FileExplorer/.safebox"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f3

    const-string v4, ""

    move-object v13, v4

    goto :goto_f4

    :cond_f3
    move-object v13, v1

    :goto_f4
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    const/4 v4, 0x2

    if-ne v8, v4, :cond_fd

    move-object v4, v1

    goto :goto_10f

    :cond_fd
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v5, v3}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_10b

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_10b
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :goto_10f
    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v4

    :goto_115
    sget-boolean v4, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    const-string v6, "."

    if-eqz v4, :cond_124

    invoke-static {v5}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getEncryptedName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_146

    :cond_124
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getEncryptedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_146
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string v15, "path error"

    if-eqz v14, :cond_157

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, v15}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_157
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_163

    goto :goto_1ad

    :cond_163
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1ad

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_191

    invoke-static {v3, v6, v12}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_191
    if-nez v4, :cond_19b

    invoke-static/range {v17 .. v17}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :cond_19b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, v15}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_1aa
    move v3, v14

    goto/16 :goto_115

    :cond_1ad
    :goto_1ad
    if-eqz v4, :cond_1b8

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getPrivateThumbPath2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c0

    :cond_1b8
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1c0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1cc

    invoke-static {v2}, La/a;->A(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d4

    :cond_1cc
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->generateThumb(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1d4
    move-object v15, v2

    if-eqz v4, :cond_1f7

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1f7

    new-instance v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    if-eqz v9, :cond_1f6

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f6
    return-object v10

    :cond_1f7
    const/4 v2, 0x5

    if-eqz v8, :cond_216

    const/4 v3, 0x1

    if-eq v8, v3, :cond_201

    const/4 v3, 0x2

    if-eq v8, v3, :cond_216

    goto :goto_224

    :cond_201
    const/4 v3, 0x0

    invoke-static {v7, v11, v14, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result v3

    if-ne v3, v2, :cond_209

    return-object v10

    :cond_209
    if-eqz v3, :cond_224

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v2, "Error when generating copied destination file path"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_216
    const/4 v3, 0x1

    invoke-static {v7, v11, v14, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result v3

    if-ne v3, v2, :cond_21e

    return-object v10

    :cond_21e
    if-eqz v3, :cond_224

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_224
    :goto_224
    const/4 v2, 0x0

    if-nez v4, :cond_2a4

    :try_start_227
    invoke-static {v14}, Lcom/android/fileexplorer/encryption/EncryptUtil;->readBufferFromFile(Ljava/io/File;)[B

    move-result-object v3

    if-nez v3, :cond_23b

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v3, "encryptFile error buffer is null, return"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_237} :catch_2a1
    .catchall {:try_start_227 .. :try_end_237} :catchall_2dd

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v10

    :cond_23b
    :try_start_23b
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_241} :catch_2a1
    .catchall {:try_start_23b .. :try_end_241} :catchall_2dd

    :try_start_241
    invoke-static {v3, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encrypt([BLjava/lang/String;)[B

    move-result-object v0
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_245} :catch_29a
    .catchall {:try_start_241 .. :try_end_245} :catchall_2dd

    if-nez v0, :cond_250

    :try_start_247
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_24a} :catch_24e
    .catchall {:try_start_247 .. :try_end_24a} :catchall_2dd

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v10

    :catch_24e
    move-exception v0

    goto :goto_261

    :cond_250
    :try_start_250
    invoke-static {v14}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v3
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_254} :catch_29a
    .catchall {:try_start_250 .. :try_end_254} :catchall_2dd

    if-eqz v3, :cond_266

    :try_start_256
    sget-object v3, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v5, "write encrypt head with documentFile"

    invoke-static {v3, v5}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_260} :catch_24e
    .catchall {:try_start_256 .. :try_end_260} :catchall_2dd

    goto :goto_27d

    :goto_261
    move-object v3, v2

    move-object v2, v4

    move-object v5, v14

    goto/16 :goto_2e1

    :cond_266
    :try_start_266
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v3, v14, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_26d
    .catch Ljava/lang/Exception; {:try_start_266 .. :try_end_26d} :catch_29a
    .catchall {:try_start_266 .. :try_end_26d} :catchall_2dd

    :try_start_26d
    sget-object v2, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v5, "write encrypt head with RandomAccessFile"

    invoke-static {v2, v5}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_27c} :catch_29d
    .catchall {:try_start_26d .. :try_end_27c} :catchall_305

    move-object v2, v3

    :goto_27d
    :try_start_27d
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->backupHeader([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22
    :try_end_293
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_293} :catch_29a
    .catchall {:try_start_27d .. :try_end_293} :catchall_2dd

    move-object v12, v0

    move-object v5, v14

    move-object v14, v3

    :try_start_296
    invoke-direct/range {v12 .. v23}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_296 .. :try_end_299} :catch_2d9
    .catchall {:try_start_296 .. :try_end_299} :catchall_2dd

    goto :goto_2ba

    :catch_29a
    move-exception v0

    move-object v5, v14

    goto :goto_2da

    :catch_29d
    move-exception v0

    move-object v5, v14

    move-object v2, v3

    goto :goto_2da

    :catch_2a1
    move-exception v0

    move-object v5, v14

    goto :goto_2e0

    :cond_2a4
    move-object v5, v14

    :try_start_2a5
    new-instance v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2b9} :catch_2df
    .catchall {:try_start_2a5 .. :try_end_2b9} :catchall_2dd

    move-object v4, v2

    :goto_2ba
    if-eqz v9, :cond_2bf

    :try_start_2bc
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2bf
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " encrypted successful"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2d5} :catch_2d9
    .catchall {:try_start_2bc .. :try_end_2d5} :catchall_2dd

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_304

    :catch_2d9
    move-exception v0

    :goto_2da
    move-object v3, v2

    move-object v2, v4

    goto :goto_2e1

    :catchall_2dd
    move-exception v0

    goto :goto_307

    :catch_2df
    move-exception v0

    :goto_2e0
    move-object v3, v2

    :goto_2e1
    :try_start_2e1
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v8, v11, v5, v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleEncryptionError(Landroid/app/Activity;ILjava/io/File;Ljava/io/File;[B)V

    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encryptFile error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_301
    .catchall {:try_start_2e1 .. :try_end_301} :catchall_305

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_304
    :goto_304
    return-object v10

    :catchall_305
    move-exception v0

    move-object v2, v3

    :goto_307
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_30b
    :goto_30b
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10
.end method

.method public static encryptHeader([BLjava/lang/String;)[B
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encrypt([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;)V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil$13;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getACLockType(Landroid/content/Context;)I
    .registers 6

    :try_start_0
    const-string v0, "android.security.ChooseLockSettingsHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "isPrivacyPasswordEnabled"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    const/4 p0, -0x1

    return p0
.end method

.method private static getAllImagesAndVideosInDir(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_11

    return-object v0

    :cond_11
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1a

    return-object v0

    :cond_1a
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_59

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_56

    :cond_27
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_56

    :cond_3b
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/util/MimeUtils;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    :cond_4f
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_59
    return-object v0
.end method

.method private static getAllImagesAndVideosInFileInfos(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v2, :cond_23

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_23
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_33
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_39
    return-object v0
.end method

.method private static getAllImagesAndVideosInList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_28
    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_38
    return-object v0
.end method

.method private static getAllSucceedImagesAndVideos(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method

.method public static getEncryptedName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "{["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "]}"

    if-eqz v1, :cond_10

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    :cond_10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f11014d

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_28
    const-string v0, "_encrypted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_36
    const-string v0, "_encrypted_new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_42
    return-object p0
.end method

.method public static getEncryptedNameWithoutPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "{["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "]}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1a
    const-string v0, "_encrypted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_28
    const-string v0, "_encrypted_new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_34
    return-object p0
.end method

.method private static getNotZeroLength([B)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    array-length v1, p0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_17

    const/16 v1, 0xf

    :goto_b
    if-lez v1, :cond_17

    aget-byte v2, p0, v1

    if-eqz v2, :cond_14

    add-int/lit8 v0, v1, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_17
    :goto_17
    return v0
.end method

.method public static getRealName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "{["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "]}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_26
    const-string v0, "_encrypted_new"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_encrypted"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static handleDecryptionError(Ljava/io/File;[B)V
    .registers 7

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " decryption error, trying to restore the original file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_87

    array-length v1, p1

    if-nez v1, :cond_25

    goto :goto_87

    :cond_25
    const/4 v1, 0x0

    :try_start_26
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_65
    .catchall {:try_start_26 .. :try_end_2f} :catchall_63

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_33
    :try_start_33
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_65
    .catchall {:try_start_33 .. :try_end_3a} :catchall_63

    const-wide/16 v3, 0x0

    :try_start_3c
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "restore successful"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_5a} :catch_61
    .catchall {:try_start_3c .. :try_end_5a} :catchall_5e

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_82

    :catchall_5e
    move-exception p0

    move-object v1, v2

    goto :goto_83

    :catch_61
    move-object v1, v2

    goto :goto_65

    :catchall_63
    move-exception p0

    goto :goto_83

    :catch_65
    :goto_65
    :try_start_65
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "restore error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_63

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :goto_82
    return-void

    :goto_83
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_87
    :goto_87
    return-void
.end method

.method private static handleEncryptionError(Landroid/app/Activity;ILjava/io/File;Ljava/io/File;[B)V
    .registers 10

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", encryption or decryption error, trying to restore the original file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_20
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {p2, p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z

    goto :goto_5a

    :cond_2a
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p3, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_31} :catch_60
    .catchall {:try_start_20 .. :try_end_31} :catchall_5e

    if-eqz p4, :cond_59

    const-wide/16 v3, 0x0

    :try_start_35
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p4}, Ljava/io/RandomAccessFile;->write([B)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "restore successful"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_53} :catch_57
    .catchall {:try_start_35 .. :try_end_53} :catchall_54

    goto :goto_59

    :catchall_54
    move-exception p0

    move-object v1, v2

    goto :goto_82

    :catch_57
    move-object v1, v2

    goto :goto_60

    :cond_59
    :goto_59
    move-object v1, v2

    :goto_5a
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_7b

    :catchall_5e
    move-exception p0

    goto :goto_82

    :catch_60
    :goto_60
    :try_start_60
    sget-object p4, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "restore error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_5e

    goto :goto_5a

    :goto_7b
    if-nez p1, :cond_81

    const/4 p1, 0x1

    invoke-static {p0, p3, p2, p1}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    :cond_81
    return-void

    :goto_82
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static handleLargeFile(Ljava/io/File;[B)Z
    .registers 3

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z

    move-result p0

    return p0

    :cond_11
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeNormal(Ljava/io/File;[BI)Z

    move-result p0

    return p0
.end method

.method private static handleSmallFile(Ljava/io/File;[B)Z
    .registers 5

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getNotZeroLength([B)I

    move-result v0

    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v2, "handleSmallFile realLength = "

    invoke-static {v2, v0, v1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    const/4 p0, 0x1

    return p0

    :cond_1a
    new-array v2, v0, [B

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    invoke-static {p0, v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z

    move-result p0

    return p0

    :cond_34
    invoke-static {p0, v2, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeNormal(Ljava/io/File;[BI)Z

    move-result p0

    return p0
.end method

.method public static hasCommonPassword(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "android.provider.MiuiSettings$Secure"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "hasCommonPassword"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isPasswordSet(Landroid/app/Activity;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getACLockType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x6a

    const/4 v4, 0x1

    if-ne v1, v2, :cond_23

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_22

    const v1, 0x7f11029b

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    const-string v2, "file_explorer"

    invoke-static {p0, v1, v2, v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->showSetPasswordConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V

    return v0

    :cond_22
    return v4

    :cond_23
    if-nez v1, :cond_29

    invoke-static {p0, v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->displayPatternDialog(Landroid/app/Activity;I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2d

    return v0

    :cond_29
    if-ne v1, v4, :cond_2c

    move v0, v4

    :cond_2c
    return v0

    :catch_2d
    move-exception p0

    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isPrivate(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/FileExplorer/.safebox"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static moveFile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "/private"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_22

    :cond_20
    move-object v1, v2

    goto :goto_2a

    :cond_22
    :goto_22
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateRootDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_38
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_95

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v1, "path error"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_59
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v8, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList([Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_73
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/encryption/EncryptUtil;->moveFile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_73

    :cond_90
    invoke-static {v8}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    goto/16 :goto_172

    :cond_95
    instance-of v2, v6, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v2, :cond_a3

    move-object v2, v6

    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/fileexplorer/activity/BaseActivity;->increaseProgressBy(J)V

    :cond_a3
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_b3

    return-void

    :cond_b3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    sget-boolean v2, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v2, :cond_cc

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getEncryptedName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_fc

    :cond_cc
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getEncryptedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_fc
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_103

    return-void

    :cond_103
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v8, v4, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result v1

    if-nez v1, :cond_16d

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getThumbPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v1, v5, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    if-nez v2, :cond_148

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getHeaderPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v2, v5, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    goto :goto_14a

    :cond_148
    const-string v1, ""

    :goto_14a
    move-object v13, v1

    new-instance v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSourcePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    move-result-wide v19

    move-object v9, v1

    invoke-direct/range {v9 .. v20}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_172

    :cond_16d
    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_172
    return-void
.end method

.method public static movePrivateFiles(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil$12;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static declared-synchronized operationDecryptFiles(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/android/fileexplorer/encryption/EncryptUtil$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil$6;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized operationDeleteFiles(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f12000d

    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1102fb

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->buildDeleteMessage(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110116

    new-instance v3, Lcom/android/fileexplorer/encryption/EncryptUtil$3;

    invoke-direct {v3, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$3;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f110050

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3e

    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized operationOpenFile(Lcom/android/fileexplorer/activity/BaseActivity;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/activity/BaseActivity;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;I)V"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v0

    if-nez p1, :cond_e

    :try_start_5
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string p1, "The file list cannot be null"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_86

    monitor-exit v0

    return-void

    :cond_e
    :try_start_e
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_4f
    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_64
    const-string p1, "secret_file"

    const v1, 0x7f182eee

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p0, v2, p2, v1}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewImagesUsingViewLarge(Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;ILjava/lang/String;)V

    goto :goto_84

    :cond_75
    new-instance p1, Lcom/android/fileexplorer/encryption/EncryptUtil$2;

    invoke-direct {p1, p0, v1}, Lcom/android/fileexplorer/encryption/EncryptUtil$2;-><init>(Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/encryption/PrivateFile;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_84
    .catchall {:try_start_e .. :try_end_84} :catchall_86

    :goto_84
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized operationReEncryptFile(Landroid/app/Activity;Ljava/io/File;)I
    .registers 15

    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/.lock_"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_encrypted_new"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_encrypted"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromDisplayPath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x6

    if-nez v4, :cond_3b

    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v1, "operationReEncryptFile displayFile not exists"

    invoke-static {p0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v12

    goto/16 :goto_ad

    :cond_3b
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    :cond_49
    move v10, v11

    goto :goto_ad

    :cond_4b
    if-eqz v2, :cond_6e

    invoke-static {p0, v2}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->restoreFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6e

    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has been re-encrypted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad

    :cond_6e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x2

    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    move-object v6, v1

    move-object v9, v2

    invoke-static/range {v4 .. v9}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptFile(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_90

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->insertList(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_49

    goto :goto_ad

    :cond_90
    const/16 v10, 0x14

    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot restore file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from lock file"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ad
    if-eq v10, v12, :cond_b1

    if-nez v10, :cond_b4

    :cond_b1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_b4
    .catchall {:try_start_3 .. :try_end_b4} :catchall_b6

    :cond_b4
    monitor-exit v0

    return v10

    :catchall_b6
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized operationRestoreFiles(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/android/fileexplorer/encryption/EncryptUtil$5;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$5;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static readBufferFromFile(Ljava/io/File;)[B
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_52

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_52

    :cond_a
    const-wide/16 v1, 0x400

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1a

    move v1, v2

    :cond_1a
    new-array v1, v1, [B

    :try_start_1c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_2c
    .catchall {:try_start_1c .. :try_end_21} :catchall_2a

    :try_start_21
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_28
    .catchall {:try_start_21 .. :try_end_24} :catchall_4c

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catch_28
    move-exception p0

    goto :goto_2e

    :catchall_2a
    move-exception p0

    goto :goto_4e

    :catch_2c
    move-exception p0

    move-object v2, v0

    :goto_2e
    :try_start_2e
    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readBufferFromFile error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_4c

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_4c
    move-exception p0

    move-object v0, v2

    :goto_4e
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_52
    :goto_52
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v1, "readBufferFromFile file not exist, return."

    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static requestSetPwd(Landroid/app/Activity;I)V
    .registers 9

    invoke-static {}, Lcom/android/fileexplorer/model/AccountHelper;->getInstance()Lcom/android/fileexplorer/model/AccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/AccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setLockPattern(Landroid/app/Activity;I)V

    goto :goto_1d

    :cond_e
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v5, Lcom/android/fileexplorer/encryption/EncryptUtil$10;

    invoke-direct {v5, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$10;-><init>(Landroid/app/Activity;I)V

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :goto_1d
    return-void
.end method

.method private static setLockPattern(Landroid/app/Activity;I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.PrivacyPasswordChooseLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.app.action.PRIVACY_PASSWORD_SET_NEW_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static setPattern(Landroid/app/Activity;I)V
    .registers 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1103c7

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1103c9

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/encryption/EncryptUtil$11;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$11;-><init>(Landroid/app/Activity;I)V

    const p0, 0x7f1103c8

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f110050

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showSetPasswordConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V
    .registers 12

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setFirstEnterPrivateFolder(Z)V

    const-string v1, "android.provider.MiuiSettings$Secure"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    aput-object v4, v3, v0

    const-class v4, Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "showSetPasswordConfirmDialog"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static unlockPattern(Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.PrivacyPasswordConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.app.action.PRIVACY_PASSWORD_CONFIRM_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x6c

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static updateFile(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileItem(Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/FileItem;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->insertNewFiles(Ljava/util/List;)V

    return-void
.end method

.method public static writeHeaderWithDocumentFile(Ljava/io/File;[B)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_ac

    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_ac

    :cond_8
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p0

    if-eqz p0, :cond_a5

    const/4 v1, 0x0

    :try_start_f
    check-cast p0, Ls0/c;

    iget-object p0, p0, Ls0/c;->c:Landroid/net/Uri;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_72
    .catchall {:try_start_f .. :try_end_13} :catchall_6d

    :try_start_13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rw"

    invoke-virtual {v2, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_21} :catch_67
    .catchall {:try_start_13 .. :try_end_21} :catchall_65

    if-eqz p0, :cond_34

    :try_start_23
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_31
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2d

    goto :goto_35

    :catchall_2d
    move-exception p1

    move-object v2, v1

    goto/16 :goto_9b

    :catch_31
    move-exception p1

    move-object v2, v1

    goto :goto_76

    :cond_34
    move-object v2, v1

    :goto_35
    if-eqz v2, :cond_5b

    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    array-length v3, p1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4e} :catch_59
    .catchall {:try_start_37 .. :try_end_4e} :catchall_9a

    const/4 p1, 0x1

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return p1

    :catch_59
    move-exception p1

    goto :goto_76

    :cond_5b
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_65
    move-exception p1

    goto :goto_6f

    :catch_67
    move-exception p1

    goto :goto_74

    :goto_69
    move-object p1, p0

    goto :goto_6f

    :goto_6b
    move-object p1, p0

    goto :goto_74

    :catchall_6d
    move-exception p0

    goto :goto_69

    :goto_6f
    move-object p0, v1

    move-object v2, p0

    goto :goto_9b

    :catch_72
    move-exception p0

    goto :goto_6b

    :goto_74
    move-object p0, v1

    move-object v2, p0

    :goto_76
    :try_start_76
    sget-object v3, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeHeaderWithDocumentFile error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_76 .. :try_end_90} :catchall_9a

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_ac

    :catchall_9a
    move-exception p1

    :goto_9b
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_a5
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string p1, "writeHeaderWithDocumentFile, no permission access SD card"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ac
    :goto_ac
    return v0
.end method

.method private static writeNormal(Ljava/io/File;[BI)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_30

    :try_start_4
    array-length v2, p1

    if-nez v2, :cond_8

    goto :goto_30

    :cond_8
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v3, "rw"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_3d
    .catchall {:try_start_4 .. :try_end_13} :catchall_3b

    if-lez p2, :cond_1d

    const/16 p0, 0x10

    if-ge p2, p0, :cond_1d

    int-to-long v3, p2

    :try_start_1a
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_1d
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_2d
    .catchall {:try_start_1a .. :try_end_25} :catchall_2a

    const/4 p0, 0x1

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return p0

    :catchall_2a
    move-exception p0

    move-object v1, v2

    goto :goto_5c

    :catch_2d
    move-exception p0

    move-object v1, v2

    goto :goto_3e

    :cond_30
    :goto_30
    :try_start_30
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string p1, "writeNormal error, head is null or empty"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_3d
    .catchall {:try_start_30 .. :try_end_37} :catchall_3b

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_3b
    move-exception p0

    goto :goto_5c

    :catch_3d
    move-exception p0

    :goto_3e
    :try_start_3e
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeNormal error: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_3b

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :goto_5c
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
