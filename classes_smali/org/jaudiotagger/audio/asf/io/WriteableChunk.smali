.class public interface abstract Lorg/jaudiotagger/audio/asf/io/WriteableChunk;
.super Ljava/lang/Object;
.source "WriteableChunk.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getCurrentAsfChunkSize()J
.end method

.method public abstract getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract writeInto(Ljava/io/OutputStream;)J
.end method
