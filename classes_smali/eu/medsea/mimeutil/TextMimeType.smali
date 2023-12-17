.class public Leu/medsea/mimeutil/TextMimeType;
.super Leu/medsea/mimeutil/MimeType;
.source "TextMimeType.java"


# static fields
.field private static final serialVersionUID:J = -0x4297fed5119cac3fL


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Leu/medsea/mimeutil/MimeType;)V
    .registers 2

    .line 7
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Leu/medsea/mimeutil/MimeType;)V

    const-string p1, "Unknown"

    .line 8
    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Leu/medsea/mimeutil/MimeType;Ljava/lang/String;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Leu/medsea/mimeutil/MimeType;)V

    const-string p1, "Unknown"

    .line 5
    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p2}, Leu/medsea/mimeutil/TextMimeType;->getValidEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    const-string p1, "Unknown"

    .line 2
    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p2}, Leu/medsea/mimeutil/TextMimeType;->getValidEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    return-void
.end method

.method private getValidEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/TextMimeType;->isKnownEncoding(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object p1

    .line 8
    :cond_7
    const-string p1, "Unknown"

    .line 10
    return-object p1
.end method

.method private isKnownEncoding(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Leu/medsea/util/EncodingGuesser;->isKnownEncoding(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setMimeType(Leu/medsea/mimeutil/MimeType;)V
    .registers 3

    .line 1
    iget-object v0, p1, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-super {p0}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v1, ";charset="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {p0}, Leu/medsea/mimeutil/TextMimeType;->getEncoding()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
