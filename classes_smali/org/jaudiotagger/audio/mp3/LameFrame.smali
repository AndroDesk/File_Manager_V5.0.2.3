.class public Lorg/jaudiotagger/audio/mp3/LameFrame;
.super Ljava/lang/Object;
.source "LameFrame.java"


# static fields
.field public static final ENCODER_SIZE:I = 0x9

.field public static final LAME_HEADER_BUFFER_SIZE:I = 0x24

.field public static final LAME_ID:Ljava/lang/String; = "LAME"

.field public static final LAME_ID_SIZE:I = 0x4


# instance fields
.field private encoder:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/16 v1, 0x9

    .line 7
    const-string v2, "ISO-8859-1"

    .line 9
    invoke-static {p1, v0, v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/LameFrame;->encoder:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static parseLameFrame(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/LameFrame;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x4

    .line 7
    const-string v2, "ISO-8859-1"

    .line 9
    invoke-static {p0, v0, v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 16
    const-string v1, "LAME"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1d

    .line 24
    new-instance v0, Lorg/jaudiotagger/audio/mp3/LameFrame;

    .line 26
    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/mp3/LameFrame;-><init>(Ljava/nio/ByteBuffer;)V

    .line 29
    return-object v0

    .line 30
    :cond_1d
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method


# virtual methods
.method public getEncoder()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/LameFrame;->encoder:Ljava/lang/String;

    .line 3
    return-object v0
.end method
