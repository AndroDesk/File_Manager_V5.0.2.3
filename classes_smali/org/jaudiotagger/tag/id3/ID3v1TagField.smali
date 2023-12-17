.class public Lorg/jaudiotagger/tag/id3/ID3v1TagField;
.super Ljava/lang/Object;
.source "ID3v1TagField.java"

# interfaces
.implements Lorg/jaudiotagger/tag/TagTextField;


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

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->checkCommon()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "="

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1a

    const-string p1, "ERRONEOUS"

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    goto :goto_38

    :cond_1a
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_34

    add-int/lit8 p1, p1, 0x1

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    goto :goto_38

    :cond_34
    const-string p1, ""

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    .line 10
    :goto_38
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->checkCommon()V

    return-void
.end method

.method private checkCommon()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 3
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TITLE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_65

    .line 15
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 17
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ALBUM:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_65

    .line 29
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 31
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ARTIST:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_65

    .line 43
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 45
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->GENRE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_65

    .line 57
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 59
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->YEAR:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 61
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_65

    .line 71
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 73
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->COMMENT:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_65

    .line 85
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 87
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TRACK:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_63

    .line 99
    goto :goto_65

    .line 100
    :cond_63
    const/4 v0, 0x0

    .line 101
    goto :goto_66

    .line 102
    :cond_65
    :goto_65
    const/4 v0, 0x1

    .line 103
    :goto_66
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->common:Z

    .line 105
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
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    .line 13
    :cond_c
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 6
    const-string v3, "ISO-8859-1"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 11
    move-result-object v2

    .line 12
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    .line 14
    invoke-static {v4, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 17
    move-result-object v3

    .line 18
    array-length v4, v2

    .line 19
    add-int/2addr v4, v0

    .line 20
    const/4 v5, 0x1

    .line 21
    add-int/2addr v4, v5

    .line 22
    array-length v6, v3

    .line 23
    add-int/2addr v4, v6

    .line 24
    new-array v4, v4, [B

    .line 26
    array-length v6, v2

    .line 27
    add-int/2addr v6, v5

    .line 28
    array-length v7, v3

    .line 29
    add-int/2addr v6, v7

    .line 30
    const/high16 v7, -0x1000000

    .line 32
    and-int/2addr v7, v6

    .line 33
    shr-int/lit8 v7, v7, 0x18

    .line 35
    int-to-byte v7, v7

    .line 36
    const/4 v8, 0x3

    .line 37
    aput-byte v7, v1, v8

    .line 39
    const/high16 v7, 0xff0000

    .line 41
    and-int/2addr v7, v6

    .line 42
    shr-int/lit8 v7, v7, 0x10

    .line 44
    int-to-byte v7, v7

    .line 45
    const/4 v8, 0x2

    .line 46
    aput-byte v7, v1, v8

    .line 48
    const v7, 0xff00

    .line 51
    and-int/2addr v7, v6

    .line 52
    shr-int/lit8 v7, v7, 0x8

    .line 54
    int-to-byte v7, v7

    .line 55
    aput-byte v7, v1, v5

    .line 57
    and-int/lit16 v6, v6, 0xff

    .line 59
    int-to-byte v6, v6

    .line 60
    const/4 v7, 0x0

    .line 61
    aput-byte v6, v1, v7

    .line 63
    invoke-virtual {p0, v1, v4, v7}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->copy([B[BI)V

    .line 66
    invoke-virtual {p0, v2, v4, v0}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->copy([B[BI)V

    .line 69
    array-length v1, v2

    .line 70
    add-int/2addr v0, v1

    .line 71
    const/16 v1, 0x3d

    .line 73
    aput-byte v1, v4, v0

    .line 75
    add-int/2addr v0, v5

    .line 76
    invoke-virtual {p0, v3, v4, v0}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->copy([B[BI)V

    .line 79
    return-object v4
.end method

.method public isBinary(Z)V
    .registers 2

    return-void
.end method

.method public isBinary()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->common:Z

    .line 3
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

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
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;->getContent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
