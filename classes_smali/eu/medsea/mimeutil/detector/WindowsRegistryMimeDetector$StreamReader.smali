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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->is:Ljava/io/InputStream;

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    iput-object p1, p0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->sw:Ljava/io/StringWriter;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->sw:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_10

    :cond_a
    iget-object v1, p0, Leu/medsea/mimeutil/detector/WindowsRegistryMimeDetector$StreamReader;->sw:Ljava/io/StringWriter;

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_0

    :catch_10
    :goto_10
    return-void
.end method
