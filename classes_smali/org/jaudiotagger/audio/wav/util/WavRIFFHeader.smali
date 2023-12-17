.class public Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;
.super Ljava/lang/Object;
.source "WavRIFFHeader.java"


# instance fields
.field private isValid:Z


# direct methods
.method public constructor <init>([B)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;->isValid:Z

    .line 7
    new-instance v1, Ljava/lang/String;

    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-direct {v1, p1, v0, v2}, Ljava/lang/String;-><init>([BII)V

    .line 13
    new-instance v0, Ljava/lang/String;

    .line 15
    const/16 v3, 0x8

    .line 17
    invoke-direct {v0, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 20
    const-string p1, "RIFF"

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_26

    .line 28
    const-string p1, "WAVE"

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_26

    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;->isValid:Z

    .line 39
    :cond_26
    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;->isValid:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "RIFF-WAVE Header:\n"

    .line 3
    const-string v1, "Is valid?: "

    .line 5
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;->isValid:Z

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
