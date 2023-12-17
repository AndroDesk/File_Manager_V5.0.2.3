.class Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemAppGroupMaker;
.super Ljava/lang/Object;
.source "FileGroupItemFactory.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/FileGroupItemFactory$Maker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/FileGroupItemFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileItemAppGroupMaker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/apptag/FileGroupItemFactory$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemAppGroupMaker;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/apptag/FileItemAppGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 14
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupId:J

    .line 24
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupFileType()Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 36
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 42
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupStartTime()Ljava/lang/Long;

    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupStartTime:Ljava/lang/Long;

    .line 48
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupEndTime()Ljava/lang/Long;

    .line 51
    move-result-object v1

    .line 52
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    .line 54
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag1()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag1:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag2()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag2:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag3()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag3:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupSummary()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupSummary:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getPackageName()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getDirId()Ljava/lang/Long;

    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->dirId:Ljava/lang/Long;

    .line 90
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppIcon()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appIcon:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppId()Ljava/lang/Long;

    .line 105
    move-result-object v1

    .line 106
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appId:Ljava/lang/Long;

    .line 108
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getSummaryTime()Ljava/lang/Long;

    .line 111
    move-result-object p1

    .line 112
    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->summayTime:Ljava/lang/Long;

    .line 114
    return-object v0
.end method
