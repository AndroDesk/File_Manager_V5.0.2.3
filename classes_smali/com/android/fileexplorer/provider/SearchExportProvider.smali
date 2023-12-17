.class public Lcom/android/fileexplorer/provider/SearchExportProvider;
.super Landroid/content/ContentProvider;
.source "SearchExportProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.fileexplorer.provider.searchexport"

.field private static final SEARCH_SUGGEST:I = 0x0

.field private static final SEARCH_SUGGEST_INTERNAL_0:Ljava/lang/String; = "search_suggest_internal_size"

.field private static final SEARCH_SUGGEST_INTERNAL_1:Ljava/lang/String; = "search_suggest_internal_date"

.field private static final SEARCH_SUGGEST_INTERNAL_2:Ljava/lang/String; = "search_suggest_internal_tag"

.field private static final mColumnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDataUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/fileexplorer/provider/SearchExportProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 9
    const-string v1, "com.android.fileexplorer.provider.searchexport"

    .line 11
    const-string v2, "search_suggest_query"

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    sget-object v0, Lcom/android/fileexplorer/provider/SearchExportProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 19
    const-string v2, "search_suggest_query/*"

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/provider/SearchExportProvider;->buildColumnMap()Ljava/util/HashMap;

    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/android/fileexplorer/provider/SearchExportProvider;->mColumnMap:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/provider/SearchExportProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/provider/SearchExportProvider;->parseType(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/provider/SearchExportProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/provider/SearchExportProvider;->parseInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/provider/SearchExportProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/provider/SearchExportProvider;->parseIcon(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static buildColumnMap()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 13
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 15
    const-string v3, " AS "

    .line 17
    const-string v4, "_id"

    .line 19
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileName:Lorg/greenrobot/greendao/Property;

    .line 33
    iget-object v4, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 35
    const-string v5, "suggest_text_1"

    .line 37
    invoke-static {v1, v4, v3, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 51
    const-string v4, "suggest_text_2"

    .line 53
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 67
    iget-object v4, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 69
    const-string v5, "suggest_icon_1"

    .line 71
    invoke-static {v1, v4, v3, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 85
    const-string v4, "suggest_intent_data"

    .line 87
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileSize:Lorg/greenrobot/greendao/Property;

    .line 101
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 103
    const-string v4, "search_suggest_internal_size"

    .line 105
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    .line 119
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 121
    const-string v4, "search_suggest_internal_date"

    .line 123
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    .line 137
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 139
    const-string v4, "search_suggest_internal_tag"

    .line 141
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-object v0
.end method

.method private getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "_id"

    .line 7
    const-string v1, "suggest_text_1"

    .line 9
    const-string v2, "suggest_text_2"

    .line 11
    const-string v3, "suggest_icon_1"

    .line 13
    const-string v4, "suggest_intent_data"

    .line 15
    const-string v5, "search_suggest_internal_size"

    .line 17
    const-string v6, "search_suggest_internal_date"

    .line 19
    const-string v7, "search_suggest_internal_tag"

    .line 21
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/provider/SearchExportProvider;->mDataUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 27
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/provider/SearchExportProvider;->mapColumns([Ljava/lang/String;)[Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const/16 v2, 0xa

    .line 33
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadForSearchExported(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method private mapColumns([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_4
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_1b

    .line 8
    sget-object v2, Lcom/android/fileexplorer/provider/SearchExportProvider;->mColumnMap:Ljava/util/HashMap;

    .line 10
    aget-object v3, p1, v1

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/String;

    .line 18
    if-eqz v2, :cond_14

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    const-string v2, ""

    .line 23
    :goto_16
    aput-object v2, v0, v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_4

    .line 28
    :cond_1b
    return-object v0
.end method

.method private parseIcon(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private parseInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    const-string p1, ""

    .line 9
    return-object p1

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f11012a

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_22

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_38

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_35

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_38
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_4e

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_4b

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_4b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method private parseType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategory(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileCategoryName(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/provider/SearchExportProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    const-string p1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string v1, "Unsupported URI: "

    .line 16
    invoke-static {v1, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public onCreate()Z
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/provider/SearchExportProvider;->mDataUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 8
    const/4 v0, 0x1

    .line 9
    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 1
    sget-object p2, Lcom/android/fileexplorer/provider/SearchExportProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_33

    .line 9
    if-eqz p4, :cond_27

    .line 11
    const/4 p2, 0x0

    .line 12
    aget-object p3, p4, p2

    .line 14
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    move-result-object p3

    .line 18
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result p3

    .line 22
    if-nez p3, :cond_33

    .line 24
    new-instance p1, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;

    .line 26
    aget-object p2, p4, p2

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/provider/SearchExportProvider;->getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;-><init>(Lcom/android/fileexplorer/provider/SearchExportProvider;Landroid/database/Cursor;)V

    .line 39
    return-object p1

    .line 40
    :cond_27
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 42
    const-string p3, "selectionArgs must be provided for the Uri: "

    .line 44
    invoke-static {p3, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p2

    .line 52
    :cond_33
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string p3, "Unsupported URI: "

    .line 56
    invoke-static {p3, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method
