.class Leu/medsea/mimeutil/detector/MagicMimeEntry;
.super Ljava/lang/Object;
.source "MagicMimeEntry.java"


# static fields
.field public static final BELONG_TYPE:I = 0x2

.field public static final BESHORT_TYPE:I = 0x5

.field public static final BYTE_TYPE:I = 0x7

.field public static final LELONG_TYPE:I = 0x4

.field public static final LESHORT_TYPE:I = 0x6

.field public static final SHORT_TYPE:I = 0x3

.field public static final STRING_TYPE:I = 0x1

.field public static final UNKNOWN_TYPE:I = 0x14


# instance fields
.field private checkBytesFrom:I

.field private content:Ljava/lang/String;

.field private contentNumber:J

.field public isBetween:Z

.field private mimeEnc:Ljava/lang/String;

.field private mimeType:Leu/medsea/mimeutil/MimeType;

.field private operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

.field private parent:Leu/medsea/mimeutil/detector/MagicMimeEntry;

.field private subEntries:Ljava/util/ArrayList;

.field private type:I

.field private typeStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILeu/medsea/mimeutil/detector/MagicMimeEntry;Ljava/util/ArrayList;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    .line 4
    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    if-eqz p3, :cond_4e

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_4e

    .line 6
    :cond_17
    iput-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->parent:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    if-eqz p2, :cond_20

    .line 7
    iget-object p2, p2, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const/4 p2, 0x0

    .line 8
    :try_start_21
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->addEntry(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_47

    .line 9
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10
    :goto_2d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_34

    goto :goto_46

    .line 11
    :cond_34
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->howManyGreaterThans(Ljava/lang/String;)I

    move-result v0

    if-le v0, p1, :cond_46

    .line 12
    new-instance v1, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    invoke-direct {v1, v0, p0, p3}, Leu/medsea/mimeutil/detector/MagicMimeEntry;-><init>(ILeu/medsea/mimeutil/detector/MagicMimeEntry;Ljava/util/ArrayList;)V

    goto :goto_2d

    :cond_46
    :goto_46
    return-void

    :catch_47
    move-exception p1

    .line 13
    new-instance p2, Leu/medsea/mimeutil/detector/InvalidMagicMimeEntryException;

    invoke-direct {p2, p3, p1}, Leu/medsea/mimeutil/detector/InvalidMagicMimeEntryException;-><init>(Ljava/util/List;Ljava/lang/Throwable;)V

    throw p2

    :cond_4e
    :goto_4e
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;-><init>(ILeu/medsea/mimeutil/detector/MagicMimeEntry;Ljava/util/ArrayList;)V

    return-void
.end method

.method private _getInputStreamMarkLength()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    packed-switch v0, :pswitch_data_52

    .line 10
    return v1

    .line 11
    :pswitch_a  #0x7
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, v2

    .line 16
    return v0

    .line 17
    :pswitch_10  #0x3, 0x5, 0x6
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, 0x2

    .line 23
    return v0

    .line 24
    :pswitch_17  #0x2, 0x4
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    .line 27
    move-result v0

    .line 28
    add-int/lit8 v0, v0, 0x4

    .line 30
    return v0

    .line 31
    :pswitch_1e  #0x1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    .line 33
    const-string v3, ">"

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 38
    move-result v0

    .line 39
    const/4 v3, -0x1

    .line 40
    if-eq v0, v3, :cond_3c

    .line 42
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    .line 44
    add-int/2addr v0, v2

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 48
    move-result v3

    .line 49
    sub-int/2addr v3, v2

    .line 50
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    move-result v1

    .line 58
    iput-boolean v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->isBetween:Z

    .line 60
    goto :goto_4a

    .line 61
    :cond_3c
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_4a

    .line 67
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 74
    move-result v1

    .line 75
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    .line 78
    move-result v0

    .line 79
    add-int/2addr v0, v1

    .line 80
    add-int/2addr v0, v2

    .line 81
    return v0

    .line 82
    nop

    .line 83
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1e  #00000001
        :pswitch_17  #00000002
        :pswitch_10  #00000003
        :pswitch_17  #00000004
        :pswitch_10  #00000005
        :pswitch_10  #00000006
        :pswitch_a  #00000007
    .end packed-switch
.end method

.method private getInputStreamMarkLength()I
    .registers 4

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->_getInputStreamMarkLength()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_11

    .line 17
    return v0

    .line 18
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 24
    invoke-direct {v2}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getInputStreamMarkLength()I

    .line 27
    move-result v2

    .line 28
    if-ge v0, v2, :cond_a

    .line 30
    move v0, v2

    .line 31
    goto :goto_a
.end method

.method private getMask(Ljava/lang/String;)J
    .registers 6

    .line 1
    const-string v0, "&"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x2

    .line 9
    if-ge v0, v1, :cond_10

    .line 11
    const-wide v0, 0xffffffffL

    .line 16
    return-wide v0

    .line 17
    :cond_10
    const/4 v0, 0x1

    .line 18
    aget-object v2, p1, v0

    .line 20
    const-string v3, "0x"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2c

    .line 28
    aget-object p1, p1, v0

    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const/16 v0, 0x10

    .line 40
    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 43
    move-result-wide v0

    .line 44
    return-wide v0

    .line 45
    :cond_2c
    aget-object v1, p1, v0

    .line 47
    const-string v2, "0"

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3f

    .line 55
    aget-object p1, p1, v0

    .line 57
    const/16 v0, 0x8

    .line 59
    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 62
    move-result-wide v0

    .line 63
    return-wide v0

    .line 64
    :cond_3f
    aget-object p1, p1, v0

    .line 66
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 69
    move-result-wide v0

    .line 70
    return-wide v0
.end method

.method private getType(Ljava/lang/String;)I
    .registers 3

    const-string v0, "string"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const-string v0, "belong"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x2

    return p1

    :cond_14
    const-string v0, "short"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p1, 0x3

    return p1

    :cond_1e
    const-string v0, "lelong"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 p1, 0x4

    return p1

    :cond_28
    const-string v0, "beshort"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 p1, 0x5

    return p1

    :cond_32
    const-string v0, "leshort"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 p1, 0x6

    return p1

    :cond_3c
    const-string v0, "byte"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p1, 0x7

    return p1

    :cond_46
    const/16 p1, 0x14

    return p1
.end method

.method private howManyGreaterThans(Ljava/lang/String;)I
    .registers 6

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, -0x1

    .line 4
    return p1

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    move-result v1

    .line 10
    :goto_9
    if-lt v0, v1, :cond_c

    .line 12
    goto :goto_17

    .line 13
    :cond_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x3e

    .line 19
    if-ne v2, v3, :cond_17

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_9

    .line 24
    :cond_17
    :goto_17
    return v0
.end method

.method private initContentNumber()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 5
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iget v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->type:I

    .line 16
    packed-switch v0, :pswitch_data_58

    .line 19
    goto :goto_56

    .line 20
    :pswitch_13  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 22
    const-string v1, "0x"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_31

    .line 30
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    const/16 v1, 0x10

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 49
    goto :goto_56

    .line 50
    :cond_31
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 52
    const-string v1, "0"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4a

    .line 60
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    const/16 v1, 0x8

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 71
    move-result-wide v0

    .line 72
    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 74
    goto :goto_56

    .line 75
    :cond_4a
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 84
    move-result-wide v0

    .line 85
    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 87
    :goto_56
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_13  #00000002
        :pswitch_13  #00000003
        :pswitch_13  #00000004
        :pswitch_13  #00000005
        :pswitch_13  #00000006
        :pswitch_13  #00000007
    .end packed-switch
.end method

.method private ltrim(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    move-result v1

    .line 6
    if-lt v0, v1, :cond_8

    .line 8
    return-object p1

    .line 9
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x20

    .line 15
    if-eq v1, v2, :cond_15

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_1
.end method

.method private match(Ljava/nio/ByteBuffer;)Z
    .registers 5

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 3
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    .line 6
    move-result v1

    .line 7
    packed-switch v1, :pswitch_data_36

    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_35

    .line 12
    :pswitch_b  #0x7
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->matchByte(Ljava/nio/ByteBuffer;)Z

    .line 15
    move-result p1

    .line 16
    goto :goto_35

    .line 17
    :pswitch_10  #0x5, 0x6
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x6

    .line 22
    if-ne v1, v2, :cond_19

    .line 24
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 26
    :cond_19
    invoke-direct {p0, p1, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->matchShort(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)Z

    .line 29
    move-result p1

    .line 30
    goto :goto_35

    .line 31
    :pswitch_1e  #0x3
    invoke-direct {p0, p1, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->matchShort(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)Z

    .line 34
    move-result p1

    .line 35
    goto :goto_35

    .line 36
    :pswitch_23  #0x2, 0x4
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x4

    .line 41
    if-ne v1, v2, :cond_2c

    .line 43
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 45
    :cond_2c
    invoke-direct {p0, p1, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->matchLong(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)Z

    .line 48
    move-result p1

    .line 49
    goto :goto_35

    .line 50
    :pswitch_31  #0x1
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->matchString(Ljava/nio/ByteBuffer;)Z

    .line 53
    move-result p1

    .line 54
    :goto_35
    return p1

    .line 55
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_23  #00000002
        :pswitch_1e  #00000003
        :pswitch_23  #00000004
        :pswitch_10  #00000005
        :pswitch_10  #00000006
        :pswitch_b  #00000007
    .end packed-switch
.end method

.method private matchByte(Ljava/nio/ByteBuffer;)Z
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 5
    move-result p1

    .line 6
    and-int/lit16 p1, p1, 0xff

    .line 8
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    .line 10
    invoke-direct {p0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMask(Ljava/lang/String;)J

    .line 13
    move-result-wide v1

    .line 14
    long-to-int v1, v1

    .line 15
    int-to-short v1, v1

    .line 16
    and-int/2addr p1, v1

    .line 17
    int-to-short p1, p1

    .line 18
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 20
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 22
    invoke-virtual {v1, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v1, :cond_25

    .line 29
    int-to-long v3, p1

    .line 30
    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 32
    cmp-long p1, v3, v5

    .line 34
    if-nez p1, :cond_24

    .line 36
    return v2

    .line 37
    :cond_24
    return v0

    .line 38
    :cond_25
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 40
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NOT_EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 42
    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_38

    .line 48
    int-to-long v3, p1

    .line 49
    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 51
    cmp-long p1, v3, v5

    .line 53
    if-eqz p1, :cond_37

    .line 55
    return v2

    .line 56
    :cond_37
    return v0

    .line 57
    :cond_38
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 59
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 61
    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4b

    .line 67
    int-to-long v3, p1

    .line 68
    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 70
    cmp-long p1, v3, v5

    .line 72
    if-lez p1, :cond_4a

    .line 74
    return v2

    .line 75
    :cond_4a
    return v0

    .line 76
    :cond_4b
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 78
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 80
    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_5e

    .line 86
    int-to-long v3, p1

    .line 87
    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 89
    cmp-long p1, v3, v5

    .line 91
    if-gez p1, :cond_5d

    .line 93
    return v2

    .line 94
    :cond_5d
    return v0

    .line 95
    :cond_5e
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 97
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->AND:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 99
    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_72

    .line 105
    int-to-long v3, p1

    .line 106
    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 108
    and-long/2addr v3, v5

    .line 109
    cmp-long p1, v3, v5

    .line 111
    if-nez p1, :cond_71

    .line 113
    move v0, v2

    .line 114
    :cond_71
    return v0

    .line 115
    :cond_72
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 117
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->ANY:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 119
    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_7d

    .line 125
    return v2

    .line 126
    :cond_7d
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 128
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->CLEAR:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 130
    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_94

    .line 136
    int-to-long v3, p1

    .line 137
    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 139
    and-long/2addr v3, v5

    .line 140
    xor-long/2addr v3, v5

    .line 141
    const-wide/16 v5, 0x0

    .line 143
    cmp-long p1, v3, v5

    .line 145
    if-nez p1, :cond_93

    .line 147
    move v0, v2

    .line 148
    :cond_93
    return v0

    .line 149
    :cond_94
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 151
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NEGATED:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 153
    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_a7

    .line 159
    not-int p1, p1

    .line 160
    int-to-long v3, p1

    .line 161
    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 163
    cmp-long p1, v3, v5

    .line 165
    if-nez p1, :cond_a7

    .line 167
    return v2

    .line 168
    :cond_a7
    return v0
.end method

.method private matchLong(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)Z
    .registers 8

    .line 1
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 7
    move-result p1

    .line 8
    int-to-long p1, p1

    .line 9
    const-wide v0, 0xffffffffL

    .line 14
    and-long/2addr p1, v0

    .line 15
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    .line 17
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMask(Ljava/lang/String;)J

    .line 20
    move-result-wide v0

    .line 21
    and-long/2addr p1, v0

    .line 22
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 24
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 26
    invoke-virtual {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v0, :cond_29

    .line 34
    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 36
    cmp-long p1, p1, v3

    .line 38
    if-nez p1, :cond_28

    .line 40
    return v1

    .line 41
    :cond_28
    return v2

    .line 42
    :cond_29
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 44
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NOT_EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 46
    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3b

    .line 52
    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 54
    cmp-long p1, p1, v3

    .line 56
    if-eqz p1, :cond_3a

    .line 58
    return v1

    .line 59
    :cond_3a
    return v2

    .line 60
    :cond_3b
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 62
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 64
    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4d

    .line 70
    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 72
    cmp-long p1, p1, v3

    .line 74
    if-lez p1, :cond_4c

    .line 76
    return v1

    .line 77
    :cond_4c
    return v2

    .line 78
    :cond_4d
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 80
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 82
    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5f

    .line 88
    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 90
    cmp-long p1, p1, v3

    .line 92
    if-gez p1, :cond_5e

    .line 94
    return v1

    .line 95
    :cond_5e
    return v2

    .line 96
    :cond_5f
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 98
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->AND:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 100
    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_73

    .line 106
    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 108
    and-long/2addr p1, v3

    .line 109
    cmp-long p1, p1, v3

    .line 111
    if-nez p1, :cond_71

    .line 113
    goto :goto_72

    .line 114
    :cond_71
    move v1, v2

    .line 115
    :goto_72
    return v1

    .line 116
    :cond_73
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 118
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->ANY:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 120
    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_7e

    .line 126
    return v1

    .line 127
    :cond_7e
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 129
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->CLEAR:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 131
    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_95

    .line 137
    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 139
    and-long/2addr p1, v3

    .line 140
    xor-long/2addr p1, v3

    .line 141
    const-wide/16 v3, 0x0

    .line 143
    cmp-long p1, p1, v3

    .line 145
    if-nez p1, :cond_93

    .line 147
    goto :goto_94

    .line 148
    :cond_93
    move v1, v2

    .line 149
    :goto_94
    return v1

    .line 150
    :cond_95
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 152
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NEGATED:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 154
    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_a7

    .line 160
    not-long p1, p1

    .line 161
    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 163
    cmp-long p1, p1, v3

    .line 165
    if-nez p1, :cond_a7

    .line 167
    return v1

    .line 168
    :cond_a7
    return v2
.end method

.method private matchShort(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)Z
    .registers 7

    .line 1
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 7
    move-result p1

    .line 8
    const p2, 0xffff

    .line 11
    and-int/2addr p1, p2

    .line 12
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    .line 14
    invoke-direct {p0, p2}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMask(Ljava/lang/String;)J

    .line 17
    move-result-wide v0

    .line 18
    long-to-int p2, v0

    .line 19
    and-int/2addr p1, p2

    .line 20
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 22
    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 24
    invoke-virtual {p2, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p2

    .line 28
    const/4 v0, 0x1

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz p2, :cond_28

    .line 32
    int-to-long p1, p1

    .line 33
    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 35
    cmp-long p1, p1, v2

    .line 37
    if-nez p1, :cond_27

    .line 39
    return v0

    .line 40
    :cond_27
    return v1

    .line 41
    :cond_28
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 43
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NOT_EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 45
    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_3b

    .line 51
    int-to-long p1, p1

    .line 52
    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 54
    cmp-long p1, p1, v2

    .line 56
    if-eqz p1, :cond_3a

    .line 58
    return v0

    .line 59
    :cond_3a
    return v1

    .line 60
    :cond_3b
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 62
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 64
    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_4e

    .line 70
    int-to-long p1, p1

    .line 71
    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 73
    cmp-long p1, p1, v2

    .line 75
    if-lez p1, :cond_4d

    .line 77
    return v0

    .line 78
    :cond_4d
    return v1

    .line 79
    :cond_4e
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 81
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 83
    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_61

    .line 89
    int-to-long p1, p1

    .line 90
    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 92
    cmp-long p1, p1, v2

    .line 94
    if-gez p1, :cond_60

    .line 96
    return v0

    .line 97
    :cond_60
    return v1

    .line 98
    :cond_61
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 100
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->AND:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 102
    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_76

    .line 108
    int-to-long p1, p1

    .line 109
    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 111
    and-long/2addr p1, v2

    .line 112
    cmp-long p1, p1, v2

    .line 114
    if-nez p1, :cond_74

    .line 116
    goto :goto_75

    .line 117
    :cond_74
    move v0, v1

    .line 118
    :goto_75
    return v0

    .line 119
    :cond_76
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 121
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->ANY:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 123
    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_81

    .line 129
    return v0

    .line 130
    :cond_81
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 132
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->CLEAR:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 134
    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_99

    .line 140
    int-to-long p1, p1

    .line 141
    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 143
    and-long/2addr p1, v2

    .line 144
    xor-long/2addr p1, v2

    .line 145
    const-wide/16 v2, 0x0

    .line 147
    cmp-long p1, p1, v2

    .line 149
    if-nez p1, :cond_97

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    move v0, v1

    .line 153
    :goto_98
    return v0

    .line 154
    :cond_99
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 156
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NEGATED:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 158
    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result p2

    .line 162
    if-eqz p2, :cond_ac

    .line 164
    not-int p1, p1

    .line 165
    int-to-long p1, p1

    .line 166
    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    .line 168
    cmp-long p1, p1, v2

    .line 170
    if-nez p1, :cond_ac

    .line 172
    return v0

    .line 173
    :cond_ac
    return v1
.end method

.method private matchString(Ljava/nio/ByteBuffer;)Z
    .registers 8

    .line 1
    iget-boolean v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->isBetween:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1b

    .line 7
    new-instance v0, Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 16
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Leu/medsea/util/StringUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1a

    .line 26
    return v1

    .line 27
    :cond_1a
    return v2

    .line 28
    :cond_1b
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 30
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 32
    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_45

    .line 38
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 45
    move-result v0

    .line 46
    move v3, v2

    .line 47
    :goto_2e
    if-lt v3, v0, :cond_31

    .line 49
    return v1

    .line 50
    :cond_31
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 53
    move-result v4

    .line 54
    and-int/lit16 v4, v4, 0xff

    .line 56
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 63
    move-result v5

    .line 64
    if-eq v4, v5, :cond_42

    .line 66
    return v2

    .line 67
    :cond_42
    add-int/lit8 v3, v3, 0x1

    .line 69
    goto :goto_2e

    .line 70
    :cond_45
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 72
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NOT_EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 74
    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6f

    .line 80
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 87
    move-result v0

    .line 88
    move v3, v2

    .line 89
    :goto_58
    if-lt v3, v0, :cond_5b

    .line 91
    return v2

    .line 92
    :cond_5b
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 95
    move-result v4

    .line 96
    and-int/lit16 v4, v4, 0xff

    .line 98
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 105
    move-result v5

    .line 106
    if-eq v4, v5, :cond_6c

    .line 108
    return v1

    .line 109
    :cond_6c
    add-int/lit8 v3, v3, 0x1

    .line 111
    goto :goto_58

    .line 112
    :cond_6f
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 114
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 116
    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_8e

    .line 122
    new-instance v0, Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 127
    move-result-object p1

    .line 128
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 131
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 138
    move-result p1

    .line 139
    if-lez p1, :cond_8d

    .line 141
    return v1

    .line 142
    :cond_8d
    return v2

    .line 143
    :cond_8e
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 145
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 147
    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_ac

    .line 153
    new-instance v0, Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 158
    move-result-object p1

    .line 159
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 162
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 169
    move-result p1

    .line 170
    if-gez p1, :cond_ac

    .line 172
    return v1

    .line 173
    :cond_ac
    return v2
.end method

.method private readBuffer(Ljava/io/RandomAccessFile;)Ljava/nio/ByteBuffer;
    .registers 7

    .line 18
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    move-result v0

    int-to-long v0, v0

    .line 19
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_f

    return-object v3

    .line 20
    :cond_f
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 21
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_74

    goto :goto_73

    .line 22
    :pswitch_1c  #0x7
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_73

    :pswitch_28  #0x3, 0x5, 0x6
    const/4 v0, 0x2

    .line 24
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_73

    :pswitch_35  #0x2, 0x4
    const/4 v0, 0x4

    .line 26
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_73

    .line 28
    :pswitch_42  #0x1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_60

    .line 29
    iget-object v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    add-int/2addr v0, v2

    .line 30
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    .line 31
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 32
    iput-boolean v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->isBetween:Z

    goto :goto_68

    .line 33
    :cond_60
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 34
    :goto_68
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    :goto_73
    return-object v3

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_35  #00000002
        :pswitch_28  #00000003
        :pswitch_35  #00000004
        :pswitch_28  #00000005
        :pswitch_28  #00000006
        :pswitch_1c  #00000007
    .end packed-switch
.end method

.method private readBuffer([B)Ljava/nio/ByteBuffer;
    .registers 8

    .line 1
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_5e

    .line 2
    array-length v2, p1

    if-le v0, v2, :cond_b

    goto :goto_5e

    .line 3
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_60

    goto :goto_5e

    .line 4
    :pswitch_14  #0x7
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p1, v0, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-object v1, v2

    goto :goto_5e

    :pswitch_1d  #0x3, 0x5, 0x6
    const/4 v2, 0x2

    .line 6
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 7
    invoke-virtual {v3, p1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_2e

    :pswitch_26  #0x2, 0x4
    const/4 v2, 0x4

    .line 8
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 9
    invoke-virtual {v3, p1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_2e
    move-object v1, v3

    goto :goto_5e

    .line 10
    :pswitch_30  #0x1
    iget-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4e

    .line 11
    iget-object v4, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    add-int/2addr v2, v3

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    .line 13
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 14
    iput-boolean v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->isBetween:Z

    goto :goto_56

    .line 15
    :cond_4e
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 16
    :goto_56
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 17
    invoke-virtual {v3, p1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_5d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_5d} :catch_5e

    goto :goto_2e

    :catch_5e
    :cond_5e
    :goto_5e
    return-object v1

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_30  #00000001
        :pswitch_26  #00000002
        :pswitch_1d  #00000003
        :pswitch_26  #00000004
        :pswitch_1d  #00000005
        :pswitch_1d  #00000006
        :pswitch_14  #00000007
    .end packed-switch
.end method

.method private static stringWithEscapeSubstitutions(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-lt v2, v1, :cond_e

    .line 13
    goto/16 :goto_ad

    .line 15
    :cond_e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 18
    move-result v3

    .line 19
    const/16 v4, 0xa

    .line 21
    if-ne v3, v4, :cond_18

    .line 23
    goto/16 :goto_ad

    .line 25
    :cond_18
    const/16 v5, 0x5c

    .line 27
    if-ne v3, v5, :cond_ce

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 31
    if-lt v2, v1, :cond_26

    .line 33
    int-to-char p0, v3

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    goto/16 :goto_ad

    .line 39
    :cond_26
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 42
    move-result v6

    .line 43
    if-ne v6, v5, :cond_31

    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    goto/16 :goto_d2

    .line 50
    :cond_31
    const/16 v5, 0x20

    .line 52
    if-ne v6, v5, :cond_3a

    .line 54
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    goto/16 :goto_d2

    .line 59
    :cond_3a
    const/16 v5, 0x74

    .line 61
    if-ne v6, v5, :cond_45

    .line 63
    const/16 v3, 0x9

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    goto/16 :goto_d2

    .line 70
    :cond_45
    const/16 v5, 0x6e

    .line 72
    if-ne v6, v5, :cond_4e

    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    goto/16 :goto_d2

    .line 79
    :cond_4e
    const/16 v4, 0x72

    .line 81
    if-ne v6, v4, :cond_59

    .line 83
    const/16 v3, 0xd

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    goto/16 :goto_d2

    .line 90
    :cond_59
    const/16 v4, 0x78

    .line 92
    if-ne v6, v4, :cond_85

    .line 94
    add-int/lit8 v2, v2, 0x2

    .line 96
    if-lt v2, v1, :cond_6a

    .line 98
    int-to-char p0, v3

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    int-to-char p0, v6

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    goto :goto_ad

    .line 107
    :cond_6a
    add-int/lit8 v4, v2, -0x1

    .line 109
    add-int/lit8 v5, v2, 0x1

    .line 111
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 114
    move-result-object v4

    .line 115
    const/16 v5, 0x10

    .line 117
    :try_start_74
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 120
    move-result v3
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_78} :catch_7d

    .line 121
    int-to-char v3, v3

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    goto :goto_d2

    .line 126
    :catch_7d
    int-to-char p0, v3

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    goto :goto_ad

    .line 134
    :cond_85
    const/16 v3, 0x30

    .line 136
    if-lt v6, v3, :cond_c9

    .line 138
    const/16 v4, 0x37

    .line 140
    if-gt v6, v4, :cond_c9

    .line 142
    add-int/lit8 v6, v6, -0x30

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 146
    if-lt v2, v1, :cond_98

    .line 148
    int-to-char p0, v6

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    goto :goto_ad

    .line 153
    :cond_98
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 156
    move-result v5

    .line 157
    if-lt v5, v3, :cond_c2

    .line 159
    if-gt v5, v4, :cond_c2

    .line 161
    shl-int/lit8 v6, v6, 0x3

    .line 163
    add-int/lit8 v5, v5, -0x30

    .line 165
    or-int/2addr v6, v5

    .line 166
    add-int/lit8 v2, v2, 0x1

    .line 168
    if-lt v2, v1, :cond_b3

    .line 170
    int-to-char p0, v6

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    :goto_ad
    new-instance p0, Ljava/lang/String;

    .line 176
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 179
    return-object p0

    .line 180
    :cond_b3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 183
    move-result v5

    .line 184
    if-lt v5, v3, :cond_c2

    .line 186
    if-gt v5, v4, :cond_c2

    .line 188
    shl-int/lit8 v3, v6, 0x3

    .line 190
    add-int/lit8 v5, v5, -0x30

    .line 192
    or-int v6, v3, v5

    .line 194
    goto :goto_c4

    .line 195
    :cond_c2
    add-int/lit8 v2, v2, -0x1

    .line 197
    :goto_c4
    int-to-char v3, v6

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 201
    goto :goto_d2

    .line 202
    :cond_c9
    int-to-char v3, v6

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 206
    goto :goto_d2

    .line 207
    :cond_ce
    int-to-char v3, v3

    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 211
    :goto_d2
    add-int/lit8 v2, v2, 0x1

    .line 213
    goto/16 :goto_a
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string v0, "[\\\\][ ]"

    .line 3
    const-string v1, "<##>"

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    const-string v0, "^>*"

    .line 11
    const-string v2, ""

    .line 13
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const-string v0, "\\s+"

    .line 19
    const-string v3, "\t"

    .line 21
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    const-string v0, "[\t]{2,}"

    .line 27
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const-string v0, "\\\\ "

    .line 33
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Ljava/util/Vector;

    .line 43
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 46
    const/4 v1, 0x0

    .line 47
    move v3, v1

    .line 48
    :goto_2f
    array-length v4, p1

    .line 49
    if-lt v3, v4, :cond_e8

    .line 51
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 54
    move-result p1

    .line 55
    new-array p1, p1, [Ljava/lang/String;

    .line 57
    invoke-virtual {v0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, [Ljava/lang/String;

    .line 63
    array-length v0, p1

    .line 64
    const/4 v3, 0x2

    .line 65
    if-lez v0, :cond_6f

    .line 67
    aget-object v0, p1, v1

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    :try_start_48
    const-string v4, "0x"

    .line 75
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_5d

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    const/16 v4, 0x10

    .line 87
    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 90
    move-result v0

    .line 91
    iput v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->checkBytesFrom:I

    .line 93
    goto :goto_6f

    .line 94
    :cond_5d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    move-result v0

    .line 98
    iput v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->checkBytesFrom:I
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_63} :catch_64

    .line 100
    goto :goto_6f

    .line 101
    :catch_64
    move-exception p1

    .line 102
    new-instance v0, Leu/medsea/mimeutil/detector/InvalidMagicMimeEntryException;

    .line 104
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 107
    move-result-object v1

    .line 108
    invoke-direct {v0, v1, p1}, Leu/medsea/mimeutil/detector/InvalidMagicMimeEntryException;-><init>(Ljava/util/List;Ljava/lang/Throwable;)V

    .line 111
    throw v0

    .line 112
    :cond_6f
    :goto_6f
    array-length v0, p1

    .line 113
    const/4 v4, 0x1

    .line 114
    if-le v0, v4, :cond_81

    .line 116
    aget-object v0, p1, v4

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    .line 124
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType(Ljava/lang/String;)I

    .line 127
    move-result v0

    .line 128
    iput v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->type:I

    .line 130
    :cond_81
    array-length v0, p1

    .line 131
    if-le v0, v3, :cond_c5

    .line 133
    aget-object v0, p1, v3

    .line 135
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->ltrim(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 141
    iget v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->type:I

    .line 143
    packed-switch v2, :pswitch_data_fa

    .line 146
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperationForStringField(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 152
    goto :goto_9e

    .line 153
    :pswitch_98  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperationForNumberField(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 156
    move-result-object v0

    .line 157
    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 159
    :goto_9e
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 164
    move-result v0

    .line 165
    if-lez v0, :cond_bc

    .line 167
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 172
    move-result v0

    .line 173
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 175
    invoke-virtual {v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperationID()C

    .line 178
    move-result v1

    .line 179
    if-ne v0, v1, :cond_bc

    .line 181
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 189
    :cond_bc
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 191
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->stringWithEscapeSubstitutions(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 197
    goto :goto_c7

    .line 198
    :cond_c5
    iput-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 200
    :goto_c7
    array-length v0, p1

    .line 201
    const/4 v1, 0x3

    .line 202
    if-le v0, v1, :cond_d8

    .line 204
    new-instance v0, Leu/medsea/mimeutil/MimeType;

    .line 206
    aget-object v1, p1, v1

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 211
    move-result-object v1

    .line 212
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 215
    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeType:Leu/medsea/mimeutil/MimeType;

    .line 217
    :cond_d8
    array-length v0, p1

    .line 218
    const/4 v1, 0x4

    .line 219
    if-le v0, v1, :cond_e4

    .line 221
    aget-object p1, p1, v1

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 227
    iput-object p1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeEnc:Ljava/lang/String;

    .line 229
    :cond_e4
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->initContentNumber()V

    .line 232
    return-void

    .line 233
    :cond_e8
    aget-object v4, p1, v3

    .line 235
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    move-result v4

    .line 239
    if-nez v4, :cond_f5

    .line 241
    aget-object v4, p1, v3

    .line 243
    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_f5
    add-int/lit8 v3, v3, 0x1

    .line 248
    goto/16 :goto_2f

    .line 250
    nop

    .line 251
    :pswitch_data_fa
    .packed-switch 0x2
        :pswitch_98  #00000002
        :pswitch_98  #00000003
        :pswitch_98  #00000004
        :pswitch_98  #00000005
        :pswitch_98  #00000006
        :pswitch_98  #00000007
    .end packed-switch
.end method

.method public containsMimeType(Ljava/lang/String;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeType:Leu/medsea/mimeutil/MimeType;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_c

    .line 6
    invoke-virtual {v0, p1}, Leu/medsea/mimeutil/MimeType;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return v1

    .line 13
    :cond_c
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1a

    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 33
    invoke-virtual {v2, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->containsMimeType(Ljava/lang/String;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_12

    .line 39
    return v1
.end method

.method public getCheckBytesFrom()I
    .registers 2

    .line 1
    iget v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->checkBytesFrom:I

    .line 3
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMatch(Ljava/io/InputStream;)Leu/medsea/mimeutil/detector/MagicMimeEntry;
    .registers 6

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getInputStreamMarkLength()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 3
    :try_start_7
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_a
    if-gtz v0, :cond_d

    goto :goto_13

    .line 4
    :cond_d
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_1b

    .line 5
    :goto_13
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMatch([B)Leu/medsea/mimeutil/detector/MagicMimeEntry;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1e

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return-object v0

    :cond_1b
    add-int/2addr v2, v3

    sub-int/2addr v0, v3

    goto :goto_a

    :catchall_1e
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 7
    throw v0
.end method

.method public getMatch(Ljava/io/RandomAccessFile;)Leu/medsea/mimeutil/detector/MagicMimeEntry;
    .registers 6

    .line 15
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->readBuffer(Ljava/io/RandomAccessFile;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 16
    :cond_8
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->match(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 17
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    move-result-object v0

    .line 18
    iget-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_38

    const/4 v2, 0x0

    .line 19
    :goto_1b
    iget-object v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_26

    if-eqz v0, :cond_3b

    return-object p0

    .line 20
    :cond_26
    iget-object v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 21
    invoke-virtual {v3, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMatch(Ljava/io/RandomAccessFile;)Leu/medsea/mimeutil/detector/MagicMimeEntry;

    move-result-object v3

    if-eqz v3, :cond_35

    return-object v3

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_38
    if-eqz v0, :cond_3b

    return-object p0

    :cond_3b
    return-object v1
.end method

.method public getMatch([B)Leu/medsea/mimeutil/detector/MagicMimeEntry;
    .registers 7

    .line 8
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->readBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->match(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 11
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    move-result-object v3

    if-lez v0, :cond_35

    :goto_1e
    if-lt v2, v0, :cond_23

    if-eqz v3, :cond_38

    return-object p0

    .line 13
    :cond_23
    iget-object v4, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 14
    invoke-virtual {v4, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMatch([B)Leu/medsea/mimeutil/detector/MagicMimeEntry;

    move-result-object v4

    if-eqz v4, :cond_32

    return-object v4

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_35
    if-eqz v3, :cond_38

    return-object p0

    :cond_38
    return-object v1
.end method

.method public getMimeType()Leu/medsea/mimeutil/MimeType;
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeType:Leu/medsea/mimeutil/MimeType;

    .line 3
    return-object v0
.end method

.method public getParent()Leu/medsea/mimeutil/detector/MagicMimeEntry;
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->parent:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 3
    return-object v0
.end method

.method public getSubEntries()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 8
    iget v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    const-string v1, "MimeMagicType: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->checkBytesFrom:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 13
    const-string v1, ", "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    iget v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->type:I

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    iget-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    iget-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeType:Leu/medsea/mimeutil/MimeType;

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeEnc:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public traverseAndPrint(Ljava/lang/String;)V
    .registers 7

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->toString()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_20
    if-lt v1, v0, :cond_23

    .line 35
    return-void

    .line 36
    :cond_23
    iget-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 44
    new-instance v3, Ljava/lang/StringBuffer;

    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v4, "\t"

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->traverseAndPrint(Ljava/lang/String;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 67
    goto :goto_20
.end method
