.class public Lorg/jaudiotagger/tag/mp4/atom/Mp4MeanBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4MeanBox.java"


# static fields
.field public static final FLAGS_LENGTH:I = 0x3

.field public static final IDENTIFIER:Ljava/lang/String; = "mean"

.field public static final PRE_DATA_LENGTH:I = 0x4

.field public static final VERSION_LENGTH:I = 0x1


# instance fields
.field private issuer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 6
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "mean"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_28

    .line 18
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x4

    .line 29
    sub-int/2addr v0, v1

    .line 30
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getEncoding()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p2, v1, v0, p1}, Lorg/jaudiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4MeanBox;->issuer:Ljava/lang/String;

    .line 40
    return-void

    .line 41
    :cond_28
    new-instance p2, Ljava/lang/RuntimeException;

    .line 43
    const-string v0, "Unable to process data box because identifier is:"

    .line 45
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p2
.end method


# virtual methods
.method public getIssuer()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4MeanBox;->issuer:Ljava/lang/String;

    .line 3
    return-object v0
.end method
