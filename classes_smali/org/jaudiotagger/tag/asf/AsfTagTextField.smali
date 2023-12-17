.class public Lorg/jaudiotagger/tag/asf/AsfTagTextField;
.super Lorg/jaudiotagger/tag/asf/AsfTagField;
.source "AsfTagTextField.java"

# interfaces
.implements Lorg/jaudiotagger/tag/TagTextField;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 6
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setString(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 4
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    return-void

    .line 5
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot interpret binary as string."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)V

    .line 2
    iget-object p1, p0, Lorg/jaudiotagger/tag/asf/AsfTagField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getDescriptor()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagTextField;->getContent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getDescriptor()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setString(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v0, "Only UTF-16LE is possible with ASF."

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method
