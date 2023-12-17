.class public Lcom/android/fileexplorer/provider/LazyFileProvider;
.super Landroid/content/ContentProvider;
.source "LazyFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/provider/LazyFileProvider$SimplePathStrategy;,
        Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"

.field private static final TAG:Ljava/lang/String; = "LazyFileProvider"

.field private static final TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"

.field private static final TAG_EXTERNAL:Ljava/lang/String; = "external-path"

.field private static final TAG_EXTERNAL_CACHE:Ljava/lang/String; = "external-cache-path"

.field private static final TAG_EXTERNAL_FILES:Ljava/lang/String; = "external-files-path"

.field private static final TAG_FILES_PATH:Ljava/lang/String; = "files-path"

.field private static final TAG_ROOT_PATH:Ljava/lang/String; = "root-path"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mStrategy:Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "_display_name"

    .line 3
    const-string v1, "_size"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/fileexplorer/provider/LazyFileProvider;->COLUMNS:[Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/io/File;

    .line 13
    const-string v1, "/"

    .line 15
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    sput-object v0, Lcom/android/fileexplorer/provider/LazyFileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    sput-object v0, Lcom/android/fileexplorer/provider/LazyFileProvider;->sCache:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_11

    .line 5
    aget-object v2, p1, v1

    .line 7
    if-eqz v2, :cond_e

    .line 9
    new-instance v3, Ljava/io/File;

    .line 11
    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    move-object p0, v3

    .line 15
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 17
    goto :goto_2

    .line 18
    :cond_11
    return-object p0
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4

    .line 3
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    .line 1
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getPathStrategy()Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/provider/LazyFileProvider;->mStrategy:Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/provider/LazyFileProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/provider/LazyFileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/provider/LazyFileProvider;->mStrategy:Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;

    return-object v0
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;
    .registers 4

    .line 3
    sget-object v0, Lcom/android/fileexplorer/provider/LazyFileProvider;->sCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/provider/LazyFileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    if-nez v1, :cond_29

    .line 5
    :try_start_d
    invoke-static {p0, p1}, Lcom/android/fileexplorer/provider/LazyFileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_11} :catch_17
    .catchall {:try_start_d .. :try_end_11} :catchall_2b

    .line 6
    :try_start_11
    sget-object p0, Lcom/android/fileexplorer/provider/LazyFileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :catch_17
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_20
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 9
    :cond_29
    :goto_29
    monitor-exit v0

    return-object v1

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/provider/LazyFileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p2}, Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .registers 3

    .line 1
    const-string v0, "r"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    const/high16 p0, 0x10000000

    .line 11
    goto :goto_4b

    .line 12
    :cond_b
    const-string v0, "w"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_49

    .line 20
    const-string v0, "wt"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 28
    goto :goto_49

    .line 29
    :cond_1c
    const-string v0, "wa"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_27

    .line 37
    const/high16 p0, 0x2a000000

    .line 39
    goto :goto_4b

    .line 40
    :cond_27
    const-string v0, "rw"

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_32

    .line 48
    const/high16 p0, 0x38000000

    .line 50
    goto :goto_4b

    .line 51
    :cond_32
    const-string v0, "rwt"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3d

    .line 59
    const/high16 p0, 0x3c000000  # 0.0078125f

    .line 61
    goto :goto_4b

    .line 62
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    const-string v1, "Invalid mode: "

    .line 66
    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw v0

    .line 74
    :cond_49
    :goto_49
    const/high16 p0, 0x2c000000

    .line 76
    :goto_4b
    return p0
.end method

