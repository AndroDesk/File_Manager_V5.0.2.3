.class Lcom/google/firebase/crashlytics/internal/log/QueueFile;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;,
        Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;,
        Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementInputStream;
    }
.end annotation


# static fields
.field public static final HEADER_LENGTH:I = 0x10

.field private static final INITIAL_LENGTH:I = 0x1000

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final buffer:[B

.field private elementCount:I

.field public fileLength:I

.field private first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

.field private last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

.field private final raf:Ljava/io/RandomAccessFile;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->LOGGER:Ljava/util/logging/Logger;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->initialize(Ljava/io/File;)V

    .line 5
    :cond_12
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 6
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readHeader()V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 9
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readHeader()V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/firebase/crashlytics/internal/log/QueueFile;I)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/firebase/crashlytics/internal/log/QueueFile;I[BII)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->ringRead(I[BII)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/crashlytics/internal/log/QueueFile;)Ljava/io/RandomAccessFile;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 3
    return-object p0
.end method

.method private expandIfNecessary(I)V
    .registers 12

    .line 1
    add-int/lit8 p1, p1, 0x4

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->remainingBytes()I

    .line 6
    move-result v0

    .line 7
    if-lt v0, p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 12
    :cond_b
    add-int/2addr v0, v1

    .line 13
    shl-int/lit8 v1, v1, 0x1

    .line 15
    if-lt v0, p1, :cond_b

    .line 17
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->setLength(I)V

    .line 20
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 22
    iget v0, p1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 24
    add-int/lit8 v0, v0, 0x4

    .line 26
    iget p1, p1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    .line 28
    add-int/2addr v0, p1

    .line 29
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    .line 32
    move-result p1

    .line 33
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 35
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 37
    if-ge p1, v0, :cond_4a

    .line 39
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 41
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 44
    move-result-object v7

    .line 45
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 47
    int-to-long v2, v0

    .line 48
    invoke-virtual {v7, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 51
    add-int/lit8 p1, p1, -0x4

    .line 53
    const-wide/16 v3, 0x10

    .line 55
    int-to-long v8, p1

    .line 56
    move-object v2, v7

    .line 57
    move-wide v5, v8

    .line 58
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 61
    move-result-wide v2

    .line 62
    cmp-long p1, v2, v8

    .line 64
    if-nez p1, :cond_42

    .line 66
    goto :goto_4a

    .line 67
    :cond_42
    new-instance p1, Ljava/lang/AssertionError;

    .line 69
    const-string v0, "Copied insufficient number of bytes!"

    .line 71
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 74
    throw p1

    .line 75
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 77
    iget p1, p1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 79
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 81
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 83
    if-ge p1, v0, :cond_6a

    .line 85
    iget v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 87
    add-int/2addr v2, p1

    .line 88
    add-int/lit8 v2, v2, -0x10

    .line 90
    iget p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 92
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeHeader(IIII)V

    .line 95
    new-instance p1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 97
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 99
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    .line 101
    invoke-direct {p1, v2, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;-><init>(II)V

    .line 104
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 106
    goto :goto_6f

    .line 107
    :cond_6a
    iget v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 109
    invoke-direct {p0, v1, v2, v0, p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeHeader(IIII)V

    .line 112
    :goto_6f
    iput v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 114
    return-void
.end method

.method private static initialize(Ljava/io/File;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ".tmp"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    .line 30
    move-result-object v1

    .line 31
    const-wide/16 v2, 0x1000

    .line 33
    :try_start_20
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 36
    const-wide/16 v2, 0x0

    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 41
    const/16 v2, 0x10

    .line 43
    new-array v2, v2, [B

    .line 45
    const/4 v3, 0x4

    .line 46
    new-array v3, v3, [I

    .line 48
    const/16 v4, 0x1000

    .line 50
    const/4 v5, 0x0

    .line 51
    aput v4, v3, v5

    .line 53
    const/4 v4, 0x1

    .line 54
    aput v5, v3, v4

    .line 56
    const/4 v4, 0x2

    .line 57
    aput v5, v3, v4

    .line 59
    const/4 v4, 0x3

    .line 60
    aput v5, v3, v4

    .line 62
    invoke-static {v2, v3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeInts([B[I)V

    .line 65
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_55

    .line 68
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 71
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_4d

    .line 77
    return-void

    .line 78
    :cond_4d
    new-instance p0, Ljava/io/IOException;

    .line 80
    const-string v0, "Rename failed!"

    .line 82
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0

    .line 86
    :catchall_55
    move-exception p0

    .line 87
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 90
    throw p0
.end method

.method private static nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_3

    .line 3
    return-object p0

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method private static open(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 3
    const-string v1, "rwd"

    .line 5
    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method private readElement(I)Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;
    .registers 5

    .line 1
    if-nez p1, :cond_5

    .line 3
    sget-object p1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->NULL:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 5
    return-object p1

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 8
    int-to-long v1, p1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 12
    new-instance v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 14
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 16
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, p1, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;-><init>(II)V

    .line 23
    return-object v0
.end method

.method private readHeader()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 10
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 12
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 15
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readInt([BI)I

    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 24
    int-to-long v0, v0

    .line 25
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 27
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    .line 30
    move-result-wide v2

    .line 31
    cmp-long v0, v0, v2

    .line 33
    if-gtz v0, :cond_48

    .line 35
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 37
    const/4 v1, 0x4

    .line 38
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readInt([BI)I

    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 44
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 46
    const/16 v1, 0x8

    .line 48
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readInt([BI)I

    .line 51
    move-result v0

    .line 52
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 54
    const/16 v2, 0xc

    .line 56
    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readInt([BI)I

    .line 59
    move-result v1

    .line 60
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readElement(I)Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 66
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readElement(I)Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 72
    return-void

    .line 73
    :cond_48
    new-instance v0, Ljava/io/IOException;

    .line 75
    const-string v1, "File is truncated. Expected length: "

    .line 77
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v1

    .line 81
    iget v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, ", Actual length: "

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 93
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    .line 96
    move-result-wide v2

    .line 97
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    throw v0
.end method

.method private static readInt([BI)I
    .registers 4

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 7
    add-int/lit8 v1, p1, 0x1

    .line 9
    aget-byte v1, p0, v1

    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 15
    add-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p1, 0x2

    .line 18
    aget-byte v1, p0, v1

    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 24
    add-int/2addr v0, v1

    .line 25
    add-int/lit8 p1, p1, 0x3

    .line 27
    aget-byte p0, p0, p1

    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 31
    add-int/2addr v0, p0

    .line 32
    return v0
.end method

.method private remainingBytes()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->usedBytes()I

    .line 6
    move-result v1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    return v0
.end method

.method private ringRead(I[BII)V
    .registers 9

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    .line 4
    move-result p1

    .line 5
    add-int v0, p1, p4

    .line 7
    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 9
    if-gt v0, v1, :cond_16

    .line 11
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 13
    int-to-long v1, p1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 17
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 19
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 22
    goto :goto_30

    .line 23
    :cond_16
    sub-int/2addr v1, p1

    .line 24
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 26
    int-to-long v2, p1

    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 32
    invoke-virtual {p1, p2, p3, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 35
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 37
    const-wide/16 v2, 0x10

    .line 39
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 42
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 44
    add-int/2addr p3, v1

    .line 45
    sub-int/2addr p4, v1

    .line 46
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 49
    :goto_30
    return-void
.end method

.method private ringWrite(I[BII)V
    .registers 9

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    .line 4
    move-result p1

    .line 5
    add-int v0, p1, p4

    .line 7
    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 9
    if-gt v0, v1, :cond_16

    .line 11
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 13
    int-to-long v1, p1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 17
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 19
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 22
    goto :goto_30

    .line 23
    :cond_16
    sub-int/2addr v1, p1

    .line 24
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 26
    int-to-long v2, p1

    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 32
    invoke-virtual {p1, p2, p3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 35
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 37
    const-wide/16 v2, 0x10

    .line 39
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 42
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 44
    add-int/2addr p3, v1

    .line 45
    sub-int/2addr p4, v1

    .line 46
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 49
    :goto_30
    return-void
.end method

.method private setLength(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 3
    int-to-long v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 7
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 9
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 17
    return-void
.end method

.method private wrapPosition(I)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 3
    if-ge p1, v0, :cond_5

    .line 5
    goto :goto_8

    .line 6
    :cond_5
    add-int/lit8 p1, p1, 0x10

    .line 8
    sub-int/2addr p1, v0

    .line 9
    :goto_8
    return p1
.end method

.method private writeHeader(IIII)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [I

    .line 6
    const/4 v2, 0x0

    .line 7
    aput p1, v1, v2

    .line 9
    const/4 p1, 0x1

    .line 10
    aput p2, v1, p1

    .line 12
    const/4 p1, 0x2

    .line 13
    aput p3, v1, p1

    .line 15
    const/4 p1, 0x3

    .line 16
    aput p4, v1, p1

    .line 18
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeInts([B[I)V

    .line 21
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 23
    const-wide/16 p2, 0x0

    .line 25
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 28
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 30
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 32
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 35
    return-void
.end method

.method private static writeInt([BII)V
    .registers 5

    .line 1
    shr-int/lit8 v0, p2, 0x18

    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p0, p1

    .line 6
    add-int/lit8 v0, p1, 0x1

    .line 8
    shr-int/lit8 v1, p2, 0x10

    .line 10
    int-to-byte v1, v1

    .line 11
    aput-byte v1, p0, v0

    .line 13
    add-int/lit8 v0, p1, 0x2

    .line 15
    shr-int/lit8 v1, p2, 0x8

    .line 17
    int-to-byte v1, v1

    .line 18
    aput-byte v1, p0, v0

    .line 20
    add-int/lit8 p1, p1, 0x3

    .line 22
    int-to-byte p2, p2

    .line 23
    aput-byte p2, p0, p1

    .line 25
    return-void
.end method

.method private static varargs writeInts([B[I)V
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v1, v0, :cond_f

    .line 6
    aget v3, p1, v1

    .line 8
    invoke-static {p0, v2, v3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeInt([BII)V

    .line 11
    add-int/lit8 v2, v2, 0x4

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_3

    .line 16
    :cond_f
    return-void
.end method


# virtual methods
.method public add([B)V
    .registers 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->add([BII)V

    return-void
.end method

.method public declared-synchronized add([BII)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "buffer"

    .line 2
    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    if-ltz v0, :cond_61

    .line 3
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_61

    .line 4
    invoke-direct {p0, p3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->expandIfNecessary(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1b

    const/16 v2, 0x10

    goto :goto_27

    .line 6
    :cond_1b
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v3, v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    add-int/2addr v3, v1

    iget v2, v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    move-result v2

    .line 7
    :goto_27
    new-instance v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    invoke-direct {v3, v2, p3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;-><init>(II)V

    .line 8
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, p3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeInt([BII)V

    .line 9
    iget v2, v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    invoke-direct {p0, v2, v5, v4, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->ringWrite(I[BII)V

    .line 10
    iget v2, v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->ringWrite(I[BII)V

    if-eqz v0, :cond_44

    .line 11
    iget p1, v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    goto :goto_48

    :cond_44
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget p1, p1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 12
    :goto_48
    iget p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    iget p3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    add-int/lit8 p3, p3, 0x1

    iget v1, v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    invoke-direct {p0, p2, p3, p1, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeHeader(IIII)V

    .line 13
    iput-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 14
    iget p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    if-eqz v0, :cond_5f

    .line 15
    iput-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_67

    .line 16
    :cond_5f
    monitor-exit p0

    return-void

    .line 17
    :cond_61
    :try_start_61
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/16 v1, 0x1000

    .line 5
    :try_start_4
    invoke-direct {p0, v1, v0, v0, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeHeader(IIII)V

    .line 8
    iput v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 10
    sget-object v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->NULL:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 12
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 14
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 16
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 18
    if-le v0, v1, :cond_16

    .line 20
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->setLength(I)V

    .line 23
    :cond_16
    iput v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1a

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_1a
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public declared-synchronized close()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized forEach(Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 4
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    iget v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 9
    if-ge v1, v2, :cond_27

    .line 11
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readElement(I)Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementInputStream;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, p0, v0, v3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementInputStream;-><init>(Lcom/google/firebase/crashlytics/internal/log/QueueFile;Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;)V

    .line 21
    iget v3, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    .line 23
    invoke-interface {p1, v2, v3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;->read(Ljava/io/InputStream;I)V

    .line 26
    iget v2, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 28
    add-int/lit8 v2, v2, 0x4

    .line 30
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    .line 32
    add-int/2addr v2, v0

    .line 33
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    .line 36
    move-result v0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_6

    .line 40
    :cond_27
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_29
    move-exception p1

    .line 43
    monitor-exit p0

    .line 44
    throw p1
.end method

.method public hasSpaceFor(II)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->usedBytes()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x4

    .line 7
    add-int/2addr v0, p1

    .line 8
    if-gt v0, p2, :cond_b

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    return p1
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    .line 4
    if-nez v0, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_a
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public declared-synchronized peek(Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;)V
    .registers 5

    monitor-enter p0

    .line 7
    :try_start_1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    if-lez v0, :cond_14

    .line 8
    new-instance v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementInputStream;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementInputStream;-><init>(Lcom/google/firebase/crashlytics/internal/log/QueueFile;Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;)V

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v1, v1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;->read(Ljava/io/InputStream;I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 9
    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized peek()[B
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->isEmpty()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1a

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    iget v1, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    .line 4
    new-array v2, v1, [B

    .line 5
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    add-int/lit8 v0, v0, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->ringRead(I[BII)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1a

    .line 6
    monitor-exit p0

    return-object v2

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->isEmpty()Z

    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_43

    .line 8
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_10

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->clear()V

    .line 16
    goto :goto_41

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 19
    iget v2, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 21
    const/4 v3, 0x4

    .line 22
    add-int/2addr v2, v3

    .line 23
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    .line 25
    add-int/2addr v2, v0

    .line 26
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->wrapPosition(I)I

    .line 29
    move-result v0

    .line 30
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct {p0, v0, v2, v4, v3}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->ringRead(I[BII)V

    .line 36
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->buffer:[B

    .line 38
    invoke-static {v2, v4}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->readInt([BI)I

    .line 41
    move-result v2

    .line 42
    iget v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 44
    iget v4, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 46
    sub-int/2addr v4, v1

    .line 47
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 49
    iget v5, v5, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 51
    invoke-direct {p0, v3, v4, v0, v5}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->writeHeader(IIII)V

    .line 54
    iget v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 56
    sub-int/2addr v3, v1

    .line 57
    iput v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 59
    new-instance v1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 61
    invoke-direct {v1, v0, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;-><init>(II)V

    .line 64
    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_49

    .line 66
    :goto_41
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :cond_43
    :try_start_43
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 70
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 73
    throw v0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_49

    .line 74
    :catchall_49
    move-exception v0

    .line 75
    monitor-exit p0

    .line 76
    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const/16 v1, 0x5b

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "fileLength="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", size="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", first="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", last="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", element lengths=["

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :try_start_42
    new-instance v1, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;

    .line 69
    invoke-direct {v1, p0, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;-><init>(Lcom/google/firebase/crashlytics/internal/log/QueueFile;Ljava/lang/StringBuilder;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->forEach(Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4a} :catch_4b

    .line 75
    goto :goto_55

    .line 76
    :catch_4b
    move-exception v1

    .line 77
    sget-object v2, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->LOGGER:Ljava/util/logging/Logger;

    .line 79
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 81
    const-string v4, "read error"

    .line 83
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :goto_55
    const-string v1, "]]"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method

.method public usedBytes()I
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->elementCount:I

    .line 3
    const/16 v1, 0x10

    .line 5
    if-nez v0, :cond_7

    .line 7
    return v1

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->last:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 10
    iget v2, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 12
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->first:Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;

    .line 14
    iget v3, v3, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->position:I

    .line 16
    if-lt v2, v3, :cond_19

    .line 18
    sub-int/2addr v2, v3

    .line 19
    add-int/lit8 v2, v2, 0x4

    .line 21
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    .line 23
    add-int/2addr v2, v0

    .line 24
    add-int/2addr v2, v1

    .line 25
    return v2

    .line 26
    :cond_19
    add-int/lit8 v2, v2, 0x4

    .line 28
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$Element;->length:I

    .line 30
    add-int/2addr v2, v0

    .line 31
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->fileLength:I

    .line 33
    add-int/2addr v2, v0

    .line 34
    sub-int/2addr v2, v3

    .line 35
    return v2
.end method
