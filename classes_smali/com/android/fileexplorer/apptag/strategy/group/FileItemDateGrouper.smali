.class Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;
.super Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;
.source "FileItemDateGrouper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileItemDateGrouper"


# instance fields
.field private mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;-><init>()V

    .line 4
    return-void
.end method

.method private formatDate(J)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 3
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/DateUtils;->formatGroup(Ljava/util/Date;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private generateGroupKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupType()I

    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->formatDate(J)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "group key: "

    .line 32
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public static isInSameGroupDay(JJ)Z
    .registers 7

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
    move-result p0

    .line 13
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    .line 16
    move-result p1

    .line 17
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    .line 20
    move-result v2

    .line 21
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    .line 24
    move-result p2

    .line 25
    if-ne v0, p1, :cond_20

    .line 27
    if-ne v1, v2, :cond_20

    .line 29
    if-ne p0, p2, :cond_20

    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_20
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method private sortByDate(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_10

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_10

    .line 9
    new-instance v0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper$1;

    .line 11
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper$1;-><init>(Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;)V

    .line 14
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
    :cond_10
    return-void
.end method


# virtual methods
.method public findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ")",
            "Lcom/android/fileexplorer/dao/file/FileGroup;"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->formatDate(J)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    return-object v0
.end method

.method public bridge synthetic findSameGroup(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object p1

    return-object p1
.end method

.method public findSameGroupFromLast(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 3
    :cond_6
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->isInSameGroupDay(JJ)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    return-object p1

    :cond_1f
    return-object v1
.end method

.method public bridge synthetic findSameGroupFromLast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->findSameGroupFromLast(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object p1

    return-object p1
.end method

.method public makeNewFileGroup(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 4

    .line 2
    new-instance v0, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupCreateTime(Ljava/lang/Long;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupType(I)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->generateGroupKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupKey(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItemsForConstruct()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    return-object v0
.end method

.method public bridge synthetic makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->makeNewFileGroup(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object p1

    return-object p1
.end method

.method public onPreGroup(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->sortByDate(Ljava/util/List;)V

    .line 9
    return-object v0
.end method

.method public onSameGroup(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 3

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItemsForConstruct()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onSameGroup(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->onSameGroup(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V

    return-void
.end method
