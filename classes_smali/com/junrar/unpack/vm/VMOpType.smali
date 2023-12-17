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

    new-instance v0, Lcom/junrar/unpack/vm/VMOpType;

    const-string v1, "VM_OPREG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/junrar/unpack/vm/VMOpType;->VM_OPREG:Lcom/junrar/unpack/vm/VMOpType;

    new-instance v1, Lcom/junrar/unpack/vm/VMOpType;

    const-string v3, "VM_OPINT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/junrar/unpack/vm/VMOpType;

    new-instance v3, Lcom/junrar/unpack/vm/VMOpType;

    const-string v5, "VM_OPREGMEM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/junrar/unpack/vm/VMOpType;

    new-instance v5, Lcom/junrar/unpack/vm/VMOpType;

    const-string v7, "VM_OPNONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/junrar/unpack/vm/VMOpType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/junrar/unpack/vm/VMOpType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/junrar/unpack/vm/VMOpType;->$VALUES:[Lcom/junrar/unpack/vm/VMOpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/junrar/unpack/vm/VMOpType;->opType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/unpack/vm/VMOpType;
    .registers 2

    const-class v0, Lcom/junrar/unpack/vm/VMOpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/junrar/unpack/vm/VMOpType;

    return-object p0
.end method

.method public static values()[Lcom/junrar/unpack/vm/VMOpType;
    .registers 1

    sget-object v0, Lcom/junrar/unpack/vm/VMOpType;->$VALUES:[Lcom/junrar/unpack/vm/VMOpType;

    invoke-virtual {v0}, [Lcom/junrar/unpack/vm/VMOpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/junrar/unpack/vm/VMOpType;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .registers 3

    iget v0, p0, Lcom/junrar/unpack/vm/VMOpType;->opType:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method
