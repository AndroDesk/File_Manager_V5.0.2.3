.class Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataItemDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;
    }
.end annotation


# static fields
.field private static sBuffer:[B


# instance fields
.field private mIndexSize:B

.field private mLengthSize:B

.field private mOffset:J

.field private mOffsetSize:B

.field private mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/16 v0, 0x400

    .line 3
    new-array v0, v0, [B

    .line 5
    sput-object v0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 7
    return-void
.end method

.method private constructor <init>(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 4
    iput-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    .line 5
    iput-byte p3, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 6
    iput-byte p4, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 7
    iput-wide p5, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiuix/core/util/DirectIndexedFile$1;)V
    .registers 8

    .line 1
    invoke-direct/range {p0 .. p6}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-void
.end method

.method public static synthetic access$1100(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B
    .registers 1

    .line 1
    iget-byte p0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    .line 3
    return p0
.end method

.method public static synthetic access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B
    .registers 2

    .line 1
    iput-byte p1, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    .line 3
    return p1
.end method

.method public static synthetic access$1400(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$1402(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$1500(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Lmiuix/core/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readDataItems(Lmiuix/core/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Ljava/io/DataInput;I)J
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$1900(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Lmiuix/core/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiuix/core/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$3000(I)B
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$3900(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->write(Ljava/io/DataOutput;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$4100(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static aquireBuffer(I)[B
    .registers 3

    .line 1
    const-class v0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 6
    if-eqz v1, :cond_a

    .line 8
    array-length v1, v1

    .line 9
    if-ge v1, p0, :cond_e

    .line 11
    :cond_a
    new-array p0, p0, [B

    .line 13
    sput-object p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 15
    :cond_e
    sget-object p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 17
    const/4 v1, 0x0

    .line 18
    sput-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :catchall_15
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    .line 24
    throw p0
.end method

.method private static getSizeOf(I)B
    .registers 5

    mul-int/lit8 p0, p0, 0x2

    int-to-long v0, p0

    const/4 p0, 0x0

    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/16 v3, 0x8

    if-lez v2, :cond_11

    add-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    shr-long/2addr v0, v3

    goto :goto_4

    :cond_11
    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p0, v0, :cond_17

    move p0, v1

    goto :goto_1c

    :cond_17
    if-le p0, v1, :cond_1c

    if-ge p0, v3, :cond_1c

    move p0, v3

    :cond_1c
    :goto_1c
    return p0
.end method

.method private static read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    .registers 10

    .line 1
    invoke-static {}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->values()[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 8
    move-result v1

    .line 9
    aget-object v3, v0, v1

    .line 11
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 14
    move-result v4

    .line 15
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 18
    move-result v5

    .line 19
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 22
    move-result v6

    .line 23
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    .line 26
    move-result-wide v7

    .line 27
    new-instance p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 29
    move-object v2, p0

    .line 30
    invoke-direct/range {v2 .. v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    .line 33
    return-object p0
.end method

.method private static readAccordingToSize(Ljava/io/DataInput;I)J
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_28

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_23

    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_1e

    .line 10
    const/16 v0, 0x8

    .line 12
    if-ne p1, v0, :cond_12

    .line 14
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    .line 17
    move-result-wide p0

    .line 18
    goto :goto_2d

    .line 19
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string v0, "Unsuppoert size "

    .line 23
    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0

    .line 31
    :cond_1e
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 34
    move-result p0

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    .line 39
    move-result p0

    .line 40
    goto :goto_2c

    .line 41
    :cond_28
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 44
    move-result p0

    .line 45
    :goto_2c
    int-to-long p0, p0

    .line 46
    :goto_2d
    return-wide p0
.end method

.method private readDataItems(Lmiuix/core/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .registers 7

    .line 1
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    .line 3
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    packed-switch v0, :pswitch_data_52

    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_51

    .line 18
    :pswitch_11  #0x9
    new-array v0, v1, [Ljava/lang/Object;

    .line 20
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    .line 23
    move-result-wide v3

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    move-result-object p1

    .line 28
    aput-object p1, v0, v2

    .line 30
    goto :goto_51

    .line 31
    :pswitch_1e  #0x8
    new-array v0, v1, [Ljava/lang/Object;

    .line 33
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p1

    .line 41
    aput-object p1, v0, v2

    .line 43
    goto :goto_51

    .line 44
    :pswitch_2b  #0x7
    new-array v0, v1, [Ljava/lang/Object;

    .line 46
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    .line 49
    move-result p1

    .line 50
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 53
    move-result-object p1

    .line 54
    aput-object p1, v0, v2

    .line 56
    goto :goto_51

    .line 57
    :pswitch_38  #0x6
    new-array v0, v1, [Ljava/lang/Object;

    .line 59
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 62
    move-result p1

    .line 63
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 66
    move-result-object p1

    .line 67
    aput-object p1, v0, v2

    .line 69
    goto :goto_51

    .line 70
    :pswitch_45  #0x1, 0x2, 0x3, 0x4, 0x5
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 73
    move-result v0

    .line 74
    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    invoke-direct {p0, p1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiuix/core/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    aput-object p1, v0, v2

    .line 82
    :goto_51
    return-object v0

    .line 83
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_45  #00000001
        :pswitch_45  #00000002
        :pswitch_45  #00000003
        :pswitch_45  #00000004
        :pswitch_45  #00000005
        :pswitch_38  #00000006
        :pswitch_2b  #00000007
        :pswitch_1e  #00000008
        :pswitch_11  #00000009
    .end packed-switch
.end method

.method private readSingleDataItem(Lmiuix/core/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-interface {p1}, Lmiuix/core/util/DirectIndexedFile$InputFile;->getFilePointer()J

    .line 4
    move-result-wide v0

    .line 5
    if-eqz p2, :cond_e

    .line 7
    iget-byte v2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 9
    mul-int/2addr v2, p2

    .line 10
    int-to-long v2, v2

    .line 11
    add-long/2addr v2, v0

    .line 12
    invoke-interface {p1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 15
    :cond_e
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 17
    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    .line 20
    move-result-wide v2

    .line 21
    add-long/2addr v0, v2

    .line 22
    invoke-interface {p1, v0, v1}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 25
    sget-object p2, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    .line 27
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 32
    move-result v0

    .line 33
    aget p2, p2, v0

    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eq p2, v1, :cond_7f

    .line 40
    const/4 v1, 0x2

    .line 41
    if-eq p2, v1, :cond_71

    .line 43
    const/4 v1, 0x3

    .line 44
    if-eq p2, v1, :cond_5d

    .line 46
    const/4 v1, 0x4

    .line 47
    if-eq p2, v1, :cond_49

    .line 49
    const/4 v1, 0x5

    .line 50
    if-eq p2, v1, :cond_35

    .line 52
    move-object v1, v0

    .line 53
    goto :goto_93

    .line 54
    :cond_35
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 56
    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    .line 59
    move-result-wide v3

    .line 60
    long-to-int p2, v3

    .line 61
    new-array v1, p2, [J

    .line 63
    :goto_3e
    if-ge v2, p2, :cond_93

    .line 65
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    .line 68
    move-result-wide v3

    .line 69
    aput-wide v3, v1, v2

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto :goto_3e

    .line 74
    :cond_49
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 76
    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    .line 79
    move-result-wide v3

    .line 80
    long-to-int p2, v3

    .line 81
    new-array v1, p2, [I

    .line 83
    :goto_52
    if-ge v2, p2, :cond_93

    .line 85
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 88
    move-result v3

    .line 89
    aput v3, v1, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 93
    goto :goto_52

    .line 94
    :cond_5d
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 96
    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    .line 99
    move-result-wide v3

    .line 100
    long-to-int p2, v3

    .line 101
    new-array v1, p2, [S

    .line 103
    :goto_66
    if-ge v2, p2, :cond_93

    .line 105
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    .line 108
    move-result v3

    .line 109
    aput-short v3, v1, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 113
    goto :goto_66

    .line 114
    :cond_71
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 116
    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    .line 119
    move-result-wide v1

    .line 120
    long-to-int p2, v1

    .line 121
    new-array p2, p2, [B

    .line 123
    invoke-interface {p1, p2}, Ljava/io/DataInput;->readFully([B)V

    .line 126
    move-object v1, p2

    .line 127
    goto :goto_93

    .line 128
    :cond_7f
    iget-byte p2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 130
    invoke-static {p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    .line 133
    move-result-wide v0

    .line 134
    long-to-int p2, v0

    .line 135
    invoke-static {p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->aquireBuffer(I)[B

    .line 138
    move-result-object v0

    .line 139
    invoke-interface {p1, v0, v2, p2}, Ljava/io/DataInput;->readFully([BII)V

    .line 142
    new-instance p1, Ljava/lang/String;

    .line 144
    invoke-direct {p1, v0, v2, p2}, Ljava/lang/String;-><init>([BII)V

    .line 147
    move-object v1, p1

    .line 148
    :cond_93
    :goto_93
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->releaseBuffer([B)V

    .line 151
    return-object v1
.end method

.method private static releaseBuffer([B)V
    .registers 4

    .line 1
    const-class v0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_f

    .line 6
    :try_start_5
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 8
    if-eqz v1, :cond_d

    .line 10
    array-length v1, v1

    .line 11
    array-length v2, p0

    .line 12
    if-ge v1, v2, :cond_f

    .line 14
    :cond_d
    sput-object p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 16
    :cond_f
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    .line 20
    throw p0
.end method

.method private write(Ljava/io/DataOutput;)I
    .registers 4

    .line 1
    if-eqz p1, :cond_1f

    .line 3
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v0

    .line 9
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 12
    iget-byte v0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    .line 14
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 17
    iget-byte v0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 19
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 22
    iget-byte v0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 24
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 27
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    .line 29
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 32
    :cond_1f
    const/16 p1, 0xc

    .line 34
    return p1
.end method

.method private static writeAccordingToSize(Ljava/io/DataOutput;IJ)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_27

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_22

    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_1d

    .line 10
    const/16 v0, 0x8

    .line 12
    if-ne p1, v0, :cond_11

    .line 14
    invoke-interface {p0, p2, p3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 17
    goto :goto_2b

    .line 18
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string p2, "Unsuppoert size "

    .line 22
    invoke-static {p2, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 30
    :cond_1d
    long-to-int p1, p2

    .line 31
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 34
    goto :goto_2b

    .line 35
    :cond_22
    long-to-int p1, p2

    .line 36
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeShort(I)V

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    long-to-int p1, p2

    .line 41
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 44
    :goto_2b
    return-void
.end method

.method private writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    .line 3
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/16 v1, 0x8

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x0

    .line 16
    packed-switch v0, :pswitch_data_17c

    .line 19
    move v1, v4

    .line 20
    goto/16 :goto_17b

    .line 22
    :pswitch_15  #0x9
    if-eqz p1, :cond_17b

    .line 24
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Ljava/lang/Long;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v2

    .line 34
    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 37
    goto/16 :goto_17b

    .line 39
    :pswitch_26  #0x8
    if-eqz p1, :cond_35

    .line 41
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Ljava/lang/Integer;

    .line 47
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result p2

    .line 51
    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 54
    :cond_35
    move v1, v3

    .line 55
    goto/16 :goto_17b

    .line 57
    :pswitch_38  #0x7
    if-eqz p1, :cond_47

    .line 59
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Ljava/lang/Short;

    .line 65
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    .line 68
    move-result p2

    .line 69
    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeShort(I)V

    .line 72
    :cond_47
    move v1, v2

    .line 73
    goto/16 :goto_17b

    .line 75
    :pswitch_4a  #0x6
    if-eqz p1, :cond_59

    .line 77
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Ljava/lang/Byte;

    .line 83
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    .line 86
    move-result p2

    .line 87
    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 90
    :cond_59
    const/4 v1, 0x1

    .line 91
    goto/16 :goto_17b

    .line 93
    :pswitch_5c  #0x5
    if-eqz p1, :cond_65

    .line 95
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 98
    move-result v0

    .line 99
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 102
    :cond_65
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    .line 105
    move-result v0

    .line 106
    add-int/2addr v3, v0

    .line 107
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object p2

    .line 111
    :goto_6e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_35

    .line 117
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v0

    .line 121
    check-cast v0, [J

    .line 123
    if-eqz p1, :cond_8f

    .line 125
    iget-byte v2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 127
    array-length v5, v0

    .line 128
    int-to-long v5, v5

    .line 129
    invoke-static {p1, v2, v5, v6}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 132
    array-length v2, v0

    .line 133
    move v5, v4

    .line 134
    :goto_85
    if-ge v5, v2, :cond_8f

    .line 136
    aget-wide v6, v0, v5

    .line 138
    invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    .line 141
    add-int/lit8 v5, v5, 0x1

    .line 143
    goto :goto_85

    .line 144
    :cond_8f
    iget-byte v2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 146
    array-length v0, v0

    .line 147
    mul-int/2addr v0, v1

    .line 148
    add-int/2addr v0, v2

    .line 149
    add-int/2addr v3, v0

    .line 150
    goto :goto_6e

    .line 151
    :pswitch_96  #0x4
    if-eqz p1, :cond_9f

    .line 153
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 156
    move-result v0

    .line 157
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 160
    :cond_9f
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    .line 163
    move-result v0

    .line 164
    add-int/2addr v0, v3

    .line 165
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 168
    move-result-object p2

    .line 169
    move v1, v0

    .line 170
    :goto_a9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_17b

    .line 176
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    move-result-object v0

    .line 180
    check-cast v0, [I

    .line 182
    if-eqz p1, :cond_ca

    .line 184
    iget-byte v2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 186
    array-length v5, v0

    .line 187
    int-to-long v5, v5

    .line 188
    invoke-static {p1, v2, v5, v6}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 191
    array-length v2, v0

    .line 192
    move v5, v4

    .line 193
    :goto_c0
    if-ge v5, v2, :cond_ca

    .line 195
    aget v6, v0, v5

    .line 197
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 200
    add-int/lit8 v5, v5, 0x1

    .line 202
    goto :goto_c0

    .line 203
    :cond_ca
    iget-byte v2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 205
    array-length v0, v0

    .line 206
    mul-int/2addr v0, v3

    .line 207
    add-int/2addr v0, v2

    .line 208
    add-int/2addr v1, v0

    .line 209
    goto :goto_a9

    .line 210
    :pswitch_d1  #0x3
    if-eqz p1, :cond_da

    .line 212
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 215
    move-result v0

    .line 216
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 219
    :cond_da
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    .line 222
    move-result v0

    .line 223
    add-int/2addr v3, v0

    .line 224
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 227
    move-result-object p2

    .line 228
    move v1, v3

    .line 229
    :goto_e4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_17b

    .line 235
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    move-result-object v0

    .line 239
    check-cast v0, [S

    .line 241
    if-eqz p1, :cond_105

    .line 243
    iget-byte v3, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 245
    array-length v5, v0

    .line 246
    int-to-long v5, v5

    .line 247
    invoke-static {p1, v3, v5, v6}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 250
    array-length v3, v0

    .line 251
    move v5, v4

    .line 252
    :goto_fb
    if-ge v5, v3, :cond_105

    .line 254
    aget-short v6, v0, v5

    .line 256
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeShort(I)V

    .line 259
    add-int/lit8 v5, v5, 0x1

    .line 261
    goto :goto_fb

    .line 262
    :cond_105
    iget-byte v3, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 264
    array-length v0, v0

    .line 265
    mul-int/2addr v0, v2

    .line 266
    add-int/2addr v0, v3

    .line 267
    add-int/2addr v1, v0

    .line 268
    goto :goto_e4

    .line 269
    :pswitch_10c  #0x2
    if-eqz p1, :cond_115

    .line 271
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 274
    move-result v0

    .line 275
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 278
    :cond_115
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    .line 281
    move-result v0

    .line 282
    add-int/2addr v3, v0

    .line 283
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 286
    move-result-object p2

    .line 287
    move v1, v3

    .line 288
    :goto_11f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_17b

    .line 294
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    move-result-object v0

    .line 298
    check-cast v0, [B

    .line 300
    if-eqz p1, :cond_137

    .line 302
    iget-byte v2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 304
    array-length v3, v0

    .line 305
    int-to-long v3, v3

    .line 306
    invoke-static {p1, v2, v3, v4}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 309
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 312
    :cond_137
    iget-byte v2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 314
    array-length v0, v0

    .line 315
    add-int/2addr v2, v0

    .line 316
    add-int/2addr v1, v2

    .line 317
    goto :goto_11f

    .line 318
    :pswitch_13d  #0x1
    if-eqz p1, :cond_146

    .line 320
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 323
    move-result v0

    .line 324
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 327
    :cond_146
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    .line 330
    move-result v0

    .line 331
    add-int/2addr v3, v0

    .line 332
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 335
    move-result-object p2

    .line 336
    move v1, v3

    .line 337
    :goto_150
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_17b

    .line 343
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Ljava/lang/String;

    .line 349
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 352
    move-result-object v0

    .line 353
    if-eqz p1, :cond_175

    .line 355
    iget-byte v2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 357
    array-length v3, v0

    .line 358
    int-to-long v5, v3

    .line 359
    invoke-static {p1, v2, v5, v6}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 362
    array-length v2, v0

    .line 363
    move v3, v4

    .line 364
    :goto_16b
    if-ge v3, v2, :cond_175

    .line 366
    aget-byte v5, v0, v3

    .line 368
    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 371
    add-int/lit8 v3, v3, 0x1

    .line 373
    goto :goto_16b

    .line 374
    :cond_175
    iget-byte v2, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 376
    array-length v0, v0

    .line 377
    add-int/2addr v2, v0

    .line 378
    add-int/2addr v1, v2

    .line 379
    goto :goto_150

    .line 380
    :cond_17b
    :goto_17b
    return v1

    .line 381
    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_13d  #00000001
        :pswitch_10c  #00000002
        :pswitch_d1  #00000003
        :pswitch_96  #00000004
        :pswitch_5c  #00000005
        :pswitch_4a  #00000006
        :pswitch_38  #00000007
        :pswitch_26  #00000008
        :pswitch_15  #00000009
    .end packed-switch
.end method

.method private writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x4

    .line 6
    if-eqz p1, :cond_f

    .line 8
    iget-byte v5, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 10
    if-eqz v5, :cond_f

    .line 12
    iget-byte v5, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 14
    if-nez v5, :cond_70

    .line 16
    :cond_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 19
    move-result v5

    .line 20
    mul-int/2addr v5, v4

    .line 21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v6

    .line 25
    const/4 v7, 0x0

    .line 26
    move v8, v7

    .line 27
    :cond_1a
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v9

    .line 31
    if-eqz v9, :cond_5e

    .line 33
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v9

    .line 37
    sget-object v10, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    .line 39
    iget-object v11, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 41
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 44
    move-result v11

    .line 45
    aget v10, v10, v11

    .line 47
    if-eq v10, v2, :cond_52

    .line 49
    if-eq v10, v3, :cond_4e

    .line 51
    if-eq v10, v1, :cond_46

    .line 53
    if-eq v10, v4, :cond_40

    .line 55
    if-eq v10, v0, :cond_3a

    .line 57
    move v9, v7

    .line 58
    goto :goto_5a

    .line 59
    :cond_3a
    check-cast v9, [J

    .line 61
    array-length v9, v9

    .line 62
    mul-int/lit8 v10, v9, 0x8

    .line 64
    goto :goto_4b

    .line 65
    :cond_40
    check-cast v9, [I

    .line 67
    array-length v9, v9

    .line 68
    mul-int/lit8 v10, v9, 0x4

    .line 70
    goto :goto_4b

    .line 71
    :cond_46
    check-cast v9, [S

    .line 73
    array-length v9, v9

    .line 74
    mul-int/lit8 v10, v9, 0x2

    .line 76
    :goto_4b
    add-int/2addr v10, v5

    .line 77
    move v5, v10

    .line 78
    goto :goto_5a

    .line 79
    :cond_4e
    check-cast v9, [B

    .line 81
    array-length v9, v9

    .line 82
    goto :goto_59

    .line 83
    :cond_52
    check-cast v9, Ljava/lang/String;

    .line 85
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    .line 88
    move-result-object v9

    .line 89
    array-length v9, v9

    .line 90
    :goto_59
    add-int/2addr v5, v9

    .line 91
    :goto_5a
    if-ge v8, v9, :cond_1a

    .line 93
    move v8, v9

    .line 94
    goto :goto_1a

    .line 95
    :cond_5e
    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    .line 98
    move-result v6

    .line 99
    iput-byte v6, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 101
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 104
    move-result v7

    .line 105
    mul-int/2addr v7, v6

    .line 106
    add-int/2addr v7, v5

    .line 107
    invoke-static {v7}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    .line 110
    move-result v5

    .line 111
    iput-byte v5, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 113
    :cond_70
    iget-byte v5, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 115
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 118
    move-result v6

    .line 119
    mul-int/2addr v6, v5

    .line 120
    if-eqz p1, :cond_cd

    .line 122
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object p2

    .line 126
    move v5, v6

    .line 127
    :goto_7e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_cd

    .line 133
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v7

    .line 137
    iget-byte v8, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 139
    int-to-long v9, v5

    .line 140
    invoke-static {p1, v8, v9, v10}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 143
    sget-object v8, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    .line 145
    iget-object v9, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 147
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 150
    move-result v9

    .line 151
    aget v8, v8, v9

    .line 153
    if-eq v8, v2, :cond_c1

    .line 155
    if-eq v8, v3, :cond_bb

    .line 157
    if-eq v8, v1, :cond_b2

    .line 159
    if-eq v8, v4, :cond_ab

    .line 161
    if-eq v8, v0, :cond_a3

    .line 163
    goto :goto_7e

    .line 164
    :cond_a3
    iget-byte v8, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 166
    check-cast v7, [J

    .line 168
    array-length v7, v7

    .line 169
    mul-int/lit8 v7, v7, 0x8

    .line 171
    goto :goto_b8

    .line 172
    :cond_ab
    iget-byte v8, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 174
    check-cast v7, [I

    .line 176
    array-length v7, v7

    .line 177
    mul-int/2addr v7, v4

    .line 178
    goto :goto_b8

    .line 179
    :cond_b2
    iget-byte v8, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 181
    check-cast v7, [S

    .line 183
    array-length v7, v7

    .line 184
    mul-int/2addr v7, v3

    .line 185
    :goto_b8
    add-int/2addr v7, v8

    .line 186
    add-int/2addr v5, v7

    .line 187
    goto :goto_7e

    .line 188
    :cond_bb
    iget-byte v8, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 190
    check-cast v7, [B

    .line 192
    array-length v7, v7

    .line 193
    goto :goto_ca

    .line 194
    :cond_c1
    iget-byte v8, p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 196
    check-cast v7, Ljava/lang/String;

    .line 198
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    .line 201
    move-result-object v7

    .line 202
    array-length v7, v7

    .line 203
    :goto_ca
    add-int/2addr v8, v7

    .line 204
    add-int/2addr v5, v8

    .line 205
    goto :goto_7e

    .line 206
    :cond_cd
    return v6
.end method
