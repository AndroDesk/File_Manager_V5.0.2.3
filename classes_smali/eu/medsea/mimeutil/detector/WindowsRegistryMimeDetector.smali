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

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;->isWindows:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    return-void
.end method

.method private getContentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_b

    goto :goto_56

    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "reg query \"HKEY_CLASSES_ROOT\\."

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\" /v "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\"Content Type\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    new-instance v1, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    invoke-virtual {v1}, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->getResult()Ljava/lang/String;

    move-result-object p1

    const-string v1, "REG_SZ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4b

    return-object v0

    :cond_4b
    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_55} :catch_56

    return-object p1

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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "WindowsRegistryMimeDetector does not support detection from byte arrays."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;->getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    new-instance v0, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;->getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "WindowsRegistryMimeDetector does not support detection from InputStreams."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;->isWindows:Z

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    new-instance v1, Leu/medsea/mimeutil/MimeType;

    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    return-object v0
.end method
