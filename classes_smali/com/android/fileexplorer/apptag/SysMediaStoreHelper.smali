.class public Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;
.super Ljava/lang/Object;
.source "SysMediaStoreHelper.java"


# static fields
.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_PATH:I = 0x1

.field public static final COLUMN_SIZE:I = 0x2

.field public static final COLUMN_TIME:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "SysMediaStoreHelper"

.field public static final sDocAllExts:[Ljava/lang/String;

.field public static final sDocExts:[Ljava/lang/String;

.field public static final sOtherExts:[Ljava/lang/String;

.field public static final sPdfExts:[Ljava/lang/String;

.field public static final sPptExts:[Ljava/lang/String;

.field public static final sRecentDocExts:[Ljava/lang/String;

.field public static final sWordExts:[Ljava/lang/String;

.field public static final sXlsExts:[Ljava/lang/String;

.field private static final sZipFileMimeType:Ljava/lang/String; = "application/zip"


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    const-string v0, "txt"

    const-string v1, "doc"

    const-string v2, "docx"

    const-string v3, "xls"

    const-string v4, "xlsx"

    const-string v5, "ppt"

    const-string v6, "pptx"

    const-string v7, "pdf"

    const-string v8, "wps"

    const-string v9, "epub"

    const-string v10, "md"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sDocExts:[Ljava/lang/String;

    const-string v1, "doc"

    const-string v2, "docx"

    const-string v3, "xls"

    const-string v4, "xlsx"

    const-string v5, "ppt"

    const-string v6, "pptx"

    const-string v7, "pdf"

    const-string v8, "wps"

    const-string v9, "md"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sRecentDocExts:[Ljava/lang/String;

    const-string v1, "doc"

    const-string v2, "docx"

    const-string v3, "xls"

    const-string v4, "xlsx"

    const-string v5, "ppt"

    const-string v6, "pptx"

    const-string v7, "pdf"

    const-string v8, "wps"

    const-string v9, "md"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sDocAllExts:[Ljava/lang/String;

    const-string v0, "doc"

    const-string v1, "docx"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sWordExts:[Ljava/lang/String;

    const-string v0, "xls"

    const-string v1, "xlsx"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sXlsExts:[Ljava/lang/String;

    const-string v0, "pdf"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sPdfExts:[Ljava/lang/String;

    const-string v0, "ppt"

    const-string v1, "pptx"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sPptExts:[Ljava/lang/String;

    const-string v0, "txt"

    const-string v1, "wps"

    const-string v2, "md"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sOtherExts:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildAppDirSelection(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_9

    const/4 p1, 0x0

    return-object p1

    :cond_9
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "(_data LIKE \'%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_35

    const-string v2, "OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_38
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildAppSelection(Ljava/util/List;J)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_9

    const/4 p1, 0x0

    return-object p1

    :cond_9
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const-string v2, "\') OR "

    const-string v3, "(parent == \'"

    const/4 v4, 0x0

    const-string v5, ")"

    if-nez v1, :cond_35

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v3, p2, v2}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_2a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_35
    const-wide/16 v6, 0x3e8

    div-long/2addr p2, v6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v3, v1, v2}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_4c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "date_modified"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildDocSelection()Ljava/lang/String;
    .registers 6

    const-string v0, "("

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    sget-object v2, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sRecentDocExts:[Ljava/lang/String;

    array-length v3, v2

    const-string v4, " OR "

    if-ge v1, v3, :cond_28

    const-string v3, "(_data LIKE \'%."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(_data LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getMiSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/%.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-static {v0, v1, v2, v2}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildSelectionByCategory(Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Ljava/util/List;J)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->AppDirectoryId:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->buildAppDirSelection(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    :cond_e
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->AppDirectory:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0, p3, p4, p5}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->buildAppSelection(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    :cond_1b
    sget-object p3, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->Other:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_49

    const/4 p2, 0x2

    if-eq p1, p2, :cond_44

    const/4 p2, 0x3

    if-eq p1, p2, :cond_41

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3e

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3b

    goto :goto_4b

    :cond_3b
    const-string v1, "(_data not LIKE \'%.mds\')"

    goto :goto_4b

    :cond_3e
    const-string v1, "(_data LIKE \'%.apk\' OR _data LIKE \'%.apk.1\')"

    goto :goto_4b

    :cond_41
    const-string v1, "(mime_type == \'application/zip\' OR _data LIKE \'%.rar\')"

    goto :goto_4b

    :cond_44
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->buildDocSelection()Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    :cond_49
    const-string v1, "(_data LIKE \'%.mtz\')"

    :cond_4b
    :goto_4b
    return-object v1
.end method

.method private buildSortOrder(Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$apptag$FileConstant$SortMethod:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_20

    const/4 p1, 0x0

    goto :goto_1e

    :pswitch_d  #0x6
    const-string p1, "parent desc, date_modified asc"

    goto :goto_1e

    :pswitch_10  #0x5
    const-string p1, "mime_type asc, title asc"

    goto :goto_1e

    :pswitch_13  #0x4
    const-string p1, "date_modified asc"

    goto :goto_1e

    :pswitch_16  #0x3
    const-string p1, "date_modified desc"

    goto :goto_1e

    :pswitch_19  #0x2
    const-string p1, "_size asc"

    goto :goto_1e

    :pswitch_1c  #0x1
    const-string p1, "title asc"

    :goto_1e
    return-object p1

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c  #00000001
        :pswitch_19  #00000002
        :pswitch_16  #00000003
        :pswitch_13  #00000004
        :pswitch_10  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method private getContentUriByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Landroid/net/Uri;
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1e

    const/4 p1, 0x0

    goto :goto_1c

    :pswitch_d  #0x8
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1c

    :pswitch_10  #0x7
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1c

    :pswitch_13  #0x5
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1c

    :pswitch_16  #0x1, 0x2, 0x3, 0x4, 0x6
    const-string p1, "external"

    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_1c
    return-object p1

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_16  #00000001
        :pswitch_16  #00000002
        :pswitch_16  #00000003
        :pswitch_16  #00000004
        :pswitch_13  #00000005
        :pswitch_16  #00000006
        :pswitch_10  #00000007
        :pswitch_d  #00000008
    .end packed-switch
.end method

.method private getFilterBlackDirSelection()Ljava/lang/String;
    .registers 8

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getBlackDirList()Ljava/util/List;

    move-result-object v0

    const-string v1, "( "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_54

    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_4a

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data NOT LIKE \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%\'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_42

    goto :goto_47

    :cond_42
    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_4a
    const-string v0, " )"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_54
    :goto_54
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getMaxID()I
    .registers 8

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->getContentUriByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "MAX(_id)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_33
    .catchall {:try_start_d .. :try_end_29} :catchall_31

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :cond_2d
    :goto_2d
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4f

    :catchall_31
    move-exception v1

    goto :goto_51

    :catch_33
    move-exception v1

    :try_start_34
    const-string v2, "SysMediaStoreHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_31

    goto :goto_2d

    :goto_4f
    const/4 v0, -0x1

    return v0

    :goto_51
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public query(Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Ljava/util/List;Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;JI)Landroid/database/Cursor;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;",
            "JI)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p2

    const-string v8, "SysMediaStoreHelper"

    new-instance v9, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v9}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v9}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->getContentUriByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Landroid/net/Uri;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->buildSelectionByCategory(Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Ljava/util/List;J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->buildSortOrder(Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    if-nez v10, :cond_24

    return-object v11

    :cond_24
    const-string v2, "_id"

    const-string v3, "_data"

    const-string v4, "_size"

    const-string v5, "date_modified"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    :try_start_30
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->getFilterBlackDirSelection()Ljava/lang/String;

    move-result-object v2

    const-string v4, " AND (_data NOT LIKE \'%/.%\')"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_54

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_63

    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND (_id > "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query: selection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " fc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", query finish time = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_b9} :catch_ba

    return-object v1

    :catch_ba
    move-exception v0

    const-string v1, "query error: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v8}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v11
.end method
