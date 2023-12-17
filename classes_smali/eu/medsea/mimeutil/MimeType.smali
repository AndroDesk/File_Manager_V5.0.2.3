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

    const-string v0, "[/;]++"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Leu/medsea/mimeutil/MimeType;->mimeSplitter:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Leu/medsea/mimeutil/MimeType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "*"

    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Leu/medsea/mimeutil/MimeType;->specificity:I

    iget-object v0, p1, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    iget-object v0, p1, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    iget p1, p1, Leu/medsea/mimeutil/MimeType;->specificity:I

    iput p1, p0, Leu/medsea/mimeutil/MimeType;->specificity:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "*"

    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Leu/medsea/mimeutil/MimeType;->specificity:I

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v1, Leu/medsea/mimeutil/MimeType;->mimeSplitter:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    if-lez v1, :cond_2e

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Leu/medsea/mimeutil/MimeType;->getValidMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    :cond_2e
    array-length v1, p1

    if-le v1, v0, :cond_39

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;->getValidSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    :cond_39
    return-void

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

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    return-object p1

    :cond_e
    :goto_e
    const-string p1, "*"

    return-object p1
.end method

.method private getValidSubType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "*"

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    return-object p1

    :cond_18
    :goto_18
    return-object v0
.end method

.method private match(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Leu/medsea/mimeutil/MimeType;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Leu/medsea/mimeutil/MimeType;

    invoke-virtual {p1}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Leu/medsea/mimeutil/MimeType;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    check-cast p1, Leu/medsea/mimeutil/MimeType;

    iget-object v1, p1, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    iget-object p1, p1, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_1c
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_27

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;->match(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_27
    const/4 p1, 0x0

    return p1
.end method

.method public getMediaType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificity()I
    .registers 2

    iget v0, p0, Leu/medsea/mimeutil/MimeType;->specificity:I

    return v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public setSpecificity(I)V
    .registers 2

    iput p1, p0, Leu/medsea/mimeutil/MimeType;->specificity:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
