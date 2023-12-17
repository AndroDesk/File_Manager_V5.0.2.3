.class public Lcom/android/fileexplorer/apptag/AppScanConfigManager;
.super Ljava/lang/Object;
.source "AppScanConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileBlackList;,
        Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;
    }
.end annotation


# static fields
.field private static final APP_CONFIG_DISABLE:Ljava/lang/String; = "disable"

.field private static final APP_CONFIG_ENABLE:Ljava/lang/String; = "enable"

.field public static final BLACK_VERSION_CODE:Ljava/lang/String; = "black_ver_code"

.field private static final DIR_TYPE_ROOT:I = 0x2

.field public static final SCAN_VERSION_CODE:Ljava/lang/String; = "ver_code"

.field private static final TAG:Ljava/lang/String; = "AppScanConfigManager"

.field private static volatile sInstance:Lcom/android/fileexplorer/apptag/AppScanConfigManager;


# instance fields
.field private mAppInfoDaoUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

.field private mAppInfoMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/fileexplorer/dao/scan/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppInfoMapPkgName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/scan/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppScanConfigDaoUtils:Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;

.field private mAppScanConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mAppScanConfigMapRaw:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackDirList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/BlackDirInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIgnoreDirDataUtils:Lcom/android/fileexplorer/util/dao/BlackDirInfoDaoUtils;

.field private mRootPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mRootPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionInfoDataUtils:Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    .line 11
    new-instance v0, Landroid/util/LongSparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMapRaw:Landroid/util/LongSparseArray;

    .line 18
    new-instance v0, Landroid/util/LongSparseArray;

    .line 20
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMapPkgName:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 59
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    .line 63
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoDaoUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    .line 68
    new-instance v0, Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;

    .line 70
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigDaoUtils:Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;

    .line 75
    new-instance v0, Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;

    .line 77
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mVersionInfoDataUtils:Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;

    .line 82
    new-instance v0, Lcom/android/fileexplorer/util/dao/BlackDirInfoDaoUtils;

    .line 84
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/BlackDirInfoDaoUtils;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mIgnoreDirDataUtils:Lcom/android/fileexplorer/util/dao/BlackDirInfoDaoUtils;

    .line 89
    return-void
.end method

