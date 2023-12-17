.class Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;
.super Ljava/lang/Object;
.source "MatchingMagicMimeEntry.java"


# instance fields
.field private magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

.field private specificity:D


# direct methods
.method public constructor <init>(Leu/medsea/mimeutil/detector/MagicMimeEntry;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    .line 6
    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->specificity:D

    .line 8
    iput-object p1, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 10
    return-void
.end method

.method private getLevel()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 3
    invoke-virtual {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getParent()Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 13
    invoke-virtual {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getParent()Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_7
.end method

.method private getRecursiveSubEntryCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getRecursiveSubEntryCount(Leu/medsea/mimeutil/detector/MagicMimeEntry;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getMagicMimeEntry()Leu/medsea/mimeutil/detector/MagicMimeEntry;
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 3
    return-object v0
.end method

.method public getMimeType()Leu/medsea/mimeutil/MimeType;
    .registers 3

    .line 1
    new-instance v0, Leu/medsea/mimeutil/MimeType;

    .line 3
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->magicMimeEntry:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 5
    invoke-virtual {v1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/MimeType;-><init>(Leu/medsea/mimeutil/MimeType;)V

    .line 12
    return-object v0
.end method

.method public getRecursiveSubEntryCount(Leu/medsea/mimeutil/detector/MagicMimeEntry;I)I
    .registers 5

    add-int/lit8 p2, p2, 0x1

    .line 2
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

    .line 3
    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 4
    invoke-virtual {p0, v1, p2}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getRecursiveSubEntryCount(Leu/medsea/mimeutil/detector/MagicMimeEntry;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    goto :goto_b
.end method

.method public getSpecificity()D
    .registers 5

    .line 1
    iget-wide v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->specificity:D

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmpg-double v0, v0, v2

    .line 7
    if-gez v0, :cond_19

    .line 9
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getLevel()I

    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 15
    int-to-double v0, v0

    .line 16
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getRecursiveSubEntryCount()I

    .line 19
    move-result v2

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 22
    int-to-double v2, v2

    .line 23
    div-double/2addr v0, v2

    .line 24
    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->specificity:D

    .line 26
    :cond_19
    iget-wide v0, p0, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->specificity:D

    .line 28
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 14
    const/16 v1, 0x5b

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 26
    const/16 v1, 0x2c

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MatchingMagicMimeEntry;->getSpecificity()D

    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 38
    const/16 v1, 0x5d

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
