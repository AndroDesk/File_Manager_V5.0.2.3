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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID2operation:Ljava/util/Map;

    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    const/16 v1, 0x3e

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->AND:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    const/16 v1, 0x5e

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->CLEAR:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    const/16 v1, 0x7e

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NEGATED:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->ANY:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;-><init>(C)V

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->NOT_EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    return-void
.end method

.method public constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    invoke-static {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->registerOperation(Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;)V

    return-void
.end method

.method public static getOperation(C)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;
    .registers 2

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    sget-object p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID2operation:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    return-object p0
.end method

.method private static getOperation(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    sget-object p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    return-object p0

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperation(C)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    move-result-object p0

    if-nez p0, :cond_16

    sget-object p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    :cond_16
    return-object p0
.end method

.method public static getOperationForNumberField(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;
    .registers 1

    invoke-static {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperation(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    move-result-object p0

    return-object p0
.end method

.method public static getOperationForStringField(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;
    .registers 3

    invoke-static {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperation(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    move-result-object p0

    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->EQUALS:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v0, p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->LESS_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1, p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->GREATER_THAN:Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1, p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1e

    :cond_1d
    return-object v0

    :cond_1e
    :goto_1e
    return-object p0
.end method

.method private static registerOperation(Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;)V
    .registers 4

    new-instance v0, Ljava/lang/Character;

    invoke-virtual {p0}, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->getOperationID()C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID2operation:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Duplicate registration of operation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    const-class v2, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    check-cast p1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    iget-char v2, p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    iget-char p1, p1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    if-ne v2, p1, :cond_1a

    return v0

    :cond_1a
    return v1
.end method

.method public final getOperationID()C
    .registers 2

    iget-char v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-char v0, p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-class v1, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-char v1, p0, Leu/medsea/mimeutil/detector/MagicMimeEntryOperation;->operationID:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
