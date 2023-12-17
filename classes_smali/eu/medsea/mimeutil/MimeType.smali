.class public Leu/medsea/mimeutil/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final mimeSplitter:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = -0x1260a81bc9767d2eL


# instance fields
.field public mediaType:Ljava/lang/String;

.field private specificity:I

.field public subType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "[/;]++"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Leu/medsea/mimeutil/MimeType;->mimeSplitter:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>(Leu/medsea/mimeutil/MimeType;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "*"

    .line 2
    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Leu/medsea/mimeutil/MimeType;->specificity:I

    .line 5
    iget-object v0, p1, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    .line 7
    iget p1, p1, Leu/medsea/mimeutil/MimeType;->specificity:I

    iput p1, p0, Leu/medsea/mimeutil/MimeType;->specificity:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "*"

    .line 9
    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Leu/medsea/mimeutil/MimeType;->specificity:I

    if-eqz p1, :cond_3a

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3a

    .line 13
    sget-object v1, Leu/medsea/mimeutil/MimeType;->mimeSplitter:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 14
    array-length v1, p1

    if-lez v1, :cond_2e

    const/4 v1, 0x0

    .line 15
    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Leu/medsea/mimeutil/MimeType;->getValidMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 16
    :cond_2e
    array-length v1, p1

    if-le v1, v0, :cond_39

    .line 17
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;->getValidSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    :cond_39
    return-void

    .line 18
    :cond_3a
    new-instance v0, Leu/medsea/mimeutil/MimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Invalid MimeType ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getValidMediaType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p1, :cond_e

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    return-object p1

    .line 15
    :cond_e
    :goto_e
    const-string p1, "*"

    .line 17
    return-object p1
.end method

.method private getValidSubType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "*"

    .line 3
    if-eqz p1, :cond_18

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_18

    .line 15
    iget-object v1, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_17

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    return-object p1

    .line 25
    :cond_18
    :goto_18
    return-object v0
.end method

.method private match(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 1
    instance-of v0, p1, Leu/medsea/mimeutil/MimeType;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    check-cast p1, Leu/medsea/mimeutil/MimeType;

    .line 11
    invoke-virtual {p1}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Leu/medsea/mimeutil/MimeType;

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    iget-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 7
    check-cast p1, Leu/medsea/mimeutil/MimeType;

    .line 9
    iget-object v1, p1, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_27

    .line 17
    iget-object v0, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    .line 19
    iget-object p1, p1, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_27

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    instance-of v0, p1, Ljava/lang/String;

    .line 31
    if-eqz v0, :cond_27

    .line 33
    check-cast p1, Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;->match(Ljava/lang/String;)Z

    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :cond_27
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public getMediaType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSpecificity()I
    .registers 2

    .line 1
    iget v0, p0, Leu/medsea/mimeutil/MimeType;->specificity:I

    .line 3
    return v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public setSpecificity(I)V
    .registers 2

    .line 1
    iput p1, p0, Leu/medsea/mimeutil/MimeType;->specificity:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v1, "/"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    iget-object v1, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