.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;
    .registers 10

    .line 1
    new-instance v0, Lcom/android/fileexplorer/provider/LazyFileProvider$SimplePathStrategy;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/fileexplorer/provider/LazyFileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v1

    .line 10
    const/16 v2, 0x80

    .line 12
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_a5

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object p1

    .line 22
    const-string v2, "android.support.FILE_PROVIDER_PATHS"

    .line 24
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_9d

    .line 30
    :cond_1d
    :goto_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    if-eq v1, v2, :cond_9c

    .line 37
    const/4 v3, 0x2

    .line 38
    if-ne v1, v3, :cond_1d

    .line 40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    const/4 v3, 0x0

    .line 45
    const-string v4, "name"

    .line 47
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    const-string v5, "path"

    .line 53
    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    const-string v6, "root-path"

    .line 59
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v6

    .line 63
    const/4 v7, 0x0

    .line 64
    if-eqz v6, :cond_44

    .line 66
    sget-object v3, Lcom/android/fileexplorer/provider/LazyFileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 68
    goto :goto_8e

    .line 69
    :cond_44
    const-string v6, "files-path"

    .line 71
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_51

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 80
    move-result-object v3

    .line 81
    goto :goto_8e

    .line 82
    :cond_51
    const-string v6, "cache-path"

    .line 84
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_5e

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 93
    move-result-object v3

    .line 94
    goto :goto_8e

    .line 95
    :cond_5e
    const-string v6, "external-path"

    .line 97
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_6b

    .line 103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 106
    move-result-object v3

    .line 107
    goto :goto_8e

    .line 108
    :cond_6b
    const-string v6, "external-files-path"

    .line 110
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_7d

    .line 116
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    .line 119
    move-result-object v1

    .line 120
    array-length v6, v1

    .line 121
    if-lez v6, :cond_8e

    .line 123
    aget-object v3, v1, v7

    .line 125
    goto :goto_8e

    .line 126
    :cond_7d
    const-string v6, "external-cache-path"

    .line 128
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_8e

    .line 134
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    .line 137
    move-result-object v1

    .line 138
    array-length v6, v1

    .line 139
    if-lez v6, :cond_8e

    .line 141
    aget-object v3, v1, v7

    .line 143
    :cond_8e
    :goto_8e
    if-eqz v3, :cond_1d

    .line 145
    new-array v1, v2, [Ljava/lang/String;

    .line 147
    aput-object v5, v1, v7

    .line 149
    invoke-static {v3, v1}, Lcom/android/fileexplorer/provider/LazyFileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v4, v1}, Lcom/android/fileexplorer/provider/LazyFileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V

    .line 156
    goto :goto_1d

    .line 157
    :cond_9c
    return-object v0

    .line 158
    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 160
    const-string p1, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    .line 162
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    throw p0

    .line 166
    :cond_a5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 168
    const-string v0, "Try to resolve provider "

    .line 170
    const-string v1, " failed!"

    .line 172
    invoke-static {v0, p1, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 179
    throw p0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 4
    iget-boolean p1, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 6
    if-nez p1, :cond_1b

    .line 8
    iget-boolean p1, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 10
    if-eqz p1, :cond_13

    .line 12
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/android/fileexplorer/provider/LazyFileProvider;->mAuthority:Ljava/lang/String;

    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/android/fileexplorer/provider/LazyFileProvider;->mStrategy:Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;

    .line 19
    return-void

    .line 20
    :cond_13
    new-instance p1, Ljava/lang/SecurityException;

    .line 22
    const-string p2, "Provider must grant uri permissions"

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/SecurityException;

    .line 30
    const-string p2, "Provider must not be exported"

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/provider/LazyFileProvider;->getPathStrategy()Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;

    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2, p1}, Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/provider/LazyFileProvider;->getPathStrategy()Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x2e

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 18
    move-result v0

    .line 19
    if-ltz v0, :cond_29

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_29

    .line 41
    return-object p1

    .line 42
    :cond_29
    const-string p1, "application/octet-stream"

    .line 44
    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string p2, "No external inserts"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/provider/LazyFileProvider;->getPathStrategy()Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2}, Lcom/android/fileexplorer/provider/LazyFileProvider;->modeToMode(Ljava/lang/String;)I

    .line 12
    move-result p2

    .line 13
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/provider/LazyFileProvider;->getPathStrategy()Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;

    .line 4
    move-result-object p3

    .line 5
    invoke-interface {p3, p1}, Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 8
    move-result-object p1

    .line 9
    if-nez p2, :cond_c

    .line 11
    sget-object p2, Lcom/android/fileexplorer/provider/LazyFileProvider;->COLUMNS:[Ljava/lang/String;

    .line 13
    :cond_c
    array-length p3, p2

    .line 14
    new-array p3, p3, [Ljava/lang/String;

    .line 16
    array-length p4, p2

    .line 17
    new-array p4, p4, [Ljava/lang/Object;

    .line 19
    array-length p5, p2

    .line 20
    const/4 v0, 0x0

    .line 21
    move v1, v0

    .line 22
    :goto_15
    if-ge v0, p5, :cond_47

    .line 24
    aget-object v2, p2, v0

    .line 26
    const-string v3, "_display_name"

    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_2d

    .line 34
    aput-object v3, p3, v1

    .line 36
    add-int/lit8 v2, v1, 0x1

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    aput-object v3, p4, v1

    .line 44
    :goto_2b
    move v1, v2

    .line 45
    goto :goto_44

    .line 46
    :cond_2d
    const-string v3, "_size"

    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_44

    .line 54
    aput-object v3, p3, v1

    .line 56
    add-int/lit8 v2, v1, 0x1

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 61
    move-result-wide v3

    .line 62
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    move-result-object v3

    .line 66
    aput-object v3, p4, v1

    .line 68
    goto :goto_2b

    .line 69
    :cond_44
    :goto_44
    add-int/lit8 v0, v0, 0x1

    .line 71
    goto :goto_15

    .line 72
    :cond_47
    invoke-static {p3, v1}, Lcom/android/fileexplorer/provider/LazyFileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-static {p4, v1}, Lcom/android/fileexplorer/provider/LazyFileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 79
    move-result-object p2

    .line 80
    new-instance p3, Landroid/database/MatrixCursor;

    .line 82
    const/4 p4, 0x1

    .line 83
    invoke-direct {p3, p1, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 86
    invoke-virtual {p3, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 89
    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string p2, "No external updates"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
