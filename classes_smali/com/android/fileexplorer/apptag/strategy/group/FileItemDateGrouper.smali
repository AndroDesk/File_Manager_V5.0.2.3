.class Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;
.super Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;
.source "FileItemDateGrouper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileItemDateGrouper"


# instance fields
.field private mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;-><init>()V

    return-void
.end method

.method private formatDate(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/android/fileexplorer/model/DateUtils;->formatGroup(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateGroupKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupType()I

    move-result p1

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->TAG:Ljava/lang/String;

    const-string v0, "group key: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static isInSameGroupDay(JJ)Z
    .registers 7

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    move-result v0

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    move-result v1

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    move-result p0

    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    move-result p1

    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    move-result v2

    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    move-result p2

    if-ne v0, p1, :cond_20

    if-ne v1, v2, :cond_20

    if-ne p0, p2, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

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

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper$1;-><init>(Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

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

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->formatDate(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->formatDate(J)Ljava/lang/String;

    move-result-object v1

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

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object p1

    return-object p1
.end method

.method public findSameGroupFromLast(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->isInSameGroupDay(JJ)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    return-object p1

    :cond_1f
    return-object v1
.end method

.method public bridge synthetic findSameGroupFromLast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->findSameGroupFromLast(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object p1

    return-object p1
.end method

.method public makeNewFileGroup(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;-><init>()V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupCreateTime(Ljava/lang/Long;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupType(I)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->generateGroupKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItemsForConstruct()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    return-object v0
.end method

.method public bridge synthetic makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->sortByDate(Ljava/util/List;)V

    return-object v0
.end method

.method public onSameGroup(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItemsForConstruct()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onSameGroup(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;->onSameGroup(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V

    return-void
.end method
