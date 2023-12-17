.class public Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;
.super Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;
.source "FileInfoSizeGrouper.java"


# static fields
.field private static final GB:J = 0x3b9aca00L

.field private static final KB:J = 0x3e8L

.field private static final MB:J = 0xf4240L

.field private static final UNIT:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;-><init>()V

    .line 4
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

    .line 1
    iget-wide v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    const-wide/32 v2, 0x3b9aca00

    .line 14
    cmp-long v2, v0, v2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v5

    .line 22
    if-lez v2, :cond_2a

    .line 24
    const v0, 0x7f1103d1

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    new-array v0, v4, [Ljava/lang/Object;

    .line 33
    aput-object v5, v0, v3

    .line 35
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    const-string v0, "6"

    .line 41
    goto/16 :goto_bb

    .line 43
    :cond_2a
    const-wide/32 v6, 0x5f5e100

    .line 46
    cmp-long v2, v0, v6

    .line 48
    const/16 v6, 0x64

    .line 50
    const/4 v7, 0x2

    .line 51
    if-lez v2, :cond_4c

    .line 53
    const v0, 0x7f1103d0

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    new-array v0, v7, [Ljava/lang/Object;

    .line 62
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v1

    .line 66
    aput-object v1, v0, v3

    .line 68
    aput-object v5, v0, v4

    .line 70
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    const-string v0, "5"

    .line 76
    goto :goto_bb

    .line 77
    :cond_4c
    const-wide/32 v8, 0x989680

    .line 80
    cmp-long v2, v0, v8

    .line 82
    const/16 v8, 0xa

    .line 84
    if-lez v2, :cond_71

    .line 86
    const v0, 0x7f1103cf

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    new-array v0, v7, [Ljava/lang/Object;

    .line 95
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v1

    .line 99
    aput-object v1, v0, v3

    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v1

    .line 105
    aput-object v1, v0, v4

    .line 107
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    const-string v0, "4"

    .line 113
    goto :goto_bb

    .line 114
    :cond_71
    const-wide/32 v9, 0xf4240

    .line 117
    cmp-long v2, v0, v9

    .line 119
    if-lez v2, :cond_90

    .line 121
    const v0, 0x7f1103ce

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    new-array v0, v7, [Ljava/lang/Object;

    .line 130
    aput-object v5, v0, v3

    .line 132
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v1

    .line 136
    aput-object v1, v0, v4

    .line 138
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    const-string v0, "3"

    .line 144
    goto :goto_bb

    .line 145
    :cond_90
    const-wide/16 v8, 0x3e8

    .line 147
    cmp-long v0, v0, v8

    .line 149
    if-lez v0, :cond_aa

    .line 151
    const v0, 0x7f1103cd

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    new-array v0, v7, [Ljava/lang/Object;

    .line 160
    aput-object v5, v0, v3

    .line 162
    aput-object v5, v0, v4

    .line 164
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    const-string v0, "2"

    .line 170
    goto :goto_bb

    .line 171
    :cond_aa
    const v0, 0x7f1103cc

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 178
    new-array v0, v4, [Ljava/lang/Object;

    .line 180
    aput-object v5, v0, v3

    .line 182
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 186
    const-string v0, "1"

    .line 188
    :goto_bb
    new-instance v1, Landroid/util/Pair;

    .line 190
    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
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

    .line 2
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;->generateGroupKeyAndName(Lcom/android/fileexplorer/model/FileInfo;)Landroid/util/Pair;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfoGroup;

    .line 4
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

    .line 1
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;->findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isReverse()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->isReverse()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public makeNewFileGroup(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfoGroup;
    .registers 7

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;->generateGroupKeyAndName(Lcom/android/fileexplorer/model/FileInfo;)Landroid/util/Pair;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/android/fileexplorer/model/FileInfoGroup;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/android/fileexplorer/model/FileInfoGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 6
    iget-wide v3, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lcom/android/fileexplorer/model/FileInfoGroup;->groupStartTime:Ljava/lang/Long;

    .line 7
    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, v2, Lcom/android/fileexplorer/model/FileInfoGroup;->groupKey:Ljava/lang/String;

    return-object v2
.end method

.method public bridge synthetic makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 8
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;->isReverse()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;->onSameGroup(Lcom/android/fileexplorer/model/FileInfoGroup;Lcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method

.method public bridge synthetic setReverse(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->setReverse(Z)V

    .line 4
    return-void
.end method
