.class Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;
.super Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;
.source "FileInfoNameGrouper.java"


# static fields
.field private static final UNKNOWN:Ljava/lang/String; = "UK"


# instance fields
.field private isPicGroup:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;->isPicGroup:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;->isPicGroup:Z

    return-void
.end method

.method private generateGroupKey(Lcom/android/fileexplorer/model/FileInfo;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->getInstance(Landroid/content/Context;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    .line 8
    move-result-object v0

    .line 9
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v1, v2}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_45

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_45

    .line 29
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 35
    iget-object v0, v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 37
    if-eqz v0, :cond_45

    .line 39
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 45
    iget-object v0, v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_45

    .line 53
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 59
    iget-object p1, p1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 64
    move-result p1

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_45
    const-string p1, "UK"

    .line 72
    return-object p1
.end method

.method private getPicCategoryComparator()Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper$1;-><init>(Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;)V

    .line 6
    return-object v0
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
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;->generateGroupKey(Lcom/android/fileexplorer/model/FileInfo;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfoGroup;

    .line 4
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfoGroup;->groupKey:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return-object v0
.end method

.method public bridge synthetic findSameGroup(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;->findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;

    move-result-object p1

    return-object p1
.end method

.method public makeNewFileGroup(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;
    .registers 7

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;->generateGroupKey(Lcom/android/fileexplorer/model/FileInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-direct {v2, v0, v1}, Lcom/android/fileexplorer/model/FileInfoGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 6
    iget-wide v3, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lcom/android/fileexplorer/model/FileInfoGroup;->groupStartTime:Ljava/lang/Long;

    .line 7
    iput-object v0, v2, Lcom/android/fileexplorer/model/FileInfoGroup;->groupKey:Ljava/lang/String;

    return-object v2
.end method

.method public bridge synthetic makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;->makeNewFileGroup(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;

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
    :try_start_5
    iget-boolean p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;->isPicGroup:Z

    .line 8
    if-eqz p1, :cond_15

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;->getPicCategoryComparator()Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->isReverse()Z

    .line 17
    move-result v1

    .line 18
    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;Z)V

    .line 21
    goto :goto_23

    .line 22
    :cond_15
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->isReverse()Z

    .line 27
    move-result v1

    .line 28
    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_1e} :catch_1f

    .line 31
    goto :goto_23

    .line 32
    :catch_1f
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_23
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

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;->onSameGroup(Lcom/android/fileexplorer/model/FileInfoGroup;Lcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method
