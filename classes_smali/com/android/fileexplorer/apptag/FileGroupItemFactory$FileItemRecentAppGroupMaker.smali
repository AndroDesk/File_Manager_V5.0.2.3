.class Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemRecentAppGroupMaker;
.super Ljava/lang/Object;
.source "FileGroupItemFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/FileGroupItemFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileItemRecentAppGroupMaker"
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
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory$FileItemRecentAppGroupMaker;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public make(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJ)Lcom/android/fileexplorer/apptag/FileItemGroup;
    .registers 11
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 3
    invoke-direct {v0, p1, p3}, Lcom/android/fileexplorer/apptag/FileItemAppGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 13
    const-wide/16 v1, 0x0

    .line 15
    cmp-long v1, p6, v1

    .line 17
    if-gez v1, :cond_21

    .line 19
    const/4 p6, 0x0

    .line 20
    invoke-interface {p3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 26
    invoke-virtual {p3}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide p6

    .line 34
    :cond_21
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    move-result-object p3

    .line 38
    iput-object p3, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 40
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object p3

    .line 44
    iput-object p3, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupStartTime:Ljava/lang/Long;

    .line 46
    iput-object p2, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 48
    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    .line 50
    iput-object p4, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag1:Ljava/lang/String;

    .line 52
    iput-boolean p5, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->isSecondary:Z

    .line 54
    return-object v0
.end method
