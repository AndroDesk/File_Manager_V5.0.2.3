.class Lcom/android/fileexplorer/search/MediaStoreSearchImpl;
.super Lcom/android/fileexplorer/search/SearchEngineAbs;
.source "MediaStoreSearchImpl.java"


# static fields
.field private static final FILECOLUMN_DATA_INDEX:I = 0x1

.field private static final SEARCH_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "searchengine"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "_id"

    .line 3
    const-string v1, "_data"

    .line 5
    const-string v2, "mime_type"

    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;->SEARCH_COLUMNS:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/search/SearchEngineAbs;-><init>()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public static create(J)Lcom/android/fileexplorer/search/MediaStoreSearchImpl;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;-><init>()V

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/android/fileexplorer/search/SearchEngineAbs;->addFilter(J)V

    .line 9
    return-object v0
.end method


# virtual methods
.method public search(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const-string p4, "searchengine"

    .line 13
    const-string v0, "start media store query"

    .line 15
    invoke-static {p4, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v1

    .line 24
    const-string v0, "external"

    .line 26
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;->SEARCH_COLUMNS:[Ljava/lang/String;

    .line 32
    const/4 v0, 0x2

    .line 33
    new-array v5, v0, [Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    .line 36
    aput-object p1, v5, v0

    .line 38
    const/4 v0, 0x1

    .line 39
    aput-object p1, v5, v0

    .line 41
    const-string v4, "((title LIKE \'%\' || ? || \'%\') OR (_data LIKE \'%\' || ? || \'%\')) AND (_data NOT LIKE \'%/.%\')"

    .line 43
    const-string v6, "date_modified DESC"

    .line 45
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 48
    move-result-object p1

    .line 49
    const-string v1, "end media store query selection:((title LIKE \'%\' || ? || \'%\') OR (_data LIKE \'%\' || ? || \'%\')) AND (_data NOT LIKE \'%/.%\')"

    .line 51
    invoke-static {p4, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p1, :cond_98

    .line 56
    :try_start_37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v2, "query result:"

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 69
    move-result v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-static {p4, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_6f

    .line 86
    :cond_55
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Ljava/io/File;

    .line 92
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    invoke-static {v2, v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTempFileItem(Ljava/lang/String;Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/FileItem;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_55

    .line 112
    :cond_6f
    const-string v0, "end media store traversal"

    .line 114
    invoke-static {p4, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_74} :catch_77
    .catchall {:try_start_37 .. :try_end_74} :catchall_75

    .line 117
    goto :goto_90

    .line 118
    :catchall_75
    move-exception p2

    .line 119
    goto :goto_94

    .line 120
    :catch_77
    move-exception v0

    .line 121
    :try_start_78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string v2, "search error: "

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    invoke-static {p4, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_75

    .line 145
    :goto_90
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 148
    goto :goto_98

    .line 149
    :goto_94
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    throw p2

    .line 153
    :cond_98
    :goto_98
    new-instance p1, Lcom/android/fileexplorer/search/SearchResult;

    .line 155
    const-class p4, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 157
    invoke-direct {p1, p3, p4}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 160
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-object p2
.end method

.method public searchCategory(Ljava/lang/String;IJ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public searchFolder(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_17

    .line 18
    const/4 p1, 0x0

    .line 19
    const-string v2, "((_display_name IS NOT NULL) AND (mime_type IS NULL)) AND (_data NOT LIKE \'%/.%\')"

    .line 21
    move-object v8, p1

    .line 22
    move-object v7, v2

    .line 23
    goto :goto_20

    .line 24
    :cond_17
    new-array v2, v3, [Ljava/lang/String;

    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object p1, v2, v4

    .line 29
    const-string p1, "((_display_name LIKE \'%\' || ? || \'%\') AND (mime_type IS NULL)) AND (_data NOT LIKE \'%/.%\')"

    .line 31
    move-object v7, p1

    .line 32
    move-object v8, v2

    .line 33
    :goto_20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v2, "start media store query folder selection:"

    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const-string v2, "searchengine"

    .line 52
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    move-result-object v4

    .line 61
    const-string p1, "external"

    .line 63
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 66
    move-result-object v5

    .line 67
    sget-object v6, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;->SEARCH_COLUMNS:[Ljava/lang/String;

    .line 69
    const-string v9, "date_modified DESC"

    .line 71
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_ba

    .line 77
    const-string v4, "end media store query folder :"

    .line 79
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v4

    .line 83
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 86
    move-result v5

    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v4

    .line 94
    invoke-static {v2, v4}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :try_start_60
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_91

    .line 103
    :cond_66
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    const-string v5, "/storage/emulated"

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_8b

    .line 115
    const-string v5, "/storage/emulated/0"

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_7b

    .line 123
    goto :goto_8b

    .line 124
    :cond_7b
    new-instance v5, Ljava/io/File;

    .line 126
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 133
    invoke-static {v5, v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getTempFileItem(Ljava/lang/String;Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/FileItem;

    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_8b
    :goto_8b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_66

    .line 146
    :cond_91
    const-string v3, "end media store traversal"

    .line 148
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_96} :catch_99
    .catchall {:try_start_60 .. :try_end_96} :catchall_97

    .line 151
    goto :goto_b2

    .line 152
    :catchall_97
    move-exception v0

    .line 153
    goto :goto_b6

    .line 154
    :catch_99
    move-exception v3

    .line 155
    :try_start_9a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    const-string v5, "search error: "

    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v3

    .line 176
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_9a .. :try_end_b2} :catchall_97

    .line 179
    :goto_b2
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    goto :goto_ba

    .line 183
    :goto_b6
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    throw v0

    .line 187
    :cond_ba
    :goto_ba
    new-instance p1, Lcom/android/fileexplorer/search/SearchResult;

    .line 189
    const-class v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 191
    invoke-direct {p1, v1, v2}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 194
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    return-object v0
.end method

.method public searchTag(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
