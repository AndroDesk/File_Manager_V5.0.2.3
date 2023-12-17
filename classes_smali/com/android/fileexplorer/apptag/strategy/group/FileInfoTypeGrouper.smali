.class Lcom/android/fileexplorer/apptag/strategy/group/FileInfoTypeGrouper;
.super Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;
.source "FileInfoTypeGrouper.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;-><init>()V

    return-void
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

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfoGroup;

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

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoTypeGrouper;->findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;

    move-result-object p1

    return-object p1
.end method

.method public makeNewFileGroup(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;
    .registers 7

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-direct {v2, v0, v1}, Lcom/android/fileexplorer/model/FileInfoGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-wide v3, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lcom/android/fileexplorer/model/FileInfoGroup;->groupStartTime:Ljava/lang/Long;

    iput-object v0, v2, Lcom/android/fileexplorer/model/FileInfoGroup;->groupKey:Ljava/lang/String;

    return-object v2
.end method

.method public bridge synthetic makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoTypeGrouper;->makeNewFileGroup(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->isReverse()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V

    return-object v0
.end method

.method public onSameGroup(Lcom/android/fileexplorer/model/FileInfoGroup;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onSameGroup(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/fileexplorer/model/FileInfoGroup;

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoTypeGrouper;->onSameGroup(Lcom/android/fileexplorer/model/FileInfoGroup;Lcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method
