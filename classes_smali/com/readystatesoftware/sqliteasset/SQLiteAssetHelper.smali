.class public Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteAssetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper$SQLiteAssetException;
    }
.end annotation


# static fields
.field private static final ASSET_DB_PATH:Ljava/lang/String; = "databases"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAssetPath:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabasePath:Ljava/lang/String;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mForcedUpgradeVersion:I

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I

.field private mUpgradePathFormat:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;

    .line 3
    const-string v0, "SQLiteAssetHelper"

    .line 5
    sput-object v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 4
    iput v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mForcedUpgradeVersion:I

    const/4 v0, 0x1

    if-lt p5, v0, :cond_49

    if-eqz p2, :cond_41

    .line 5
    iput-object p1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 8
    iput p5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    const-string p4, "databases/"

    .line 9
    invoke-static {p4, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 10
    iput-object p5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mAssetPath:Ljava/lang/String;

    if-eqz p3, :cond_25

    .line 11
    iput-object p3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabasePath:Ljava/lang/String;

    goto :goto_38

    .line 12
    :cond_25
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string p5, "/databases"

    .line 13
    invoke-static {p3, p1, p5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabasePath:Ljava/lang/String;

    :goto_38
    const-string p1, "_upgrade_%s-%s.sql"

    .line 15
    invoke-static {p4, p2, p1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mUpgradePathFormat:Ljava/lang/String;

    return-void

    .line 17
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Database name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Version must be >= 1, was "

    .line 19
    invoke-static {p2, p5}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private copyDatabaseFromAssets()V
    .registers 8

    .line 1
    sget-object v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "copying database from assets..."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mAssetPath:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabasePath:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "/"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const/4 v3, 0x0

    .line 35
    :try_start_22
    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 44
    move-result-object v0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_2d

    .line 45
    goto :goto_65

    .line 46
    :catch_2d
    :try_start_2d
    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 51
    move-result-object v4

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v6, ".zip"

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 72
    move-result-object v0
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_48} :catch_4a

    .line 73
    const/4 v3, 0x1

    .line 74
    goto :goto_65

    .line 75
    :catch_4a
    :try_start_4a
    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 80
    move-result-object v4

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v0, ".gz"

    .line 91
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 101
    move-result-object v0
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_65} :catch_c3

    .line 102
    :goto_65
    :try_start_65
    new-instance v4, Ljava/io/File;

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    iget-object v6, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabasePath:Ljava/lang/String;

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 121
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_84

    .line 130
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 133
    :cond_84
    if-eqz v3, :cond_9d

    .line 135
    invoke-static {v0}, Lcom/readystatesoftware/sqliteasset/Utils;->getFileFromZip(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;

    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_95

    .line 141
    new-instance v2, Ljava/io/FileOutputStream;

    .line 143
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v0, v2}, Lcom/readystatesoftware/sqliteasset/Utils;->writeExtractedFileToDisk(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 149
    goto :goto_a5

    .line 150
    :cond_95
    new-instance v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper$SQLiteAssetException;

    .line 152
    const-string v2, "Archive is missing a SQLite database file"

    .line 154
    invoke-direct {v0, v2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper$SQLiteAssetException;-><init>(Ljava/lang/String;)V

    .line 157
    throw v0

    .line 158
    :cond_9d
    new-instance v2, Ljava/io/FileOutputStream;

    .line 160
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {v0, v2}, Lcom/readystatesoftware/sqliteasset/Utils;->writeExtractedFileToDisk(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 166
    :goto_a5
    sget-object v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 168
    const-string v2, "database copy complete"

    .line 170
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_ac} :catch_ad

    .line 173
    return-void

    .line 174
    :catch_ad
    move-exception v0

    .line 175
    new-instance v2, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper$SQLiteAssetException;

    .line 177
    const-string v3, "Unable to write "

    .line 179
    const-string v4, " to data directory"

    .line 181
    invoke-static {v3, v1, v4}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object v1

    .line 185
    invoke-direct {v2, v1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper$SQLiteAssetException;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 195
    throw v2

    .line 196
    :catch_c3
    move-exception v0

    .line 197
    new-instance v1, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper$SQLiteAssetException;

    .line 199
    const-string v2, "Missing "

    .line 201
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    move-result-object v2

    .line 205
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mAssetPath:Ljava/lang/String;

    .line 207
    const-string v4, " file (or .zip, .gz archive) in assets, or target folder not writable"

    .line 209
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    move-result-object v2

    .line 213
    invoke-direct {v1, v2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper$SQLiteAssetException;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 223
    throw v1
.end method

.method private createOrOpenDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .line 1
    if-eqz p1, :cond_11

    .line 3
    sget-object p1, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 5
    const-string v0, "forcing database upgrade!"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->copyDatabaseFromAssets()V

    .line 13
    invoke-direct {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->returnDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_43

    .line 18
    :cond_11
    new-instance p1, Ljava/io/File;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabasePath:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "/"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_39

    .line 53
    invoke-direct {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->returnDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    move-result-object p1

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    const/4 p1, 0x0

    .line 59
    :goto_3a
    if-nez p1, :cond_43

    .line 61
    invoke-direct {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->copyDatabaseFromAssets()V

    .line 64
    invoke-direct {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->returnDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    move-result-object p1

    .line 68
    :cond_43
    :goto_43
    return-object p1
.end method

.method private getUpgradeFilePaths(IIILjava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getUpgradeSQLStream(II)Ljava/io/InputStream;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_23

    .line 7
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mUpgradePathFormat:Ljava/lang/String;

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    aput-object v3, v1, v2

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p3

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object p3, v1, v2

    .line 26
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 p3, p2, -0x1

    .line 35
    goto :goto_28

    .line 36
    :cond_23
    add-int/lit8 p2, p2, -0x1

    .line 38
    move v4, p3

    .line 39
    move p3, p2

    .line 40
    move p2, v4

    .line 41
    :goto_28
    if-ge p3, p1, :cond_2b

    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getUpgradeFilePaths(IIILjava/util/ArrayList;)V

    .line 47
    return-void
.end method

.method private getUpgradeSQLStream(II)Ljava/io/InputStream;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mUpgradePathFormat:Ljava/lang/String;

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p1, v1, v2

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x1

    .line 18
    aput-object p1, v1, p2

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    :try_start_17
    iget-object p2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 33
    move-result-object p1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_22

    .line 34
    return-object p1

    .line 35
    :catch_22
    sget-object p2, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v1, "missing database upgrade script: "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 p1, 0x0

    .line 58
    return-object p1
.end method

.method private returnDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabasePath:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "/"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v3, "successfully opened database "

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_37} :catch_38

    .line 56
    return-object v0

    .line 57
    :catch_38
    move-exception v0

    .line 58
    sget-object v1, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 60
    const-string v2, "could not open database "

    .line 62
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v3, " - "

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    .line 91
    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 4
    if-nez v0, :cond_19

    .line 6
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    if-eqz v0, :cond_17

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_17

    .line 16
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    .line 24
    :cond_17
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    const-string v1, "Closed during initialization"

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    .line 34
    :catchall_21
    move-exception v0

    .line 35
    monitor-exit p0

    .line 36
    throw v0
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    if-eqz v0, :cond_f

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_f

    .line 12
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_c1

    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :cond_f
    :try_start_f
    iget-boolean v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_c1

    .line 18
    if-nez v0, :cond_b9

    .line 20
    :try_start_13
    invoke-virtual {p0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    move-result-object v0
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_17} :catch_19
    .catchall {:try_start_13 .. :try_end_17} :catchall_c1

    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :catch_19
    move-exception v0

    .line 27
    :try_start_1a
    iget-object v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 29
    if-eqz v1, :cond_b8

    .line 31
    sget-object v1, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v3, "Couldn\'t open "

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, " for writing (will try read-only):"

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_c1

    .line 60
    const/4 v0, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x1

    .line 63
    :try_start_3e
    iput-boolean v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 65
    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    .line 67
    iget-object v5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 69
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    iget-object v5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 79
    invoke-static {v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 86
    move-result v3

    .line 87
    iget v5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    .line 89
    if-ne v3, v5, :cond_7e

    .line 91
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v4, "Opened "

    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v4, " in read-only mode"

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 118
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7a
    .catchall {:try_start_3e .. :try_end_7a} :catchall_ab

    .line 123
    :try_start_7a
    iput-boolean v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z
    :try_end_7c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_c1

    .line 125
    monitor-exit p0

    .line 126
    return-object v0

    .line 127
    :cond_7e
    :try_start_7e
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string v5, "Can\'t upgrade read-only database from version "

    .line 136
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 142
    move-result v5

    .line 143
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v5, " to "

    .line 148
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget v5, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    .line 153
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v5, ": "

    .line 158
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 168
    invoke-direct {v1, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 171
    throw v1
    :try_end_ab
    .catchall {:try_start_7e .. :try_end_ab} :catchall_ab

    .line 172
    :catchall_ab
    move-exception v1

    .line 173
    :try_start_ac
    iput-boolean v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 175
    if-eqz v0, :cond_b7

    .line 177
    iget-object v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 179
    if-eq v0, v2, :cond_b7

    .line 181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 184
    :cond_b7
    throw v1

    .line 185
    :cond_b8
    throw v0

    .line 186
    :cond_b9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 188
    const-string v1, "getReadableDatabase called recursively"

    .line 190
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 193
    throw v0
    :try_end_c1
    .catchall {:try_start_ac .. :try_end_c1} :catchall_c1

    .line 194
    :catchall_c1
    move-exception v0

    .line 195
    monitor-exit p0

    .line 196
    throw v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    if-eqz v0, :cond_17

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_17

    .line 12
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_17

    .line 20
    iget-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_101

    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :cond_17
    :try_start_17
    iget-boolean v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_101

    .line 26
    if-nez v0, :cond_f9

    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    :try_start_1e
    iput-boolean v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 33
    invoke-direct {p0, v1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->createOrOpenDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_5a

    .line 43
    iget v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mForcedUpgradeVersion:I
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_f0

    .line 45
    if-ge v3, v4, :cond_5a

    .line 47
    :try_start_2e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32
    .catchall {:try_start_2e .. :try_end_31} :catchall_f0

    .line 50
    goto :goto_4d

    .line 51
    :catch_32
    move-exception v3

    .line 52
    :try_start_33
    sget-object v4, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v6, "close db error "

    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_4d
    invoke-direct {p0, v2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->createOrOpenDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    move-result-object v0

    .line 82
    iget v3, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    .line 84
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 90
    move-result v3

    .line 91
    :cond_5a
    iget v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    .line 93
    const/4 v5, -0x1

    .line 94
    if-ge v3, v4, :cond_b2

    .line 96
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_62
    .catchall {:try_start_33 .. :try_end_62} :catchall_f0

    .line 99
    if-nez v3, :cond_68

    .line 101
    :try_start_64
    invoke-virtual {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    goto :goto_9d

    .line 105
    :cond_68
    iget v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    .line 107
    if-le v3, v4, :cond_98

    .line 109
    sget-object v4, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string v7, "Can\'t downgrade read-only database from version "

    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v7, " to "

    .line 126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v7, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v7, ": "

    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v6

    .line 150
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_98
    iget v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    .line 155
    invoke-virtual {p0, v0, v3, v4}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 158
    :goto_9d
    iget v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    .line 160
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 163
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a5
    .catch Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper$SQLiteAssetException; {:try_start_64 .. :try_end_a5} :catch_ae
    .catchall {:try_start_64 .. :try_end_a5} :catchall_a9

    .line 166
    :try_start_a5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    goto :goto_b2

    .line 170
    :catchall_a9
    move-exception v2

    .line 171
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 174
    throw v2

    .line 175
    :catch_ae
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    move v3, v5

    .line 179
    :cond_b2
    :goto_b2
    iget v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I
    :try_end_b4
    .catchall {:try_start_a5 .. :try_end_b4} :catchall_f0

    .line 181
    if-gt v3, v4, :cond_b8

    .line 183
    if-ne v3, v5, :cond_e0

    .line 185
    :cond_b8
    :try_start_b8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bc
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_f0

    .line 188
    goto :goto_d7

    .line 189
    :catch_bc
    move-exception v3

    .line 190
    :try_start_bd
    sget-object v4, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    const-string v6, "close db error "

    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v3

    .line 213
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_d7
    invoke-direct {p0, v2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->createOrOpenDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    .line 219
    move-result-object v0

    .line 220
    iget v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    .line 222
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 225
    :cond_e0
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_e3
    .catchall {:try_start_bd .. :try_end_e3} :catchall_f0

    .line 228
    :try_start_e3
    iput-boolean v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 230
    iget-object v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_e7
    .catchall {:try_start_e3 .. :try_end_e7} :catchall_101

    .line 232
    if-eqz v1, :cond_ec

    .line 234
    :try_start_e9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_101

    .line 237
    :catch_ec
    :cond_ec
    :try_start_ec
    iput-object v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_ee
    .catchall {:try_start_ec .. :try_end_ee} :catchall_101

    .line 239
    monitor-exit p0

    .line 240
    return-object v0

    .line 241
    :catchall_f0
    move-exception v2

    .line 242
    :try_start_f1
    iput-boolean v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mIsInitializing:Z

    .line 244
    if-eqz v0, :cond_f8

    .line 246
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 249
    :cond_f8
    throw v2

    .line 250
    :cond_f9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 252
    const-string v1, "getWritableDatabase called recursively"

    .line 254
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 257
    throw v0
    :try_end_101
    .catchall {:try_start_f1 .. :try_end_101} :catchall_101

    .line 258
    :catchall_101
    move-exception v0

    .line 259
    monitor-exit p0

    .line 260
    throw v0
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 11

    .line 1
    sget-object v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "Upgrading database "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, " from version "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v3, " to "

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v4, "..."

    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    add-int/lit8 v4, p3, -0x1

    .line 49
    invoke-direct {p0, p2, v4, p3, v1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getUpgradeFilePaths(IIILjava/util/ArrayList;)V

    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_c1

    .line 58
    new-instance v0, Lcom/readystatesoftware/sqliteasset/VersionComparator;

    .line 60
    invoke-direct {v0}, Lcom/readystatesoftware/sqliteasset/VersionComparator;-><init>()V

    .line 63
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v0

    .line 70
    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_a0

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/String;

    .line 82
    :try_start_51
    sget-object v4, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v6, "processing upgrade: "

    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v5

    .line 101
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v4, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 113
    move-result-object v1

    .line 114
    invoke-static {v1}, Lcom/readystatesoftware/sqliteasset/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_45

    .line 120
    const/16 v4, 0x3b

    .line 122
    invoke-static {v1, v4}, Lcom/readystatesoftware/sqliteasset/Utils;->splitSqlScript(Ljava/lang/String;C)Ljava/util/List;

    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object v1

    .line 130
    :cond_81
    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_45

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Ljava/lang/String;

    .line 142
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 149
    move-result v5

    .line 150
    if-lez v5, :cond_81

    .line 152
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_9a} :catch_9b

    .line 155
    goto :goto_81

    .line 156
    :catch_9b
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    goto :goto_45

    .line 161
    :cond_a0
    sget-object p1, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->TAG:Ljava/lang/String;

    .line 163
    const-string v0, "Successfully upgraded database "

    .line 165
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mName:Ljava/lang/String;

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p2

    .line 190
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 194
    :cond_c1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    const-string v1, "no upgrade script path from "

    .line 201
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p1

    .line 217
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance p1, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper$SQLiteAssetException;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object p2

    .line 243
    invoke-direct {p1, p2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper$SQLiteAssetException;-><init>(Ljava/lang/String;)V

    .line 246
    throw p1
.end method

.method public setForcedUpgrade()V
    .registers 2

    .line 2
    iget v0, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mNewVersion:I

    invoke-virtual {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->setForcedUpgrade(I)V

    return-void
.end method

.method public setForcedUpgrade(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->mForcedUpgradeVersion:I

    return-void
.end method

.method public setForcedUpgradeVersion(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->setForcedUpgrade(I)V

    .line 4
    return-void
.end method
