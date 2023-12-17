.class public Lorg/jaudiotagger/audio/generic/AudioFileModificationAdapter;
.super Ljava/lang/Object;
.source "AudioFileModificationAdapter.java"

# interfaces
.implements Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileModified(Lorg/jaudiotagger/audio/AudioFile;Ljava/io/File;)V
    .registers 3

    return-void
.end method

.method public fileOperationFinished(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public fileWillBeModified(Lorg/jaudiotagger/audio/AudioFile;Z)V
    .registers 3

    return-void
.end method

.method public vetoThrown(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;Lorg/jaudiotagger/audio/AudioFile;Lorg/jaudiotagger/audio/exceptions/ModifyVetoException;)V
    .registers 4

    return-void
.end method
