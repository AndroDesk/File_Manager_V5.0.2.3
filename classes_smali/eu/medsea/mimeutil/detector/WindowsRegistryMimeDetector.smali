.class public Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;
.super Leu/medsea/mimeutil/detector/MimeDetector;
.source "WindowsRegistryMimeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "\"Content Type\""

.field private static final REG_QUERY:Ljava/lang/String; = "reg query "

.field private static final isWindows:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "os.name"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Windows"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    sput-boolean v0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;->isWindows:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    .line 4
    return-void
.end method

.method private getContentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_56

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ge v1, v2, :cond_b

    .line 11
    goto :goto_56

    .line 12
    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/StringBuffer;

    .line 14
    const-string v2, "reg query \"HKEY_CLASSES_ROOT\\."

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    const-string p1, "\" /v "

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    const-string p1, "\"Content Type\""

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 43
    move-result-object p1

    .line 44
    new-instance v1, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, v2}, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;-><init>(Ljava/io/InputStream;)V

    .line 53
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    .line 59
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 62
    invoke-virtual {v1}, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->getResult()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    const-string v1, "REG_SZ"

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 71
    move-result v1

    .line 72
    const/4 v2, -0x1

    .line 73
    if-ne v1, v2, :cond_4b

    .line 75
    return-object v0

    .line 76
    :cond_4b
    add-int/lit8 v1, v1, 0x6

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    move-result-object p1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_55} :catch_56

    .line 86
    return-object p1

    .line 87
    :catch_56
    :cond_56
    :goto_56
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "Get the MIME types of file extensions from the Windows Registry. Will be inafective on non-Windows machines."

    return-object v0
.end method

.method public getMimeTypesByteArray([B)Ljava/util/Collection;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "WindowsRegistryMimeDetector does not support detection from byte arrays."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;->getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;

    .line 12
    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 13
    return-object p1

    .line 14
    :catch_d
    move-exception p1

    .line 15
    new-instance v0, Leu/medsea/mimeutil/MimeException;

    .line 17
    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    throw v0
.end method

.method public getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;->getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "WindowsRegistryMimeDetector does not support detection from InputStreams."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-boolean v1, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;->isWindows:Z

    .line 8
    if-nez v1, :cond_a

    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_26

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    move-result v1

    .line 29
    if-lez v1, :cond_26

    .line 31
    new-instance v1, Leu/medsea/mimeutil/MimeType;

    .line 33
    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_26
    return-object v0
.end method