.method private cacheAppInfo(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_42

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 20
    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppId()Ljava/lang/Long;

    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_7

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    .line 30
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppId()Ljava/lang/Long;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_38

    .line 44
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    .line 46
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppId()Ljava/lang/Long;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 53
    move-result-wide v2

    .line 54
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 57
    :cond_38
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMapPkgName:Ljava/util/HashMap;

    .line 59
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    goto :goto_7

    .line 67
    :cond_42
    return-void
.end method

.method private cacheAppScanConfig(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_d8

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_d8

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 23
    if-eqz v1, :cond_c7

    .line 25
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_c7

    .line 35
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getState()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    const-string v3, "enable"

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_c7

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v3

    .line 60
    const/4 v4, 0x0

    .line 61
    if-eqz v3, :cond_60

    .line 63
    array-length v3, v0

    .line 64
    :goto_3f
    if-ge v4, v3, :cond_71

    .line 66
    aget-object v5, v0, v4

    .line 68
    new-instance v6, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 70
    invoke-direct {v6, v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;-><init>(Lcom/android/fileexplorer/dao/scan/AppScanConfig;)V

    .line 73
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirPath(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 96
    goto :goto_3f

    .line 97
    :cond_60
    array-length v3, v0

    .line 98
    :goto_61
    if-ge v4, v3, :cond_71

    .line 100
    aget-object v5, v0, v4

    .line 102
    invoke-direct {p0, v1, v5}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getAppScanConfigList(Lcom/android/fileexplorer/dao/scan/AppScanConfig;Ljava/lang/String;)Ljava/util/List;

    .line 105
    move-result-object v5

    .line 106
    if-eqz v5, :cond_6e

    .line 108
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    .line 113
    goto :goto_61

    .line 114
    :cond_71
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object v2

    .line 118
    :cond_75
    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_c7

    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 130
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    .line 141
    move-result-object v5

    .line 142
    if-eqz v5, :cond_b9

    .line 144
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 151
    move-result v5

    .line 152
    const/4 v6, 0x2

    .line 153
    if-ne v5, v6, :cond_b9

    .line 155
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    .line 158
    move-result-object v5

    .line 159
    const-string v6, "/Download"

    .line 161
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 164
    move-result v5

    .line 165
    if-nez v5, :cond_b9

    .line 167
    iget-object v5, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathList:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v5, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathMap:Ljava/util/HashMap;

    .line 174
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 177
    move-result v5

    .line 178
    if-nez v5, :cond_75

    .line 180
    iget-object v5, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathMap:Ljava/util/HashMap;

    .line 182
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    goto :goto_75

    .line 186
    :cond_b9
    iget-object v5, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    .line 188
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 191
    move-result v5

    .line 192
    if-nez v5, :cond_75

    .line 194
    iget-object v5, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    .line 196
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    goto :goto_75

    .line 200
    :cond_c7
    if-eqz v1, :cond_a

    .line 202
    iget-object v2, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMapRaw:Landroid/util/LongSparseArray;

    .line 204
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 211
    move-result-wide v3

    .line 212
    invoke-virtual {v2, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 215
    goto/16 :goto_a

    .line 217
    :cond_d8
    return-void
.end method

.method private getAppScanConfigList(Lcom/android/fileexplorer/dao/scan/AppScanConfig;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_ce

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_2c

    .line 27
    const-string v2, "/"

    .line 29
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2c

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 38
    move-result v2

    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 41
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    :cond_2c
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-static {v0, p2, v2}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getPathList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p2

    .line 72
    :goto_47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_cd

    .line 78
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/String;

    .line 84
    new-instance v2, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 86
    invoke-direct {v2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppId(Ljava/lang/Long;)V

    .line 96
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirId(Ljava/lang/Long;)V

    .line 103
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirName(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirPath(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirType(Ljava/lang/Integer;)V

    .line 120
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setSubDirName(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setSubDirFlag(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirectName()Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirectName(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getState()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setState(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirTag()Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirTag(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getNotification()Ljava/lang/Boolean;

    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_a9

    .line 161
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getNotification()Ljava/lang/Boolean;

    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 168
    move-result v0

    .line 169
    goto :goto_aa

    .line 170
    :cond_a9
    move v0, v3

    .line 171
    :goto_aa
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setNotification(Ljava/lang/Boolean;)V

    .line 178
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getUserModified()Ljava/lang/Boolean;

    .line 181
    move-result-object v0

    .line 182
    if-eqz v0, :cond_c0

    .line 184
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getUserModified()Ljava/lang/Boolean;

    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 191
    move-result v0

    .line 192
    goto :goto_c1

    .line 193
    :cond_c0
    move v0, v3

    .line 194
    :goto_c1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setUserModified(Ljava/lang/Boolean;)V

    .line 201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    goto/16 :goto_47

    .line 206
    :cond_cd
    return-object v1

    .line 207
    :cond_ce
    const/4 p1, 0x0

    .line 208
    return-object p1
.end method

.method private getConfigByRootPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "/"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_10

    .line 13
    invoke-static {p1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    :cond_10
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathList:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_59

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 36
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_37

    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_37

    .line 52
    invoke-static {v4, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    :cond_37
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_17

    .line 62
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_17

    .line 72
    if-eqz v2, :cond_57

    .line 74
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 77
    move-result v4

    .line 78
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 85
    move-result v5

    .line 86
    if-le v4, v5, :cond_17

    .line 88
    :cond_57
    move-object v2, v3

    .line 89
    goto :goto_17

    .line 90
    :cond_59
    return-object v2
.end method

.method public static getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->sInstance:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->sInstance:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->sInstance:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

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
    sget-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->sInstance:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 26
    return-object v0
.end method

.method private static getPathList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_b

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result p0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    :goto_c
    invoke-static {p1, p0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->recursionPathList(Ljava/lang/String;I)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    if-nez p0, :cond_13

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance p0, Ljava/util/ArrayList;

    .line 22
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    if-eqz v0, :cond_4b

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p2

    .line 50
    :cond_31
    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4b

    .line 56
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_31

    .line 72
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_31

    .line 76
    :cond_4b
    return-object p0
.end method

.method private declared-synchronized loadAllAppInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppInfo;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoDaoUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    .line 4
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    .line 7
    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method private declared-synchronized loadAllAppScanInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigDaoUtils:Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;

    .line 4
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;->loadAll()Ljava/util/List;

    .line 7
    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method private declared-synchronized loadAllBlackDirInfo()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/BlackDirInfo;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mIgnoreDirDataUtils:Lcom/android/fileexplorer/util/dao/BlackDirInfoDaoUtils;

    .line 4
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_10

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3e

    .line 15
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :cond_10
    :try_start_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3c

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;

    .line 33
    if-eqz v2, :cond_38

    .line 35
    const-string v3, "disable"

    .line 37
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->getState()Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_38

    .line 47
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->getDirName()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_14

    .line 57
    :cond_38
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_3e

    .line 60
    goto :goto_14

    .line 61
    :cond_3c
    monitor-exit p0

    .line 62
    return-object v0

    .line 63
    :catchall_3e
    move-exception v0

    .line 64
    monitor-exit p0

    .line 65
    throw v0
.end method

.method private declared-synchronized loadByState(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigDaoUtils:Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;->loadByState(Ljava/lang/String;)Ljava/util/List;

    .line 7
    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method private static recursionPathList(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
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
    if-nez p1, :cond_b

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    goto :goto_46

    .line 12
    :cond_b
    new-instance v1, Ljava/io/File;

    .line 14
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_46

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_46

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_46

    .line 35
    array-length v1, p0

    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_24
    if-ge v2, v1, :cond_46

    .line 39
    aget-object v3, p0, v2

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_43

    .line 47
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_43

    .line 53
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    add-int/lit8 v4, p1, -0x1

    .line 59
    invoke-static {v3, v4}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->recursionPathList(Ljava/lang/String;I)Ljava/util/List;

    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_43

    .line 65
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_43
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_24

    .line 71
    :cond_46
    :goto_46
    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    .line 4
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMapPkgName:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathList:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathMap:Ljava/util/HashMap;

    .line 24
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    .line 29
    if-eqz v0, :cond_21

    .line 31
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_29
    move-exception v0

    .line 43
    monitor-exit p0

    .line 44
    throw v0
.end method

.method public declared-synchronized getAppInfoByAppId(J)Lcom/android/fileexplorer/dao/scan/AppInfo;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/dao/scan/AppInfo;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized getAppInfoByPkgName(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_9

    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMapPkgName:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/fileexplorer/dao/scan/AppInfo;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 18
    :goto_11
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public getBlackDirList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_b
    iget-object v4, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    .line 14
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 17
    move-result v4

    .line 18
    if-ge v3, v4, :cond_39

    .line 20
    iget-object v4, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    .line 22
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;

    .line 28
    array-length v5, v0

    .line 29
    move v6, v2

    .line 30
    :goto_1d
    if-ge v6, v5, :cond_36

    .line 32
    aget-object v7, v0, v6

    .line 34
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->getDirName()Ljava/lang/String;

    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v6, v6, 0x1

    .line 54
    goto :goto_1d

    .line 55
    :cond_36
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_b

    .line 58
    :cond_39
    sget-object v3, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileBlackList;->sBlackPath:Ljava/util/List;

    .line 60
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v3

    .line 64
    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_66

    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Ljava/lang/String;

    .line 76
    array-length v5, v0

    .line 77
    move v6, v2

    .line 78
    :goto_4d
    if-ge v6, v5, :cond_3f

    .line 80
    aget-object v7, v0, v6

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v6, v6, 0x1

    .line 102
    goto :goto_4d

    .line 103
    :cond_66
    return-object v1
.end method

.method public declared-synchronized getConfigForPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 14
    if-nez v0, :cond_13

    .line 16
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getConfigByRootPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 19
    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 20
    :cond_13
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1c

    .line 28
    return-object v1

    .line 29
    :cond_1c
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 37
    if-nez v1, :cond_2f

    .line 39
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathMap:Ljava/util/HashMap;

    .line 41
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    move-object v1, p1

    .line 46
    check-cast v1, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 48
    :cond_2f
    if-nez v1, :cond_32

    .line 50
    return-object v0

    .line 51
    :cond_32
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    .line 53
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 60
    move-result-wide v1

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 67
    if-nez p1, :cond_45

    .line 69
    return-object v0

    .line 70
    :cond_45
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method public declared-synchronized getScanPathList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_26

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_10

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_10

    .line 39
    :cond_26
    sget-object v1, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanPaths:Ljava/util/List;

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    sget-object v1, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanParentPaths:Ljava/util/List;

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 49
    monitor-exit p0

    .line 50
    return-object v0

    .line 51
    :catchall_32
    move-exception v0

    .line 52
    monitor-exit p0

    .line 53
    throw v0
.end method

.method public declared-synchronized getVersion(Ljava/lang/String;)J
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mVersionInfoDataUtils:Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;->getVersion(Ljava/lang/String;)J

    .line 7
    move-result-wide v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-wide v0

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized isPathIgnore(Ljava/lang/String;)Z
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_44

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;

    .line 25
    array-length v4, v0

    .line 26
    :goto_19
    if-ge v3, v4, :cond_b

    .line 28
    aget-object v5, v0, v3

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 33
    move-result-object v6

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->getDirName()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    move-result v5
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_46

    .line 61
    if-eqz v5, :cond_41

    .line 63
    monitor-exit p0

    .line 64
    const/4 p1, 0x1

    .line 65
    return p1

    .line 66
    :cond_41
    add-int/lit8 v3, v3, 0x1

    .line 68
    goto :goto_19

    .line 69
    :cond_44
    monitor-exit p0

    .line 70
    return v3

    .line 71
    :catchall_46
    move-exception p1

    .line 72
    monitor-exit p0

    .line 73
    throw p1
.end method

.method public loadConfigStateDisable()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "disable"

    .line 3
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadByState(Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public declared-synchronized loadScanConfig()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_27

    .line 8
    if-eqz v0, :cond_b

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadAllAppInfo()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadAllAppScanInfo()Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadAllBlackDirInfo()Ljava/util/List;

    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    .line 26
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->cacheAppInfo(Ljava/util/List;)V

    .line 29
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->cacheAppScanConfig(Ljava/util/List;)V

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_27

    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    monitor-exit p0

    .line 42
    throw v0
.end method

.method public loadScanConfigFromServer()V
    .registers 1

    return-void
.end method
