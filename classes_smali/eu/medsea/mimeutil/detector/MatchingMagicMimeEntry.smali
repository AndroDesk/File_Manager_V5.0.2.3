.class Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;
.super Ljava/lang/Object;
.source "MatchingMagicMimeEntry.java"


# instance fields
.field private magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

.field private specificity:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Leu/medsea/mimeutil/detector/MagicMimeEntry;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->specificity:D

    iput-object p1, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    return-void
.end method

.method private getLevel()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    invoke-virtual {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getParent()Leu/medsea/mimeutil/detector/MagicMimeEntry;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    if-nez v0, :cond_a

    return v1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getParent()Leu/medsea/mimeutil/detector/MagicMimeEntry;

    move-result-object v0

    goto :goto_7
.end method

.method private getRecursiveSubEntryCount()I
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getRecursiveSubEntryCount(Leu/medsea/mimeutil/detector/MagicMimeEntry;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getMagicMimeEntry()Leu/medsea/mimeutil/detector/MagicMimeEntry;
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    return-object v0
.end method

.method public getMimeType()Leu/medsea/mimeutil/MimeType;
    .registers 3

    new-instance v0, Leu/medsea/mimeutil/MimeType;

    iget-object v1, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    invoke-virtual {v1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/MimeType;-><init>(Leu/medsea/mimeutil/MimeType;)V

    return-object v0
.end method

.method public getRecursiveSubEntryCount(Leu/medsea/mimeutil/detector/MagicMimeEntry;I)I
    .registers 5

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getSubEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    invoke-virtual {p0, v1, p2}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getRecursiveSubEntryCount(Leu/medsea/mimeutil/detector/MagicMimeEntry;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    goto :goto_b
.end method

.method public getSpecificity()D
    .registers 5

    iget-wide v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->specificity:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_19

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getRecursiveSubEntryCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->specificity:D

    :cond_19
    iget-wide v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->specificity:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getSpecificity()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
