.class Leu/medsea/mimeutil/detector/MagicMimeEntry;
.super Ljava/lang/Object;
.source "MagicMimeEntry.java"


# static fields
.field public static final BELONG_TYPE:I

.field public static final BESHORT_TYPE:I

.field public static final BYTE_TYPE:I

.field public static final LELONG_TYPE:I

.field public static final LESHORT_TYPE:I

.field public static final SHORT_TYPE:I

.field public static final STRING_TYPE:I

.field public static final UNKNOWN_TYPE:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->BELONG_TYPE:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->BESHORT_TYPE:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->BYTE_TYPE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->LELONG_TYPE:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->LESHORT_TYPE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->SHORT_TYPE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->STRING_TYPE:I

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->UNKNOWN_TYPE:I

    return-void
.end method

.method private constructor <init>(ILeu/medsea/mimeutil/detector/MagicMimeEntry;Ljava/util/ArrayList;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    if-eqz p3, :cond_4e

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_4e

    :cond_17
    iput-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->parent:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    if-eqz p2, :cond_20

    iget-object p2, p2, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const/4 p2, 0x0

    :try_start_21
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->addEntry(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_47

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_2d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_34

    goto :goto_46

    :cond_34
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->howManyGreaterThans(Ljava/lang/String;)I

    move-result v0

    if-le v0, p1, :cond_46

    new-instance v1, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    invoke-direct {v1, v0, p0, p3}, Leu/medsea/mimeutil/detector/MagicMimeEntry;-><init>(ILeu/medsea/mimeutil/detector/MagicMimeEntry;Ljava/util/ArrayList;)V

    goto :goto_2d

    :cond_46
    :goto_46
    return-void

    :catch_47
    move-exception p1

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

    invoke-direct {p0, v0, v1, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;-><init>(ILeu/medsea/mimeutil/detector/MagicMimeEntry;Ljava/util/ArrayList;)V

    return-void
.end method

.method private _getInputStreamMarkLength()I
    .registers 5

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_52

    return v1

    :pswitch_a  #0x7
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    move-result v0

    add-int/2addr v0, v2

    return v0

    :pswitch_10  #0x3, 0x5, 0x6
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    :pswitch_17  #0x2, 0x4
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_1e  #0x1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3c

    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput-boolean v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->isBetween:Z

    goto :goto_4a

    :cond_3c
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0

    nop

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

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->_getInputStreamMarkLength()I

    move-result v0

    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    return v0

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    invoke-direct {v2}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getInputStreamMarkLength()I

    move-result v2

    if-ge v0, v2, :cond_a

    move v0, v2

    goto :goto_a
.end method

.method private getMask(Ljava/lang/String;)J
    .registers 6

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_10

    const-wide v0, 0xffffffffL

    return-wide v0

    :cond_10
    const/4 v0, 0x1

    aget-object v2, p1, v0

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    :cond_2c
    aget-object v1, p1, v0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    aget-object p1, p1, v0

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    :cond_3f
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getType(Ljava/lang/String;)I
    .registers 3

    const-string v0, "string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const-string v0, "belong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x2

    return p1

    :cond_14
    const-string v0, "short"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p1, 0x3

    return p1

    :cond_1e
    const-string v0, "lelong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 p1, 0x4

    return p1

    :cond_28
    const-string v0, "beshort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 p1, 0x5

    return p1

    :cond_32
    const-string v0, "leshort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 p1, 0x6

    return p1

    :cond_3c
    const-string v0, "byte"

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

    if-nez p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_9
    if-lt v0, v1, :cond_c

    goto :goto_17

    :cond_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    :goto_17
    return v0
.end method

.method private initContentNumber()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->type:I

    packed-switch v0, :pswitch_data_58

    goto :goto_56

    :pswitch_13  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    goto :goto_56

    :cond_31
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    goto :goto_56

    :cond_4a
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    :goto_56
    return-void

    nop

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

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-object p1

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_15

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private match(Ljava/nio/ByteBuffer;)Z
    .registers 5

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_36

    const/4 p1, 0x0

    goto :goto_35

    :pswitch_b  #0x7
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->matchByte(Ljava/nio/ByteBuffer;)Z

    move-result p1

    goto :goto_35

    :pswitch_10  #0x5, 0x6
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_19

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :cond_19
    invoke-direct {p0, p1, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->matchShort(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)Z

    move-result p1

    goto :goto_35

    :pswitch_1e  #0x3
    invoke-direct {p0, p1, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->matchShort(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)Z

    move-result p1

    goto :goto_35

    :pswitch_23  #0x2, 0x4
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2c

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :cond_2c
    invoke-direct {p0, p1, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->matchLong(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)Z

    move-result p1

    goto :goto_35

    :pswitch_31  #0x1
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->matchString(Ljava/nio/ByteBuffer;)Z

    move-result p1

    :goto_35
    return p1

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

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    invoke-direct {p0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMask(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    and-int/2addr p1, v1

    int-to-short p1, p1

    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    int-to-long v3, p1

    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_24

    return v2

    :cond_24
    return v0

    :cond_25
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NOT_EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    int-to-long v3, p1

    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_37

    return v2

    :cond_37
    return v0

    :cond_38
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    int-to-long v3, p1

    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_4a

    return v2

    :cond_4a
    return v0

    :cond_4b
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    int-to-long v3, p1

    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_5d

    return v2

    :cond_5d
    return v0

    :cond_5e
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->AND:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    int-to-long v3, p1

    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    and-long/2addr v3, v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_71

    move v0, v2

    :cond_71
    return v0

    :cond_72
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->ANY:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    return v2

    :cond_7d
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->CLEAR:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    int-to-long v3, p1

    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    and-long/2addr v3, v5

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_93

    move v0, v2

    :cond_93
    return v0

    :cond_94
    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NEGATED:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    not-int p1, p1

    int-to-long v3, p1

    iget-wide v5, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_a7

    return v2

    :cond_a7
    return v0
.end method

.method private matchLong(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)Z
    .registers 8

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long p1, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMask(Ljava/lang/String;)J

    move-result-wide v0

    and-long/2addr p1, v0

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_28

    return v1

    :cond_28
    return v2

    :cond_29
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NOT_EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, p1, v3

    if-eqz p1, :cond_3a

    return v1

    :cond_3a
    return v2

    :cond_3b
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, p1, v3

    if-lez p1, :cond_4c

    return v1

    :cond_4c
    return v2

    :cond_4d
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, p1, v3

    if-gez p1, :cond_5e

    return v1

    :cond_5e
    return v2

    :cond_5f
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->AND:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    and-long/2addr p1, v3

    cmp-long p1, p1, v3

    if-nez p1, :cond_71

    goto :goto_72

    :cond_71
    move v1, v2

    :goto_72
    return v1

    :cond_73
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->ANY:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    return v1

    :cond_7e
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->CLEAR:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    and-long/2addr p1, v3

    xor-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-nez p1, :cond_93

    goto :goto_94

    :cond_93
    move v1, v2

    :goto_94
    return v1

    :cond_95
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NEGATED:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    not-long p1, p1

    iget-wide v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_a7

    return v1

    :cond_a7
    return v2
.end method

.method private matchShort(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)Z
    .registers 7

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    const p2, 0xffff

    and-int/2addr p1, p2

    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    invoke-direct {p0, p2}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMask(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p2, v0

    and-int/2addr p1, p2

    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {p2, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_28

    int-to-long p1, p1

    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_27

    return v0

    :cond_27
    return v1

    :cond_28
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NOT_EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    int-to-long p1, p1

    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3a

    return v0

    :cond_3a
    return v1

    :cond_3b
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    int-to-long p1, p1

    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, p1, v2

    if-lez p1, :cond_4d

    return v0

    :cond_4d
    return v1

    :cond_4e
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_61

    int-to-long p1, p1

    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, p1, v2

    if-gez p1, :cond_60

    return v0

    :cond_60
    return v1

    :cond_61
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->AND:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    int-to-long p1, p1

    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    and-long/2addr p1, v2

    cmp-long p1, p1, v2

    if-nez p1, :cond_74

    goto :goto_75

    :cond_74
    move v0, v1

    :goto_75
    return v0

    :cond_76
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->ANY:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    return v0

    :cond_81
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->CLEAR:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_99

    int-to-long p1, p1

    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    and-long/2addr p1, v2

    xor-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_97

    goto :goto_98

    :cond_97
    move v0, v1

    :goto_98
    return v0

    :cond_99
    iget-object p2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NEGATED:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {p2, v2}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ac

    not-int p1, p1

    int-to-long p1, p1

    iget-wide v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->contentNumber:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_ac

    return v0

    :cond_ac
    return v1
.end method

.method private matchString(Ljava/nio/ByteBuffer;)Z
    .registers 8

    iget-boolean v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->isBetween:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Leu/medsea/util/StringUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v1

    :cond_1a
    return v2

    :cond_1b
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v2

    :goto_2e
    if-lt v3, v0, :cond_31

    return v1

    :cond_31
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_42

    return v2

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_45
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NOT_EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v2

    :goto_58
    if-lt v3, v0, :cond_5b

    return v2

    :cond_5b
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_6c

    return v1

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_6f
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_8d

    return v1

    :cond_8d
    return v2

    :cond_8e
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_ac

    return v1

    :cond_ac
    return v2
.end method

.method private readBuffer(Ljava/io/RandomAccessFile;)Ljava/nio/ByteBuffer;
    .registers 7

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_f

    return-object v3

    :cond_f
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_74

    goto :goto_73

    :pswitch_1c  #0x7
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_73

    :pswitch_28  #0x3, 0x5, 0x6
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_73

    :pswitch_35  #0x2, 0x4
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_73

    :pswitch_42  #0x1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_60

    iget-object v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput-boolean v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->isBetween:Z

    goto :goto_68

    :cond_60
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_68
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

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

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getCheckBytesFrom()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_5e

    array-length v2, p1

    if-le v0, v2, :cond_b

    goto :goto_5e

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_60

    goto :goto_5e

    :pswitch_14  #0x7
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-object v1, v2

    goto :goto_5e

    :pswitch_1d  #0x3, 0x5, 0x6
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_2e

    :pswitch_26  #0x2, 0x4
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_2e
    move-object v1, v3

    goto :goto_5e

    :pswitch_30  #0x1
    iget-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4e

    iget-object v4, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    add-int/2addr v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput-boolean v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->isBetween:Z

    goto :goto_56

    :cond_4e
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_56
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

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

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-lt v2, v1, :cond_e

    goto/16 :goto_ad

    :cond_e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_18

    goto/16 :goto_ad

    :cond_18
    const/16 v5, 0x5c

    if-ne v3, v5, :cond_ce

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_26

    int-to-char p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_ad

    :cond_26
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_d2

    :cond_31
    const/16 v5, 0x20

    if-ne v6, v5, :cond_3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_d2

    :cond_3a
    const/16 v5, 0x74

    if-ne v6, v5, :cond_45

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_d2

    :cond_45
    const/16 v5, 0x6e

    if-ne v6, v5, :cond_4e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_d2

    :cond_4e
    const/16 v4, 0x72

    if-ne v6, v4, :cond_59

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_d2

    :cond_59
    const/16 v4, 0x78

    if-ne v6, v4, :cond_85

    add-int/lit8 v2, v2, 0x2

    if-lt v2, v1, :cond_6a

    int-to-char p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char p0, v6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_ad

    :cond_6a
    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    :try_start_74
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_78} :catch_7d

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d2

    :catch_7d
    int-to-char p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ad

    :cond_85
    const/16 v3, 0x30

    if-lt v6, v3, :cond_c9

    const/16 v4, 0x37

    if-gt v6, v4, :cond_c9

    add-int/lit8 v6, v6, -0x30

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_98

    int-to-char p0, v6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_ad

    :cond_98
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v3, :cond_c2

    if-gt v5, v4, :cond_c2

    shl-int/lit8 v6, v6, 0x3

    add-int/lit8 v5, v5, -0x30

    or-int/2addr v6, v5

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_b3

    int-to-char p0, v6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_ad
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object p0

    :cond_b3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v3, :cond_c2

    if-gt v5, v4, :cond_c2

    shl-int/lit8 v3, v6, 0x3

    add-int/lit8 v5, v5, -0x30

    or-int v6, v3, v5

    goto :goto_c4

    :cond_c2
    add-int/lit8 v2, v2, -0x1

    :goto_c4
    int-to-char v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d2

    :cond_c9
    int-to-char v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d2

    :cond_ce
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_d2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;)V
    .registers 7

    const-string v0, "[\\\\][ ]"

    const-string v1, "<##>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "^>*"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    const-string v3, "\t"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\t]{2,}"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\ "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_2f
    array-length v4, p1

    if-lt v3, v4, :cond_e8

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    const/4 v3, 0x2

    if-lez v0, :cond_6f

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :try_start_48
    const-string v4, "0x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->checkBytesFrom:I

    goto :goto_6f

    :cond_5d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->checkBytesFrom:I
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_63} :catch_64

    goto :goto_6f

    :catch_64
    move-exception p1

    new-instance v0, Leu/medsea/mimeutil/detector/InvalidMagicMimeEntryException;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Leu/medsea/mimeutil/detector/InvalidMagicMimeEntryException;-><init>(Ljava/util/List;Ljava/lang/Throwable;)V

    throw v0

    :cond_6f
    :goto_6f
    array-length v0, p1

    const/4 v4, 0x1

    if-le v0, v4, :cond_81

    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->typeStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->type:I

    :cond_81
    array-length v0, p1

    if-le v0, v3, :cond_c5

    aget-object v0, p1, v3

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->ltrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    iget v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->type:I

    packed-switch v2, :pswitch_data_fa

    invoke-static {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperationForStringField(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    move-result-object v0

    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    goto :goto_9e

    :pswitch_98  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperationForNumberField(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    move-result-object v0

    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    :goto_9e
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bc

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->operation:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperationID()C

    move-result v1

    if-ne v0, v1, :cond_bc

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    :cond_bc
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    invoke-static {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->stringWithEscapeSubstitutions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    goto :goto_c7

    :cond_c5
    iput-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    :goto_c7
    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_d8

    new-instance v0, Leu/medsea/mimeutil/MimeType;

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeType:Leu/medsea/mimeutil/MimeType;

    :cond_d8
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_e4

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeEnc:Ljava/lang/String;

    :cond_e4
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->initContentNumber()V

    return-void

    :cond_e8
    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f5

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_f5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2f

    nop

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

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeType:Leu/medsea/mimeutil/MimeType;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Leu/medsea/mimeutil/MimeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 p1, 0x0

    return p1

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    invoke-virtual {v2, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->containsMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v1
.end method

.method public getCheckBytesFrom()I
    .registers 2

    iget v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->checkBytesFrom:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMatch(Ljava/io/InputStream;)Leu/medsea/mimeutil/detector/MagicMimeEntry;
    .registers 6

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getInputStreamMarkLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    :try_start_7
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_a
    if-gtz v0, :cond_d

    goto :goto_13

    :cond_d
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_1b

    :goto_13
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMatch([B)Leu/medsea/mimeutil/detector/MagicMimeEntry;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1e

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return-object v0

    :cond_1b
    add-int/2addr v2, v3

    sub-int/2addr v0, v3

    goto :goto_a

    :catchall_1e
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw v0
.end method

.method public getMatch(Ljava/io/RandomAccessFile;)Leu/medsea/mimeutil/detector/MagicMimeEntry;
    .registers 6

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->readBuffer(Ljava/io/RandomAccessFile;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->match(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    move-result-object v0

    iget-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_38

    const/4 v2, 0x0

    :goto_1b
    iget-object v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_26

    if-eqz v0, :cond_3b

    return-object p0

    :cond_26
    iget-object v3, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/medsea/mimeutil/detector/MagicMimeEntry;

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

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->readBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->match(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    move-result-object v3

    if-lez v0, :cond_35

    :goto_1e
    if-lt v2, v0, :cond_23

    if-eqz v3, :cond_38

    return-object p0

    :cond_23
    iget-object v4, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/medsea/mimeutil/detector/MagicMimeEntry;

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

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeType:Leu/medsea/mimeutil/MimeType;

    return-object v0
.end method

.method public getParent()Leu/medsea/mimeutil/detector/MagicMimeEntry;
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->parent:Leu/medsea/mimeutil/detector/MagicMimeEntry;

    return-object v0
.end method

.method public getSubEntries()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "MimeMagicType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->checkBytesFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeType:Leu/medsea/mimeutil/MimeType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->mimeEnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traverseAndPrint(Ljava/lang/String;)V
    .registers 7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_20
    if-lt v1, v0, :cond_23

    return-void

    :cond_23
    iget-object v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntry;->subEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->traverseAndPrint(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method
