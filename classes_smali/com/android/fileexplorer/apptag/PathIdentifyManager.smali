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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathInfos:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathIcons:Ljava/util/Map;

    const-string v0, "/MIUI/backup"

    const-string v1, "com.miui.backup"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/MiShare"

    const-string v2, "com.miui.mishare.connectivity"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/Download/MiShare"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/Download/email"

    const-string v3, "com.android.email"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/Pictures/WeiXin"

    const-string v3, "com.tencent.mm"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/Pictures/WeChat"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv"

    const-string v4, "com.tencent.mobileqq"

    invoke-static {v0, v4}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/Android/data/com.tencent.mm/MicroMsg/Download"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/Download/WeiXin"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager$ScanParentDir;->ZSXQ_PARENT_PATH:Ljava/lang/String;

    const-string v3, "com.unnoo.quan"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/zsxq/zsxq_images"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f08017b

    invoke-static {v2, v0}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->addAppIcons(Ljava/lang/String;I)V

    const v0, 0x7f080169

    invoke-static {v1, v0}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->addAppIcons(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAppIcons(Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathIcons:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addParams(Lcom/android/fileexplorer/dao/scan/AppInfo;Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;
    .registers 2

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/scan/AppInfo;->setPackageName(Ljava/lang/String;)V

    :cond_7
    return-object p0
.end method

.method private static createInfo()Lcom/android/fileexplorer/dao/scan/AppInfo;
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/dao/scan/AppInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;-><init>()V

    return-object v0
.end method

.method private static createPathAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    invoke-static {v3, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathInfos:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->createInfo()Lcom/android/fileexplorer/dao/scan/AppInfo;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->addParams(Lcom/android/fileexplorer/dao/scan/AppInfo;Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_29
    return-void
.end method

.method public static getAppInfo(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object v0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathInfos:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/scan/AppInfo;

    if-nez v1, :cond_35

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    sget-object p0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathInfos:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/dao/scan/AppInfo;

    return-object p0

    :cond_35
    return-object v1
.end method

.method public static getPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getAppInfo(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static getResID(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->sPathIcons:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_16
    return v1
.end method
