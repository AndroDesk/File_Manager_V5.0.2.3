.class public interface abstract Lorg/jaudiotagger/audio/AudioHeader;
.super Ljava/lang/Object;
.source "AudioHeader.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getBitRate()Ljava/lang/String;
.end method

.method public abstract getBitRateAsNumber()J
.end method

.method public abstract getChannels()Ljava/lang/String;
.end method

.method public abstract getEncodingType()Ljava/lang/String;
.end method

.method public abstract getFormat()Ljava/lang/String;
.end method

.method public abstract getSampleRate()Ljava/lang/String;
.end method

.method public abstract getSampleRateAsNumber()I
.end method

.method public abstract getTrackLength()I
.end method

.method public abstract isVariableBitRate()Z
.end method
