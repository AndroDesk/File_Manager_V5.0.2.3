.class public interface abstract Lorg/jaudiotagger/audio/asf/io/ChunkModifier;
.super Ljava/lang/Object;
.source "ChunkModifier.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract isApplicable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z
.end method

.method public abstract modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;
.end method
