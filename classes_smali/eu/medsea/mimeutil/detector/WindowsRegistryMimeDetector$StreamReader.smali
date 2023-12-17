.class Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;
.super Ljava/lang/Thread;
.source "WindowsRegistryMimeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamReader"
.end annotation


# instance fields
.field private is:Ljava/io/InputStream;

.field private sw:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-object p1, p0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->is:Ljava/io/InputStream;

    .line 6
    new-instance p1, Ljava/io/StringWriter;

    .line 8
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 11
    iput-object p1, p0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->sw:Ljava/io/StringWriter;

    .line 13
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->sw:Ljava/io/StringWriter;

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public run()V
    .registers 3

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->is:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_a

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    iget-object v1, p0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->sw:Ljava/io/StringWriter;

    .line 13
    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    .line 16
    goto :goto_0

    .line 17
    :catch_10
    :goto_10
    return-void
.end method
