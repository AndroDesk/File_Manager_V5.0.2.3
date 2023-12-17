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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/apptag/FileGroupItemFactory$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemAppGroupMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/apptag/FileItemAppGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupId:J

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupFileType()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupStartTime()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupStartTime:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupEndTime()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag1()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag1:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag2()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag2:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag3()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag3:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupSummary()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupSummary:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getDirId()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->dirId:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppIcon()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appIcon:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppId()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appId:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getSummaryTime()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->summayTime:Ljava/lang/Long;

    return-object v0
.end method
