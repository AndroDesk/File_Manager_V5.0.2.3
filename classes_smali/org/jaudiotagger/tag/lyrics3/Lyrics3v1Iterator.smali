.class public Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;
.super Ljava/lang/Object;
.source "Lyrics3v1Iterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private lastIndex:I

.field private removeIndex:I

.field private tag:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    .line 7
    iput v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 11
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    .line 9
    const/16 v2, 0xa

    .line 11
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    .line 14
    move-result v0

    .line 15
    if-gez v0, :cond_21

    .line 17
    iget v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    .line 19
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 21
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 28
    move-result v1

    .line 29
    if-gt v0, v1, :cond_1f

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const/4 v0, 0x0

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 35
    :goto_22
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 3
    iget v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    iput v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    if-ltz v1, :cond_32

    if-ltz v0, :cond_23

    .line 4
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    .line 5
    :cond_23
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_2f
    iput v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    return-object v1

    .line 7
    :cond_32
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration has no more elements."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 8
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    iget v2, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 24
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    iget v2, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 43
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->setLyric(Ljava/lang/String;)V

    .line 46
    return-void
.end method
