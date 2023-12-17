.class public Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;
.super Ljava/lang/Object;
.source "BaseFileCategoryQuery.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IFileCategoryQuery;


# static fields
.field private static final COLUMN_PATH:I = 0x1

.field private static final FILTER_FILE_LIMIT_SIZE:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "BaseFileCategoryQuery"

.field private static final RECENT_FILE_DURATION:I = 0x3f480

.field private static final TXT_FILTER_1:Ljava/lang/String; = "log"

.field private static final TXT_FILTER_2:Ljava/lang/String; = "debug"


# instance fields
.field private CATEGORY_COLUMNS:[Ljava/lang/String;

.field private CATEGORY_COLUMNS_VIDEO:[Ljava/lang/String;

.field private mTimeCost:Lcom/android/fileexplorer/util/TimeCost;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "_id"

    .line 6
    const-string v1, "_data"

    .line 8
    const-string v2, "_size"

    .line 10
    const-string v3, "date_modified"

    .line 12
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 15
    move-result-object v4

    .line 16
    iput-object v4, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->CATEGORY_COLUMNS:[Ljava/lang/String;

    .line 18
    const-string v4, "duration"

    .line 20
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->CATEGORY_COLUMNS_VIDEO:[Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 28
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 33
    return-void
.end method

.method private static buildDocSelection([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "(("

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_9
    if-ge v3, v1, :cond_1d

    .line 12
    aget-object v4, p0, v3

    .line 14
    const-string v5, "(_data LIKE \'%."

    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v4, "\') OR "

    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    const-string p0, ")"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    .line 35
    move-result p0

    .line 36
    add-int/lit8 p0, p0, 0x1

    .line 38
    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v1, ") and ("

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "_data not like \'%"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, "log"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v2, "%.txt\'"

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, " and "

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "debug"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "))"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method

.method private static buildMusicSelection()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_8
    const-string v1, "( "

    .line 11
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_f
    array-length v3, v0

    .line 17
    if-ge v2, v3, :cond_3c

    .line 19
    const-string v3, "_data NOT LIKE \'"

    .line 21
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v3

    .line 25
    aget-object v4, v0, v2

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v4, "/MIUI/sound_recorder"

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v4, "%\'"

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    array-length v3, v0

    .line 48
    add-int/lit8 v3, v3, -0x1

    .line 50
    if-ne v2, v3, :cond_34

    .line 52
    goto :goto_39

    .line 53
    :cond_34
    const-string v3, " AND "

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :goto_39
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_f

    .line 61
    :cond_3c
    const-string v0, " )"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method private buildRecentSelection()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr v0, v2

    .line 8
    const-wide/32 v2, 0x3f480

    .line 11
    sub-long/2addr v0, v2

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v3, "date_added >= "

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, " AND  ( "

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v0, "mime_type"

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, " IS NOT NULL OR "

    .line 37
    const-string v1, "_data"

    .line 39
    const-string v3, " LIKE \'%.apk\' )"

    .line 41
    invoke-static {v2, v0, v1, v3}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method private buildSelectionByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    packed-switch p1, :pswitch_data_4a

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_49

    .line 14
    :pswitch_d  #0xb
    invoke-static {}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildMusicSelection()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_49

    .line 19
    :pswitch_12  #0xa
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sOtherExts:[Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    goto :goto_49

    .line 26
    :pswitch_19  #0x9
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sWordExts:[Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_49

    .line 33
    :pswitch_20  #0x8
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sXlsExts:[Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_49

    .line 40
    :pswitch_27  #0x7
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sPdfExts:[Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    goto :goto_49

    .line 47
    :pswitch_2e  #0x6
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sPptExts:[Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    goto :goto_49

    .line 54
    :pswitch_35  #0x5
    invoke-direct {p0}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildRecentSelection()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    goto :goto_49

    .line 59
    :pswitch_3a  #0x4
    const-string p1, "(_data LIKE \'%.apk\' OR _data LIKE \'%.apk.1\')"

    .line 61
    goto :goto_49

    .line 62
    :pswitch_3d  #0x3
    const-string p1, "(mime_type == \'application/zip\' OR _data LIKE \'%.rar\')"

    .line 64
    goto :goto_49

    .line 65
    :pswitch_40  #0x2
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sDocAllExts:[Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    goto :goto_49

    .line 72
    :pswitch_47  #0x1
    const-string p1, "_data LIKE \'%.mtz\'"

    .line 74
    :goto_49
    return-object p1

    .line 75
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_40  #00000002
        :pswitch_3d  #00000003
        :pswitch_3a  #00000004
        :pswitch_35  #00000005
        :pswitch_2e  #00000006
        :pswitch_27  #00000007
        :pswitch_20  #00000008
        :pswitch_19  #00000009
        :pswitch_12  #0000000a
        :pswitch_d  #0000000b
    .end packed-switch
.end method

.method private buildSortOrder(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    sget-object v1, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery$1;->$SwitchMap$com$android$fileexplorer$model$FileSortHelper$SortMethod:[I

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result p1

    .line 11
    aget p1, v1, p1

    .line 13
    packed-switch p1, :pswitch_data_32

    .line 16
    goto :goto_30

    .line 17
    :pswitch_10  #0x6
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_19

    .line 23
    const-string v0, "mime_type ASC, title COLLATE UNICODE ASC"

    .line 25
    goto :goto_30

    .line 26
    :cond_19
    const-string v0, "mime_type ASC, title COLLATE LOCALIZED ASC"

    .line 28
    goto :goto_30

    .line 29
    :pswitch_1c  #0x4, 0x5
    const-string v0, "date_modified DESC"

    .line 31
    goto :goto_30

    .line 32
    :pswitch_1f  #0x3
    const-string v0, "_size ASC"

    .line 34
    goto :goto_30

    .line 35
    :pswitch_22  #0x2
    const-string v0, "_size DESC"

    .line 37
    goto :goto_30

    .line 38
    :pswitch_25  #0x1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2e

    .line 44
    const-string v0, "title COLLATE UNICODE ASC"

    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    const-string v0, "title COLLATE LOCALIZED ASC"

    .line 49
    :goto_30
    return-object v0

    .line 50
    nop

    .line 51
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_25  #00000001
        :pswitch_22  #00000002
        :pswitch_1f  #00000003
        :pswitch_1c  #00000004
        :pswitch_1c  #00000005
        :pswitch_10  #00000006
    .end packed-switch
.end method

.method private getCategoryFileInfoFromCursor(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Landroid/database/Cursor;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;Z)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Landroid/database/Cursor;",
            "Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-nez p2, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    :goto_8
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 12
    move-result v1

    .line 13
    const-string v2, "BaseFileCategoryQuery"

    .line 15
    if-eqz v1, :cond_79

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_1c

    .line 28
    goto :goto_8

    .line 29
    :cond_1c
    const-string v4, "_id"

    .line 31
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 34
    move-result v4

    .line 35
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 38
    move-result-wide v4

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    move-result-object v4

    .line 43
    iput-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result v4

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v4

    .line 53
    iput-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    .line 55
    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 57
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    iput-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->subFileCategoryType:Ljava/lang/String;

    .line 63
    iget-boolean v4, v3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 65
    if-nez v4, :cond_5c

    .line 67
    iget-boolean v4, v3, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 69
    if-nez v4, :cond_5c

    .line 71
    if-nez p4, :cond_58

    .line 73
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 75
    if-ne p1, v1, :cond_58

    .line 77
    const-string v1, "duration"

    .line 79
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 82
    move-result v1

    .line 83
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 86
    move-result-wide v1

    .line 87
    iput-wide v1, v3, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    .line 89
    :cond_58
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_8

    .line 93
    :cond_5c
    const-string v3, "getCategoryFileInfoFromCursor: category = "

    .line 95
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v4, ", exclude file.path = "

    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    goto :goto_8

    .line 122
    :cond_79
    if-eqz p4, :cond_7c

    .line 124
    return-object v0

    .line 125
    :cond_7c
    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 127
    if-ne p2, p1, :cond_a1

    .line 129
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 131
    if-ne p3, p1, :cond_a1

    .line 133
    :try_start_84
    invoke-static {p3}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/util/Comparator;

    .line 136
    move-result-object p1

    .line 137
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_8b} :catch_8c

    .line 140
    goto :goto_a1

    .line 141
    :catch_8c
    move-exception p1

    .line 142
    const-string p2, "sort error: "

    .line 144
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 159
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_a1
    :goto_a1
    invoke-static {v0}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileInfo(Ljava/util/List;)Ljava/util/HashSet;

    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 169
    move-result-object p2

    .line 170
    :goto_a9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    move-result p3

    .line 174
    if-eqz p3, :cond_c2

    .line 176
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    move-result-object p3

    .line 180
    check-cast p3, Lcom/android/fileexplorer/model/FileInfo;

    .line 182
    iget-object p4, p3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 184
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 187
    move-result-object p4

    .line 188
    invoke-virtual {p1, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 191
    move-result p4

    .line 192
    iput-boolean p4, p3, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 194
    goto :goto_a9

    .line 195
    :cond_c2
    return-object v0
.end method

.method private getContentUriByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Landroid/net/Uri;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

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
    :pswitch_d  #0xd
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 16
    goto :goto_1c

    .line 17
    :pswitch_10  #0xc
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 19
    goto :goto_1c

    .line 20
    :pswitch_13  #0xb
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 22
    goto :goto_1c

    .line 23
    :pswitch_16  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa
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
        :pswitch_16  #00000005
        :pswitch_16  #00000006
        :pswitch_16  #00000007
        :pswitch_16  #00000008
        :pswitch_16  #00000009
        :pswitch_16  #0000000a
        :pswitch_13  #0000000b
        :pswitch_10  #0000000c
        :pswitch_d  #0000000d
    .end packed-switch
.end method

.method private getResult(Landroid/database/Cursor;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;ZI)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 11

    .line 1
    const-string v0, "BaseFileCategoryQuery"

    .line 3
    new-instance v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 5
    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;-><init>()V

    .line 8
    if-nez p1, :cond_a

    .line 10
    return-object v1

    .line 11
    :cond_a
    :try_start_a
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 14
    move-result v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v4, "cursorLength:"

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v3, 0x0

    .line 36
    if-ne v2, p5, :cond_27

    .line 38
    const/4 p5, 0x1

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move p5, v3

    .line 41
    :goto_28
    iput-boolean p5, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 43
    if-eqz p4, :cond_41

    .line 45
    const/16 p5, 0xc8

    .line 47
    if-le v2, p5, :cond_41

    .line 49
    sget-boolean p5, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 51
    if-nez p5, :cond_41

    .line 53
    int-to-long p3, v2

    .line 54
    iput-wide p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    .line 56
    const-wide/16 p3, 0x0

    .line 58
    iput-wide p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->size:J

    .line 60
    const-string p3, "get num only"

    .line 62
    invoke-static {v0, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    goto :goto_81

    .line 66
    :cond_41
    if-lez v2, :cond_81

    .line 68
    const-string p5, "query files"

    .line 70
    invoke-static {v0, p5}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->getCategoryFileInfoFromCursor(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Landroid/database/Cursor;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;Z)Ljava/util/ArrayList;

    .line 76
    move-result-object p3

    .line 77
    iput-object p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string p4, "getCategoryFileInfoFromCursor size = :"

    .line 86
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p3

    .line 96
    invoke-static {v0, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 104
    move-result v3

    .line 105
    int-to-long p3, v3

    .line 106
    iput-wide p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    .line 108
    sget-boolean p3, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 110
    if-nez p3, :cond_75

    .line 112
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isRecordDocInfo()Z

    .line 115
    move-result p3

    .line 116
    if-nez p3, :cond_81

    .line 118
    :cond_75
    iget-object p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 120
    invoke-static {p3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/util/List;)Ljava/lang/Long;

    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 127
    move-result-wide p3

    .line 128
    iput-wide p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->size:J
    :try_end_81
    .catchall {:try_start_a .. :try_end_81} :catchall_b0

    .line 130
    :cond_81
    :goto_81
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    iget-object p1, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 135
    const-string p3, "BaseFileCategoryQuery, fc = "

    .line 137
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-result-object p3

    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string p2, ", count = "

    .line 150
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string p2, ", realCount = "

    .line 158
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string p2, " query finish time:"

    .line 166
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 176
    return-object v1

    .line 177
    :catchall_b0
    move-exception p2

    .line 178
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 181
    throw p2
.end method

.method private realQuery(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;II)Landroid/database/Cursor;
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildSortOrder(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v2, "realQuery: fc = "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, ", sortOrder = "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "BaseFileCategoryQuery"

    .line 36
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->getContentUriByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Landroid/net/Uri;

    .line 42
    move-result-object v4

    .line 43
    if-nez v4, :cond_41

    .line 45
    const-string p2, "invalid uri, category = "

    .line 47
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object v0

    .line 66
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildSelectionByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    .line 69
    move-result-object v6

    .line 70
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 72
    if-ne p1, v1, :cond_4c

    .line 74
    iget-object p1, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->CATEGORY_COLUMNS_VIDEO:[Ljava/lang/String;

    .line 76
    goto :goto_4e

    .line 77
    :cond_4c
    iget-object p1, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->CATEGORY_COLUMNS:[Ljava/lang/String;

    .line 79
    :goto_4e
    move-object v5, p1

    .line 80
    :try_start_4f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    const/16 v1, 0x1d

    .line 84
    if-lt p1, v1, :cond_83

    .line 86
    new-instance p1, Landroid/os/Bundle;

    .line 88
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 91
    if-eqz v6, :cond_61

    .line 93
    const-string v1, "android:query-arg-sql-selection"

    .line 95
    invoke-virtual {p1, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_61
    if-eqz p2, :cond_68

    .line 100
    const-string v1, "android:query-arg-sql-sort-order"

    .line 102
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_68
    if-ltz p3, :cond_76

    .line 107
    if-lez p4, :cond_76

    .line 109
    const-string p2, "android:query-arg-limit"

    .line 111
    invoke-virtual {p1, p2, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string p2, "android:query-arg-offset"

    .line 116
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 119
    :cond_76
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 126
    move-result-object p2

    .line 127
    invoke-static {p2, v4, v5, p1}, Landroidx/appcompat/widget/x;->f(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    .line 130
    move-result-object p1

    .line 131
    goto :goto_b1

    .line 132
    :cond_83
    if-ltz p3, :cond_a3

    .line 134
    if-lez p4, :cond_a3

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string p2, " limit "

    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string p2, ","

    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p2

    .line 164
    :cond_a3
    move-object v8, p2

    .line 165
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 172
    move-result-object v3

    .line 173
    const/4 v7, 0x0

    .line 174
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 177
    move-result-object p1
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_b1} :catch_b2

    .line 178
    :goto_b1
    return-object p1

    .line 179
    :catch_b2
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    return-object v0
.end method


# virtual methods
.method public query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->realQuery(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;II)Landroid/database/Cursor;

    .line 9
    move-result-object v2

    .line 10
    move-object v1, p0

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p2

    .line 13
    move v5, p5

    .line 14
    move v6, p4

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->getResult(Landroid/database/Cursor;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;ZI)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
