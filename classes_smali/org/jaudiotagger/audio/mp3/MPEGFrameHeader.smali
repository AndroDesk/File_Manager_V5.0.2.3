.class public Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;
.super Ljava/lang/Object;
.source "MPEGFrameHeader.java"


# static fields
.field private static final BYTE_1:I = 0x0

.field private static final BYTE_2:I = 0x1

.field private static final BYTE_3:I = 0x2

.field private static final BYTE_4:I = 0x3

.field public static final EMPHASIS_5015MS:I = 0x1

.field public static final EMPHASIS_CCITT:I = 0x3

.field public static final EMPHASIS_NONE:I = 0x0

.field public static final EMPHASIS_RESERVED:I = 0x2

.field public static final HEADER_SIZE:I = 0x4

.field public static final LAYER_I:I = 0x3

.field public static final LAYER_II:I = 0x2

.field public static final LAYER_III:I = 0x1

.field private static final LAYER_III_FRAME_SIZE_COEFFICIENT:I = 0x90

.field public static final LAYER_III_SLOT_SIZE:I = 0x1

.field private static final LAYER_II_FRAME_SIZE_COEFFICIENT:I = 0x90

.field public static final LAYER_II_SLOT_SIZE:I = 0x1

.field private static final LAYER_I_FRAME_SIZE_COEFFICIENT:I = 0xc

.field public static final LAYER_I_SLOT_SIZE:I = 0x4

.field private static final MASK_MP3_BITRATE:I = 0xf0

.field private static final MASK_MP3_COPY:I = 0x8

.field private static final MASK_MP3_EMPHASIS:I = 0x3

.field private static final MASK_MP3_FREQUENCY:I = 0xc

.field private static final MASK_MP3_HOME:I = 0x4

.field private static final MASK_MP3_ID:I = 0x8

.field private static final MASK_MP3_LAYER:I = 0x6

.field private static final MASK_MP3_MODE:I = 0xc0

.field private static final MASK_MP3_MODE_EXTENSION:I = 0x30

.field private static final MASK_MP3_PADDING:I = 0x2

.field private static final MASK_MP3_PRIVACY:I = 0x1

.field private static final MASK_MP3_PROTECTION:I = 0x1

.field private static final MASK_MP3_VERSION:I = 0x18

.field public static final MODE_DUAL_CHANNEL:I = 0x2

.field private static final MODE_EXTENSION_NONE:I = 0x0

.field private static final MODE_EXTENSION_OFF_OFF:I = 0x0

.field private static final MODE_EXTENSION_OFF_ON:I = 0x2

.field private static final MODE_EXTENSION_ONE:I = 0x1

.field private static final MODE_EXTENSION_ON_OFF:I = 0x1

.field private static final MODE_EXTENSION_ON_ON:I = 0x3

.field private static final MODE_EXTENSION_THREE:I = 0x3

.field private static final MODE_EXTENSION_TWO:I = 0x2

.field public static final MODE_JOINT_STEREO:I = 0x1

.field public static final MODE_MONO:I = 0x3

.field public static final MODE_STEREO:I = 0x0

.field private static final SCALE_BY_THOUSAND:I = 0x3e8

.field public static final SYNC_BYTE1:I = 0xff

.field public static final SYNC_BYTE2:I = 0xe0

.field public static final SYNC_SIZE:I = 0x2

.field public static final VERSION_1:I = 0x3

.field public static final VERSION_2:I = 0x2

.field public static final VERSION_2_5:I

