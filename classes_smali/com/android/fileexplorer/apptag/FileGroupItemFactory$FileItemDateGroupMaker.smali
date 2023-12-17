.class Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemDateGroupMaker;
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
    name = "FileItemDateGroupMaker"
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
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemDateGroupMaker;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileItemDateGroup;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/apptag/FileItemDateGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

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
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 30
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupStartTime()Ljava/lang/Long;

    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupStartTime:Ljava/lang/Long;

    .line 36
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupEndTime()Ljava/lang/Long;

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupEndTime:Ljava/lang/Long;

    .line 42
    return-object v0
.end method
