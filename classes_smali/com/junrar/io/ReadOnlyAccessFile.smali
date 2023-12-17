.class public Lcom/junrar/io/ReadOnlyAccessFile;
.super Ljava/io/RandomAccessFile;
.source "ReadOnlyAccessFile.java"

# interfaces
.implements Lcom/junrar/io/IReadOnlyAccess;


# static fields
.field public static final synthetic $assertionsDisabled:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/junrar/io/ReadOnlyAccessFile;

    .line 3
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 1
    const-string v0, "r"

    .line 3
    invoke-direct {p0, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getPosition()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public readFully([BI)I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 5
    return p2
.end method

.method public setPosition(J)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    return-void
.end method
