.class Lmiuix/core/util/DirectIndexedFile$DataInputRandom;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"

# interfaces
.implements Lmiuix/core/util/DirectIndexedFile$InputFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataInputRandom"
.end annotation


# instance fields
.field private mFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 6
    return-void
.end method

.method public getFilePointer()J
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public readBoolean()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readByte()B
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readChar()C
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readChar()C

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readDouble()D
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public readFloat()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readFloat()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readFully([B)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-void
.end method

.method public readFully([BII)V
    .registers 5

    .line 2
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-void
.end method

.method public readInt()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public readLong()J
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public readShort()S
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readShort()S

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public readUnsignedByte()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readUnsignedShort()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public seek(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    return-void
.end method

.method public skipBytes(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method
