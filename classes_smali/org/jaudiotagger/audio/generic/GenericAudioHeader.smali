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
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isLossless:Z

    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 13
    iput-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "BITRATE"

    .line 22
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 27
    const-string v2, "CHANNB"

    .line 29
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 34
    const-string v2, "TYPE"

    .line 36
    const-string v3, ""

    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 43
    const-string v2, "INFOS"

    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 50
    const-string v2, "SAMPLING"

    .line 52
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 57
    const/high16 v1, -0x40800000  # -1.0f

    .line 59
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    move-result-object v1

    .line 63
    const-string v2, "LENGTH"

    .line 65
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 70
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 72
    const-string v2, "VBR"

    .line 74
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public getBitRate()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "BITRATE"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getBitRateAsNumber()J
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "BITRATE"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public getChannelNumber()I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "CHANNB"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getChannels()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getChannelNumber()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "TYPE"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 11
    return-object v0
.end method

.method public getExtraEncodingInfos()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "INFOS"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 11
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "TYPE"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 11
    return-object v0
.end method

.method public getPreciseLength()F
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "LENGTH"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Float;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "SAMPLING"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getSampleRateAsNumber()I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "SAMPLING"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getTrackLength()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getPreciseLength()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    return v0
.end method

.method public isLossless()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isLossless:Z

    .line 3
    return v0
.end method

.method public isVariableBitRate()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "VBR"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public setBitrate(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    const-string v1, "BITRATE"

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public setChannelNumber(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    const-string v1, "CHANNB"

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "TYPE"

    .line 5
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public setExtraEncodingInfos(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    const-string v1, "INFOS"

    .line 5
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public setLength(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    int-to-float p1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    move-result-object p1

    .line 8
    const-string v1, "LENGTH"

    .line 10
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-void
.end method

.method public setLossless(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isLossless:Z

    .line 3
    return-void
.end method

.method public setPreciseLength(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p1

    .line 7
    const-string v1, "LENGTH"

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public setSamplingRate(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    const-string v1, "SAMPLING"

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public setVariableBitRate(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 7
    const-string v1, "VBR"

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    const/16 v1, 0x32

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 8
    const-string v1, "Encoding infos content:\n"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 23
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3e

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 35
    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    .line 37
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    const-string v4, "\t"

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v2, " : "

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 57
    const-string v2, "\n"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    goto :goto_16

    .line 63
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 71
    move-result v0

    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 74
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method
