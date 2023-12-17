.class public final enum Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;
.super Ljava/lang/Enum;
.source "VorbisPacketType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

.field public static final enum AUDIO:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

.field public static final enum COMMENT_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

.field public static final enum IDENTIFICATION_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

.field public static final enum SETUP_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;


# instance fields
.field public type:I


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 3
    const-string v1, "AUDIO"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->AUDIO:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 11
    new-instance v1, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 13
    const-string v3, "IDENTIFICATION_HEADER"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->IDENTIFICATION_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 21
    new-instance v3, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 23
    const-string v5, "COMMENT_HEADER"

    .line 25
    const/4 v6, 0x2

    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v3, v5, v6, v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v3, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->COMMENT_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 32
    new-instance v5, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 34
    const-string v8, "SETUP_HEADER"

    .line 36
    const/4 v9, 0x5

    .line 37
    invoke-direct {v5, v8, v7, v9}, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    .line 40
    sput-object v5, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->SETUP_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 42
    const/4 v8, 0x4

    .line 43
    new-array v8, v8, [Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 45
    aput-object v0, v8, v2

    .line 47
    aput-object v1, v8, v4

    .line 49
    aput-object v3, v8, v6

    .line 51
    aput-object v5, v8, v7

    .line 53
    sput-object v8, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->$VALUES:[Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->type:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->$VALUES:[Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->type:I

    .line 3
    return v0
.end method
