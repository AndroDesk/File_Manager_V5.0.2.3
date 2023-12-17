.class public Lmiui/cloud/common/DumpFileProvider;
.super Landroid/content/ContentProvider;
.source "DumpFileProvider.java"


# static fields
.field public static final DUMP_FILE_DIR:Ljava/lang/String; = "dump"

.field private static final METHOD_GET_DUMP_FILE_PATHS:Ljava/lang/String; = "getDumpFilePaths"

.field private static final RESULT_GET_DUMP_FILE_PATHS:Ljava/lang/String; = "dumpFilePaths"

.field private static final TAG:Ljava/lang/String; = "DumpFileProvider"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    return-void
.end method

.method private walkAndGetRelativePaths(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_21

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    const-string v0, ""

    .line 14
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string p2, "/"

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1d

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    :cond_1d
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_54

    .line 34
    :cond_21
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v0, :cond_37

    .line 41
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 44
    move-result-object p2

    .line 45
    array-length v0, p2

    .line 46
    :goto_2d
    if-ge v2, v0, :cond_54

    .line 48
    aget-object v1, p2, v2

    .line 50
    invoke-direct {p0, p1, v1, p3}, Lmiui/cloud/common/DumpFileProvider;->walkAndGetRelativePaths(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)V

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_2d

    .line 56
    :cond_37
    const/4 p1, 0x2

    .line 57
    new-array p1, p1, [Ljava/lang/Object;

    .line 59
    const-string p3, "DumpFileProvider"

    .line 61
    aput-object p3, p1, v2

    .line 63
    const-string p3, "file is neither a normal file nor a directory: "

    .line 65
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p2

    .line 80
    aput-object p2, p1, v1

    .line 82
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 85
    :cond_54
    :goto_54
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p2

    .line 5
    const-string p3, "getDumpFilePaths"

    .line 7
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_27

    .line 13
    invoke-virtual {p0, p2}, Lmiui/cloud/common/DumpFileProvider;->getDumpRootFile(Landroid/content/Context;)Ljava/io/File;

    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 25
    move-result-object p3

    .line 26
    invoke-direct {p0, p3, p1, p2}, Lmiui/cloud/common/DumpFileProvider;->walkAndGetRelativePaths(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)V

    .line 29
    new-instance p1, Landroid/os/Bundle;

    .line 31
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string p3, "dumpFilePaths"

    .line 36
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    return-object p1

    .line 40
    :cond_27
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public getDumpRootFile(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    const-string v1, "dump"

    .line 9
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p2}, Lmiui/cloud/common/DumpFileProvider;->getDumpRootFile(Landroid/content/Context;)Ljava/io/File;

    .line 20
    move-result-object p2

    .line 21
    new-instance v1, Ljava/io/File;

    .line 23
    invoke-direct {v1, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    :try_start_19
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_2e

    .line 40
    const/high16 p1, 0x10000000

    .line 42
    invoke-static {v1, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_2e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v2, "illegal path "

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p2
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_45} :catch_45

    .line 70
    :catch_45
    move-exception p1

    .line 71
    const/4 p2, 0x3

    .line 72
    new-array p2, p2, [Ljava/lang/Object;

    .line 74
    const/4 v1, 0x0

    .line 75
    const-string v2, "DumpFileProvider"

    .line 77
    aput-object v2, p2, v1

    .line 79
    const/4 v1, 0x1

    .line 80
    const-string v2, " getCanonicalPath failed "

    .line 82
    aput-object v2, p2, v1

    .line 84
    const/4 v1, 0x2

    .line 85
    aput-object p1, p2, v1

    .line 87
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 90
    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
