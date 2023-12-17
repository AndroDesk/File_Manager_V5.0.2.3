.class Lcom/android/fileexplorer/apptag/strategy/group/FileInfoDateGrouper;
.super Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;
.source "FileInfoDateGrouper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;-><init>()V

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


# virtual methods
.method public findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ")",
            "Lcom/android/fileexplorer/model/FileInfoGroup;"
        }
    .end annotation

    .line 2
    iget-wide v0, p2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoDateGrouper;->formatDate(J)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfoGroup;

    .line 4
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfoGroup;->groupKey:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return-object v0
.end method

.method public bridge synthetic findSameGroup(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoDateGrouper;->findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;

    move-result-object p1

    return-object p1
.end method

.method public makeNewFileGroup(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;
    .registers 6

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/android/fileexplorer/model/FileInfoGroup;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/android/fileexplorer/model/FileInfoGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 5
    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/android/fileexplorer/model/FileInfoGroup;->groupStartTime:Ljava/lang/Long;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoDateGrouper;->formatDate(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/fileexplorer/model/FileInfoGroup;->groupKey:Ljava/lang/String;

    return-object v1
.end method

.method public bridge synthetic makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoDateGrouper;->makeNewFileGroup(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;

    move-result-object p1

    return-object p1
.end method

.method public onPreGroup(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 8
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->isReverse()Z

    .line 11
    move-result v1

    .line 12
    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V

    .line 15
    return-object v0
.end method

.method public onSameGroup(Lcom/android/fileexplorer/model/FileInfoGroup;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 3

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onSameGroup(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/FileInfoGroup;

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoDateGrouper;->onSameGroup(Lcom/android/fileexplorer/model/FileInfoGroup;Lcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method
