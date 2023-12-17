.class public Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
.super Ljava/lang/Object;
.source "GenericAudioHeader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/AudioHeader;


# static fields
.field public static final FIELD_BITRATE:Ljava/lang/String; = "BITRATE"

.field public static final FIELD_CHANNEL:Ljava/lang/String; = "CHANNB"

.field public static final FIELD_INFOS:Ljava/lang/String; = "INFOS"

.field public static final FIELD_LENGTH:Ljava/lang/String; = "LENGTH"

.field public static final FIELD_SAMPLERATE:Ljava/lang/String; = "SAMPLING"

.field public static final FIELD_TYPE:Ljava/lang/String; = "TYPE"

.field public static final FIELD_VBR:Ljava/lang/String; = "VBR"


# instance fields
.field public content:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isLossless:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isLossless:Z

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BITRATE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v2, "CHANNB"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v2, "TYPE"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v2, "INFOS"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v2, "SAMPLING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const/high16 v1, -0x40800000  # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "LENGTH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "VBR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBitRate()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "BITRATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitRateAsNumber()J
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "BITRATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChannelNumber()I
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "CHANNB"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getChannels()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getChannelNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtraEncodingInfos()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "INFOS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPreciseLength()F
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "LENGTH"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "SAMPLING"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRateAsNumber()I
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "SAMPLING"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrackLength()I
    .registers 2

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getPreciseLength()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isLossless()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isLossless:Z

    return v0
.end method

.method public isVariableBitRate()Z
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "VBR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setBitrate(I)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "BITRATE"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setChannelNumber(I)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CHANNB"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtraEncodingInfos(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "INFOS"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLength(I)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLossless(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isLossless:Z

    return-void
.end method

.method public setPreciseLength(F)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSamplingRate(I)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "SAMPLING"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVariableBitRate(Z)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "VBR"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Encoding infos content:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
