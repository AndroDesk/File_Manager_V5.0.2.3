.class public interface abstract Lorg/jaudiotagger/audio/asf/io/ChunkReader;
.super Ljava/lang/Object;
.source "ChunkReader.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract canFail()Z
.end method

.method public abstract getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
.end method

.method public abstract read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;
.end method
