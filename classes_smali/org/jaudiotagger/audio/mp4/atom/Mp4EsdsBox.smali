.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4EsdsBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;,
        Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;
    }
.end annotation


# static fields
.field public static final AVERAGE_BITRATE_LENGTH:I = 0x4

.field public static final BUFFER_SIZE_LENGTH:I = 0x3

.field public static final CHANNEL_FLAGS_LENGTH:I = 0x1

.field public static final CONFIG_TYPE_LENGTH:I = 0x1

.field public static final DESCRIPTOR_OBJECT_TYPE_LENGTH:I = 0x1

.field public static final DESCRIPTOR_TYPE_LENGTH:I = 0x1

.field public static final ES_ID_LENGTH:I = 0x2

.field private static final FILLER_END:I = 0xfe

.field private static final FILLER_OTHER:I = 0x81

.field private static final FILLER_START:I = 0x80

.field public static final MAX_BITRATE_LENGTH:I = 0x4

.field public static final OBJECT_TYPE_LENGTH:I = 0x1

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field private static final SECTION_FIVE:I = 0x5

.field private static final SECTION_FOUR:I = 0x4

.field private static final SECTION_SIX:I = 0x6

.field private static final SECTION_THREE:I = 0x3

.field public static final STREAM_PRIORITY_LENGTH:I = 0x1

.field public static final STREAM_TYPE_LENGTH:I = 0x1

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field private static audioProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static kindMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioProfile:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field private avgBitrate:I

.field private kind:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field private maxBitrate:I

.field private numberOfChannels:I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    .line 8
    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_e
    if-ge v3, v1, :cond_22

    .line 17
    aget-object v4, v0, v3

    .line 19
    sget-object v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    .line 21
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->getId()I

    .line 24
    move-result v6

    .line 25
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v6

    .line 29
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_e

    .line 35
    :cond_22
    new-instance v0, Ljava/util/HashMap;

    .line 37
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfileMap:Ljava/util/Map;

    .line 42
    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 45
    move-result-object v0

    .line 46
    array-length v1, v0

    .line 47
    :goto_2e
    if-ge v2, v1, :cond_42

    .line 49
    aget-object v3, v0, v2

    .line 51
    sget-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfileMap:Ljava/util/Map;

    .line 53
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->getId()I

    .line 56
    move-result v5

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v5

    .line 61
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_2e

    .line 67
    :cond_42
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 6
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 9
    move-result p1

    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 12
    const/4 v0, 0x3

    .line 13
    add-int/2addr p1, v0

    .line 14
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 20
    move-result p1

    .line 21
    if-ne p1, v0, :cond_24

    .line 23
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->processSectionHeader(Ljava/nio/ByteBuffer;)I

    .line 26
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 29
    move-result p1

    .line 30
    add-int/lit8 p1, p1, 0x2

    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 34
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    :cond_24
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 40
    move-result p1

    .line 41
    const/4 v1, 0x4

    .line 42
    if-ne p1, v1, :cond_7c

    .line 44
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->processSectionHeader(Ljava/nio/ByteBuffer;)I

    .line 47
    sget-object p1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    .line 49
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v2

    .line 57
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 63
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->kind:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 65
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 68
    move-result p1

    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 71
    add-int/2addr p1, v0

    .line 72
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 78
    move-result p1

    .line 79
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 82
    move-result v2

    .line 83
    add-int/2addr v2, v1

    .line 84
    add-int/lit8 v2, v2, -0x1

    .line 86
    invoke-static {p2, p1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 89
    move-result p1

    .line 90
    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->maxBitrate:I

    .line 92
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 95
    move-result p1

    .line 96
    add-int/2addr p1, v1

    .line 97
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 103
    move-result p1

    .line 104
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 107
    move-result v2

    .line 108
    add-int/2addr v2, v1

    .line 109
    add-int/lit8 v2, v2, -0x1

    .line 111
    invoke-static {p2, p1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 114
    move-result p1

    .line 115
    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->avgBitrate:I

    .line 117
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 120
    move-result p1

    .line 121
    add-int/2addr p1, v1

    .line 122
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    :cond_7c
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 128
    move-result p1

    .line 129
    const/4 v2, 0x5

    .line 130
    if-ne p1, v2, :cond_a3

    .line 132
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->processSectionHeader(Ljava/nio/ByteBuffer;)I

    .line 135
    sget-object p1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfileMap:Ljava/util/Map;

    .line 137
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 140
    move-result v2

    .line 141
    shr-int/lit8 v0, v2, 0x3

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v0

    .line 147
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 153
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfile:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 155
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 158
    move-result p1

    .line 159
    shl-int/lit8 p1, p1, 0x1

    .line 161
    shr-int/2addr p1, v1

    .line 162
    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->numberOfChannels:I

    .line 164
    :cond_a3
    return-void
.end method


# virtual methods
.method public getAudioProfile()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfile:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 3
    return-object v0
.end method

.method public getAvgBitrate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->avgBitrate:I

    .line 3
    return v0
.end method

.method public getKind()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->kind:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 3
    return-object v0
.end method

.method public getMaxBitrate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->maxBitrate:I

    .line 3
    return v0
.end method

.method public getNumberOfChannels()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->numberOfChannels:I

    .line 3
    return v0
.end method

.method public processSectionHeader(Ljava/nio/ByteBuffer;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    move-result v0

    .line 5
    and-int/lit16 v1, v0, 0xff

    .line 7
    const/16 v2, 0x80

    .line 9
    if-eq v1, v2, :cond_12

    .line 11
    const/16 v2, 0x81

    .line 13
    if-eq v1, v2, :cond_12

    .line 15
    const/16 v2, 0xfe

    .line 17
    if-ne v1, v2, :cond_1c

    .line 19
    :cond_12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 28
    move-result v0

    .line 29
    :cond_1c
    return v0
.end method
