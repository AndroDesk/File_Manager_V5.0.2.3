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

    const-class v0, Lcom/junrar/io/ReadOnlyAccessFile;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const-string v0, "r"

    invoke-direct {p0, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPosition()J
    .registers 3

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([BI)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return p2
.end method

.method public setPosition(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method
