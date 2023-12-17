.class public Lmiuix/core/util/DirectIndexedFileExtractor;
.super Ljava/lang/Object;
.source "DirectIndexedFileExtractor.java"


# static fields
.field private static final IDF_DIR_NAME:Ljava/lang/String; = "idf"

.field public static IDF_FILES_PATH:Ljava/lang/String; = null

.field private static final IDF_FILE_EXT:Ljava/lang/String; = ".idf"

.field private static final TAG:Ljava/lang/String; = "DirectIndexedFileExt"

.field private static final TARGET_DIR_MODE:I = 0x1f9

.field private static final TARGET_FILE_MODE:I = 0x1b4

.field private static final TMP_FILE_NAME_POSTFIX:Ljava/lang/String; = "-tmp"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureIdfPath(Landroid/content/Context;)V
    .registers 5

    .line 1
    sget-object v0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_4e

    .line 5
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 13
    move-result-object p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_d} :catch_4a

    .line 14
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "createDeviceProtectedStorageContext"

    .line 20
    const/4 v2, 0x0

    .line 21
    new-array v3, v2, [Ljava/lang/Class;

    .line 23
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    move-result-object v0

    .line 27
    new-array v1, v2, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/content/Context;
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_22} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_22} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_22} :catch_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_22} :catch_4a

    .line 35
    move-object p0, v0

    .line 36
    :catch_23
    :try_start_23
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_4e

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string p0, "idf"

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    sput-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_49} :catch_4a

    .line 74
    goto :goto_4e

    .line 75
    :catch_4a
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :cond_4e
    :goto_4e
    sget-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    .line 81
    if-eqz p0, :cond_72

    .line 83
    new-instance p0, Ljava/io/File;

    .line 85
    sget-object v0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    .line 87
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_79

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_79

    .line 102
    :try_start_65
    sget-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    .line 104
    const/16 v0, 0x1f9

    .line 106
    invoke-static {p0, v0}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V
    :try_end_6c
    .catch Landroid/system/ErrnoException; {:try_start_65 .. :try_end_6c} :catch_6d

    .line 109
    goto :goto_79

    .line 110
    :catch_6d
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    goto :goto_79

    .line 115
    :cond_72
    const-string p0, "DirectIndexedFileExt"

    .line 117
    const-string v0, "Error: Cannot locate IDF_FILES_PATH"

    .line 119
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_79
    :goto_79
    return-void
.end method

.method public static getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFileExtractor;->ensureIdfPath(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    .line 6
    if-nez p0, :cond_9

    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    sget-object v0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 22
    invoke-static {p0, v0, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private static shouldOverwrite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_6
    invoke-virtual {p0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiuix/core/util/DirectIndexedFile$Reader;

    .line 14
    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_2c

    .line 15
    :try_start_e
    invoke-static {p2}, Lmiuix/core/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiuix/core/util/DirectIndexedFile$Reader;

    .line 18
    move-result-object p1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_24

    .line 19
    invoke-virtual {p0}, Lmiuix/core/util/DirectIndexedFile$Reader;->getDataVersion()I

    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1}, Lmiuix/core/util/DirectIndexedFile$Reader;->getDataVersion()I

    .line 26
    move-result v2

    .line 27
    if-le p2, v2, :cond_1d

    .line 29
    move v0, v1

    .line 30
    :cond_1d
    invoke-virtual {p0}, Lmiuix/core/util/DirectIndexedFile$Reader;->close()V

    .line 33
    invoke-virtual {p1}, Lmiuix/core/util/DirectIndexedFile$Reader;->close()V

    .line 36
    return v0

    .line 37
    :catch_24
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    invoke-virtual {p0}, Lmiuix/core/util/DirectIndexedFile$Reader;->close()V

    .line 44
    return v1

    .line 45
    :catch_2c
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    return v0
.end method
