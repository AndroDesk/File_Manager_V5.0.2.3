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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppIconHelper;->assetManage:Landroid/content/res/AssetManager;

    const-string v1, "app_icon"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconStrings:Ljava/util/List;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method private static convertMirrorAsset(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "com.xlredapple.bluetooth"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "com.xlredapple.miui"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "com.xlredapple.screenshot"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "com.tencent.mobileqq"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "com.android.providers.downloads.ui"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    return-object p0

    :cond_2a
    :goto_2a
    const-string v0, "_mirror"

    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    if-eqz p0, :cond_10

    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/fileexplorer/apptag/AppIconHelper;->APP_ICON_FILE_SUFFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_10
    const-string p0, "default.webp"

    :goto_12
    const/4 v0, 0x0

    :try_start_13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_icon/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_3b
    .catchall {:try_start_13 .. :try_end_30} :catchall_39

    :try_start_30
    invoke-static {p0, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_37
    .catchall {:try_start_30 .. :try_end_34} :catchall_4c

    if-eqz p0, :cond_4b

    goto :goto_43

    :catch_37
    move-exception v1

    goto :goto_3e

    :catchall_39
    move-exception p0

    goto :goto_50

    :catch_3b
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    :goto_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4c

    if-eqz p0, :cond_4b

    :goto_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4b
    :goto_4b
    return-object v0

    :catchall_4c
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_50
    if-eqz v0, :cond_5a

    :try_start_52
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5a
    :goto_5a
    throw p0
.end method

.method public static getAppIconAssetsPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/AppIconHelper;->convertMirrorAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    if-eqz p0, :cond_16

    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/android/fileexplorer/apptag/AppIconHelper;->APP_ICON_FILE_SUFFIX:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_16
    const-string p0, "default.webp"

    :goto_18
    const-string p1, "file:///android_asset/app_icon/"

    invoke-static {p1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/android/fileexplorer/apptag/AppIconHelper;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconHelper:Lcom/android/fileexplorer/apptag/AppIconHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/fileexplorer/model/FileIconHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconHelper:Lcom/android/fileexplorer/apptag/AppIconHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/fileexplorer/apptag/AppIconHelper;

    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/AppIconHelper;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconHelper:Lcom/android/fileexplorer/apptag/AppIconHelper;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconHelper:Lcom/android/fileexplorer/apptag/AppIconHelper;

    return-object v0
.end method


# virtual methods
.method public existsAppIconInAssets(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppIconHelper;->appIconStrings:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
