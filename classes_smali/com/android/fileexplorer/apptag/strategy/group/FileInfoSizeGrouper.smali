.class public Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;
.super Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;
.source "FileInfoSizeGrouper.java"


# static fields
.field private static final GB:J = 0x3b9aca00L

.field private static final KB:J = 0x3e8L

.field private static final MB:J = 0xf4240L

.field private static final UNIT:J = 0x3e8L


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

.method private generateGroupKeyAndName(Lcom/android/fileexplorer/model/FileInfo;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-wide/32 v2, 0x3b9aca00

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-lez v2, :cond_2e

    const v0, 0x7f182e47

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "6"

    goto/16 :goto_d4

    :cond_2e
    const-wide/32 v6, 0x5f5e100

    cmp-long v2, v0, v6

    const/16 v6, 0x64

    const/4 v7, 0x2

    if-lez v2, :cond_55

    const v0, 0x7f182e46

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object v5, v0, v4

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "5"

    goto/16 :goto_d4

    :cond_55
    const-wide/32 v8, 0x989680

    cmp-long v2, v0, v8

    const/16 v8, 0xa

    if-lez v2, :cond_7e

    const v0, 0x7f182e59

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "4"

    goto :goto_d4

    :cond_7e
    const-wide/32 v9, 0xf4240

    cmp-long v2, v0, v9

    if-lez v2, :cond_a1

    const v0, 0x7f182e58

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    goto :goto_d4

    :cond_a1
    const-wide/16 v8, 0x3e8

    cmp-long v0, v0, v8

    if-lez v0, :cond_bf

    const v0, 0x7f182e5b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v5, v0, v3

    aput-object v5, v0, v4

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    goto :goto_d4

    :cond_bf
    const v0, 0x7f182e5a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    :goto_d4
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;
    .registers 6
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

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;->generateGroupKeyAndName(Lcom/android/fileexplorer/model/FileInfo;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfoGroup;

    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfoGroup;->groupKey:Ljava/lang/String;

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return-object v0
.end method

.method public bridge synthetic findSameGroup(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;->findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isReverse()Z
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->isReverse()Z

    move-result v0

    return v0
.end method

.method public makeNewFileGroup(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;->generateGroupKeyAndName(Lcom/android/fileexplorer/model/FileInfo;)Landroid/util/Pair;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/model/FileInfoGroup;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/android/fileexplorer/model/FileInfoGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-wide v3, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lcom/android/fileexplorer/model/FileInfoGroup;->groupStartTime:Ljava/lang/Long;

    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, v2, Lcom/android/fileexplorer/model/FileInfoGroup;->groupKey:Ljava/lang/String;

    return-object v2
.end method

.method public bridge synthetic makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;->makeNewFileGroup(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;

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

    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;->isReverse()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;->onSameGroup(Lcom/android/fileexplorer/model/FileInfoGroup;Lcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method

.method public bridge synthetic setReverse(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->setReverse(Z)V

    return-void
.end method
