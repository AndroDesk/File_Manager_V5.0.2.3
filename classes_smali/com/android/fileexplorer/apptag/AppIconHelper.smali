.class public Lcom/android/fileexplorer/apptag/AppIconHelper;
.super Ljava/lang/Object;
.source "AppIconHelper.java"


# static fields
.field public static APP_ICON_FILE_SUFFIX:Ljava/lang/String; = ".webp"

.field private static volatile appIconHelper:Lcom/android/fileexplorer/apptag/AppIconHelper;


# instance fields
.field private appIconStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private assetManage:Landroid/content/res/AssetManager;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppIconHelper;->assetManage:Landroid/content/res/AssetManager;

    .line 14
    const-string v1, "app_icon"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconStrings:Ljava/util/List;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_1a

    .line 26
    goto :goto_1e

    .line 27
    :catch_1a
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    :goto_1e
    return-void
.end method

.method private static convertMirrorAsset(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "com.xlredapple.bluetooth"

    .line 3
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2a

    .line 9
    const-string v0, "com.xlredapple.miui"

    .line 11
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2a

    .line 17
    const-string v0, "com.xlredapple.screenshot"

    .line 19
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2a

    .line 25
    const-string v0, "com.tencent.mobileqq"

    .line 27
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2a

    .line 33
    const-string v0, "com.android.providers.downloads.ui"

    .line 35
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_29

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    return-object p0

    .line 43
    :cond_2a
    :goto_2a
    const-string v0, "_mirror"

    .line 45
    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1
    if-eqz p0, :cond_10

    .line 3
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/android/fileexplorer/apptag/AppIconHelper;->APP_ICON_FILE_SUFFIX:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    const-string p0, "default.webp"

    .line 19
    :goto_12
    const/4 v0, 0x0

    .line 20
    :try_start_13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v3, "app_icon/"

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 48
    move-result-object p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_3b
    .catchall {:try_start_13 .. :try_end_30} :catchall_39

    .line 49
    :try_start_30
    invoke-static {p0, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 52
    move-result-object v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_37
    .catchall {:try_start_30 .. :try_end_34} :catchall_4c

    .line 53
    if-eqz p0, :cond_4b

    .line 55
    goto :goto_43

    .line 56
    :catch_37
    move-exception v1

    .line 57
    goto :goto_3e

    .line 58
    :catchall_39
    move-exception p0

    .line 59
    goto :goto_50

    .line 60
    :catch_3b
    move-exception p0

    .line 61
    move-object v1, p0

    .line 62
    move-object p0, v0

    .line 63
    :goto_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4c

    .line 66
    if-eqz p0, :cond_4b

    .line 68
    :goto_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 71
    goto :goto_4b

    .line 72
    :catch_47
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    :cond_4b
    :goto_4b
    return-object v0

    .line 77
    :catchall_4c
    move-exception v0

    .line 78
    move-object v4, v0

    .line 79
    move-object v0, p0

    .line 80
    move-object p0, v4

    .line 81
    :goto_50
    if-eqz v0, :cond_5a

    .line 83
    :try_start_52
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 86
    goto :goto_5a

    .line 87
    :catch_56
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    :cond_5a
    :goto_5a
    throw p0
.end method

.method public static getAppIconAssetsPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_6

    .line 2
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/AppIconHelper;->convertMirrorAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    if-eqz p0, :cond_16

    .line 3
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 4
    sget-object p1, Lcom/android/fileexplorer/apptag/AppIconHelper;->APP_ICON_FILE_SUFFIX:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_16
    const-string p0, "default.webp"

    :goto_18
    const-string p1, "file:///android_asset/app_icon/"

    .line 5
    invoke-static {p1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/android/fileexplorer/apptag/AppIconHelper;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconHelper:Lcom/android/fileexplorer/apptag/AppIconHelper;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/model/FileIconHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconHelper:Lcom/android/fileexplorer/apptag/AppIconHelper;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/apptag/AppIconHelper;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/AppIconHelper;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconHelper:Lcom/android/fileexplorer/apptag/AppIconHelper;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconHelper:Lcom/android/fileexplorer/apptag/AppIconHelper;

    .line 26
    return-object v0
.end method


# virtual methods
.method public existsAppIconInAssets(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconStrings:Ljava/util/List;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method
