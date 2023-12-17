.class public final enum Lorg/jaudiotagger/audio/mp4/EncoderType;
.super Ljava/lang/Enum;
.source "EncoderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/mp4/EncoderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/mp4/EncoderType;

.field public static final enum AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

.field public static final enum APPLE_LOSSLESS:Lorg/jaudiotagger/audio/mp4/EncoderType;

.field public static final enum DRM_AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 3
    const-string v1, "AAC"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lorg/jaudiotagger/audio/mp4/EncoderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/mp4/EncoderType;->AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 11
    new-instance v1, Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 13
    const-string v3, "DRM_AAC"

    .line 15
    const/4 v4, 0x1

    .line 16
    const-string v5, "DRM AAC"

    .line 18
    invoke-direct {v1, v3, v4, v5}, Lorg/jaudiotagger/audio/mp4/EncoderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    sput-object v1, Lorg/jaudiotagger/audio/mp4/EncoderType;->DRM_AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 23
    new-instance v3, Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 25
    const-string v5, "APPLE_LOSSLESS"

    .line 27
    const/4 v6, 0x2

    .line 28
    const-string v7, "Apple Lossless"

    .line 30
    invoke-direct {v3, v5, v6, v7}, Lorg/jaudiotagger/audio/mp4/EncoderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    sput-object v3, Lorg/jaudiotagger/audio/mp4/EncoderType;->APPLE_LOSSLESS:Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 35
    const/4 v5, 0x3

    .line 36
    new-array v5, v5, [Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 38
    aput-object v0, v5, v2

    .line 40
    aput-object v1, v5, v4

    .line 42
    aput-object v3, v5, v6

    .line 44
    sput-object v5, Lorg/jaudiotagger/audio/mp4/EncoderType;->$VALUES:[Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 46
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lorg/jaudiotagger/audio/mp4/EncoderType;->description:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/EncoderType;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/mp4/EncoderType;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/EncoderType;->$VALUES:[Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/mp4/EncoderType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/EncoderType;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method
