.class public Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;
.super Ljava/lang/Object;
.source "VorbisSetupHeader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/ogg/util/VorbisHeader;


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private isValid:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.ogg.atom"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->isValid:Z

    .line 7
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->decodeHeader([B)V

    .line 10
    return-void
.end method


# virtual methods
.method public decodeHeader([B)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v0, p1, v0

    .line 4
    sget-object v1, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->logger:Ljava/util/logging/Logger;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v3, "packetType"

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x6

    .line 28
    const-string v3, "ISO-8859-1"

    .line 30
    invoke-static {p1, v1, v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    sget-object v2, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->SETUP_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 36
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->getType()I

    .line 39
    move-result v2

    .line 40
    if-ne v0, v2, :cond_33

    .line 42
    const-string v0, "vorbis"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_33

    .line 50
    iput-boolean v1, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->isValid:Z

    .line 52
    :cond_33
    return-void
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->isValid:Z

    .line 3
    return v0
.end method
