.class public Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;
.super Ljava/lang/Object;
.source "VorbisCommentTagField.java"

# interfaces
.implements Lorg/jaudiotagger/tag/TagTextField;


# static fields
.field private static final ERRONEOUS_ID:Ljava/lang/String; = "ERRONEOUS"


# instance fields
.field private common:Z

.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->checkCommon()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "="

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1a

    const-string p1, "ERRONEOUS"

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    goto :goto_38

    :cond_1a
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_34

    add-int/lit8 p1, p1, 0x1

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    goto :goto_38

    :cond_34
    const-string p1, ""

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    .line 10
    :goto_38
    invoke-direct {p0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->checkCommon()V

    return-void
.end method

.method private checkCommon()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 3
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TITLE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 5
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_73

    .line 15
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 17
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUM:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 19
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_73

    .line 29
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 31
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 33
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_73

    .line 43
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 45
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->GENRE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 47
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_73

    .line 57
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 59
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TRACKNUMBER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 61
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_73

    .line 71
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 73
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DATE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 75
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_73

    .line 85
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 87
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DESCRIPTION:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 89
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_73

    .line 99
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 101
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COMMENT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 103
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_71

    .line 113
    goto :goto_73

    .line 114
    :cond_71
    const/4 v0, 0x0

    .line 115
    goto :goto_74

    .line 116
    :cond_73
    :goto_73
    const/4 v0, 0x1

    .line 117
    :goto_74
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->common:Z

    .line 119
    return-void
.end method


# virtual methods
.method public copy([B[BI)V
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    return-void
.end method

.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/TagTextField;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    check-cast p1, Lorg/jaudiotagger/tag/TagTextField;

    .line 7
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    .line 13
    :cond_c
    return-void
.end method

.method public getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRawContent()[B
    .registers 10

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 4
    iget-object v2, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 6
    const-string v3, "ISO-8859-1"

    .line 8
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    .line 14
    const-string v4, "UTF-8"

    .line 16
    invoke-virtual {p0, v3, v4}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 19
    move-result-object v3

    .line 20
    array-length v4, v2

    .line 21
    add-int/2addr v4, v0

    .line 22
    const/4 v5, 0x1

    .line 23
    add-int/2addr v4, v5

    .line 24
    array-length v6, v3

    .line 25
    add-int/2addr v4, v6

    .line 26
    new-array v4, v4, [B

    .line 28
    array-length v6, v2

    .line 29
    add-int/2addr v6, v5

    .line 30
    array-length v7, v3

    .line 31
    add-int/2addr v6, v7

    .line 32
    const/high16 v7, -0x1000000

    .line 34
    and-int/2addr v7, v6

    .line 35
    shr-int/lit8 v7, v7, 0x18

    .line 37
    int-to-byte v7, v7

    .line 38
    const/4 v8, 0x3

    .line 39
    aput-byte v7, v1, v8

    .line 41
    const/high16 v7, 0xff0000

    .line 43
    and-int/2addr v7, v6

    .line 44
    shr-int/lit8 v7, v7, 0x10

    .line 46
    int-to-byte v7, v7

    .line 47
    const/4 v8, 0x2

    .line 48
    aput-byte v7, v1, v8

    .line 50
    const v7, 0xff00

    .line 53
    and-int/2addr v7, v6

    .line 54
    shr-int/lit8 v7, v7, 0x8

    .line 56
    int-to-byte v7, v7

    .line 57
    aput-byte v7, v1, v5

    .line 59
    and-int/lit16 v6, v6, 0xff

    .line 61
    int-to-byte v6, v6

    .line 62
    const/4 v7, 0x0

    .line 63
    aput-byte v6, v1, v7

    .line 65
    invoke-virtual {p0, v1, v4, v7}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->copy([B[BI)V

    .line 68
    invoke-virtual {p0, v2, v4, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->copy([B[BI)V

    .line 71
    array-length v1, v2

    .line 72
    add-int/2addr v0, v1

    .line 73
    const/16 v1, 0x3d

    .line 75
    aput-byte v1, v4, v0

    .line 77
    add-int/2addr v0, v5

    .line 78
    invoke-virtual {p0, v3, v4, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->copy([B[BI)V

    .line 81
    return-object v4
.end method

.method public isBinary(Z)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 6
    const-string v0, "OggTagFields cannot be changed to binary.\nbinary data should be stored elsewhere according to Vorbis_I_spec."

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1
.end method

.method public isBinary()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->common:Z

    .line 3
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    const-string v0, "UTF-8"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 14
    const-string v0, "The encoding of OggTagFields cannot be changed.(specified to be UTF-8)"

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->getContent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
