.class public Lorg/jaudiotagger/audio/generic/ModificationHandler;
.super Ljava/lang/Object;
.source "ModificationHandler.java"

# interfaces
.implements Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;


# instance fields
.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    .line 11
    return-void
.end method


# virtual methods
.method public addAudioFileModificationListener(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    return-void
.end method

.method public fileModified(Lorg/jaudiotagger/audio/AudioFile;Ljava/io/File;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1b

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    .line 19
    :try_start_12
    invoke-interface {v1, p1, p2}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileModified(Lorg/jaudiotagger/audio/AudioFile;Ljava/io/File;)V
    :try_end_15
    .catch Lorg/jaudiotagger/audio/exceptions/ModifyVetoException; {:try_start_12 .. :try_end_15} :catch_16

    .line 22
    goto :goto_6

    .line 23
    :catch_16
    move-exception p2

    .line 24
    invoke-virtual {p0, v1, p1, p2}, Lorg/jaudiotagger/audio/generic/ModificationHandler;->vetoThrown(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;Lorg/jaudiotagger/audio/AudioFile;Lorg/jaudiotagger/audio/exceptions/ModifyVetoException;)V

    .line 27
    throw p2

    .line 28
    :cond_1b
    return-void
.end method

.method public fileOperationFinished(Ljava/io/File;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    .line 19
    invoke-interface {v1, p1}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public fileWillBeModified(Lorg/jaudiotagger/audio/AudioFile;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1b

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    .line 19
    :try_start_12
    invoke-interface {v1, p1, p2}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileWillBeModified(Lorg/jaudiotagger/audio/AudioFile;Z)V
    :try_end_15
    .catch Lorg/jaudiotagger/audio/exceptions/ModifyVetoException; {:try_start_12 .. :try_end_15} :catch_16

    .line 22
    goto :goto_6

    .line 23
    :catch_16
    move-exception p2

    .line 24
    invoke-virtual {p0, v1, p1, p2}, Lorg/jaudiotagger/audio/generic/ModificationHandler;->vetoThrown(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;Lorg/jaudiotagger/audio/AudioFile;Lorg/jaudiotagger/audio/exceptions/ModifyVetoException;)V

    .line 27
    throw p2

    .line 28
    :cond_1b
    return-void
.end method

.method public removeAudioFileModificationListener(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    return-void
.end method

.method public vetoThrown(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;Lorg/jaudiotagger/audio/AudioFile;Lorg/jaudiotagger/audio/exceptions/ModifyVetoException;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    .line 19
    invoke-interface {v1, p1, p2, p3}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->vetoThrown(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;Lorg/jaudiotagger/audio/AudioFile;Lorg/jaudiotagger/audio/exceptions/ModifyVetoException;)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method
