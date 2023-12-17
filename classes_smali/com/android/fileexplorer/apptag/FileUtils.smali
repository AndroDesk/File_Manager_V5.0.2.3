.class public Lcom/android/fileexplorer/apptag/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/FileUtils$Categroy;
    }
.end annotation


# static fields
.field private static final DEFAULT_LANGUAGE:Ljava/lang/String;

.field public static FILE_ID_FOR_MEDIA_STORE:J = 0x0L

.field public static final FILE_SIZE_100M:J = 0x5f5e100L

.field public static final GROUP_PKG_NAME_CLOUD:Ljava/lang/String; = "cloud"

.field public static final GROUP_PKG_NAME_STORAGE:Ljava/lang/String; = "storage"

.field private static final GROUP_TIME_INTERVAL:J = 0x2bf20L

.field public static final MIUI_PATH:Ljava/lang/String; = "/storage/emulated/0/MIUI"

.field public static final PDF_EXT:Ljava/lang/String; = "pdf"

.field private static final PHOTO_PATH:Ljava/lang/String; = "/dcim/camera"

.field public static final REMOTE_FILE_TYPE_APK:Ljava/lang/String; = "apk"

.field public static final REMOTE_FILE_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final REMOTE_FILE_TYPE_DOCUMENT:Ljava/lang/String; = "doc"

.field public static final REMOTE_FILE_TYPE_FOLDER:Ljava/lang/String; = "folder"

.field public static final REMOTE_FILE_TYPE_IMAGE:Ljava/lang/String; = "pic"

.field public static final REMOTE_FILE_TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final REMOTE_FILE_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final REMOTE_FILE_TYPE_ZIP:Ljava/lang/String; = "zip"

.field private static final SCREENSHOT_PATH:Ljava/lang/String; = "/dcim/screenshots"

.field private static final SLOW_LOG_TIMEOUT:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "FileUtils"

