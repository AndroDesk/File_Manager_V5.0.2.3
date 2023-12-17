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

    .line 1
    const-string v0, "txt"

    .line 3
    const-string v1, "doc"

    .line 5
    const-string v2, "docx"

    .line 7
    const-string v3, "xls"

    .line 9
    const-string v4, "xlsx"

    .line 11
    const-string v5, "ppt"

    .line 13
    const-string v6, "pptx"

    .line 15
    const-string v7, "pdf"

    .line 17
    const-string v8, "wps"

    .line 19
    const-string v9, "epub"

    .line 21
    const-string v10, "md"

    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sDocExts:[Ljava/lang/String;

    .line 29
    const-string v1, "doc"

    .line 31
    const-string v2, "docx"

    .line 33
    const-string v3, "xls"

    .line 35
    const-string v4, "xlsx"

    .line 37
    const-string v5, "ppt"

    .line 39
    const-string v6, "pptx"

    .line 41
    const-string v7, "pdf"

    .line 43
    const-string v8, "wps"

    .line 45
    const-string v9, "md"

    .line 47
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sRecentDocExts:[Ljava/lang/String;

    .line 53
    const-string v1, "doc"

    .line 55
    const-string v2, "docx"

    .line 57
    const-string v3, "xls"

    .line 59
    const-string v4, "xlsx"

    .line 61
    const-string v5, "ppt"

    .line 63
    const-string v6, "pptx"

    .line 65
    const-string v7, "pdf"

    .line 67
    const-string v8, "wps"

    .line 69
    const-string v9, "md"

    .line 71
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sDocAllExts:[Ljava/lang/String;

    .line 77
    const-string v0, "doc"

    .line 79
    const-string v1, "docx"

    .line 81
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sWordExts:[Ljava/lang/String;

    .line 87
    const-string v0, "xls"

    .line 89
    const-string v1, "xlsx"

    .line 91
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sXlsExts:[Ljava/lang/String;

    .line 97
    const-string v0, "pdf"

    .line 99
    filled-new-array {v0}, [Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sPdfExts:[Ljava/lang/String;

    .line 105
    const-string v0, "ppt"

    .line 107
    const-string v1, "pptx"

    .line 109
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sPptExts:[Ljava/lang/String;

    .line 115
    const-string v0, "txt"

    .line 117
    const-string v1, "wps"

    .line 119
    const-string v2, "md"

    .line 121
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sOtherExts:[Ljava/lang/String;

    .line 127
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    if-nez p1, :cond_9

    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_9
    const-string v1, "("

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_38

    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 28
    const-string v3, "(_data LIKE \'%"

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "\')"

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    move-result v2

    .line 45
    add-int/lit8 v2, v2, -0x1

    .line 47
    if-eq v1, v2, :cond_35

    .line 49
    const-string v2, "OR "

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_35
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_f

    .line 57
    :cond_38
    const-string p1, ")"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    if-nez p1, :cond_9

    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_9
    const-wide/16 v1, -0x1

    .line 12
    cmp-long v1, p2, v1

    .line 14
    const-string v2, "\') OR "

    .line 16
    const-string v3, "(parent == \'"

    .line 18
    const/4 v4, 0x0

    .line 19
    const-string v5, ")"

    .line 21
    if-nez v1, :cond_35

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_2a

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Ljava/lang/String;

    .line 39
    invoke-static {v0, v3, p2, v2}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    goto :goto_1a

    .line 43
    :cond_2a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    .line 46
    move-result p1

    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 49
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_35
    const-wide/16 v6, 0x3e8

    .line 56
    div-long/2addr p2, v6

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object p1

    .line 61
    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4c

    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/String;

    .line 73
    invoke-static {v0, v3, v1, v2}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    goto :goto_3c

    .line 77
    :cond_4c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    .line 80
    move-result p1

    .line 81
    add-int/lit8 p1, p1, 0x1

    .line 83
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string p1, " AND ("

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string p1, "date_modified"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string p1, " >= "

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    return-object p1
.end method

.method private buildDocSelection()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "("

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    sget-object v2, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sRecentDocExts:[Ljava/lang/String;

    .line 10
    array-length v3, v2

    .line 11
    const-string v4, " OR "

    .line 13
    if-ge v1, v3, :cond_28

    .line 15
    const-string v3, "(_data LIKE \'%."

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    aget-object v3, v2, v1

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v3, "\')"

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    array-length v2, v2

    .line 31
    add-int/lit8 v2, v2, -0x1

    .line 33
    if-eq v1, v2, :cond_25

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_25
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_7

    .line 41
    :cond_28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "(_data LIKE "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "\'"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getMiSharePath()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, "/%.txt"

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, ")"

    .line 68
    invoke-static {v0, v1, v2, v2}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
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

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->AppDirectoryId:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_e

    .line 10
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->buildAppDirSelection(Ljava/util/List;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    goto :goto_4b

    .line 15
    :cond_e
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->AppDirectory:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    invoke-direct {p0, p3, p4, p5}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->buildAppSelection(Ljava/util/List;J)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    goto :goto_4b

    .line 28
    :cond_1b
    sget-object p3, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->Other:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 30
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4b

    .line 36
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 38
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 41
    move-result p2

    .line 42
    aget p1, p1, p2

    .line 44
    const/4 p2, 0x1

    .line 45
    if-eq p1, p2, :cond_49

    .line 47
    const/4 p2, 0x2

    .line 48
    if-eq p1, p2, :cond_44

    .line 50
    const/4 p2, 0x3

    .line 51
    if-eq p1, p2, :cond_41

    .line 53
    const/4 p2, 0x4

    .line 54
    if-eq p1, p2, :cond_3e

    .line 56
    const/4 p2, 0x5

    .line 57
    if-eq p1, p2, :cond_3b

    .line 59
    goto :goto_4b

    .line 60
    :cond_3b
    const-string v1, "(_data not LIKE \'%.mds\')"

    .line 62
    goto :goto_4b

    .line 63
    :cond_3e
    const-string v1, "(_data LIKE \'%.apk\' OR _data LIKE \'%.apk.1\')"

    .line 65
    goto :goto_4b

    .line 66
    :cond_41
    const-string v1, "(mime_type == \'application/zip\' OR _data LIKE \'%.rar\')"

    .line 68
    goto :goto_4b

    .line 69
    :cond_44
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->buildDocSelection()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    goto :goto_4b

    .line 74
    :cond_49
    const-string v1, "(_data LIKE \'%.mtz\')"

    .line 76
    :cond_4b
    :goto_4b
    return-object v1
.end method

.method private buildSortOrder(Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$apptag$FileConstant$SortMethod:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    packed-switch p1, :pswitch_data_20

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_1e

    .line 14
    :pswitch_d  #0x6
    const-string p1, "parent desc, date_modified asc"

    .line 16
    goto :goto_1e

    .line 17
    :pswitch_10  #0x5
    const-string p1, "mime_type asc, title asc"

    .line 19
    goto :goto_1e

    .line 20
    :pswitch_13  #0x4
    const-string p1, "date_modified asc"

    .line 22
    goto :goto_1e

    .line 23
    :pswitch_16  #0x3
    const-string p1, "date_modified desc"

    .line 25
    goto :goto_1e

    .line 26
    :pswitch_19  #0x2
    const-string p1, "_size asc"

    .line 28
    goto :goto_1e

    .line 29
    :pswitch_1c  #0x1
    const-string p1, "title asc"

    .line 31
    :goto_1e
    return-object p1

    .line 32
    nop

    .line 33
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

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    packed-switch p1, :pswitch_data_1e

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_1c

    .line 14
    :pswitch_d  #0x8
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 16
    goto :goto_1c

    .line 17
    :pswitch_10  #0x7
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 19
    goto :goto_1c

    .line 20
    :pswitch_13  #0x5
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 22
    goto :goto_1c

    .line 23
    :pswitch_16  #0x1, 0x2, 0x3, 0x4, 0x6
    const-string p1, "external"

    .line 25
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object p1

    .line 29
    :goto_1c
    return-object p1

    .line 30
    nop

    .line 31
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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getBlackDirList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "( "

    .line 11
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v0, :cond_54

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_17

    .line 23
    goto :goto_54

    .line 24
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_1c
    if-ge v3, v2, :cond_4a

    .line 31
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v6, "_data NOT LIKE \'"

    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v4, "%\'"

    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v4, v2, -0x1

    .line 64
    if-ne v3, v4, :cond_42

    .line 66
    goto :goto_47

    .line 67
    :cond_42
    const-string v4, " AND "

    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :goto_47
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_1c

    .line 75
    :cond_4a
    const-string v0, " )"

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    return-object v0

    .line 85
    :cond_54
    :goto_54
    const/4 v0, 0x0

    .line 86
    return-object v0
.end method


# virtual methods
.method public getMaxID()I
    .registers 8

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->getContentUriByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Landroid/net/Uri;

    .line 6
    move-result-object v2

    .line 7
    const-string v0, "MAX(_id)"

    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object v1

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2d

    .line 31
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2d

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 41
    move-result v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_33
    .catchall {:try_start_d .. :try_end_29} :catchall_31

    .line 42
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 45
    return v1

    .line 46
    :cond_2d
    :goto_2d
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    goto :goto_4f

    .line 50
    :catchall_31
    move-exception v1

    .line 51
    goto :goto_51

    .line 52
    :catch_33
    move-exception v1

    .line 53
    :try_start_34
    const-string v2, "SysMediaStoreHelper"

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v4, "query error: "

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_31

    .line 79
    goto :goto_2d

    .line 80
    :goto_4f
    const/4 v0, -0x1

    .line 81
    return v0

    .line 82
    :goto_51
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 85
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

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p2

    .line 3
    const-string v8, "SysMediaStoreHelper"

    .line 5
    new-instance v9, Lcom/android/fileexplorer/util/TimeCost;

    .line 7
    invoke-direct {v9}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 10
    invoke-virtual {v9}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 13
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->getContentUriByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Landroid/net/Uri;

    .line 16
    move-result-object v10

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move-object v3, p2

    .line 20
    move-object v4, p3

    .line 21
    move-wide/from16 v5, p5

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->buildSelectionByCategory(Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Ljava/util/List;J)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    move-object/from16 v2, p4

    .line 29
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->buildSortOrder(Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;)Ljava/lang/String;

    .line 32
    move-result-object v6

    .line 33
    const/4 v11, 0x0

    .line 34
    if-nez v10, :cond_24

    .line 36
    return-object v11

    .line 37
    :cond_24
    const-string v2, "_id"

    .line 39
    const-string v3, "_data"

    .line 41
    const-string v4, "_size"

    .line 43
    const-string v5, "date_modified"

    .line 45
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    :try_start_30
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->getFilterBlackDirSelection()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    const-string v4, " AND (_data NOT LIKE \'%/.%\')"

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_54

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, " AND "

    .line 71
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    goto :goto_63

    .line 85
    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    :goto_63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, " AND (_id > "

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    move/from16 v1, p7

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ")"

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v4

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    const-string v2, "query: selection = "

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    invoke-static {v8, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 154
    move-result-object v1

    .line 155
    const/4 v5, 0x0

    .line 156
    move-object v2, v10

    .line 157
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 160
    move-result-object v1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const-string v3, " fc = "

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    const-string v0, ", query finish time = "

    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v9, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_b9} :catch_ba

    .line 186
    return-object v1

    .line 187
    :catch_ba
    move-exception v0

    .line 188
    const-string v1, "query error: "

    .line 190
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    move-result-object v1

    .line 194
    invoke-static {v0, v1, v8}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 197
    return-object v11
.end method