.field private static final bitrateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final emphasisMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final header:[B

.field private static final modeExtensionLayerIIIMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final modeExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final modeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mpegLayerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mpegVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplesPerFrameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final samplesPerFrameV1Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplesPerFrameV25Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplesPerFrameV2Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplingRateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final samplingV1Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplingV25Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplingV2Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitRate:Ljava/lang/Integer;

.field private channelMode:I

.field private channelModeAsString:Ljava/lang/String;

.field private emphasis:I

.field private emphasisAsString:Ljava/lang/String;

.field private isCopyrighted:Z

.field private isOriginal:Z

.field private isPadding:Z

.field private isPrivate:Z

.field private isProtected:Z

.field private layer:I

.field private layerAsString:Ljava/lang/String;

.field private modeExtension:Ljava/lang/String;

.field private mpegBytes:[B

.field private samplingRate:Ljava/lang/Integer;

.field private version:I

.field private versionAsString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->header:[B

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegVersionMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MPEG-2.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MPEG-2"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MPEG-1"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegLayerMap:Ljava/util/Map;

    const-string v4, "Layer 1"

    .line 7
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Layer 2"

    .line 8
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Layer 3"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x1e

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2e

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3e

    .line 13
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v8, 0x60

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4e

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v9, 0x80

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x5e

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v10, 0xa0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x6e

    .line 16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0xc0

    const/16 v12, 0x7e

    .line 17
    invoke-static {v11, v0, v5, v12}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0xe0

    const/16 v12, 0x8e

    .line 18
    invoke-static {v11, v0, v5, v12}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x100

    const/16 v12, 0x9e

    .line 19
    invoke-static {v11, v0, v5, v12}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x120

    const/16 v12, 0xae

    .line 20
    invoke-static {v11, v0, v5, v12}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x140

    const/16 v12, 0xbe

    .line 21
    invoke-static {v11, v0, v5, v12}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x160

    const/16 v12, 0xce

    .line 22
    invoke-static {v11, v0, v5, v12}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x180

    .line 23
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xde

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v12, 0x1a0

    const/16 v13, 0xee

    .line 25
    invoke-static {v12, v0, v5, v13}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v12, 0x1c0

    .line 26
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1c

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2c

    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v12, 0x30

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3c

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v13, 0x38

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4c

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x5c

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v14, 0x50

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x6c

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x7c

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v15, 0x70

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x8c

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x9c

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xac

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v16, v3

    const/16 v3, 0xc0

    move-object/from16 v17, v2

    const/16 v2, 0xbc

    .line 37
    invoke-static {v3, v0, v5, v2}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe0

    const/16 v5, 0xcc

    .line 38
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x100

    const/16 v5, 0xdc

    .line 39
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x140

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xec

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1a

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2a

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x3a

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4a

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x5a

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x6a

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x7a

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8a

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x9a

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xaa

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xba

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc0

    const/16 v5, 0xca

    .line 53
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe0

    const/16 v5, 0xda

    .line 54
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x100

    const/16 v5, 0xea

    .line 55
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x140

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x16

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x26

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x36

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x46

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x56

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x66

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x76

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x86

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x96

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x90

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa6

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xb6

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb0

    const/16 v5, 0xc6

    .line 68
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc0

    const/16 v5, 0xd6

    .line 69
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe0

    const/16 v5, 0xe6

    .line 70
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x100

    const/16 v5, 0x14

    .line 71
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v5, 0x24

    .line 72
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v5, 0x34

    .line 73
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x18

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x44

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x54

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x64

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x74

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x84

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x94

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa4

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xb4

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc4

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xd4

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x90

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xe4

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x12

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v5, 0x22

    .line 87
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v5, 0x32

    .line 88
    invoke-static {v3, v0, v2, v5}, Lf0/e;->b(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x18

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x42

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x52

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x62

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x72

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x82

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x92

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa2

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xb2

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc2

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xd2

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x90

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xe2

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeMap:Ljava/util/Map;

    const-string v2, "Stereo"

    .line 102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Joint Stereo"

    .line 103
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Dual"

    move-object/from16 v3, v17

    .line 104
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Mono"

    move-object/from16 v5, v16

    .line 105
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisMap:Ljava/util/Map;

    const-string v2, "None"

    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "5015MS"

    .line 108
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Reserved"

    .line 109
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CCITT"

    .line 110
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionMap:Ljava/util/Map;

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionLayerIIIMap:Ljava/util/Map;

    const-string v6, "4-31"

    .line 113
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "8-31"

    .line 114
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "12-31"

    .line 115
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "16-31"

    .line 116
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "off-off"

    .line 117
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "on-off"

    .line 118
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "off-on"

    .line 119
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "on-on"

    .line 120
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRateMap:Ljava/util/Map;

    .line 122
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV1Map:Ljava/util/Map;

    .line 123
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV2Map:Ljava/util/Map;

    .line 124
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV25Map:Ljava/util/Map;

    const v8, 0xac44

    .line 125
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v8, 0xbb80

    .line 126
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x7d00

    .line 127
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x5622

    .line 128
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x5dc0

    .line 129
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x3e80

    .line 130
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x2b11

    .line 131
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x2ee0

    .line 132
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x1f40

    .line 133
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameMap:Ljava/util/Map;

    .line 138
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV1Map:Ljava/util/Map;

    .line 139
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV2Map:Ljava/util/Map;

    .line 140
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV25Map:Ljava/util/Map;

    .line 141
    invoke-interface {v2, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x480

    .line 142
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-interface {v6, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-interface {v6, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-interface {v7, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>([B)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 4
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setVersion()V

    .line 5
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setLayer()V

    .line 6
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setProtected()V

    .line 7
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setBitrate()V

    .line 8
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setSamplingRate()V

    .line 9
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setPadding()V

    .line 10
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setPrivate()V

    .line 11
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setChannelMode()V

    .line 12
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setModeExtension()V

    .line 13
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setCopyrighted()V

    .line 14
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setOriginal()V

    .line 15
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setEmphasis()V

    return-void
.end method

.method public static isMPEGFrame(Ljava/nio/ByteBuffer;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xff

    .line 11
    and-int/2addr v1, v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v1, v2, :cond_19

    .line 15
    add-int/2addr v0, v3

    .line 16
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 19
    move-result p0

    .line 20
    const/16 v0, 0xe0

    .line 22
    and-int/2addr p0, v0

    .line 23
    if-ne p0, v0, :cond_19

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v3, 0x0

    .line 27
    :goto_1a
    return v3
.end method

.method public static parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->header:[B

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x4

    .line 9
    invoke-virtual {p0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    new-instance p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 17
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;-><init>([B)V

    .line 20
    return-object p0
.end method

.method private setBitrate()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x2

    .line 4
    aget-byte v1, v0, v1

    .line 6
    and-int/lit16 v1, v1, 0xf0

    .line 8
    const/4 v2, 0x1

    .line 9
    aget-byte v0, v0, v2

    .line 11
    and-int/lit8 v2, v0, 0x8

    .line 13
    or-int/2addr v1, v2

    .line 14
    and-int/lit8 v0, v0, 0x6

    .line 16
    or-int/2addr v0, v1

    .line 17
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 29
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitRate:Ljava/lang/Integer;

    .line 31
    if-eqz v0, :cond_21

    .line 33
    return-void

    .line 34
    :cond_21
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    .line 36
    const-string v1, "Invalid bitrate"

    .line 38
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method private setChannelMode()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x3

    .line 4
    aget-byte v0, v0, v1

    .line 6
    and-int/lit16 v0, v0, 0xc0

    .line 8
    ushr-int/lit8 v0, v0, 0x6

    .line 10
    iput v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelMode:I

    .line 12
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeMap:Ljava/util/Map;

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelModeAsString:Ljava/lang/String;

    .line 26
    if-eqz v0, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    .line 31
    const-string v1, "Invalid channel mode"

    .line 33
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0
.end method

.method private setCopyrighted()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x3

    .line 4
    aget-byte v0, v0, v1

    .line 6
    and-int/lit8 v0, v0, 0x8

    .line 8
    if-eqz v0, :cond_b

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted:Z

    .line 15
    return-void
.end method

.method private setEmphasis()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x3

    .line 4
    aget-byte v0, v0, v1

    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasis:I

    .line 9
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisMap:Ljava/util/Map;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisAsString:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getEmphasisAsString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    .line 32
    const-string v1, "Invalid emphasis"

    .line 34
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0
.end method

.method private setLayer()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x1

    .line 4
    aget-byte v0, v0, v1

    .line 6
    and-int/lit8 v0, v0, 0x6

    .line 8
    ushr-int/2addr v0, v1

    .line 9
    iput v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    .line 11
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegLayerMap:Ljava/util/Map;

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layerAsString:Ljava/lang/String;

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    return-void

    .line 28
    :cond_1b
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    .line 30
    const-string v1, "Invalid Layer"

    .line 32
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
.end method

.method private setModeExtension()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x3

    .line 4
    aget-byte v0, v0, v1

    .line 6
    and-int/lit8 v0, v0, 0x30

    .line 8
    shr-int/lit8 v0, v0, 0x4

    .line 10
    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    .line 12
    const-string v2, "Invalid Mode Extension"

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v3, :cond_2b

    .line 17
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionLayerIIIMap:Ljava/util/Map;

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtension:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getModeExtension()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_25

    .line 37
    goto :goto_3f

    .line 38
    :cond_25
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    .line 40
    invoke-direct {v0, v2}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v0

    .line 44
    :cond_2b
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionMap:Ljava/util/Map;

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtension:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getModeExtension()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_40

    .line 64
    :goto_3f
    return-void

    .line 65
    :cond_40
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    .line 67
    invoke-direct {v0, v2}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    .line 70
    throw v0
.end method

.method private setOriginal()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x3

    .line 4
    aget-byte v0, v0, v1

    .line 6
    and-int/lit8 v0, v0, 0x4

    .line 8
    if-eqz v0, :cond_b

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isOriginal:Z

    .line 15
    return-void
.end method

.method private setPadding()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x2

    .line 4
    aget-byte v0, v0, v1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPadding:Z

    .line 14
    return-void
.end method

.method private setPrivate()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x2

    .line 4
    aget-byte v0, v0, v1

    .line 6
    const/4 v1, 0x1

    .line 7
    and-int/2addr v0, v1

    .line 8
    if-eqz v0, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    iput-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPrivate:Z

    .line 14
    return-void
.end method

.method private setProtected()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x1

    .line 4
    aget-byte v0, v0, v1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v1, 0x0

    .line 11
    :goto_a
    iput-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isProtected:Z

    .line 13
    return-void
.end method

.method private setSamplingRate()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x2

    .line 4
    aget-byte v0, v0, v1

    .line 6
    and-int/lit8 v0, v0, 0xc

    .line 8
    ushr-int/2addr v0, v1

    .line 9
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRateMap:Ljava/util/Map;

    .line 11
    iget v2, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map;

    .line 23
    if-eqz v1, :cond_2f

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    .line 35
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRate:Ljava/lang/Integer;

    .line 37
    if-eqz v0, :cond_27

    .line 39
    return-void

    .line 40
    :cond_27
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    .line 42
    const-string v1, "Invalid sampling rate"

    .line 44
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0

    .line 48
    :cond_2f
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    .line 50
    const-string v1, "Invalid version"

    .line 52
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0
.end method

.method private setVersion()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 3
    const/4 v1, 0x1

    .line 4
    aget-byte v0, v0, v1

    .line 6
    and-int/lit8 v0, v0, 0x18

    .line 8
    shr-int/lit8 v0, v0, 0x3

    .line 10
    int-to-byte v0, v0

    .line 11
    iput v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    .line 13
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegVersionMap:Ljava/util/Map;

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->versionAsString:Ljava/lang/String;

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    .line 32
    const-string v1, "Invalid mpeg version"

    .line 34
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0
.end method


# virtual methods
.method public getBitRate()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitRate:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public getChannelMode()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelMode:I

    .line 3
    return v0
.end method

.method public getChannelModeAsString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelModeAsString:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEmphasis()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasis:I

    .line 3
    return v0
.end method

.method public getEmphasisAsString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisAsString:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFrameLength()I
    .registers 6

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    .line 3
    const-string v1, "Mp3 Unknown Layer:"

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v0, :cond_92

    .line 10
    if-eq v0, v2, :cond_92

    .line 12
    if-ne v0, v3, :cond_7d

    .line 14
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    .line 16
    if-eq v0, v4, :cond_61

    .line 18
    if-eq v0, v2, :cond_45

    .line 20
    if-ne v0, v3, :cond_32

    .line 22
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v0

    .line 30
    mul-int/lit16 v0, v0, 0x3e8

    .line 32
    mul-int/lit8 v0, v0, 0xc

    .line 34
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v1

    .line 42
    div-int/2addr v0, v1

    .line 43
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    .line 46
    move-result v1

    .line 47
    add-int/2addr v1, v0

    .line 48
    mul-int/lit8 v1, v1, 0x4

    .line 50
    return v1

    .line 51
    :cond_32
    new-instance v0, Ljava/lang/RuntimeException;

    .line 53
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v1

    .line 57
    iget v2, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 69
    throw v0

    .line 70
    :cond_45
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result v0

    .line 78
    mul-int/lit16 v0, v0, 0x3e8

    .line 80
    mul-int/lit16 v0, v0, 0x90

    .line 82
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 89
    move-result v1

    .line 90
    div-int/2addr v0, v1

    .line 91
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    .line 94
    move-result v1

    .line 95
    mul-int/2addr v1, v4

    .line 96
    add-int/2addr v1, v0

    .line 97
    return v1

    .line 98
    :cond_61
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result v0

    .line 106
    mul-int/lit16 v0, v0, 0x3e8

    .line 108
    mul-int/lit16 v0, v0, 0x90

    .line 110
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 117
    move-result v1

    .line 118
    div-int/2addr v0, v1

    .line 119
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    .line 122
    move-result v1

    .line 123
    mul-int/2addr v1, v4

    .line 124
    add-int/2addr v1, v0

    .line 125
    return v1

    .line 126
    :cond_7d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 128
    const-string v1, "Mp3 Unknown Version:"

    .line 130
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    move-result-object v1

    .line 134
    iget v2, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 146
    throw v0

    .line 147
    :cond_92
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    .line 149
    if-eq v0, v4, :cond_108

    .line 151
    if-eq v0, v2, :cond_ca

    .line 153
    if-ne v0, v3, :cond_b7

    .line 155
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 162
    move-result v0

    .line 163
    mul-int/lit16 v0, v0, 0x3e8

    .line 165
    mul-int/lit8 v0, v0, 0xc

    .line 167
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 174
    move-result v1

    .line 175
    div-int/2addr v0, v1

    .line 176
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    .line 179
    move-result v1

    .line 180
    add-int/2addr v1, v0

    .line 181
    mul-int/lit8 v1, v1, 0x4

    .line 183
    return v1

    .line 184
    :cond_b7
    new-instance v0, Ljava/lang/RuntimeException;

    .line 186
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    move-result-object v1

    .line 190
    iget v2, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v1

    .line 199
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 202
    throw v0

    .line 203
    :cond_ca
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getChannelMode()I

    .line 206
    move-result v0

    .line 207
    if-ne v0, v3, :cond_ec

    .line 209
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 216
    move-result v0

    .line 217
    mul-int/lit16 v0, v0, 0x3e8

    .line 219
    mul-int/lit8 v0, v0, 0x48

    .line 221
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 228
    move-result v1

    .line 229
    div-int/2addr v0, v1

    .line 230
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    .line 233
    move-result v1

    .line 234
    mul-int/2addr v1, v4

    .line 235
    add-int/2addr v1, v0

    .line 236
    return v1

    .line 237
    :cond_ec
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 244
    move-result v0

    .line 245
    mul-int/lit16 v0, v0, 0x3e8

    .line 247
    mul-int/lit16 v0, v0, 0x90

    .line 249
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 256
    move-result v1

    .line 257
    div-int/2addr v0, v1

    .line 258
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    .line 261
    move-result v1

    .line 262
    mul-int/2addr v1, v4

    .line 263
    add-int/2addr v1, v0

    .line 264
    return v1

    .line 265
    :cond_108
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getChannelMode()I

    .line 268
    move-result v0

    .line 269
    if-ne v0, v3, :cond_12a

    .line 271
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 278
    move-result v0

    .line 279
    mul-int/lit16 v0, v0, 0x3e8

    .line 281
    mul-int/lit8 v0, v0, 0x48

    .line 283
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 290
    move-result v1

    .line 291
    div-int/2addr v0, v1

    .line 292
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    .line 295
    move-result v1

    .line 296
    mul-int/2addr v1, v4

    .line 297
    add-int/2addr v1, v0

    .line 298
    return v1

    .line 299
    :cond_12a
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 306
    move-result v0

    .line 307
    mul-int/lit16 v0, v0, 0x3e8

    .line 309
    mul-int/lit16 v0, v0, 0x90

    .line 311
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 318
    move-result v1

    .line 319
    div-int/2addr v0, v1

    .line 320
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    .line 323
    move-result v1

    .line 324
    mul-int/2addr v1, v4

    .line 325
    add-int/2addr v1, v0

    .line 326
    return v1
.end method

.method public getLayer()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    .line 3
    return v0
.end method

.method public getLayerAsString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layerAsString:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getModeExtension()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtension:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNoOfSamples()I
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameMap:Ljava/util/Map;

    .line 3
    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Map;

    .line 15
    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public getNumberOfChannels()I
    .registers 4

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_10

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_10

    .line 9
    if-eq v0, v1, :cond_10

    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_f

    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_f
    return v2

    .line 17
    :cond_10
    return v1
.end method

.method public getPaddingLength()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPadding()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public getSamplingRate()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRate:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    .line 3
    return v0
.end method

.method public getVersionAsString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->versionAsString:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isCopyrighted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted:Z

    .line 3
    return v0
.end method

.method public isOriginal()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isOriginal:Z

    .line 3
    return v0
.end method

.method public isPadding()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPadding:Z

    .line 3
    return v0
.end method

.method public isPrivate()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPrivate:Z

    .line 3
    return v0
.end method

.method public isProtected()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isProtected:Z

    .line 3
    return v0
.end method

.method public isVariableBitRate()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, " mpeg frameheader: frame length:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " version:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->versionAsString:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " layer:"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layerAsString:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, " channelMode:"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelModeAsString:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, " noOfSamples:"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getNoOfSamples()I

    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, " samplingRate:"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRate:Ljava/lang/Integer;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " isPadding:"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPadding:Z

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, " isProtected:"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isProtected:Z

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, " isPrivate:"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPrivate:Z

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, " isCopyrighted:"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, " isOriginal:"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted:Z

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, " isVariableBitRate"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isVariableBitRate()Z

    .line 124
    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, " header as binary:"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 135
    const/4 v2, 0x0

    .line 136
    aget-byte v1, v1, v2

    .line 138
    invoke-static {v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->displayAsBinary(B)Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, " "

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 152
    const/4 v3, 0x1

    .line 153
    aget-byte v2, v2, v3

    .line 155
    invoke-static {v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->displayAsBinary(B)Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 167
    const/4 v3, 0x2

    .line 168
    aget-byte v2, v2, v3

    .line 170
    invoke-static {v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->displayAsBinary(B)Ljava/lang/String;

    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 182
    const/4 v2, 0x3

    .line 183
    aget-byte v1, v1, v2

    .line 185
    invoke-static {v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->displayAsBinary(B)Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    return-object v0
.end method
