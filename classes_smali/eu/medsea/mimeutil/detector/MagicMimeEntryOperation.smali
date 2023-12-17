.class final Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;
.super Ljava/lang/Object;
.source "MagicMimeEntryOperation.java"


# static fields
.field public static final AND:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

.field public static final ANY:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

.field public static final CLEAR:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

.field public static final EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

.field public static final GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

.field public static final LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

.field public static final NEGATED:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

.field public static final NOT_EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

.field private static final operationID2operation:Ljava/util/Map;


# instance fields
.field private final operationID:C


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID2operation:Ljava/util/Map;

    .line 8
    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 10
    const/16 v1, 0x3d

    .line 12
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    .line 15
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 17
    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 19
    const/16 v1, 0x3c

    .line 21
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    .line 24
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 26
    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 28
    const/16 v1, 0x3e

    .line 30
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    .line 33
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 35
    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 37
    const/16 v1, 0x26

    .line 39
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    .line 42
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->AND:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 44
    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 46
    const/16 v1, 0x5e

    .line 48
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    .line 51
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->CLEAR:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 53
    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 55
    const/16 v1, 0x7e

    .line 57
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    .line 60
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NEGATED:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 62
    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 64
    const/16 v1, 0x78

    .line 66
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    .line 69
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->ANY:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 71
    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 73
    const/16 v1, 0x21

    .line 75
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    .line 78
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NOT_EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 80
    return-void
.end method

.method public constructor <init>(C)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-char p1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    .line 6
    invoke-static {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->registerOperation(Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;)V

    .line 9
    return-void
.end method

.method public static getOperation(C)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    .line 2
    sget-object p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID2operation:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    return-object p0
.end method

.method private static getOperation(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;
    .registers 2

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 4
    sget-object p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    return-object p0

    :cond_9
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperation(C)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    move-result-object p0

    if-nez p0, :cond_16

    .line 6
    sget-object p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    :cond_16
    return-object p0
.end method

.method public static getOperationForNumberField(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;
    .registers 1

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperation(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getOperationForStringField(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;
    .registers 3

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperation(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 7
    invoke-virtual {v0, p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1e

    .line 13
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 15
    invoke-virtual {v1, p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1e

    .line 21
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 23
    invoke-virtual {v1, p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    return-object v0

    .line 31
    :cond_1e
    :goto_1e
    return-object p0
.end method

.method private static registerOperation(Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/Character;

    .line 3
    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperationID()C

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    .line 10
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID2operation:Ljava/util/Map;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_15

    .line 18
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void

    .line 22
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 24
    new-instance v1, Ljava/lang/StringBuffer;

    .line 26
    const-string v2, "Duplicate registration of operation "

    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const-class v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v3

    .line 15
    if-eq v2, v3, :cond_11

    .line 17
    return v1

    .line 18
    :cond_11
    check-cast p1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 20
    iget-char v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    .line 22
    iget-char p1, p1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    .line 24
    if-ne v2, p1, :cond_1a

    .line 26
    return v0

    .line 27
    :cond_1a
    return v1
.end method

.method public final getOperationID()C
    .registers 2

    .line 1
    iget-char v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    .line 3
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-char v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    .line 3
    const/16 v1, 0x1f

    .line 5
    add-int/2addr v1, v0

    .line 6
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    const-class v1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 12
    const/16 v1, 0x5b

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 17
    iget-char v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 22
    const/16 v1, 0x5d

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