.field private static final mSystemAppName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 3
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/fileexplorer/apptag/FileUtils;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 13
    const-wide/high16 v0, -0x8000000000000000L

    .line 15
    sput-wide v0, Lcom/android/fileexplorer/apptag/FileUtils;->FILE_ID_FOR_MEDIA_STORE:J

    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    sput-object v0, Lcom/android/fileexplorer/apptag/FileUtils;->mSystemAppName:Ljava/util/Map;

    .line 24
    const v1, 0x7f110453

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "com.xlredapple.bluetooth"

    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const v2, 0x7f11003d

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    const-string v3, "com.xlredapple.screenshot"

    .line 45
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const v2, 0x7f110035

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v2

    .line 55
    const-string v3, "com.xlredapple.downloadedrom"

    .line 57
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v2, "com.android.providers.downloads.ui"

    .line 62
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const v2, 0x7f110034

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v2

    .line 72
    const-string v3, "com.xlredapple.camera"

    .line 74
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const v2, 0x7f110038

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v2

    .line 84
    const-string v3, "com.xlredapple.miui"

    .line 86
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const v2, 0x7f110039

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v2

    .line 96
    const-string v3, "com.xlredapple.miuimusic"

    .line 98
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const v2, 0x7f110037

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v2

    .line 108
    const-string v3, "com.xiaomi.market"

    .line 110
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const v2, 0x7f11003b

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v2

    .line 120
    const-string v3, "com.xlredapple.miuiwallpaper"

    .line 122
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const v2, 0x7f11003a

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v2

    .line 132
    const-string v3, "com.xlredapple.miuiringtone"

    .line 134
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "com.miui.mishare.connectivity"

    .line 139
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const v1, 0x7f110063

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v1

    .line 149
    const-string v2, "com.android.fileexplorer.apk"

    .line 151
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const v1, 0x7f11007f

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v1

    .line 161
    const-string v2, "com.android.fileexplorer.zip"

    .line 163
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canGroupMerge(Lcom/android/fileexplorer/apptag/FileItemAppGroup;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 3
    iget-object v1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_78

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 10
    if-eqz v0, :cond_78

    .line 12
    iget-object v1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 14
    if-eqz v1, :cond_78

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_78

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_78

    .line 28
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_78

    .line 38
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_78

    .line 44
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_78

    .line 54
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 61
    move-result-object p0

    .line 62
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 65
    move-result p0

    .line 66
    const/4 v1, 0x1

    .line 67
    sub-int/2addr p0, v1

    .line 68
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 74
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 84
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_78

    .line 90
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_78

    .line 96
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 103
    move-result-wide v3

    .line 104
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 111
    move-result-wide p0

    .line 112
    sub-long/2addr v3, p0

    .line 113
    const-wide/32 p0, 0x2bf20

    .line 116
    cmp-long p0, v3, p0

    .line 118
    if-gtz p0, :cond_78

    .line 120
    move v2, v1

    .line 121
    :cond_78
    return v2
.end method

.method public static convert2FileGroup(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupName(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupPath(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupFileType(Ljava/lang/Integer;)V

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupCreateTime(Ljava/lang/Long;)V

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupStartTime:Ljava/lang/Long;

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupStartTime(Ljava/lang/Long;)V

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupEndTime(Ljava/lang/Long;)V

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag1:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag1(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag2:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag2(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag3:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag3(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_56

    .line 59
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_56

    .line 69
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 72
    move-result-object v1

    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 80
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSummary()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupSummary(Ljava/lang/String;)V

    .line 87
    :cond_56
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppName(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setPackageName(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->dirId:Ljava/lang/Long;

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setDirId(Ljava/lang/Long;)V

    .line 102
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appIcon:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppIcon(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appId:Ljava/lang/Long;

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppId(Ljava/lang/Long;)V

    .line 112
    iget-object p0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->summayTime:Ljava/lang/Long;

    .line 114
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setSummaryTime(Ljava/lang/Long;)V

    .line 117
    return-object v0
.end method

.method public static convert2FileGroupItem(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemAppGroup;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/apptag/FileItemAppGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupId:J

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupFileType()Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 36
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 42
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupStartTime()Ljava/lang/Long;

    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupStartTime:Ljava/lang/Long;

    .line 48
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupEndTime()Ljava/lang/Long;

    .line 51
    move-result-object v1

    .line 52
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    .line 54
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag1()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag1:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag2()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag2:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag3()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag3:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupSummary()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupSummary:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getPackageName()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getDirId()Ljava/lang/Long;

    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->dirId:Ljava/lang/Long;

    .line 90
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppIcon()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appIcon:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppId()Ljava/lang/Long;

    .line 105
    move-result-object v1

    .line 106
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appId:Ljava/lang/Long;

    .line 108
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getSummaryTime()Ljava/lang/Long;

    .line 111
    move-result-object p0

    .line 112
    iput-object p0, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->summayTime:Ljava/lang/Long;

    .line 114
    return-object v0
.end method

.method public static fSync(Ljava/io/FileOutputStream;)Z
    .registers 6

    .line 1
    const-string v0, "FileUtils"

    .line 3
    if-eqz p0, :cond_4e

    .line 5
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    move-result-wide v3

    .line 20
    sub-long/2addr v3, v1

    .line 21
    const-wide/16 v1, 0x64

    .line 23
    cmp-long v1, v3, v1

    .line 25
    if-lez v1, :cond_4e

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v2, "Slow Operation: fsync took "

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    const-string v2, "ms"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_34

    .line 52
    goto :goto_4e

    .line 53
    :catch_34
    move-exception v1

    .line 54
    const-string v2, "fSync error: "

    .line 56
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 77
    const/4 p0, 0x0

    .line 78
    return p0

    .line 79
    :cond_4e
    :goto_4e
    const/4 p0, 0x1

    .line 80
    return p0
.end method

.method private static generateFileGroupItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/apptag/FileItemAppGroup;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 11
    const-string v2, ""

    .line 13
    invoke-direct {v1, v2, v0}, Lcom/android/fileexplorer/apptag/FileItemAppGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, v1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, v1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupStartTime:Ljava/lang/Long;

    .line 28
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, v1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    .line 37
    move-result-object p0

    .line 38
    if-nez p0, :cond_29

    .line 40
    const/4 p0, 0x0

    .line 41
    goto :goto_2d

    .line 42
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result p0

    .line 46
    :goto_2d
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p0

    .line 50
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 52
    return-object v1
.end method

.method public static generateFileItem(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/dao/file/FileItem;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setId(Ljava/lang/Long;)V

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    .line 16
    iget-wide v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 35
    iget-wide v1, p0, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    .line 37
    iput-wide v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->duration:J

    .line 39
    iget-boolean v1, p0, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 41
    iput-boolean v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 43
    iget-boolean v1, p0, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 45
    iput-boolean v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->canRead:Z

    .line 47
    iget-boolean v1, p0, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 49
    iput-boolean v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->canWrite:Z

    .line 51
    iget-boolean v1, p0, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 53
    iput-boolean v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->isHidden:Z

    .line 55
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 60
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->subFileCategoryType:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    .line 65
    iget-wide v1, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 74
    return-object v0
.end method

.method public static generateFileItems(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p0, :cond_29

    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_e

    .line 14
    goto :goto_29

    .line 15
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 19
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_29

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 31
    if-nez v1, :cond_21

    .line 33
    goto :goto_12

    .line 34
    :cond_21
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->generateFileItem(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/dao/file/FileItem;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_12

    .line 42
    :cond_29
    :goto_29
    return-object v0
.end method

.method public static getAllTagsAsync()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/ContentTagHelper;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->init()V

    .line 31
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calcAppTagList(Ljava/util/List;)V

    .line 38
    invoke-static {}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/ContentTagHelper;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->updateContentTag(Ljava/util/List;)V

    .line 45
    return-void
.end method

.method public static getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "storage"

    .line 3
    if-ne p0, v0, :cond_c

    .line 5
    const p0, 0x7f1101fe

    .line 8
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_c
    const-string v0, "cloud"

    .line 15
    if-ne p0, v0, :cond_18

    .line 17
    const p0, 0x7f110065

    .line 20
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_18
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getSystemAppName(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_26

    .line 35
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    :cond_26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2d

    .line 45
    return-object p1

    .line 46
    :cond_2d
    return-object p0
.end method

.method private static getCount(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_3f

    .line 12
    iget-object p0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result p0

    .line 18
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-ne p0, v2, :cond_1c

    .line 27
    move p0, v1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move p0, v3

    .line 30
    :goto_1d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v2

    .line 42
    if-eqz p0, :cond_2f

    .line 44
    const p0, 0x7f0f001e

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    const p0, 0x7f0f0014

    .line 51
    :goto_32
    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v4

    .line 57
    aput-object v4, v1, v3

    .line 59
    invoke-virtual {v2, p0, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    const-string p0, ""

    .line 66
    :goto_41
    return-object p0
.end method

.method private static getDefaultGroupName(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryName(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 15
    if-eqz v1, :cond_40

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_21

    .line 27
    iget-object p0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 29
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    :goto_25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_40

    .line 44
    const v1, 0x7f1101d4

    .line 47
    invoke-static {v1}, La/a;->e(I)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x2

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    const/4 v3, 0x0

    .line 55
    aput-object p0, v2, v3

    .line 57
    const/4 p0, 0x1

    .line 58
    aput-object v0, v2, p0

    .line 60
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_40
    const-string p0, ""

    .line 67
    return-object p0
.end method

.method public static getFileCategory(Ljava/lang/String;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryType(Ljava/lang/String;)Lcom/android/fileexplorer/apptag/FileUtils$Categroy;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_9

    .line 7
    iget p0, p0, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result p0

    .line 16
    :goto_f
    return p0
.end method

.method public static getFileCategoryName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    if-ne p0, v0, :cond_2a

    .line 9
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->isPhoto(Ljava/lang/String;)Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1a

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    move-result-object p0

    .line 23
    const p1, 0x7f110072

    .line 26
    goto :goto_25

    .line 27
    :cond_1a
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    move-result-object p0

    .line 35
    const p1, 0x7f110073

    .line 38
    :goto_25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    goto :goto_81

    .line 43
    :cond_2a
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result p1

    .line 49
    if-ne p0, p1, :cond_3a

    .line 51
    const p0, 0x7f110070

    .line 54
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    goto :goto_81

    .line 59
    :cond_3a
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 61
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    move-result p1

    .line 65
    if-ne p0, p1, :cond_4a

    .line 67
    const p0, 0x7f11007d

    .line 70
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    goto :goto_81

    .line 75
    :cond_4a
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 77
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 80
    move-result p1

    .line 81
    if-ne p0, p1, :cond_5a

    .line 83
    const p0, 0x7f110066

    .line 86
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    goto :goto_81

    .line 91
    :cond_5a
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 96
    move-result p1

    .line 97
    if-ne p0, p1, :cond_6a

    .line 99
    const p0, 0x7f11007f

    .line 102
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    goto :goto_81

    .line 107
    :cond_6a
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 112
    move-result p1

    .line 113
    if-ne p0, p1, :cond_7a

    .line 115
    const p0, 0x7f110063

    .line 118
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 122
    goto :goto_81

    .line 123
    :cond_7a
    const p0, 0x7f11006b

    .line 126
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    :goto_81
    return-object p0
.end method

.method public static getFileCategoryType(Ljava/io/File;)Lcom/android/fileexplorer/apptag/FileUtils$Categroy;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_c
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryType(Ljava/lang/String;)Lcom/android/fileexplorer/apptag/FileUtils$Categroy;

    move-result-object p0

    return-object p0
.end method

.method private static getFileCategoryType(Ljava/lang/String;)Lcom/android/fileexplorer/apptag/FileUtils$Categroy;
    .registers 4

    const/16 v0, 0x2e

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_bd

    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    new-instance v1, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;

    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;-><init>()V

    .line 7
    iput-object v0, v1, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->subFileType:Ljava/lang/String;

    .line 8
    sget-object v2, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_AUDIO:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 9
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v1, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    goto/16 :goto_bc

    .line 10
    :cond_2e
    sget-object v2, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_VIDEO:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 11
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v1, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    goto/16 :goto_bc

    .line 12
    :cond_40
    sget-object v2, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_PHOTO:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 13
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v1, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    goto :goto_bc

    .line 14
    :cond_51
    sget-object v2, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_DOC:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 15
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v1, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    goto :goto_bc

    .line 16
    :cond_62
    sget-object v2, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_ZIP:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 17
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v1, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    goto :goto_bc

    .line 18
    :cond_73
    sget-object v2, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_APK:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 19
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v1, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    goto :goto_bc

    .line 20
    :cond_84
    sget-object v2, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_EBOOK:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 21
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Ebook:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v1, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    goto :goto_bc

    .line 22
    :cond_95
    sget-object v2, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_THEME:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 23
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v1, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    goto :goto_bc

    .line 24
    :cond_a6
    sget-object v2, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_WECHAT_APK:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-static {p0}, Lcom/android/fileexplorer/util/WechatUtil;->isApk(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bc

    .line 25
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v1, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    :cond_bc
    :goto_bc
    return-object v1

    :cond_bd
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFileExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object v1

    .line 10
    :cond_9
    const/16 v0, 0x2f

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 15
    move-result v0

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v0, v2, :cond_18

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    :cond_18
    const/16 v0, 0x2e

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 30
    move-result v0

    .line 31
    if-ltz v0, :cond_27

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_27
    return-object v1
.end method

.method private static getFileGroupEndTime(J)J
    .registers 9

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    .line 4
    move-result v1

    .line 5
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    .line 8
    move-result v2

    .line 9
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    .line 12
    move-result v3

    .line 13
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getHourOfDay(J)I

    .line 16
    move-result v4

    .line 17
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getMinuteOfHour(J)I

    .line 20
    move-result p0

    .line 21
    const/16 p1, 0x3b

    .line 23
    const/16 v0, 0x1e

    .line 25
    if-ltz p0, :cond_1e

    .line 27
    if-gt p0, v0, :cond_1e

    .line 29
    move v5, v0

    .line 30
    goto :goto_26

    .line 31
    :cond_1e
    if-le p0, v0, :cond_24

    .line 33
    if-gt p0, p1, :cond_24

    .line 35
    move v5, p1

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    const/4 p0, 0x0

    .line 38
    move v5, p0

    .line 39
    :goto_26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 42
    move-result-object p0

    .line 43
    const/16 v6, 0x3b

    .line 45
    move-object v0, p0

    .line 46
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 49
    const/16 p1, 0xe

    .line 51
    const/16 v0, 0x3e7

    .line 53
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 56
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 63
    move-result-wide p0

    .line 64
    return-wide p0
.end method

.method public static getFileGroupItem(Ljava/util/List;Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/apptag/AppScanConfigManager;)Lcom/android/fileexplorer/apptag/FileItemAppGroup;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            "Lcom/android/fileexplorer/apptag/AppScanConfigManager;",
            ")",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_8

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_10
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getConfigForPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_56

    .line 27
    new-instance v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 29
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirectName()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2, p0}, Lcom/android/fileexplorer/apptag/FileItemAppGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 36
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    .line 39
    move-result-object p0

    .line 40
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->dirId:Ljava/lang/Long;

    .line 42
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    .line 45
    move-result-object p0

    .line 46
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appId:Ljava/lang/Long;

    .line 48
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirTag()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag1:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getAppInfoByAppId(J)Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_85

    .line 68
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppName()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    iput-object p2, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppIcon()Ljava/lang/String;

    .line 77
    move-result-object p2

    .line 78
    iput-object p2, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appIcon:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 86
    goto :goto_85

    .line 87
    :cond_56
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getAppInfoByPkgName(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    new-instance v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 113
    invoke-direct {v2, v1, p0}, Lcom/android/fileexplorer/apptag/FileItemAppGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 116
    if-eqz p2, :cond_82

    .line 118
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppName()Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 122
    iput-object p0, v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    .line 124
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    iput-object p0, v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 130
    goto :goto_84

    .line 131
    :cond_82
    iput-object v0, v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 133
    :goto_84
    move-object v1, v2

    .line 134
    :cond_85
    :goto_85
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 141
    move-result-wide v2

    .line 142
    invoke-static {v2, v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileGroupStartTime(J)J

    .line 145
    move-result-wide v2

    .line 146
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    move-result-object p0

    .line 150
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupStartTime:Ljava/lang/Long;

    .line 152
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 159
    move-result-wide v2

    .line 160
    invoke-static {v2, v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileGroupEndTime(J)J

    .line 163
    move-result-wide v2

    .line 164
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    move-result-object p0

    .line 168
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    .line 170
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 176
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 179
    move-result-object p0

    .line 180
    const/4 p1, 0x0

    .line 181
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    move-result-object p0

    .line 185
    check-cast p0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 187
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    .line 190
    move-result-object p0

    .line 191
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 193
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 196
    move-result-object p0

    .line 197
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object p0

    .line 201
    check-cast p0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 203
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSummary()Ljava/lang/String;

    .line 206
    move-result-object p0

    .line 207
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupSummary:Ljava/lang/String;

    .line 209
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 212
    move-result-object p0

    .line 213
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    move-result-object p0

    .line 217
    check-cast p0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 219
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 222
    move-result-object p0

    .line 223
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->summayTime:Ljava/lang/Long;

    .line 225
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 228
    move-result-object p0

    .line 229
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    move-result-object p0

    .line 233
    check-cast p0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 235
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 238
    move-result-object p0

    .line 239
    iput-object p0, v1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 241
    return-object v1
.end method

.method private static getFileGroupStartTime(J)J
    .registers 10

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    .line 4
    move-result v1

    .line 5
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    .line 8
    move-result v2

    .line 9
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    .line 12
    move-result v3

    .line 13
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getHourOfDay(J)I

    .line 16
    move-result v4

    .line 17
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getMinuteOfHour(J)I

    .line 20
    move-result p0

    .line 21
    const/16 p1, 0x1e

    .line 23
    const/4 v7, 0x0

    .line 24
    if-ltz p0, :cond_1c

    .line 26
    if-gt p0, p1, :cond_1c

    .line 28
    goto :goto_26

    .line 29
    :cond_1c
    if-le p0, p1, :cond_26

    .line 31
    const/16 p1, 0x3b

    .line 33
    if-gt p0, p1, :cond_26

    .line 35
    const/16 p0, 0x1f

    .line 37
    move v5, p0

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    :goto_26
    move v5, v7

    .line 40
    :goto_27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 43
    move-result-object p0

    .line 44
    const/4 v6, 0x0

    .line 45
    move-object v0, p0

    .line 46
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 49
    const/16 p1, 0xe

    .line 51
    invoke-virtual {p0, p1, v7}, Ljava/util/Calendar;->set(II)V

    .line 54
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 61
    move-result-wide p0

    .line 62
    return-wide p0
.end method

.method public static getFileItem(JLjava/io/File;Ljava/io/File;JLcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/dao/file/FileItem;
    .registers 8

    .line 31
    new-instance v0, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    .line 33
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    if-eqz p6, :cond_2b

    .line 34
    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    .line 36
    :cond_2b
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 38
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 39
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    return-object v0
.end method

.method public static getFileItem(JLjava/io/File;Ljava/io/File;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/dao/file/FileItem;
    .registers 6

    .line 40
    new-instance v0, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    .line 42
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    if-eqz p4, :cond_2b

    .line 43
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 44
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    .line 45
    :cond_2b
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 48
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    return-object v0
.end method

.method public static getFileItem(JLjava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/fileexplorer/dao/file/FileItem;
    .registers 9

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryType(Ljava/io/File;)Lcom/android/fileexplorer/apptag/FileUtils$Categroy;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 7
    iget p1, p0, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 8
    iget-object p0, p0, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->subFileType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    .line 9
    :cond_30
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 12
    invoke-virtual {v0, p5}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSummary(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p4}, Lcom/android/fileexplorer/dao/file/FileItem;->setOcrCoordinate(Ljava/lang/String;)V

    .line 14
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setOcrStatus(Ljava/lang/Integer;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    return-object v0
.end method

.method public static getFileItem(Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/FileItem;
    .registers 5

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    return-object v1

    .line 18
    :cond_d
    new-instance p0, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-direct {p0}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    const-wide/16 v2, -0x1

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    .line 21
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryType(Ljava/io/File;)Lcom/android/fileexplorer/apptag/FileUtils$Categroy;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 22
    iget v3, v2, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->fileType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 23
    iget-object v2, v2, Lcom/android/fileexplorer/apptag/FileUtils$Categroy;->subFileType:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    .line 24
    :cond_36
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 27
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSummary(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setOcrCoordinate(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setOcrStatus(Ljava/lang/Integer;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    return-object p0
.end method

.method public static getFileOldGlobalExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object v1

    .line 10
    :cond_9
    const/16 v0, 0x5f

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 15
    move-result v0

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v0, v2, :cond_19

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_19
    return-object v1
.end method

.method public static getFileSize(Lcom/android/fileexplorer/model/FileInfo;)J
    .registers 6

    .line 7
    iget v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_26

    .line 8
    iget-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_22

    .line 9
    :try_start_b
    new-instance v0, Ljcifs/smb/SmbFile;

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljcifs/smb/SmbFile;)J

    move-result-wide v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_17

    goto :goto_24

    :catch_17
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileUtils"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 12
    :cond_22
    iget-wide v3, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    :goto_24
    add-long/2addr v1, v3

    goto :goto_58

    :cond_26
    if-nez v0, :cond_3b

    .line 13
    iget-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_38

    .line 14
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_24

    .line 16
    :cond_38
    iget-wide v3, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    goto :goto_24

    :cond_3b
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4c

    .line 17
    iget-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_49

    .line 18
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Lcom/android/fileexplorer/mtp/DocumentInfo;)J

    move-result-wide v3

    goto :goto_24

    .line 19
    :cond_49
    iget-wide v3, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    goto :goto_24

    :cond_4c
    const/4 v3, 0x5

    if-ne v0, v3, :cond_58

    .line 20
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/model/ContentFile;->generateFromMirrorUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    move-result-object p0

    iget-wide v3, p0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    goto :goto_24

    :cond_58
    :goto_58
    return-wide v1
.end method

.method private static getFileSize(Lcom/android/fileexplorer/mtp/DocumentInfo;)J
    .registers 6

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/mtp/DocumentInfo;->isDirectory()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2a

    .line 22
    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/mtp/MTPManager;->listDocumentInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Lcom/android/fileexplorer/mtp/DocumentInfo;)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_18

    .line 25
    :cond_2a
    iget-wide v3, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->size:J

    add-long/2addr v1, v3

    :cond_2d
    return-wide v1
.end method

.method public static getFileSize(Ljava/io/File;)J
    .registers 7

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_27

    .line 33
    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 34
    array-length v0, p0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v0, :cond_2c

    aget-object v4, p0, v3

    .line 35
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v4
    :try_end_18
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_18} :catch_1c

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :catch_1c
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileUtils"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 37
    :cond_27
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_2c
    :goto_2c
    return-wide v1
.end method

.method private static getFileSize(Ljcifs/smb/SmbFile;)J
    .registers 7

    .line 26
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_25

    .line 27
    :try_start_8
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object p0

    .line 28
    array-length v0, p0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_2a

    aget-object v4, p0, v3

    .line 29
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljcifs/smb/SmbFile;)J

    move-result-wide v4
    :try_end_16
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_16} :catch_1a

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :catch_1a
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileUtils"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 31
    :cond_25
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_2a
    :goto_2a
    return-wide v1
.end method

.method public static getFileSize(Ljava/util/List;)Ljava/lang/Long;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_25

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_25

    :cond_b
    const/4 v2, 0x0

    .line 2
    :goto_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    .line 4
    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Lcom/android/fileexplorer/model/FileInfo;)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 5
    :cond_20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 6
    :cond_25
    :goto_25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static getGroupName(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Ljava/lang/String;
    .registers 4

    .line 1
    if-eqz p0, :cond_27

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryName(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_27

    .line 29
    const/4 v1, 0x1

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    const/4 v2, 0x0

    .line 33
    aput-object v0, v1, v2

    .line 35
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_27
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public static getGroupPathName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 2
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p0

    if-nez p0, :cond_1b

    return-object v1

    .line 5
    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_32
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Util;->getRelativePathAtVolume(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_49
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/GroupPathManager;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    return-object v1

    .line 13
    :cond_54
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getTopPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_63
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/GroupPathManager;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    return-object v0

    :cond_6e
    const-string v0, "DCIM"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    return-object v0

    :cond_77
    return-object p0

    :cond_78
    return-object v1
.end method

.method public static getGroupPathName(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 20
    :cond_9
    invoke-static {p0, p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getMountedStorageBySubPath(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    if-nez p1, :cond_10

    return-object v1

    .line 21
    :cond_10
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 22
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_23
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Util;->getRelativePathAtVolume(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 26
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_36
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/GroupPathManager;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    return-object v0

    .line 29
    :cond_41
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTopPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 31
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_50
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/GroupPathManager;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    return-object p0

    :cond_5b
    const-string p0, "DCIM"

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    return-object p0

    :cond_64
    return-object p1
.end method

.method public static getGroupTitle(Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Ljava/lang/String;
    .registers 5

    .line 9
    sget-object v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->AppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    if-eq p0, v0, :cond_10

    sget-object v1, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->CategoryAppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    if-ne p0, v1, :cond_9

    goto :goto_10

    .line 10
    :cond_9
    iget-object v1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getSystemAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 11
    :cond_10
    :goto_10
    iget-object v1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    if-eq p0, v0, :cond_3e

    .line 13
    sget-object v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->CategoryAppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    if-ne p0, v0, :cond_29

    goto :goto_3e

    .line 14
    :cond_29
    iget-object p0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameFromApplicationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 16
    iget-object p0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    .line 17
    :cond_3e
    :goto_3e
    iget-object p0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4a
    :goto_4a
    return-object v1
.end method

.method public static getGroupTitle(Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;Lcom/android/fileexplorer/apptag/FileItemAppGroup;Z)Ljava/lang/String;
    .registers 5

    .line 18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_5c

    .line 20
    :cond_1d
    iget-object p2, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getSystemAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 22
    sget-object p2, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->AppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    if-ne p0, p2, :cond_3a

    .line 23
    iget-object p0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_8e

    .line 24
    :cond_3a
    iget-object p0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8e

    .line 26
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_57

    iget-object p0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8d

    :cond_57
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_8d

    .line 27
    :cond_5c
    :goto_5c
    sget-object v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->AppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    if-ne p0, v0, :cond_6d

    .line 28
    iget-object p0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7b

    .line 29
    :cond_6d
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupName(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 31
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getDefaultGroupName(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Ljava/lang/String;

    move-result-object p0

    :cond_7b
    :goto_7b
    if-eqz p2, :cond_8d

    .line 32
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 33
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getCount(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_8e

    :cond_8d
    :goto_8d
    move-object p2, p0

    :cond_8e
    :goto_8e
    return-object p2
.end method

.method public static getGroupTitle(Lcom/android/fileexplorer/dao/file/FileItem;)Ljava/lang/String;
    .registers 3

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xlredapple.miui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const p0, 0x7f110038

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_14
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_27
    const-string v0, ""

    .line 7
    :goto_29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 8
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getGroupName()Ljava/lang/String;

    move-result-object v0

    :cond_3d
    return-object v0
.end method

.method public static getGroupTitle(Lcom/android/fileexplorer/model/FileInfo;)Ljava/lang/String;
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->source:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, ""

    :cond_a
    return-object p0
.end method

.method public static getMountedStorageBySubPath(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;)",
            "Lcom/android/fileexplorer/model/StorageInfo;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_21

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_21

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/fileexplorer/model/StorageInfo;

    .line 23
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_a

    .line 33
    return-object v0

    .line 34
    :cond_21
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static getNameByLocale(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, ""

    .line 3
    if-nez p0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    const-string v1, "&"

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Ljava/util/HashMap;

    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    array-length v2, p0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_13
    if-ge v4, v2, :cond_37

    .line 22
    aget-object v5, p0, v4

    .line 24
    const-string v6, "="

    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    array-length v6, v5

    .line 31
    const/4 v7, 0x2

    .line 32
    if-ne v6, v7, :cond_34

    .line 34
    aget-object v6, v5, v3

    .line 36
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v6

    .line 40
    const/4 v7, 0x1

    .line 41
    if-eqz v6, :cond_2d

    .line 43
    aget-object v0, v5, v7

    .line 45
    goto :goto_34

    .line 46
    :cond_2d
    aget-object v6, v5, v3

    .line 48
    aget-object v5, v5, v7

    .line 50
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_34
    :goto_34
    add-int/lit8 v4, v4, 0x1

    .line 55
    goto :goto_13

    .line 56
    :cond_37
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_50

    .line 74
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 78
    move-object v0, p0

    .line 79
    check-cast v0, Ljava/lang/String;

    .line 81
    :cond_50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_65

    .line 87
    sget-object p0, Lcom/android/fileexplorer/apptag/FileUtils;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_65

    .line 95
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 99
    move-object v0, p0

    .line 100
    check-cast v0, Ljava/lang/String;

    .line 102
    :cond_65
    return-object v0
.end method

.method public static getNameByPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 2
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_20
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNameByPath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    if-eqz p1, :cond_f

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_f
    const-string p1, "/"

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 10
    :cond_22
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNameFromApplicationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/PackageManagerUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_17

    .line 20
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    :cond_17
    return-object p0
.end method

.method public static getPrivateFileSize(Ljava/util/ArrayList;)Ljava/lang/Long;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v3

    .line 8
    if-ge v2, v3, :cond_2c

    .line 10
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 16
    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_23

    .line 22
    new-instance v4, Ljava/io/File;

    .line 24
    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/io/File;)J

    .line 34
    move-result-wide v3

    .line 35
    goto :goto_27

    .line 36
    :cond_23
    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    .line 39
    move-result-wide v3

    .line 40
    :goto_27
    add-long/2addr v3, v0

    .line 41
    move-wide v0, v3

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_3

    .line 45
    :cond_2c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static getRootPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getStoragePathBySubPath(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "/"

    .line 7
    if-eqz v0, :cond_12

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_12

    .line 15
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    :cond_12
    if-eqz v0, :cond_39

    .line 21
    if-eqz p0, :cond_39

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_39

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 44
    move-result v0

    .line 45
    if-lez v0, :cond_39

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 50
    move-result v1

    .line 51
    if-ge v0, v1, :cond_39

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    :cond_39
    return-object p0
.end method

.method public static getSystemAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1d

    .line 7
    sget-object v0, Lcom/android/fileexplorer/apptag/FileUtils;->mSystemAppName:Ljava/util/Map;

    .line 9
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1d

    .line 15
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 p0, 0x0

    .line 31
    :goto_1e
    return-object p0
.end method

.method public static getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {v0, p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static getTempFileItem(Ljava/lang/String;Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/FileItem;
    .registers 6

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    .line 6
    new-instance v1, Ljava/io/File;

    .line 8
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    sget-wide v2, Lcom/android/fileexplorer/apptag/FileUtils;->FILE_ID_FOR_MEDIA_STORE:J

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    .line 20
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 40
    move-result-wide p0

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 48
    return-object v0
.end method

.method public static getTopPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

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
    const-string v0, "/"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_15

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    :cond_15
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_24

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    :cond_24
    return-object p0
.end method

.method public static getViewType(I)I
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    if-ne v0, p0, :cond_a

    .line 9
    const/4 p0, 0x4

    .line 10
    goto :goto_2a

    .line 11
    :cond_a
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    if-ne v0, p0, :cond_15

    .line 19
    const/16 p0, 0xf

    .line 21
    goto :goto_2a

    .line 22
    :cond_15
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v0

    .line 28
    if-ne v0, p0, :cond_28

    .line 30
    sget-object p0, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_28

    .line 38
    const/16 p0, 0x10

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    const/16 p0, 0xe

    .line 43
    :goto_2a
    return p0
.end method

.method public static hasExt(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 11
    return p0
.end method

.method public static isApk(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "apk"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/android/cloud/bean/CloudFileItem;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_6
    new-instance v0, Ljava/io/File;

    .line 9
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static isInSameGroupTime(JJ)Z
    .registers 11

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    .line 8
    move-result v1

    .line 9
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    .line 12
    move-result v2

    .line 13
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getHourOfDay(J)I

    .line 16
    move-result v3

    .line 17
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getMinuteOfHour(J)I

    .line 20
    move-result p0

    .line 21
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    .line 24
    move-result p1

    .line 25
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    .line 28
    move-result v4

    .line 29
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    .line 32
    move-result v5

    .line 33
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->getHourOfDay(J)I

    .line 36
    move-result v6

    .line 37
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->getMinuteOfHour(J)I

    .line 40
    move-result p2

    .line 41
    if-ne v0, p1, :cond_47

    .line 43
    if-ne v1, v4, :cond_47

    .line 45
    if-ne v2, v5, :cond_47

    .line 47
    if-ne v3, v6, :cond_47

    .line 49
    const/4 p1, 0x1

    .line 50
    const/16 p3, 0x1e

    .line 52
    if-ltz p0, :cond_3c

    .line 54
    if-gt p0, p3, :cond_3c

    .line 56
    if-ltz p2, :cond_3c

    .line 58
    if-gt p2, p3, :cond_3c

    .line 60
    return p1

    .line 61
    :cond_3c
    if-le p0, p3, :cond_47

    .line 63
    const/16 v0, 0x3b

    .line 65
    if-gt p0, v0, :cond_47

    .line 67
    if-le p2, p3, :cond_47

    .line 69
    if-gt p2, v0, :cond_47

    .line 71
    return p1

    .line 72
    :cond_47
    const/4 p0, 0x0

    .line 73
    return p0
.end method

.method public static isMP4File(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_14

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    const-string v0, ".mp4"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_14

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p0, 0x0

    .line 22
    :goto_15
    return p0
.end method

.method public static isMovie(Ljava/lang/String;)Z
    .registers 19

    .line 1
    const-string v0, "mp4"

    .line 3
    const-string v1, "wmv"

    .line 5
    const-string v2, "mpeg"

    .line 7
    const-string v3, "m4v"

    .line 9
    const-string v4, "3gp"

    .line 11
    const-string v5, "3g2"

    .line 13
    const-string v6, "3gpp2"

    .line 15
    const-string v7, "asf"

    .line 17
    const-string v8, "flv"

    .line 19
    const-string v9, "mkv"

    .line 21
    const-string v10, "vob"

    .line 23
    const-string v11, "ts"

    .line 25
    const-string v12, "f4v"

    .line 27
    const-string v13, "rm"

    .line 29
    const-string v14, "mov"

    .line 31
    const-string v15, "rmvb"

    .line 33
    const-string v16, "movie"

    .line 35
    const-string v17, "dv"

    .line 37
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public static isMusic(Ljava/lang/String;)Z
    .registers 11

    .line 1
    const-string v0, "mp3"

    .line 3
    const-string v1, "wma"

    .line 5
    const-string v2, "wav"

    .line 7
    const-string v3, "aac"

    .line 9
    const-string v4, "ape"

    .line 11
    const-string v5, "flac"

    .line 13
    const-string v6, "m4a"

    .line 15
    const-string v7, "ogg"

    .line 17
    const-string v8, "mid"

    .line 19
    const-string v9, "amr"

    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method private static isPhoto(Ljava/lang/String;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_10

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "/dcim/camera"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_10

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p0, 0x0

    .line 18
    :goto_11
    return p0
.end method

.method public static isPicture(Ljava/lang/String;)Z
    .registers 8

    .line 1
    const-string v0, "jpg"

    .line 3
    const-string v1, "jpeg"

    .line 5
    const-string v2, "gif"

    .line 7
    const-string v3, "png"

    .line 9
    const-string v4, "bmp"

    .line 11
    const-string v5, "wbmp"

    .line 13
    const-string v6, "heic"

    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public static isScreenShot(Ljava/lang/String;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_10

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "/dcim/screenshots"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_10

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p0, 0x0

    .line 18
    :goto_11
    return p0
.end method

.method public static isSystemApp(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/FileUtils;->mSystemAppName:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isValidFatFilename(Ljava/lang/String;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_21

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    move-result v1

    .line 8
    if-gtz v1, :cond_a

    .line 10
    goto :goto_21

    .line 11
    :cond_a
    move v1, v0

    .line 12
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_1f

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 21
    move-result v2

    .line 22
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->isValidFatFilenameChar(C)Z

    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1c

    .line 28
    return v0

    .line 29
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_b

    .line 32
    :cond_1f
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_21
    :goto_21
    return v0
.end method

.method private static isValidFatFilenameChar(C)Z
    .registers 3

    const/4 v0, 0x0

    if-ltz p0, :cond_8

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_8

    return v0

    :cond_8
    const/16 v1, 0x22

    if-eq p0, v1, :cond_2e

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_2e

    const/16 v1, 0x3a

    if-eq p0, v1, :cond_2e

    const/16 v1, 0x3c

    if-eq p0, v1, :cond_2e

    const/16 v1, 0x5c

    if-eq p0, v1, :cond_2e

    const/16 v1, 0x7c

    if-eq p0, v1, :cond_2e

    const/16 v1, 0x7f

    if-eq p0, v1, :cond_2e

    const/16 v1, 0x3e

    if-eq p0, v1, :cond_2e

    const/16 v1, 0x3f

    if-eq p0, v1, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v0
.end method

.method public static isWord(Ljava/lang/String;)Z
    .registers 9

    .line 1
    const-string v0, "txt"

    .line 3
    const-string v1, "doc"

    .line 5
    const-string v2, "docx"

    .line 7
    const-string v3, "ppt"

    .line 9
    const-string v4, "pptx"

    .line 11
    const-string v5, "xls"

    .line 13
    const-string v6, "xlsx"

    .line 15
    const-string v7, "wps"

    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public static isZip(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "zip"

    .line 3
    const-string v1, "rar"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static mergeCategoryGroupByGroup(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v1, Ljava/util/HashMap;

    .line 12
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    move-result v3

    .line 20
    if-ge v2, v3, :cond_54

    .line 22
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 28
    iget-object v4, v3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 30
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_29

    .line 36
    iget-object v4, v3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 38
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    :cond_29
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_4b

    .line 48
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 54
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 57
    move-result-object v5

    .line 58
    if-eqz v5, :cond_51

    .line 60
    invoke-virtual {v4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 67
    move-result-object v6

    .line 68
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v3, v3, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    .line 73
    iput-object v3, v4, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    .line 75
    goto :goto_51

    .line 76
    :cond_4b
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_51
    :goto_51
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_f

    .line 85
    :cond_54
    return-object v0
.end method

.method public static mergeGroupFileItem(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->generateFileItems(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    if-eqz p0, :cond_58

    .line 12
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_12

    .line 18
    goto :goto_58

    .line 19
    :cond_12
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_58

    .line 27
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 33
    if-nez v3, :cond_23

    .line 35
    goto :goto_55

    .line 36
    :cond_23
    if-eqz v1, :cond_4e

    .line 38
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_4e

    .line 44
    iget-object v4, v1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    .line 46
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 49
    move-result-wide v4

    .line 50
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 57
    move-result-wide v6

    .line 58
    invoke-static {v4, v5, v6, v7}, Lcom/android/fileexplorer/model/TimeUtils;->isInSameDay(JJ)Z

    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_40

    .line 64
    goto :goto_4e

    .line 65
    :cond_40
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 68
    move-result-object v4

    .line 69
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 75
    move-result-object v3

    .line 76
    iput-object v3, v1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    .line 78
    goto :goto_55

    .line 79
    :cond_4e
    :goto_4e
    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->generateFileGroupItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_55
    add-int/lit8 v2, v2, 0x1

    .line 88
    goto :goto_14

    .line 89
    :cond_58
    :goto_58
    return-object v0
.end method

.method public static mergeGroupWhenShow(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_4a

    .line 17
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_20

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_47

    .line 33
    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v3

    .line 37
    add-int/lit8 v3, v3, -0x1

    .line 39
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 45
    invoke-static {v3, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->needMergeWhenShow(Lcom/android/fileexplorer/apptag/FileItemAppGroup;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_44

    .line 51
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 54
    move-result-object v4

    .line 55
    if-eqz v4, :cond_47

    .line 57
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    goto :goto_47

    .line 69
    :cond_44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_a

    .line 75
    :cond_4a
    return-object v0
.end method

.method private static needMergeWhenShow(Lcom/android/fileexplorer/apptag/FileItemAppGroup;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 3
    iget-object v1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_54

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_25

    .line 13
    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_25

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->dirId:Ljava/lang/Long;

    .line 23
    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->dirId:Ljava/lang/Long;

    .line 25
    if-ne v0, v3, :cond_25

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 29
    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 31
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_25

    .line 37
    return v1

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_54

    .line 46
    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_54

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 56
    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 58
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Util;->isInSameVolume(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_54

    .line 64
    iget-object p0, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 66
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    if-eqz p0, :cond_54

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_54

    .line 84
    move v2, v1

    .line 85
    :cond_54
    return v2
.end method

.method public static sortFileListByTime(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_a

    .line 3
    new-instance v0, Lcom/android/fileexplorer/apptag/FileUtils$1;

    .line 5
    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileUtils$1;-><init>()V

    .line 8
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    :cond_a
    return-void
.end method
