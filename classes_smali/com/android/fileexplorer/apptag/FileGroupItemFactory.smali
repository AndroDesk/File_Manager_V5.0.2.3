.class public Lcom/android/fileexplorer/apptag/FileGroupItemFactory;
.super Ljava/lang/Object;
.source "FileGroupItemFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemRecentAppGroupMaker;,
        Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemAppGroupMaker;,
        Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemDateGroupMaker;,
        Lcom/android/fileexplorer/apptag/FileGroupItemFactory$Maker;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 2
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemAppGroupMaker;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemAppGroupMaker;-><init>(Lcom/android/fileexplorer/apptag/FileGroupItemFactory$1;)V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemAppGroupMaker;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object p0

    return-object p0

    .line 3
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4
    :cond_1a
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemDateGroupMaker;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemDateGroupMaker;-><init>(Lcom/android/fileexplorer/apptag/FileGroupItemFactory$1;)V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemDateGroupMaker;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object p0

    return-object p0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJ)Lcom/android/fileexplorer/apptag/FileItemGroup;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/lang/String;",
            "ZJ)",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemRecentAppGroupMaker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemRecentAppGroupMaker;-><init>(Lcom/android/fileexplorer/apptag/FileGroupItemFactory$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemRecentAppGroupMaker;->make(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJ)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object p0

    return-object p0
.end method
