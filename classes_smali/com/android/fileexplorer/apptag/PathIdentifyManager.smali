.class public Lcom/android/fileexplorer/apptag/PathIdentifyManager;
.super Ljava/lang/Object;
.source "PathIdentifyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PathIdentifyManager"

.field public static final WECHAT_DOWNLOAD_PATH:Ljava/lang/String; = "/Download/WeiXin"

.field public static final WECHAT_IMAGE_NEW_PATH1:Ljava/lang/String; = "/Pictures/WeiXin"

.field public static final WECHAT_IMAGE_NEW_PATH2:Ljava/lang/String; = "/Pictures/WeChat"

.field public static final sPathIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sPathInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/scan/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathInfos:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathIcons:Ljava/util/Map;

    .line 15
    const-string v0, "/MIUI/backup"

    .line 17
    const-string v1, "com.miui.backup"

    .line 19
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "/MiShare"

    .line 24
    const-string v2, "com.miui.mishare.connectivity"

    .line 26
    invoke-static {v0, v2}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "/Download/MiShare"

    .line 31
    invoke-static {v0, v2}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "/Download/email"

    .line 36
    const-string v3, "com.android.email"

    .line 38
    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "/Pictures/WeiXin"

    .line 43
    const-string v3, "com.tencent.mm"

    .line 45
    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "/Pictures/WeChat"

    .line 50
    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv"

    .line 55
    const-string v4, "com.tencent.mobileqq"

    .line 57
    invoke-static {v0, v4}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "/Android/data/com.tencent.mm/MicroMsg/Download"

    .line 62
    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "/Download/WeiXin"

    .line 67
    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager$ScanParentDir;->ZSXQ_PARENT_PATH:Ljava/lang/String;

    .line 72
    const-string v3, "com.unnoo.quan"

    .line 74
    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "/zsxq/zsxq_images"

    .line 79
    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const v0, 0x7f08017b

    .line 85
    invoke-static {v2, v0}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->addAppIcons(Ljava/lang/String;I)V

    .line 88
    const v0, 0x7f080169

    .line 91
    invoke-static {v1, v0}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->addAppIcons(Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAppIcons(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    sget-object v0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathIcons:Ljava/util/Map;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private static addParams(Lcom/android/fileexplorer/dao/scan/AppInfo;Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;
    .registers 2

    .line 1
    if-eqz p0, :cond_7

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/scan/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-object p0
.end method

.method private static createInfo()Lcom/android/fileexplorer/dao/scan/AppInfo;
    .registers 1

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;-><init>()V

    .line 6
    return-object v0
.end method

.method private static createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v1, :cond_29

    .line 16
    aget-object v3, v0, v2

    .line 18
    invoke-static {v3, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    sget-object v4, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathInfos:Ljava/util/Map;

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createInfo()Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 31
    move-result-object v5

    .line 32
    invoke-static {v5, p1}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->addParams(Lcom/android/fileexplorer/dao/scan/AppInfo;Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 35
    move-result-object v5

    .line 36
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_d

    .line 42
    :cond_29
    return-void
.end method

.method public static getAppInfo(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    sget-object v0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathInfos:Ljava/util/Map;

    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 17
    if-nez v1, :cond_35

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_35

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1a

    .line 45
    sget-object p0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathInfos:Ljava/util/Map;

    .line 47
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 53
    return-object p0

    .line 54
    :cond_35
    return-object v1
.end method

.method public static getPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getAppInfo(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_b

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    :goto_c
    return-object p0
.end method

.method public static getResID(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    sget-object v0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathIcons:Ljava/util/Map;

    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Integer;

    .line 17
    if-eqz p0, :cond_16

    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v1

    .line 23
    :cond_16
    return v1
.end method
