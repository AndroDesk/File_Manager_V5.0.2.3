.class public Leu/medsea/mimeutil/TextMimeType;
.super Leu/medsea/mimeutil/MimeType;
.source "TextMimeType.java"


# static fields
.field private static final serialVersionUID:J = -0x4297fed5119cac3fL


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Leu/medsea/mimeutil/MimeType;)V
    .registers 2

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Leu/medsea/mimeutil/MimeType;)V

    const-string p1, "Unknown"

    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Leu/medsea/mimeutil/MimeType;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Leu/medsea/mimeutil/MimeType;)V

    const-string p1, "Unknown"

    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    invoke-direct {p0, p2}, Leu/medsea/mimeutil/TextMimeType;->getValidEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    const-string p1, "Unknown"

    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    invoke-direct {p0, p2}, Leu/medsea/mimeutil/TextMimeType;->getValidEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    return-void
.end method

.method private getValidEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/TextMimeType;->isKnownEncoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    const-string p1, "Unknown"

    return-object p1
.end method

.method private isKnownEncoding(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1}, Leu/medsea/util/EncodingGuesser;->isKnownEncoding(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Leu/medsea/mimeutil/TextMimeType;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Leu/medsea/mimeutil/MimeType;)V
    .registers 3

    iget-object v0, p1, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    iput-object v0, p0, Leu/medsea/mimeutil/MimeType;->mediaType:Ljava/lang/String;

    iget-object p1, p1, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    iput-object p1, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Leu/medsea/mimeutil/MimeType;->subType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ";charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Leu/medsea/mimeutil/TextMimeType;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
