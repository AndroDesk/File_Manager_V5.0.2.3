.class public final Lorg/jaudiotagger/audio/asf/io/RandomAccessFileOutputStream;
.super Ljava/io/OutputStream;
.source "RandomAccessFileOutputStream.java"


# instance fields
.field private final targetFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileOutputStream;->targetFile:Ljava/io/RandomAccessFile;

    .line 6
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileOutputStream;->targetFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileOutputStream;->targetFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
