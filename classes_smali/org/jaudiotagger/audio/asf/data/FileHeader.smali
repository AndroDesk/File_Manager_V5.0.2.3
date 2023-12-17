.class public Lorg/jaudiotagger/audio/asf/data/FileHeader;
.super Lorg/jaudiotagger/audio/asf/data/Chunk;
.source "FileHeader.java"


# instance fields
.field private final duration:Ljava/math/BigInteger;

.field private final fileCreationTime:Ljava/util/Date;

.field private final fileSize:Ljava/math/BigInteger;

.field private final flags:J

.field private final maxPackageSize:J

.field private final minPackageSize:J

.field private final packageCount:Ljava/math/BigInteger;

.field private final timeEndPos:Ljava/math/BigInteger;

.field private final timeStartPos:Ljava/math/BigInteger;

.field private final uncompressedFrameSize:J


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;JJJJ)V
    .registers 19

    move-object v0, p0

    .line 1
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_FILE:Lorg/jaudiotagger/audio/asf/data/GUID;

    move-object v2, p1

    invoke-direct {p0, v1, p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    move-object v1, p2

    .line 2
    iput-object v1, v0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->fileSize:Ljava/math/BigInteger;

    move-object v1, p4

    .line 3
    iput-object v1, v0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->packageCount:Ljava/math/BigInteger;

    move-object v1, p5

    .line 4
    iput-object v1, v0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    move-object v1, p6

    .line 5
    iput-object v1, v0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->timeStartPos:Ljava/math/BigInteger;

    move-object v1, p7

    .line 6
    iput-object v1, v0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->timeEndPos:Ljava/math/BigInteger;

    move-wide v1, p8

    .line 7
    iput-wide v1, v0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->flags:J

    move-wide v1, p10

    .line 8
    iput-wide v1, v0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->minPackageSize:J

    move-wide v1, p12

    .line 9
    iput-wide v1, v0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->maxPackageSize:J

    move-wide/from16 v1, p14

    .line 10
    iput-wide v1, v0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->uncompressedFrameSize:J

    .line 11
    invoke-static {p3}, Lorg/jaudiotagger/audio/asf/util/Utils;->getDateOf(Ljava/math/BigInteger;)Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->fileCreationTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getDuration()Ljava/math/BigInteger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    .line 3
    return-object v0
.end method

.method public getDurationInSeconds()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    .line 3
    new-instance v1, Ljava/math/BigInteger;

    .line 5
    const-string v2, "10000000"

    .line 7
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public getFileCreationTime()Ljava/util/Date;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->fileCreationTime:Ljava/util/Date;

    .line 5
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 12
    return-object v0
.end method

.method public getFileSize()Ljava/math/BigInteger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->fileSize:Ljava/math/BigInteger;

    .line 3
    return-object v0
.end method

.method public getFlags()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->flags:J

    .line 3
    return-wide v0
.end method

.method public getMaxPackageSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->maxPackageSize:J

    .line 3
    return-wide v0
.end method

.method public getMinPackageSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->minPackageSize:J

    .line 3
    return-wide v0
.end method

.method public getPackageCount()Ljava/math/BigInteger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->packageCount:Ljava/math/BigInteger;

    .line 3
    return-object v0
.end method

.method public getPreciseDuration()F
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/FileHeader;->getDuration()Ljava/math/BigInteger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    .line 8
    move-result-wide v0

    .line 9
    const-wide v2, 0x416312d000000000L  # 1.0E7

    .line 14
    div-double/2addr v0, v2

    .line 15
    double-to-float v0, v0

    .line 16
    return v0
.end method

.method public getTimeEndPos()Ljava/math/BigInteger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->timeEndPos:Ljava/math/BigInteger;

    .line 3
    return-object v0
.end method

.method public getTimeStartPos()Ljava/math/BigInteger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->timeStartPos:Ljava/math/BigInteger;

    .line 3
    return-object v0
.end method

.method public getUncompressedFrameSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/FileHeader;->uncompressedFrameSize:J

    .line 3
    return-wide v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "  |-> Filesize      = "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, " Bytes"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v2, "  |-> Media duration= "

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/FileHeader;->getDuration()Ljava/math/BigInteger;

    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ljava/math/BigInteger;

    .line 53
    const-string v4, "10000"

    .line 55
    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v2, " ms"

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string p1, "  |-> Created at    = "

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/FileHeader;->getFileCreationTime()Ljava/util/Date;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    return-object p1
.end method
