.class public Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;
.super Ljava/lang/Object;
.source "BaseFileCategoryQuery.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IFileCategoryQuery;


# static fields
.field private static final COLUMN_PATH:I

.field private static final FILTER_FILE_LIMIT_SIZE:I

.field private static final LOG_TAG:Ljava/lang/String; = "BaseFileCategoryQuery"

.field private static final RECENT_FILE_DURATION:I

.field private static final TXT_FILTER_1:Ljava/lang/String; = "log"

.field private static final TXT_FILTER_2:Ljava/lang/String; = "debug"


# instance fields
.field private CATEGORY_COLUMNS:[Ljava/lang/String;

.field private CATEGORY_COLUMNS_VIDEO:[Ljava/lang/String;

.field private mTimeCost:Lcom/android/fileexplorer/util/TimeCost;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->COLUMN_PATH:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->FILTER_FILE_LIMIT_SIZE:I

    const v0, 0xad916

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->RECENT_FILE_DURATION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "_size"

    const-string v3, "date_modified"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->CATEGORY_COLUMNS:[Ljava/lang/String;

    const-string v4, "duration"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->CATEGORY_COLUMNS_VIDEO:[Ljava/lang/String;

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    return-void
.end method

.method private static buildDocSelection([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "(("

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_1d

    aget-object v4, p0, v3

    const-string v5, "(_data LIKE \'%."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\') OR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1d
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ") and ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data not like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%.txt\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildMusicSelection()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string v1, "( "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_3c

    const-string v3, "_data NOT LIKE \'"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/MIUI/sound_recorder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_34

    goto :goto_39

    :cond_34
    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_3c
    const-string v0, " )"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildRecentSelection()Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x3f480

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date_added >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " AND  ( "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mime_type"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " IS NOT NULL OR "

    const-string v1, "_data"

    const-string v3, " LIKE \'%.apk\' )"

    invoke-static {v2, v0, v1, v3}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildSelectionByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_4a

    const/4 p1, 0x0

    goto :goto_49

    :pswitch_d  #0xb
    invoke-static {}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildMusicSelection()Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :pswitch_12  #0xa
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sOtherExts:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :pswitch_19  #0x9
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sWordExts:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :pswitch_20  #0x8
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sXlsExts:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :pswitch_27  #0x7
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sPdfExts:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :pswitch_2e  #0x6
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sPptExts:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :pswitch_35  #0x5
    invoke-direct {p0}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildRecentSelection()Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :pswitch_3a  #0x4
    const-string p1, "(_data LIKE \'%.apk\' OR _data LIKE \'%.apk.1\')"

    goto :goto_49

    :pswitch_3d  #0x3
    const-string p1, "(mime_type == \'application/zip\' OR _data LIKE \'%.rar\')"

    goto :goto_49

    :pswitch_40  #0x2
    sget-object p1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sDocAllExts:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildDocSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :pswitch_47  #0x1
    const-string p1, "_data LIKE \'%.mtz\'"

    :goto_49
    return-object p1

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

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    sget-object v1, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery$1;->$SwitchMap$com$android$fileexplorer$model$FileSortHelper$SortMethod:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_32

    goto :goto_30

    :pswitch_10  #0x6
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string v0, "mime_type ASC, title COLLATE UNICODE ASC"

    goto :goto_30

    :cond_19
    const-string v0, "mime_type ASC, title COLLATE LOCALIZED ASC"

    goto :goto_30

    :pswitch_1c  #0x4, 0x5
    const-string v0, "date_modified DESC"

    goto :goto_30

    :pswitch_1f  #0x3
    const-string v0, "_size ASC"

    goto :goto_30

    :pswitch_22  #0x2
    const-string v0, "_size DESC"

    goto :goto_30

    :pswitch_25  #0x1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string v0, "title COLLATE UNICODE ASC"

    goto :goto_30

    :cond_2e
    const-string v0, "title COLLATE LOCALIZED ASC"

    :goto_30
    return-object v0

    nop

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_8

    return-object v0

    :cond_8
    :goto_8
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const-string v2, "BaseFileCategoryQuery"

    if-eqz v1, :cond_79

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v3

    if-nez v3, :cond_1c

    goto :goto_8

    :cond_1c
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->subFileCategoryType:Ljava/lang/String;

    iget-boolean v4, v3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v4, :cond_5c

    iget-boolean v4, v3, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v4, :cond_5c

    if-nez p4, :cond_58

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-ne p1, v1, :cond_58

    const-string v1, "duration"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    :cond_58
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_5c
    const-string v3, "getCategoryFileInfoFromCursor: category = "

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", exclude file.path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_79
    if-eqz p4, :cond_7c

    return-object v0

    :cond_7c
    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-ne p2, p1, :cond_a1

    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    if-ne p3, p1, :cond_a1

    :try_start_84
    invoke-static {p3}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_8b} :catch_8c

    goto :goto_a1

    :catch_8c
    move-exception p1

    const-string p2, "sort error: "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    :goto_a1
    invoke-static {v0}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileInfo(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p4, p3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    iput-boolean p4, p3, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    goto :goto_a9

    :cond_c2
    return-object v0
.end method

.method private getContentUriByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Landroid/net/Uri;
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1e

    const/4 p1, 0x0

    goto :goto_1c

    :pswitch_d  #0xd
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1c

    :pswitch_10  #0xc
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1c

    :pswitch_13  #0xb
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1c

    :pswitch_16  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa
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

    const-string v0, "BaseFileCategoryQuery"

    new-instance v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;-><init>()V

    if-nez p1, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursorLength:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-ne v2, p5, :cond_27

    const/4 p5, 0x1

    goto :goto_28

    :cond_27
    move p5, v3

    :goto_28
    iput-boolean p5, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    if-eqz p4, :cond_41

    const/16 p5, 0xc8

    if-le v2, p5, :cond_41

    sget-boolean p5, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-nez p5, :cond_41

    int-to-long p3, v2

    iput-wide p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    const-wide/16 p3, 0x0

    iput-wide p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->size:J

    const-string p3, "get num only"

    invoke-static {v0, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    :cond_41
    if-lez v2, :cond_81

    const-string p5, "query files"

    invoke-static {v0, p5}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->getCategoryFileInfoFromCursor(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Landroid/database/Cursor;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;Z)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getCategoryFileInfoFromCursor size = :"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long p3, v3

    iput-wide p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    sget-boolean p3, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-nez p3, :cond_75

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isRecordDocInfo()Z

    move-result p3

    if-nez p3, :cond_81

    :cond_75
    iget-object p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/util/List;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    iput-wide p3, v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->size:J
    :try_end_81
    .catchall {:try_start_a .. :try_end_81} :catchall_b0

    :cond_81
    :goto_81
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    iget-object p1, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    const-string p3, "BaseFileCategoryQuery, fc = "

    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", count = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", realCount = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " query finish time:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    return-object v1

    :catchall_b0
    move-exception p2

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method private realQuery(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;II)Landroid/database/Cursor;
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildSortOrder(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realQuery: fc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sortOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseFileCategoryQuery"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->getContentUriByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_41

    const-string p2, "invalid uri, category = "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_41
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->buildSelectionByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-ne p1, v1, :cond_4c

    iget-object p1, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->CATEGORY_COLUMNS_VIDEO:[Ljava/lang/String;

    goto :goto_4e

    :cond_4c
    iget-object p1, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->CATEGORY_COLUMNS:[Ljava/lang/String;

    :goto_4e
    move-object v5, p1

    :try_start_4f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p1, v1, :cond_83

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz v6, :cond_61

    const-string v1, "android:query-arg-sql-selection"

    invoke-virtual {p1, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    if-eqz p2, :cond_68

    const-string v1, "android:query-arg-sql-sort-order"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    if-ltz p3, :cond_76

    if-lez p4, :cond_76

    const-string p2, "android:query-arg-limit"

    invoke-virtual {p1, p2, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "android:query-arg-offset"

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_76
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v4, v5, p1}, Landroidx/appcompat/widget/x;->f(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_b1

    :cond_83
    if-ltz p3, :cond_a3

    if-lez p4, :cond_a3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " limit "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_a3
    move-object v8, p2

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_b1} :catch_b2

    :goto_b1
    return-object p1

    :catch_b2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 13

    iget-object v0, p0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->realQuery(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;II)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;->getResult(Landroid/database/Cursor;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;ZI)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1
.end method
