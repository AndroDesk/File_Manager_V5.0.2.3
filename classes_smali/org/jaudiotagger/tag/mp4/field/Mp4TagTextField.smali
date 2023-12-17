.class public Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;
.super Lorg/jaudiotagger/tag/mp4/Mp4TagField;
.source "Mp4TagTextField.java"

# interfaces
.implements Lorg/jaudiotagger/tag/TagTextField;


# instance fields
.field public content:Ljava/lang/String;

.field public dataSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 3
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    new-instance v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;

    .line 8
    invoke-direct {v1, v0, p1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 11
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->dataSize:I

    .line 17
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->getContent()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->getContent()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 13
    :cond_c
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDataBytes()[B
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->getEncoding()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 3
    return-object v0
.end method

.method public isBinary()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 3
    return-object v0
.end method
