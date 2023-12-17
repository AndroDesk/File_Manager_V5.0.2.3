.class public Lcom/android/fileexplorer/apptag/strategy/group/Grouper;
.super Ljava/lang/Object;
.source "Grouper.java"


# static fields
.field private static final FILE_INFO_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;",
            "Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILE_ITEM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;",
            "Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->FILE_INFO_MAP:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->FILE_ITEM_MAP:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->FILE_ITEM_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;

    if-nez v1, :cond_11

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->make(Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;)Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;

    move-result-object v1

    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_11
    invoke-virtual {v1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;->setReverse(Z)V

    .line 10
    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->group(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;ZZ)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->FILE_ITEM_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;

    if-nez v1, :cond_11

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->make(Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;)Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;

    move-result-object v1

    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_11
    invoke-virtual {v1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;->setReverse(Z)V

    .line 15
    invoke-virtual {v1, p0, p3}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->group(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->FILE_INFO_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;

    if-nez v1, :cond_11

    .line 2
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->make(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_11
    invoke-virtual {v1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->setReverse(Z)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->group(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static groupPicByName(Ljava/util/List;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;-><init>(Z)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;->setReverse(Z)V

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->group(Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static make(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)Lcom/android/fileexplorer/apptag/strategy/group/FileInfoAbsGrouper;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/group/Grouper$1;->$SwitchMap$com$android$fileexplorer$apptag$strategy$sort$Sorter$Method:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_28

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1a

    .line 2
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoTypeGrouper;

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoTypeGrouper;-><init>()V

    return-object p0

    .line 3
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_22
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoSizeGrouper;-><init>()V

    return-object p0

    .line 5
    :cond_28
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoNameGrouper;-><init>()V

    return-object p0

    .line 6
    :cond_2e
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoDateGrouper;

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileInfoDateGrouper;-><init>()V

    return-object p0
.end method

.method private static make(Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;)Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;
    .registers 2

    .line 7
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/group/Grouper$1;->$SwitchMap$com$android$fileexplorer$apptag$strategy$group$FileItemGroupMethod:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    .line 8
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;-><init>()V

    return-object p0

    .line 9
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1c
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemDateGrouper;-><init>()V

    return-object p0
.end method
