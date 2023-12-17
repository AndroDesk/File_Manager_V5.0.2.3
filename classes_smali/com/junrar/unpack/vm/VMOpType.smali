.class public final enum Lcom/junrar/unpack/vm/VMOpType;
.super Ljava/lang/Enum;
.source "VMOpType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/junrar/unpack/vm/VMOpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/junrar/unpack/vm/VMOpType;

.field public static final enum VM_OPINT:Lcom/junrar/unpack/vm/VMOpType;

.field public static final enum VM_OPNONE:Lcom/junrar/unpack/vm/VMOpType;

.field public static final enum VM_OPREG:Lcom/junrar/unpack/vm/VMOpType;

.field public static final enum VM_OPREGMEM:Lcom/junrar/unpack/vm/VMOpType;


# instance fields
.field private opType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/junrar/unpack/vm/VMOpType;

    .line 3
    const-string v1, "VM_OPREG"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/junrar/unpack/vm/VMOpType;->VM_OPREG:Lcom/junrar/unpack/vm/VMOpType;

    .line 11
    new-instance v1, Lcom/junrar/unpack/vm/VMOpType;

    .line 13
    const-string v3, "VM_OPINT"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lcom/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/junrar/unpack/vm/VMOpType;

    .line 21
    new-instance v3, Lcom/junrar/unpack/vm/VMOpType;

    .line 23
    const-string v5, "VM_OPREGMEM"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v3, Lcom/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/junrar/unpack/vm/VMOpType;

    .line 31
    new-instance v5, Lcom/junrar/unpack/vm/VMOpType;

    .line 33
    const-string v7, "VM_OPNONE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v5, Lcom/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/junrar/unpack/vm/VMOpType;

    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lcom/junrar/unpack/vm/VMOpType;

    .line 44
    aput-object v0, v7, v2

    .line 46
    aput-object v1, v7, v4

    .line 48
    aput-object v3, v7, v6

    .line 50
    aput-object v5, v7, v8

    .line 52
    sput-object v7, Lcom/junrar/unpack/vm/VMOpType;->$VALUES:[Lcom/junrar/unpack/vm/VMOpType;

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lcom/junrar/unpack/vm/VMOpType;->opType:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/unpack/vm/VMOpType;
    .registers 2

    .line 1
    const-class v0, Lcom/junrar/unpack/vm/VMOpType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/junrar/unpack/vm/VMOpType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/junrar/unpack/vm/VMOpType;
    .registers 1

    .line 1
    sget-object v0, Lcom/junrar/unpack/vm/VMOpType;->$VALUES:[Lcom/junrar/unpack/vm/VMOpType;

    .line 3
    invoke-virtual {v0}, [Lcom/junrar/unpack/vm/VMOpType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/junrar/unpack/vm/VMOpType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMOpType;->opType:I

    .line 3
    if-ne v0, p1, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method
