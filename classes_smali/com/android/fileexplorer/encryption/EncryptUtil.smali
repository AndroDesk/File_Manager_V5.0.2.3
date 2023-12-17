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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$1;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil$1;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deleteFiles(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->doEncrypt(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Ljava/util/List;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInFileInfos(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Ljava/util/List;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInList(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$600(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllSucceedImagesAndVideos(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$700(Ljava/util/List;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->containsMiuiSharer(Ljava/util/List;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$800(Landroid/app/Activity;I)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setPattern(Landroid/app/Activity;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Landroid/app/Activity;I)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setLockPattern(Landroid/app/Activity;I)V

    .line 4
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

    .line 1
    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_7

    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isPasswordSet(Landroid/app/Activity;)Z

    .line 11
    move-result v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_39

    .line 12
    if-nez v1, :cond_f

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :cond_f
    :try_start_f
    new-instance v1, Landroid/content/Intent;

    .line 18
    const-string v2, "com.miui.gallery.ACTION_PRE_SETTING_SECRET"

    .line 20
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v2, "com.miui.gallery"

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_39

    .line 28
    const/4 v2, 0x0

    .line 29
    :try_start_1c
    new-instance v3, Lcom/android/fileexplorer/encryption/EncryptUtil$7;

    .line 31
    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil$7;-><init>(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 38
    move-result v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27
    .catchall {:try_start_1c .. :try_end_26} :catchall_39

    .line 39
    goto :goto_31

    .line 40
    :catch_27
    move-exception v1

    .line 41
    :try_start_28
    sget-object v3, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v3, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_31
    if-nez v2, :cond_37

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->doEncrypt(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_39

    .line 56
    :cond_37
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_39
    move-exception p0

    .line 59
    monitor-exit v0

    .line 60
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_20

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 24
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_b

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_b

    .line 33
    :cond_20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result p1

    .line 37
    sub-int/2addr p1, v3

    .line 38
    const/4 v1, 0x1

    .line 39
    if-lez v3, :cond_82

    .line 41
    const v4, 0x7f1102fc

    .line 44
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    if-nez p1, :cond_55

    .line 53
    if-ne v3, v1, :cond_3e

    .line 55
    const p1, 0x7f11011a

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    goto :goto_51

    .line 63
    :cond_3e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object p0

    .line 67
    const p1, 0x7f0f0011

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v4

    .line 76
    aput-object v4, v1, v2

    .line 78
    invoke-virtual {p0, p1, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    :goto_51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    goto :goto_a2

    .line 86
    :cond_55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object v4

    .line 90
    const v5, 0x7f0f0010

    .line 93
    new-array v6, v1, [Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v7

    .line 99
    aput-object v7, v6, v2

    .line 101
    invoke-virtual {v4, v5, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object p0

    .line 112
    const p1, 0x7f0f0012

    .line 115
    new-array v1, v1, [Ljava/lang/Object;

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v4

    .line 121
    aput-object v4, v1, v2

    .line 123
    invoke-virtual {p0, p1, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    goto :goto_a2

    .line 131
    :cond_82
    if-ne p1, v1, :cond_8c

    .line 133
    const p1, 0x7f110118

    .line 136
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    goto :goto_9f

    .line 141
    :cond_8c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    move-result-object p0

    .line 145
    const v3, 0x7f0f000f

    .line 148
    new-array v1, v1, [Ljava/lang/Object;

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v4

    .line 154
    aput-object v4, v1, v2

    .line 156
    invoke-virtual {p0, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    move-result-object p0

    .line 160
    :goto_9f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :goto_a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p0

    .line 167
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

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_22

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "/MIUI/Gallery/cloud/sharer"

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_4

    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_22
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .registers 6

    .line 1
    :try_start_0
    const-string v0, "AES/CTS/NoPadding"

    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    const/16 v2, 0x10

    .line 14
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 27
    move-result-object v1

    .line 28
    const-string v3, "AES"

    .line 30
    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 33
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 42
    const/4 p1, 0x2

    .line 43
    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 49
    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 50
    return-object p0

    .line 51
    :catch_32
    move-exception p0

    .line 52
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 p0, 0x0

    .line 62
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

    .line 1
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, " decrypt start"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    instance-of v2, p0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 34
    if-eqz v2, :cond_34

    .line 36
    move-object v2, p0

    .line 37
    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 39
    invoke-virtual {v2}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_34

    .line 45
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v1

    .line 53
    :cond_34
    new-instance v2, Ljava/io/File;

    .line 55
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_63

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string p1, " not exists"

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-object v1

    .line 100
    :cond_63
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_75

    .line 106
    const-string v3, "/"

    .line 108
    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_75

    .line 114
    invoke-static {p4, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object p4

    .line 118
    :cond_75
    const/4 v3, 0x0

    .line 119
    invoke-static {p4, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    .line 122
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 125
    move-result v4

    .line 126
    const/4 v5, 0x1

    .line 127
    if-eqz v4, :cond_d9

    .line 129
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 131
    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList([Ljava/io/File;)Ljava/util/List;

    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 142
    move-result-object v4

    .line 143
    invoke-static {p4, v4, v5, v3}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    .line 146
    move-result-object p4

    .line 147
    if-nez p4, :cond_9c

    .line 149
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-object v1

    .line 157
    :cond_9c
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 160
    move-result-object p2

    .line 161
    invoke-static {p2, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    .line 164
    if-eqz v0, :cond_cc

    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 169
    move-result p2

    .line 170
    if-nez p2, :cond_cc

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 175
    move-result-object p2

    .line 176
    :goto_af
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_cc

    .line 182
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v0

    .line 186
    move-object v5, v0

    .line 187
    check-cast v5, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 189
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 192
    move-result-object v7

    .line 193
    move-object v3, p0

    .line 194
    move v4, p1

    .line 195
    move-object v6, p3

    .line 196
    move-object v8, p5

    .line 197
    invoke-static/range {v3 .. v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    goto :goto_af

    .line 205
    :cond_cc
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 208
    move-result p0

    .line 209
    if-eqz p0, :cond_255

    .line 211
    if-nez p1, :cond_255

    .line 213
    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 216
    goto/16 :goto_255

    .line 218
    :cond_d9
    const/4 v4, 0x0

    .line 219
    :try_start_da
    sget-boolean v6, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 221
    if-nez v6, :cond_12c

    .line 223
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->readBufferFromFile(Ljava/io/File;)[B

    .line 226
    move-result-object v7

    .line 227
    if-nez v7, :cond_f4

    .line 229
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const-string p0, "decryptFile error, buffer is null, return"

    .line 238
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_f0} :catch_22c
    .catchall {:try_start_da .. :try_end_f0} :catchall_22a

    .line 241
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 244
    return-object v1

    .line 245
    :cond_f4
    :try_start_f4
    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    .line 248
    move-result-object v8

    .line 249
    check-cast v8, [B
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fa} :catch_22c
    .catchall {:try_start_f4 .. :try_end_fa} :catchall_22a

    .line 251
    :try_start_fa
    invoke-static {v7, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decrypt([BLjava/lang/String;)[B

    .line 254
    move-result-object p3

    .line 255
    if-nez p3, :cond_10e

    .line 257
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 260
    move-result-object p0

    .line 261
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_10a} :catch_228
    .catchall {:try_start_fa .. :try_end_10a} :catchall_22a

    .line 267
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 270
    return-object v1

    .line 271
    :cond_10e
    :try_start_10e
    array-length v7, p3

    .line 272
    const/16 v9, 0x10

    .line 274
    if-ne v7, v9, :cond_118

    .line 276
    invoke-static {v2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleSmallFile(Ljava/io/File;[B)Z

    .line 279
    move-result p3

    .line 280
    goto :goto_11c

    .line 281
    :cond_118
    invoke-static {v2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleLargeFile(Ljava/io/File;[B)Z

    .line 284
    move-result p3

    .line 285
    :goto_11c
    if-nez p3, :cond_12d

    .line 287
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 290
    move-result-object p0

    .line 291
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_128} :catch_228
    .catchall {:try_start_10e .. :try_end_128} :catchall_22a

    .line 297
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 300
    return-object v1

    .line 301
    :cond_12c
    move-object v8, v4

    .line 302
    :cond_12d
    :try_start_12d
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 305
    move-result-object p3

    .line 306
    invoke-static {p3}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    move-result-object p3

    .line 310
    invoke-static {p4, p3, v3, v3}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    .line 313
    move-result-object p3

    .line 314
    if-nez p3, :cond_146

    .line 316
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 319
    move-result-object p0

    .line 320
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_142} :catch_228
    .catchall {:try_start_12d .. :try_end_142} :catchall_22a

    .line 323
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 326
    return-object v1

    .line 327
    :cond_146
    const/4 p4, 0x5

    .line 328
    if-eqz p1, :cond_1c4

    .line 330
    if-eq p1, v5, :cond_192

    .line 332
    const/4 p5, 0x2

    .line 333
    if-eq p1, p5, :cond_178

    .line 335
    const/4 p0, 0x3

    .line 336
    if-eq p1, p0, :cond_153

    .line 338
    goto/16 :goto_1f0

    .line 340
    :cond_153
    if-eqz v6, :cond_157

    .line 342
    goto/16 :goto_1f0

    .line 344
    :cond_157
    :try_start_157
    const-string p0, "open file"

    .line 346
    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 352
    move-result-object p0

    .line 353
    invoke-static {v2, p0, v5}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->rename(Ljava/io/File;Ljava/lang/String;Z)I

    .line 356
    move-result p0

    .line 357
    if-eqz p0, :cond_171

    .line 359
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 362
    move-result-object p0

    .line 363
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_16d} :catch_228
    .catchall {:try_start_157 .. :try_end_16d} :catchall_22a

    .line 366
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 369
    return-object v1

    .line 370
    :cond_171
    :try_start_171
    const-string p0, "open file temp success"

    .line 372
    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    goto/16 :goto_1f0

    .line 377
    :cond_178
    invoke-static {p0, v2, p3, v5}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 380
    move-result p0
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_17c} :catch_228
    .catchall {:try_start_171 .. :try_end_17c} :catchall_22a

    .line 381
    if-ne p0, p4, :cond_182

    .line 383
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 386
    return-object v1

    .line 387
    :cond_182
    if-eqz p0, :cond_1f0

    .line 389
    :try_start_184
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 392
    move-result-object p0

    .line 393
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_18e} :catch_228
    .catchall {:try_start_184 .. :try_end_18e} :catchall_22a

    .line 399
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 402
    return-object v1

    .line 403
    :cond_192
    :try_start_192
    invoke-static {p0, v2, p3, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 406
    move-result p0

    .line 407
    if-ne p0, p4, :cond_19f

    .line 409
    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_19b} :catch_228
    .catchall {:try_start_192 .. :try_end_19b} :catchall_22a

    .line 412
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 415
    return-object v1

    .line 416
    :cond_19f
    if-eqz p0, :cond_1b4

    .line 418
    :try_start_1a1
    const-string p0, "Error when generating copied destination file path"

    .line 420
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 426
    move-result-object p0

    .line 427
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1b0} :catch_228
    .catchall {:try_start_1a1 .. :try_end_1b0} :catchall_22a

    .line 433
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 436
    return-object v1

    .line 437
    :cond_1b4
    :try_start_1b4
    invoke-static {p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V

    .line 440
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 443
    move-result-object p0

    .line 444
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->updateFile(Ljava/lang/String;)V

    .line 447
    if-eqz p5, :cond_1f0

    .line 449
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    goto :goto_1f0

    .line 453
    :cond_1c4
    invoke-static {p0, v2, p3, v5}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 456
    move-result p0

    .line 457
    if-ne p0, p4, :cond_1d1

    .line 459
    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1cd} :catch_228
    .catchall {:try_start_1b4 .. :try_end_1cd} :catchall_22a

    .line 462
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 465
    return-object v1

    .line 466
    :cond_1d1
    if-eqz p0, :cond_1e1

    .line 468
    :try_start_1d3
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 471
    move-result-object p0

    .line 472
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1dd} :catch_228
    .catchall {:try_start_1d3 .. :try_end_1dd} :catchall_22a

    .line 478
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 481
    return-object v1

    .line 482
    :cond_1e1
    :try_start_1e1
    invoke-static {p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V

    .line 485
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 488
    move-result-object p0

    .line 489
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->updateFile(Ljava/lang/String;)V

    .line 492
    if-eqz p5, :cond_1f0

    .line 494
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_1f0
    :goto_1f0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 500
    move-result-object p0

    .line 501
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 504
    move-result p0

    .line 505
    if-nez p0, :cond_21a

    .line 507
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 510
    move-result-object p0

    .line 511
    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->setDecryptedFilePath(Ljava/lang/String;)V

    .line 514
    new-instance p0, Ljava/lang/StringBuilder;

    .line 516
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 522
    move-result-object p1

    .line 523
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string p1, " decrypted success"

    .line 528
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    move-result-object p0

    .line 535
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    goto :goto_252

    .line 539
    :cond_21a
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 542
    move-result-object p0

    .line 543
    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->setDecryptedFilePath(Ljava/lang/String;)V

    .line 546
    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_224} :catch_228
    .catchall {:try_start_1e1 .. :try_end_224} :catchall_22a

    .line 549
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 552
    return-object v1

    .line 553
    :catch_228
    move-exception p0

    .line 554
    goto :goto_22e

    .line 555
    :catchall_22a
    move-exception p0

    .line 556
    goto :goto_256

    .line 557
    :catch_22c
    move-exception p0

    .line 558
    move-object v8, v4

    .line 559
    :goto_22e
    :try_start_22e
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 562
    move-result-object p1

    .line 563
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-static {v2, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V

    .line 569
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 571
    new-instance p2, Ljava/lang/StringBuilder;

    .line 573
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    const-string p3, "decryptFile"

    .line 578
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 584
    move-result-object p0

    .line 585
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    move-result-object p0

    .line 592
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_252
    .catchall {:try_start_22e .. :try_end_252} :catchall_22a

    .line 595
    :goto_252
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 598
    :cond_255
    :goto_255
    return-object v1

    .line 599
    :goto_256
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 602
    throw p0
.end method

.method public static decryptHeader([BLjava/lang/String;)[B
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decrypt([BLjava/lang/String;)[B

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_28

    .line 7
    array-length p1, p0

    .line 8
    const/16 v0, 0x10

    .line 10
    if-ne p1, v0, :cond_20

    .line 12
    const/16 p1, 0xf

    .line 14
    :goto_d
    if-lez p1, :cond_17

    .line 16
    aget-byte v0, p0, p1

    .line 18
    if-eqz v0, :cond_14

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    add-int/lit8 p1, p1, -0x1

    .line 23
    goto :goto_d

    .line 24
    :cond_17
    :goto_17
    add-int/lit8 p1, p1, 0x1

    .line 26
    new-array v0, p1, [B

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    goto :goto_29

    .line 33
    :cond_20
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    move-object v0, p0

    .line 38
    check-cast v0, [B

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 v0, 0x0

    .line 42
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Void;

    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 16
    return-void
.end method

.method public static deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteHeader(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteThumb(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteLock(Ljava/lang/String;)Z

    .line 14
    return-void
.end method

.method public static displayPatternDialog(Landroid/app/Activity;I)V
    .registers 9

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/AccountHelper;->getInstance()Lcom/android/fileexplorer/model/AccountHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/AccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_e

    .line 11
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setPattern(Landroid/app/Activity;I)V

    .line 14
    goto :goto_1d

    .line 15
    :cond_e
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x0

    .line 20
    new-instance v5, Lcom/android/fileexplorer/encryption/EncryptUtil$9;

    .line 22
    invoke-direct {v5, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$9;-><init>(Landroid/app/Activity;I)V

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v4, p0

    .line 27
    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 30
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

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    new-instance p2, Lcom/android/fileexplorer/encryption/EncryptUtil$8;

    .line 8
    move-object v0, p2

    .line 9
    move-object v1, p1

    .line 10
    move-object v3, p4

    .line 11
    move-object v4, p3

    .line 12
    move v5, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/encryption/EncryptUtil$8;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/gallery/data/IExternalSettingSecretInterface;Ljava/lang/String;I)V

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 19
    move-result-object p0

    .line 20
    const/4 p1, 0x0

    .line 21
    new-array p1, p1, [Ljava/lang/Void;

    .line 23
    invoke-virtual {p2, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    return-void
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 2
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

    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 5
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 8
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 10
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception p0

    .line 11
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v0, "encrypt cipher error: "

    .line 12
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13
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

    .line 1
    move-object/from16 v7, p0

    .line 3
    move/from16 v8, p1

    .line 5
    move-object/from16 v1, p2

    .line 7
    move-object/from16 v0, p3

    .line 9
    move-object/from16 v9, p5

    .line 11
    sget-object v2, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v4, " encrypt start"

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v10, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    instance-of v2, v7, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 40
    if-eqz v2, :cond_36

    .line 42
    move-object v2, v7

    .line 43
    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 45
    invoke-virtual {v2}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_36

    .line 51
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-object v10

    .line 55
    :cond_36
    new-instance v11, Ljava/io/File;

    .line 57
    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_30b

    .line 66
    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_49

    .line 72
    goto/16 :goto_30b

    .line 74
    :cond_49
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_5c

    .line 80
    const-string v2, "/private"

    .line 82
    move-object/from16 v3, p4

    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_5a

    .line 90
    goto :goto_5c

    .line 91
    :cond_5a
    move-object v2, v3

    .line 92
    goto :goto_60

    .line 93
    :cond_5c
    :goto_5c
    invoke-static/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateRootDir(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    :goto_60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_72

    .line 103
    const-string v3, "/"

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_72

    .line 111
    invoke-static {v2, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    :cond_72
    const/4 v3, 0x1

    .line 116
    invoke-static {v2, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    .line 119
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    const-string v5, "/MIUI/Gallery/cloud/sharer"

    .line 125
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_8a

    .line 135
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    return-object v10

    .line 139
    :cond_8a
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    .line 142
    move-result v4

    .line 143
    const/4 v5, 0x0

    .line 144
    if-eqz v4, :cond_e7

    .line 146
    sget-object v4, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 148
    invoke-virtual {v11, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 151
    move-result-object v12

    .line 152
    if-eqz v12, :cond_304

    .line 154
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 157
    move-result-object v4

    .line 158
    invoke-static {v2, v4, v3, v5}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    .line 161
    move-result-object v13

    .line 162
    if-nez v13, :cond_a7

    .line 164
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    return-object v10

    .line 168
    :cond_a7
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    invoke-static {v1, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    .line 175
    new-instance v14, Ljava/util/ArrayList;

    .line 177
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 180
    array-length v15, v12

    .line 181
    move v6, v5

    .line 182
    :goto_b5
    if-ge v6, v15, :cond_d5

    .line 184
    aget-object v1, v12, v6

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 193
    move-result-object v5

    .line 194
    move-object/from16 v1, p0

    .line 196
    move/from16 v2, p1

    .line 198
    move-object/from16 v4, p3

    .line 200
    move/from16 v16, v6

    .line 202
    move-object/from16 v6, p5

    .line 204
    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptFile(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 211
    add-int/lit8 v6, v16, 0x1

    .line 213
    goto :goto_b5

    .line 214
    :cond_d5
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_e2

    .line 220
    if-nez v8, :cond_e2

    .line 222
    invoke-static {v11}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 225
    goto/16 :goto_304

    .line 227
    :cond_e2
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    goto/16 :goto_304

    .line 232
    :cond_e7
    const-string v4, "/FileExplorer/.safebox"

    .line 234
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_f3

    .line 240
    const-string v4, ""

    .line 242
    move-object v13, v4

    .line 243
    goto :goto_f4

    .line 244
    :cond_f3
    move-object v13, v1

    .line 245
    :goto_f4
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 248
    move-result-wide v18

    .line 249
    const/4 v4, 0x2

    .line 250
    if-ne v8, v4, :cond_fd

    .line 252
    move-object v4, v1

    .line 253
    goto :goto_10f

    .line 254
    :cond_fd
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 257
    move-result-object v4

    .line 258
    invoke-static {v2, v4, v5, v3}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    .line 261
    move-result-object v4

    .line 262
    if-nez v4, :cond_10b

    .line 264
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    return-object v10

    .line 268
    :cond_10b
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 271
    move-result-object v4

    .line 272
    :goto_10f
    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    move-result-object v5

    .line 276
    move-object/from16 v17, v4

    .line 278
    :goto_115
    sget-boolean v4, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 280
    const-string v6, "."

    .line 282
    if-eqz v4, :cond_124

    .line 284
    invoke-static {v5}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getEncryptedName2(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    move-result-object v12

    .line 288
    invoke-static {v2, v12}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    move-result-object v12

    .line 292
    goto :goto_146

    .line 293
    :cond_124
    new-instance v12, Ljava/lang/StringBuilder;

    .line 295
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    invoke-static/range {v17 .. v17}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    move-result-object v14

    .line 302
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static/range {v17 .. v17}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    move-result-object v14

    .line 312
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    move-result-object v12

    .line 319
    invoke-static {v12}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getEncryptedName(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    move-result-object v12

    .line 323
    invoke-static {v2, v12}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    move-result-object v12

    .line 327
    :goto_146
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 330
    move-result v14

    .line 331
    const-string v15, "path error"

    .line 333
    if-eqz v14, :cond_157

    .line 335
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 337
    invoke-static {v0, v15}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    return-object v10

    .line 344
    :cond_157
    new-instance v14, Ljava/io/File;

    .line 346
    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    move-result v12

    .line 353
    if-eqz v12, :cond_163

    .line 355
    goto :goto_1ad

    .line 356
    :cond_163
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    .line 359
    move-result v12

    .line 360
    if-eqz v12, :cond_1ad

    .line 362
    new-instance v12, Ljava/lang/StringBuilder;

    .line 364
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    invoke-static {v5}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    move-result-object v14

    .line 371
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v14, " "

    .line 376
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v14, v3, 0x1

    .line 381
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object v3

    .line 388
    invoke-static {v5}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    move-result-object v12

    .line 392
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 395
    move-result v16

    .line 396
    if-nez v16, :cond_191

    .line 398
    invoke-static {v3, v6, v12}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    move-result-object v3

    .line 402
    :cond_191
    if-nez v4, :cond_19b

    .line 404
    invoke-static/range {v17 .. v17}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    move-result-object v4

    .line 408
    invoke-static {v4, v3}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    move-result-object v17

    .line 412
    :cond_19b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 415
    move-result v3

    .line 416
    if-eqz v3, :cond_1aa

    .line 418
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 420
    invoke-static {v0, v15}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    return-object v10

    .line 427
    :cond_1aa
    move v3, v14

    .line 428
    goto/16 :goto_115

    .line 430
    :cond_1ad
    :goto_1ad
    if-eqz v4, :cond_1b8

    .line 432
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 435
    move-result-object v2

    .line 436
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getPrivateThumbPath2(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    move-result-object v2

    .line 440
    goto :goto_1c0

    .line 441
    :cond_1b8
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 444
    move-result-object v2

    .line 445
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    move-result-object v2

    .line 449
    :goto_1c0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 452
    move-result v3

    .line 453
    if-nez v3, :cond_1cc

    .line 455
    invoke-static {v2}, La/a;->A(Ljava/lang/String;)Z

    .line 458
    move-result v3

    .line 459
    if-nez v3, :cond_1d4

    .line 461
    :cond_1cc
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 464
    move-result-object v2

    .line 465
    invoke-static {v11, v2, v0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->generateThumb(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    move-result-object v2

    .line 469
    :cond_1d4
    move-object v15, v2

    .line 470
    if-eqz v4, :cond_1f7

    .line 472
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    .line 475
    move-result v2

    .line 476
    if-eqz v2, :cond_1f7

    .line 478
    new-instance v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 480
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 483
    move-result-object v14

    .line 484
    const/16 v16, 0x0

    .line 486
    const/16 v20, 0x0

    .line 488
    const/16 v21, 0x0

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 493
    move-result-wide v22

    .line 494
    move-object v12, v0

    .line 495
    invoke-direct/range {v12 .. v23}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 498
    if-eqz v9, :cond_1f6

    .line 500
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_1f6
    return-object v10

    .line 504
    :cond_1f7
    const/4 v2, 0x5

    .line 505
    if-eqz v8, :cond_216

    .line 507
    const/4 v3, 0x1

    .line 508
    if-eq v8, v3, :cond_201

    .line 510
    const/4 v3, 0x2

    .line 511
    if-eq v8, v3, :cond_216

    .line 513
    goto :goto_224

    .line 514
    :cond_201
    const/4 v3, 0x0

    .line 515
    invoke-static {v7, v11, v14, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 518
    move-result v3

    .line 519
    if-ne v3, v2, :cond_209

    .line 521
    return-object v10

    .line 522
    :cond_209
    if-eqz v3, :cond_224

    .line 524
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 526
    const-string v2, "Error when generating copied destination file path"

    .line 528
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    return-object v10

    .line 535
    :cond_216
    const/4 v3, 0x1

    .line 536
    invoke-static {v7, v11, v14, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 539
    move-result v3

    .line 540
    if-ne v3, v2, :cond_21e

    .line 542
    return-object v10

    .line 543
    :cond_21e
    if-eqz v3, :cond_224

    .line 545
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    return-object v10

    .line 549
    :cond_224
    :goto_224
    const/4 v2, 0x0

    .line 550
    if-nez v4, :cond_2a4

    .line 552
    :try_start_227
    invoke-static {v14}, Lcom/android/fileexplorer/encryption/EncryptUtil;->readBufferFromFile(Ljava/io/File;)[B

    .line 555
    move-result-object v3

    .line 556
    if-nez v3, :cond_23b

    .line 558
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 563
    const-string v3, "encryptFile error buffer is null, return"

    .line 565
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_237} :catch_2a1
    .catchall {:try_start_227 .. :try_end_237} :catchall_2dd

    .line 568
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 571
    return-object v10

    .line 572
    :cond_23b
    :try_start_23b
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 575
    move-result-object v4

    .line 576
    check-cast v4, [B
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_241} :catch_2a1
    .catchall {:try_start_23b .. :try_end_241} :catchall_2dd

    .line 578
    :try_start_241
    invoke-static {v3, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encrypt([BLjava/lang/String;)[B

    .line 581
    move-result-object v0
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_245} :catch_29a
    .catchall {:try_start_241 .. :try_end_245} :catchall_2dd

    .line 582
    if-nez v0, :cond_250

    .line 584
    :try_start_247
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_24a} :catch_24e
    .catchall {:try_start_247 .. :try_end_24a} :catchall_2dd

    .line 587
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 590
    return-object v10

    .line 591
    :catch_24e
    move-exception v0

    .line 592
    goto :goto_261

    .line 593
    :cond_250
    :try_start_250
    invoke-static {v14}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 596
    move-result v3
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_254} :catch_29a
    .catchall {:try_start_250 .. :try_end_254} :catchall_2dd

    .line 597
    if-eqz v3, :cond_266

    .line 599
    :try_start_256
    sget-object v3, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 601
    const-string v5, "write encrypt head with documentFile"

    .line 603
    invoke-static {v3, v5}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-static {v14, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_260} :catch_24e
    .catchall {:try_start_256 .. :try_end_260} :catchall_2dd

    .line 609
    goto :goto_27d

    .line 610
    :goto_261
    move-object v3, v2

    .line 611
    move-object v2, v4

    .line 612
    move-object v5, v14

    .line 613
    goto/16 :goto_2e1

    .line 615
    :cond_266
    :try_start_266
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 617
    const-string v5, "rw"

    .line 619
    invoke-direct {v3, v14, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_26d
    .catch Ljava/lang/Exception; {:try_start_266 .. :try_end_26d} :catch_29a
    .catchall {:try_start_266 .. :try_end_26d} :catchall_2dd

    .line 622
    :try_start_26d
    sget-object v2, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 624
    const-string v5, "write encrypt head with RandomAccessFile"

    .line 626
    invoke-static {v2, v5}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-wide/16 v5, 0x0

    .line 631
    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 634
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_27c} :catch_29d
    .catchall {:try_start_26d .. :try_end_27c} :catchall_305

    .line 637
    move-object v2, v3

    .line 638
    :goto_27d
    :try_start_27d
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 641
    move-result-object v3

    .line 642
    invoke-static {v0, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->backupHeader([BLjava/lang/String;)Ljava/lang/String;

    .line 645
    move-result-object v16

    .line 646
    new-instance v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 648
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 651
    move-result-object v3

    .line 652
    const/16 v20, 0x0

    .line 654
    const/16 v21, 0x0

    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 659
    move-result-wide v22
    :try_end_293
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_293} :catch_29a
    .catchall {:try_start_27d .. :try_end_293} :catchall_2dd

    .line 660
    move-object v12, v0

    .line 661
    move-object v5, v14

    .line 662
    move-object v14, v3

    .line 663
    :try_start_296
    invoke-direct/range {v12 .. v23}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_296 .. :try_end_299} :catch_2d9
    .catchall {:try_start_296 .. :try_end_299} :catchall_2dd

    .line 666
    goto :goto_2ba

    .line 667
    :catch_29a
    move-exception v0

    .line 668
    move-object v5, v14

    .line 669
    goto :goto_2da

    .line 670
    :catch_29d
    move-exception v0

    .line 671
    move-object v5, v14

    .line 672
    move-object v2, v3

    .line 673
    goto :goto_2da

    .line 674
    :catch_2a1
    move-exception v0

    .line 675
    move-object v5, v14

    .line 676
    goto :goto_2e0

    .line 677
    :cond_2a4
    move-object v5, v14

    .line 678
    :try_start_2a5
    new-instance v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 680
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 683
    move-result-object v14

    .line 684
    const/16 v16, 0x0

    .line 686
    const/16 v20, 0x0

    .line 688
    const/16 v21, 0x0

    .line 690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 693
    move-result-wide v22

    .line 694
    move-object v12, v0

    .line 695
    invoke-direct/range {v12 .. v23}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2b9} :catch_2df
    .catchall {:try_start_2a5 .. :try_end_2b9} :catchall_2dd

    .line 698
    move-object v4, v2

    .line 699
    :goto_2ba
    if-eqz v9, :cond_2bf

    .line 701
    :try_start_2bc
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_2bf
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 706
    new-instance v3, Ljava/lang/StringBuilder;

    .line 708
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const-string v6, " encrypted successful"

    .line 716
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    move-result-object v3

    .line 723
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2d5} :catch_2d9
    .catchall {:try_start_2bc .. :try_end_2d5} :catchall_2dd

    .line 726
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 729
    goto :goto_304

    .line 730
    :catch_2d9
    move-exception v0

    .line 731
    :goto_2da
    move-object v3, v2

    .line 732
    move-object v2, v4

    .line 733
    goto :goto_2e1

    .line 734
    :catchall_2dd
    move-exception v0

    .line 735
    goto :goto_307

    .line 736
    :catch_2df
    move-exception v0

    .line 737
    :goto_2e0
    move-object v3, v2

    .line 738
    :goto_2e1
    :try_start_2e1
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-static {v7, v8, v11, v5, v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleEncryptionError(Landroid/app/Activity;ILjava/io/File;Ljava/io/File;[B)V

    .line 744
    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    .line 748
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    const-string v4, "encryptFile error: "

    .line 753
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 759
    move-result-object v0

    .line 760
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 766
    move-result-object v0

    .line 767
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_301
    .catchall {:try_start_2e1 .. :try_end_301} :catchall_305

    .line 770
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 773
    :cond_304
    :goto_304
    return-object v10

    .line 774
    :catchall_305
    move-exception v0

    .line 775
    move-object v2, v3

    .line 776
    :goto_307
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 779
    throw v0

    .line 780
    :cond_30b
    :goto_30b
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    return-object v10
.end method

.method public static encryptHeader([BLjava/lang/String;)[B
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encrypt([BLjava/lang/String;)[B

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static encryptSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;

    .line 3
    invoke-direct {v0, p1, p0, p2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil$13;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;)V

    .line 6
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Void;

    .line 11
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    return-void
.end method

.method public static getACLockType(Landroid/content/Context;)I
    .registers 6

    .line 1
    :try_start_0
    const-string v0, "android.security.ChooseLockSettingsHelper"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Ljava/lang/Class;

    .line 10
    const-class v3, Landroid/content/Context;

    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 18
    move-result-object v2

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    aput-object p0, v1, v4

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    const-string v1, "isPrivacyPasswordEnabled"

    .line 29
    new-array v2, v4, [Ljava/lang/Class;

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    move-result-object v0

    .line 35
    new-array v1, v4, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/lang/Boolean;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    move-result p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 47
    return p0

    .line 48
    :catch_2f
    const/4 p0, -0x1

    .line 49
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/io/File;

    .line 8
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_11

    .line 17
    return-object v0

    .line 18
    :cond_11
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 20
    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1a

    .line 26
    return-object v0

    .line 27
    :cond_1a
    array-length v1, p0

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_1c
    if-ge v2, v1, :cond_59

    .line 31
    aget-object v3, p0, v2

    .line 33
    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_27

    .line 39
    goto :goto_56

    .line 40
    :cond_27
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_3b

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInDir(Ljava/lang/String;)Ljava/util/List;

    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_56

    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    goto :goto_56

    .line 60
    :cond_3b
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    invoke-static {v4}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_4f

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Lcom/android/fileexplorer/util/MimeUtils;->isVideo(Ljava/lang/String;)Z

    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_56

    .line 80
    :cond_4f
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_1c

    .line 90
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_39

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 24
    if-eqz v2, :cond_23

    .line 26
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 28
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInDir(Ljava/lang/String;)Ljava/util/List;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    goto :goto_9

    .line 36
    :cond_23
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 38
    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_33

    .line 44
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 46
    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isVideo(Ljava/lang/String;)Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_9

    .line 52
    :cond_33
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_9

    .line 58
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_38

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/io/File;

    .line 24
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_28

    .line 33
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInDir(Ljava/lang/String;)Ljava/util/List;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    goto :goto_9

    .line 41
    :cond_28
    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_34

    .line 47
    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->isVideo(Ljava/lang/String;)Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_9

    .line 53
    :cond_34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_9

    .line 57
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1f

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_9

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_9

    .line 32
    :cond_1f
    return-object v0
.end method

.method public static getEncryptedName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "{["

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    const-string v2, "]}"

    .line 9
    if-eqz v1, :cond_10

    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_28

    .line 17
    :cond_10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f11014d

    .line 24
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    :cond_28
    const-string v0, "_encrypted"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_36

    .line 49
    const-string v1, ""

    .line 51
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    :cond_36
    const-string v0, "_encrypted_new"

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_42

    .line 63
    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    :cond_42
    return-object p0
.end method

.method public static getEncryptedNameWithoutPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "{["

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1a

    .line 9
    const-string v0, "]}"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1a

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, 0x2

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    :cond_1a
    const-string v0, "_encrypted"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_28

    .line 35
    const-string v1, ""

    .line 37
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    :cond_28
    const-string v0, "_encrypted_new"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_34

    .line 49
    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    :cond_34
    return-object p0
.end method

.method private static getNotZeroLength([B)I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    array-length v1, p0

    .line 6
    const/16 v2, 0x10

    .line 8
    if-ne v1, v2, :cond_17

    .line 10
    const/16 v1, 0xf

    .line 12
    :goto_b
    if-lez v1, :cond_17

    .line 14
    aget-byte v2, p0, v1

    .line 16
    if-eqz v2, :cond_14

    .line 18
    add-int/lit8 v0, v1, 0x1

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    add-int/lit8 v1, v1, -0x1

    .line 23
    goto :goto_b

    .line 24
    :cond_17
    :goto_17
    return v0
.end method

.method public static getRealName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const/16 v0, 0x2f

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "{["

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_26

    .line 21
    const-string v0, "]}"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_26

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 32
    move-result v0

    .line 33
    add-int/lit8 v0, v0, 0x2

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    :cond_26
    const-string v0, "_encrypted_new"

    .line 41
    const-string v1, ""

    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    const-string v0, "_encrypted"

    .line 49
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private static handleDecryptionError(Ljava/io/File;[B)V
    .registers 7

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " decryption error, trying to restore the original file"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    if-eqz p1, :cond_87

    .line 34
    array-length v1, p1

    .line 35
    if-nez v1, :cond_25

    .line 37
    goto :goto_87

    .line 38
    :cond_25
    const/4 v1, 0x0

    .line 39
    :try_start_26
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_33

    .line 45
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_65
    .catchall {:try_start_26 .. :try_end_2f} :catchall_63

    .line 48
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 51
    return-void

    .line 52
    :cond_33
    :try_start_33
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 54
    const-string v3, "rw"

    .line 56
    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_65
    .catchall {:try_start_33 .. :try_end_3a} :catchall_63

    .line 59
    const-wide/16 v3, 0x0

    .line 61
    :try_start_3c
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "restore successful"

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_5a} :catch_61
    .catchall {:try_start_3c .. :try_end_5a} :catchall_5e

    .line 91
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    goto :goto_82

    .line 95
    :catchall_5e
    move-exception p0

    .line 96
    move-object v1, v2

    .line 97
    goto :goto_83

    .line 98
    :catch_61
    move-object v1, v2

    .line 99
    goto :goto_65

    .line 100
    :catchall_63
    move-exception p0

    .line 101
    goto :goto_83

    .line 102
    :catch_65
    :goto_65
    :try_start_65
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string p0, "restore error"

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_63

    .line 128
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 131
    :goto_82
    return-void

    .line 132
    :goto_83
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 135
    throw p0

    .line 136
    :cond_87
    :goto_87
    return-void
.end method

.method private static handleEncryptionError(Landroid/app/Activity;ILjava/io/File;Ljava/io/File;[B)V
    .registers 10

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, ", encryption or decryption error, trying to restore the original file"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x0

    .line 33
    :try_start_20
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2a

    .line 39
    invoke-static {p2, p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z

    .line 42
    goto :goto_5a

    .line 43
    :cond_2a
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 45
    const-string v3, "rw"

    .line 47
    invoke-direct {v2, p3, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_31} :catch_60
    .catchall {:try_start_20 .. :try_end_31} :catchall_5e

    .line 50
    if-eqz p4, :cond_59

    .line 52
    const-wide/16 v3, 0x0

    .line 54
    :try_start_35
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 57
    invoke-virtual {v2, p4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 60
    new-instance p4, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "restore successful"

    .line 74
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p4

    .line 81
    invoke-static {v0, p4}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_53} :catch_57
    .catchall {:try_start_35 .. :try_end_53} :catchall_54

    .line 84
    goto :goto_59

    .line 85
    :catchall_54
    move-exception p0

    .line 86
    move-object v1, v2

    .line 87
    goto :goto_82

    .line 88
    :catch_57
    move-object v1, v2

    .line 89
    goto :goto_60

    .line 90
    :cond_59
    :goto_59
    move-object v1, v2

    .line 91
    :goto_5a
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    goto :goto_7b

    .line 95
    :catchall_5e
    move-exception p0

    .line 96
    goto :goto_82

    .line 97
    :catch_60
    :goto_60
    :try_start_60
    sget-object p4, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v2, "restore error"

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-static {p4, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_5e

    .line 123
    goto :goto_5a

    .line 124
    :goto_7b
    if-nez p1, :cond_81

    .line 126
    const/4 p1, 0x1

    .line 127
    invoke-static {p0, p3, p2, p1}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 130
    :cond_81
    return-void

    .line 131
    :goto_82
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 134
    throw p0
.end method

.method private static handleLargeFile(Ljava/io/File;[B)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, [B

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z

    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_11
    const/4 v0, -0x1

    .line 19
    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeNormal(Ljava/io/File;[BI)Z

    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method private static handleSmallFile(Ljava/io/File;[B)Z
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getNotZeroLength([B)I

    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 7
    const-string v2, "handleSmallFile realLength = "

    .line 9
    invoke-static {v2, v0, v1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1a

    .line 15
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1a
    new-array v2, v0, [B

    .line 29
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_34

    .line 38
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1, v1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    .line 48
    invoke-static {p0, v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z

    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_34
    invoke-static {p0, v2, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeNormal(Ljava/io/File;[BI)Z

    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public static hasCommonPassword(Landroid/content/Context;)Z
    .registers 6

    .line 1
    const-string v0, "android.provider.MiuiSettings$Secure"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Ljava/lang/Class;

    .line 10
    const-class v3, Landroid/content/Context;

    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 15
    const-string v3, "hasCommonPassword"

    .line 17
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v2

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    aput-object p0, v1, v4

    .line 25
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Boolean;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public static isPasswordSet(Landroid/app/Activity;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getACLockType(Landroid/content/Context;)I

    .line 5
    move-result v1

    .line 6
    const/4 v2, -0x1

    .line 7
    const/16 v3, 0x6a

    .line 9
    const/4 v4, 0x1

    .line 10
    if-ne v1, v2, :cond_23

    .line 12
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->hasCommonPassword(Landroid/content/Context;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_22

    .line 18
    const v1, 0x7f11029b

    .line 21
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 28
    const/4 v1, 0x0

    .line 29
    const-string v2, "file_explorer"

    .line 31
    invoke-static {p0, v1, v2, v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->showSetPasswordConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V

    .line 34
    return v0

    .line 35
    :cond_22
    return v4

    .line 36
    :cond_23
    if-nez v1, :cond_29

    .line 38
    invoke-static {p0, v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->displayPatternDialog(Landroid/app/Activity;I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2d

    .line 41
    return v0

    .line 42
    :cond_29
    if-ne v1, v4, :cond_2c

    .line 44
    move v0, v4

    .line 45
    :cond_2c
    return v0

    .line 46
    :catch_2d
    move-exception p0

    .line 47
    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return v0
.end method

.method public static isPrivate(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_18

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    const-string v0, "/FileExplorer/.safebox"

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_18

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p0, 0x0

    .line 26
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

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v0, p2

    .line 5
    move-object/from16 v7, p3

    .line 7
    new-instance v8, Ljava/io/File;

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_22

    .line 22
    const-string v1, "/private"

    .line 24
    move-object/from16 v2, p1

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_20

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    move-object v1, v2

    .line 34
    goto :goto_2a

    .line 35
    :cond_22
    :goto_22
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateRootDir(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    :goto_2a
    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_38

    .line 53
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void

    .line 57
    :cond_38
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x1

    .line 62
    if-eqz v2, :cond_95

    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_59

    .line 82
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 84
    const-string v1, "path error"

    .line 86
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void

    .line 90
    :cond_59
    new-instance v9, Ljava/io/File;

    .line 92
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 97
    invoke-virtual {v8, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList([Ljava/io/File;)Ljava/util/List;

    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object v10

    .line 116
    :goto_73
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_90

    .line 122
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 126
    move-object v2, v0

    .line 127
    check-cast v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 129
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    move-object/from16 v0, p0

    .line 135
    move-object/from16 v3, p3

    .line 137
    move-object/from16 v4, p4

    .line 139
    move-object/from16 v5, p5

    .line 141
    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/encryption/EncryptUtil;->moveFile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 144
    goto :goto_73

    .line 145
    :cond_90
    invoke-static {v8}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 148
    goto/16 :goto_172

    .line 150
    :cond_95
    instance-of v2, v6, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 152
    if-eqz v2, :cond_a3

    .line 154
    move-object v2, v6

    .line 155
    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    .line 160
    move-result-wide v4

    .line 161
    invoke-virtual {v2, v4, v5}, Lcom/android/fileexplorer/activity/BaseActivity;->increaseProgressBy(J)V

    .line 164
    :cond_a3
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 167
    move-result-object v2

    .line 168
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v2

    .line 172
    const/4 v4, 0x0

    .line 173
    invoke-static {v1, v2, v4, v3}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    .line 176
    move-result-object v1

    .line 177
    if-nez v1, :cond_b3

    .line 179
    return-void

    .line 180
    :cond_b3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 183
    move-result-object v14

    .line 184
    sget-boolean v2, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 186
    if-eqz v2, :cond_cc

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 195
    move-result-object v1

    .line 196
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getEncryptedName2(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object v1

    .line 200
    invoke-static {v4, v1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    move-result-object v1

    .line 204
    goto :goto_fc

    .line 205
    :cond_cc
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 208
    move-result-object v4

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 217
    move-result-object v9

    .line 218
    invoke-static {v9}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    move-result-object v9

    .line 222
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v9, "."

    .line 227
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 233
    move-result-object v1

    .line 234
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v1

    .line 245
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getEncryptedName(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    move-result-object v1

    .line 249
    invoke-static {v4, v1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    move-result-object v1

    .line 253
    :goto_fc
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_103

    .line 259
    return-void

    .line 260
    :cond_103
    new-instance v4, Ljava/io/File;

    .line 262
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-static {v6, v8, v4, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_16d

    .line 271
    move-object/from16 v1, p5

    .line 273
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 279
    move-result-object v1

    .line 280
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    move-result-object v12

    .line 284
    new-instance v1, Ljava/io/File;

    .line 286
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getThumbPath()Ljava/lang/String;

    .line 289
    move-result-object v5

    .line 290
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    new-instance v5, Ljava/io/File;

    .line 295
    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-static {v6, v1, v5, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 301
    if-nez v2, :cond_148

    .line 303
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 306
    move-result-object v1

    .line 307
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    move-result-object v1

    .line 311
    new-instance v2, Ljava/io/File;

    .line 313
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getHeaderPath()Ljava/lang/String;

    .line 316
    move-result-object v5

    .line 317
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    new-instance v5, Ljava/io/File;

    .line 322
    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-static {v6, v2, v5, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 328
    goto :goto_14a

    .line 329
    :cond_148
    const-string v1, ""

    .line 331
    :goto_14a
    move-object v13, v1

    .line 332
    new-instance v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 334
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSourcePath()Ljava/lang/String;

    .line 337
    move-result-object v10

    .line 338
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 341
    move-result-object v11

    .line 342
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    .line 345
    move-result-wide v15

    .line 346
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 349
    move-result v17

    .line 350
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    .line 353
    move-result v18

    .line 354
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    .line 357
    move-result-wide v19

    .line 358
    move-object v9, v1

    .line 359
    invoke-direct/range {v9 .. v20}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 362
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    goto :goto_172

    .line 366
    :cond_16d
    move-object/from16 v1, p4

    .line 368
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil$12;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Void;

    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 16
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

    .line 1
    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    new-instance v1, Lcom/android/fileexplorer/encryption/EncryptUtil$6;

    .line 6
    invoke-direct {v1, p0, p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil$6;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Ljava/lang/Void;

    .line 16
    invoke-virtual {v1, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p0

    .line 22
    monitor-exit v0

    .line 23
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

    .line 1
    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 6
    const v2, 0x7f12000d

    .line 9
    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 12
    const v2, 0x7f1102fb

    .line 15
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 18
    move-result-object v1

    .line 19
    const v2, 0x1010355

    .line 22
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->buildDeleteMessage(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 33
    move-result-object v1

    .line 34
    const v2, 0x7f110116

    .line 37
    new-instance v3, Lcom/android/fileexplorer/encryption/EncryptUtil$3;

    .line 39
    invoke-direct {v3, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$3;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 42
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 45
    move-result-object p0

    .line 46
    const p1, 0x7f110050

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3e

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_3e
    move-exception p0

    .line 64
    monitor-exit v0

    .line 65
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

    .line 1
    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_e

    .line 6
    :try_start_5
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 8
    const-string p1, "The file list cannot be null"

    .line 10
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_82

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_e
    :try_start_e
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 21
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_71

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p1

    .line 40
    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_64

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 52
    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    invoke-static {v4}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_27

    .line 62
    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_4f

    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result p2

    .line 80
    :cond_4f
    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    new-instance v5, Lcom/android/fileexplorer/model/FileWithExt;

    .line 90
    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    invoke-direct {v5, v3, v4}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_27

    .line 101
    :cond_64
    const-string p1, "secret_file"

    .line 103
    const v1, 0x7f110378

    .line 106
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    invoke-static {p1, p0, v2, p2, v1}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewImagesUsingViewLarge(Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;ILjava/lang/String;)V

    .line 113
    goto :goto_80

    .line 114
    :cond_71
    new-instance p1, Lcom/android/fileexplorer/encryption/EncryptUtil$2;

    .line 116
    invoke-direct {p1, p0, v1}, Lcom/android/fileexplorer/encryption/EncryptUtil$2;-><init>(Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/encryption/PrivateFile;)V

    .line 119
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 122
    move-result-object p0

    .line 123
    const/4 p2, 0x0

    .line 124
    new-array p2, p2, [Ljava/lang/Void;

    .line 126
    invoke-virtual {p1, p0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_80
    .catchall {:try_start_e .. :try_end_80} :catchall_82

    .line 129
    :goto_80
    monitor-exit v0

    .line 130
    return-void

    .line 131
    :catchall_82
    move-exception p0

    .line 132
    monitor-exit v0

    .line 133
    throw p0
.end method

.method public static declared-synchronized operationReEncryptFile(Landroid/app/Activity;Ljava/io/File;)I
    .registers 15

    .line 1
    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "/.lock_"

    .line 10
    const-string v3, "/"

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "_encrypted_new"

    .line 18
    const-string v3, ""

    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "_encrypted"

    .line 26
    const-string v3, ""

    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromDisplayPath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Ljava/io/File;

    .line 38
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 44
    move-result v4

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x3

    .line 47
    const/4 v12, 0x6

    .line 48
    if-nez v4, :cond_3b

    .line 50
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 52
    const-string v1, "operationReEncryptFile displayFile not exists"

    .line 54
    invoke-static {p0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    move v10, v12

    .line 58
    goto/16 :goto_ad

    .line 60
    :cond_3b
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v4, v1, v5}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_4b

    .line 74
    :cond_49
    move v10, v11

    .line 75
    goto :goto_ad

    .line 76
    :cond_4b
    if-eqz v2, :cond_6e

    .line 78
    invoke-static {p0, v2}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->restoreFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;

    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_6e

    .line 88
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, " has been re-encrypted"

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    goto :goto_ad

    .line 111
    :cond_6e
    new-instance v2, Ljava/util/ArrayList;

    .line 113
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    const/4 v5, 0x2

    .line 117
    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 124
    move-result-object v8

    .line 125
    move-object v4, p0

    .line 126
    move-object v6, v1

    .line 127
    move-object v9, v2

    .line 128
    invoke-static/range {v4 .. v9}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptFile(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 131
    move-result-object p0

    .line 132
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 135
    move-result p0

    .line 136
    if-eqz p0, :cond_90

    .line 138
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->insertList(Ljava/util/List;)Z

    .line 141
    move-result p0

    .line 142
    if-eqz p0, :cond_49

    .line 144
    goto :goto_ad

    .line 145
    :cond_90
    const/16 v10, 0x14

    .line 147
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string v3, "Cannot restore file "

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, " from lock file"

    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_ad
    if-eq v10, v12, :cond_b1

    .line 176
    if-nez v10, :cond_b4

    .line 178
    :cond_b1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_b4
    .catchall {:try_start_3 .. :try_end_b4} :catchall_b6

    .line 181
    :cond_b4
    monitor-exit v0

    .line 182
    return v10

    .line 183
    :catchall_b6
    move-exception p0

    .line 184
    monitor-exit v0

    .line 185
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

    .line 1
    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    new-instance v1, Lcom/android/fileexplorer/encryption/EncryptUtil$5;

    .line 6
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$5;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Ljava/lang/Void;

    .line 16
    invoke-virtual {v1, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p0

    .line 22
    monitor-exit v0

    .line 23
    throw p0
.end method

.method private static readBufferFromFile(Ljava/io/File;)[B
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_52

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_a

    .line 10
    goto :goto_52

    .line 11
    :cond_a
    const-wide/16 v1, 0x400

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 20
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    const/16 v2, 0x10

    .line 24
    if-ge v1, v2, :cond_1a

    .line 26
    move v1, v2

    .line 27
    :cond_1a
    new-array v1, v1, [B

    .line 29
    :try_start_1c
    new-instance v2, Ljava/io/FileInputStream;

    .line 31
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_2c
    .catchall {:try_start_1c .. :try_end_21} :catchall_2a

    .line 34
    :try_start_21
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_28
    .catchall {:try_start_21 .. :try_end_24} :catchall_4c

    .line 37
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 40
    return-object v1

    .line 41
    :catch_28
    move-exception p0

    .line 42
    goto :goto_2e

    .line 43
    :catchall_2a
    move-exception p0

    .line 44
    goto :goto_4e

    .line 45
    :catch_2c
    move-exception p0

    .line 46
    move-object v2, v0

    .line 47
    :goto_2e
    :try_start_2e
    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v4, "readBufferFromFile error: "

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_4c

    .line 73
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 76
    return-object v0

    .line 77
    :catchall_4c
    move-exception p0

    .line 78
    move-object v0, v2

    .line 79
    :goto_4e
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    throw p0

    .line 83
    :cond_52
    :goto_52
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 85
    const-string v1, "readBufferFromFile file not exist, return."

    .line 87
    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-object v0
.end method

.method public static requestSetPwd(Landroid/app/Activity;I)V
    .registers 9

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/AccountHelper;->getInstance()Lcom/android/fileexplorer/model/AccountHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/AccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_e

    .line 11
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setLockPattern(Landroid/app/Activity;I)V

    .line 14
    goto :goto_1d

    .line 15
    :cond_e
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x0

    .line 20
    new-instance v5, Lcom/android/fileexplorer/encryption/EncryptUtil$10;

    .line 22
    invoke-direct {v5, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$10;-><init>(Landroid/app/Activity;I)V

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v4, p0

    .line 27
    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 30
    :goto_1d
    return-void
.end method

.method private static setLockPattern(Landroid/app/Activity;I)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "com.android.settings"

    .line 8
    const-string v2, "com.android.settings.PrivacyPasswordChooseLockPattern"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "android.app.action.PRIVACY_PASSWORD_SET_NEW_PASSWORD"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "android.intent.extra.shortcut.NAME"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 30
    return-void
.end method

.method private static setPattern(Landroid/app/Activity;I)V
    .registers 4

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    const v1, 0x7f1103c7

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f1103c9

    .line 16
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/fileexplorer/encryption/EncryptUtil$11;

    .line 22
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$11;-><init>(Landroid/app/Activity;I)V

    .line 25
    const p0, 0x7f1103c8

    .line 28
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 31
    move-result-object p0

    .line 32
    const p1, 0x7f110050

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 47
    return-void
.end method

.method public static showSetPasswordConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setFirstEnterPrivateFolder(Z)V

    .line 5
    const-string v1, "android.provider.MiuiSettings$Secure"

    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x4

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 14
    const-class v4, Landroid/app/Activity;

    .line 16
    aput-object v4, v3, v0

    .line 18
    const-class v4, Landroid/content/DialogInterface$OnClickListener;

    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v4, v3, v5

    .line 23
    const-class v4, Ljava/lang/String;

    .line 25
    const/4 v6, 0x2

    .line 26
    aput-object v4, v3, v6

    .line 28
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    const/4 v7, 0x3

    .line 31
    aput-object v4, v3, v7

    .line 33
    const-string v4, "showSetPasswordConfirmDialog"

    .line 35
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    move-result-object v3

    .line 39
    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    aput-object p0, v2, v0

    .line 43
    aput-object p1, v2, v5

    .line 45
    aput-object p2, v2, v6

    .line 47
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p0

    .line 51
    aput-object p0, v2, v7

    .line 53
    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public static unlockPattern(Landroid/app/Activity;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "com.android.settings"

    .line 8
    const-string v2, "com.android.settings.PrivacyPasswordConfirmLockPattern"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "android.app.action.PRIVACY_PASSWORD_CONFIRM_PASSWORD"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "android.intent.extra.shortcut.NAME"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const/high16 v1, 0x24000000

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    const/16 v1, 0x6c

    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 37
    return-void
.end method

.method public static updateFile(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileItem(Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/FileItem;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->insertNewFiles(Ljava/util/List;)V

    .line 23
    return-void
.end method

.method public static writeHeaderWithDocumentFile(Ljava/io/File;[B)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_ac

    .line 4
    array-length v1, p1

    .line 5
    if-nez v1, :cond_8

    .line 7
    goto/16 :goto_ac

    .line 9
    :cond_8
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_a5

    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_f
    check-cast p0, Ls0/c;

    .line 18
    iget-object p0, p0, Ls0/c;->c:Landroid/net/Uri;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_72
    .catchall {:try_start_f .. :try_end_13} :catchall_6d

    .line 20
    :try_start_13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    move-result-object v2

    .line 28
    const-string v3, "rw"

    .line 30
    invoke-virtual {v2, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 33
    move-result-object p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_21} :catch_67
    .catchall {:try_start_13 .. :try_end_21} :catchall_65

    .line 34
    if-eqz p0, :cond_34

    .line 36
    :try_start_23
    new-instance v2, Ljava/io/FileOutputStream;

    .line 38
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_31
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2d

    .line 45
    goto :goto_35

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    move-object v2, v1

    .line 48
    goto/16 :goto_9b

    .line 50
    :catch_31
    move-exception p1

    .line 51
    move-object v2, v1

    .line 52
    goto :goto_76

    .line 53
    :cond_34
    move-object v2, v1

    .line 54
    :goto_35
    if-eqz v2, :cond_5b

    .line 56
    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 59
    move-result-object v1

    .line 60
    array-length v3, p1

    .line 61
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 71
    const-wide/16 v4, 0x0

    .line 73
    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 76
    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4e} :catch_59
    .catchall {:try_start_37 .. :try_end_4e} :catchall_9a

    .line 79
    const/4 p1, 0x1

    .line 80
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    return p1

    .line 90
    :catch_59
    move-exception p1

    .line 91
    goto :goto_76

    .line 92
    :cond_5b
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 95
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 101
    return v0

    .line 102
    :catchall_65
    move-exception p1

    .line 103
    goto :goto_6f

    .line 104
    :catch_67
    move-exception p1

    .line 105
    goto :goto_74

    .line 106
    :goto_69
    move-object p1, p0

    .line 107
    goto :goto_6f

    .line 108
    :goto_6b
    move-object p1, p0

    .line 109
    goto :goto_74

    .line 110
    :catchall_6d
    move-exception p0

    .line 111
    goto :goto_69

    .line 112
    :goto_6f
    move-object p0, v1

    .line 113
    move-object v2, p0

    .line 114
    goto :goto_9b

    .line 115
    :catch_72
    move-exception p0

    .line 116
    goto :goto_6b

    .line 117
    :goto_74
    move-object p0, v1

    .line 118
    move-object v2, p0

    .line 119
    :goto_76
    :try_start_76
    sget-object v3, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string v5, "writeHeaderWithDocumentFile error: "

    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    invoke-static {v3, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_76 .. :try_end_90} :catchall_9a

    .line 145
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 148
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 154
    goto :goto_ac

    .line 155
    :catchall_9a
    move-exception p1

    .line 156
    :goto_9b
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 159
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 162
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    throw p1

    .line 166
    :cond_a5
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 168
    const-string p1, "writeHeaderWithDocumentFile, no permission access SD card"

    .line 170
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_ac
    :goto_ac
    return v0
.end method

.method private static writeNormal(Ljava/io/File;[BI)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_30

    .line 5
    :try_start_4
    array-length v2, p1

    .line 6
    if-nez v2, :cond_8

    .line 8
    goto :goto_30

    .line 9
    :cond_8
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    const-string v3, "rw"

    .line 17
    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_3d
    .catchall {:try_start_4 .. :try_end_13} :catchall_3b

    .line 20
    if-lez p2, :cond_1d

    .line 22
    const/16 p0, 0x10

    .line 24
    if-ge p2, p0, :cond_1d

    .line 26
    int-to-long v3, p2

    .line 27
    :try_start_1a
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 30
    :cond_1d
    const-wide/16 v3, 0x0

    .line 32
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 35
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_2d
    .catchall {:try_start_1a .. :try_end_25} :catchall_2a

    .line 38
    const/4 p0, 0x1

    .line 39
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 42
    return p0

    .line 43
    :catchall_2a
    move-exception p0

    .line 44
    move-object v1, v2

    .line 45
    goto :goto_5c

    .line 46
    :catch_2d
    move-exception p0

    .line 47
    move-object v1, v2

    .line 48
    goto :goto_3e

    .line 49
    :cond_30
    :goto_30
    :try_start_30
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 51
    const-string p1, "writeNormal error, head is null or empty"

    .line 53
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_3d
    .catchall {:try_start_30 .. :try_end_37} :catchall_3b

    .line 56
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    return v0

    .line 60
    :catchall_3b
    move-exception p0

    .line 61
    goto :goto_5c

    .line 62
    :catch_3d
    move-exception p0

    .line 63
    :goto_3e
    :try_start_3e
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v2, "writeNormal error: "

    .line 72
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_3b

    .line 89
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    return v0

    .line 93
    :goto_5c
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 96
    throw p0
.end method
