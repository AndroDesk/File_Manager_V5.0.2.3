.class public Lcom/junrar/unpack/vm/VMPreparedOperand;
.super Ljava/lang/Object;
.source "VMPreparedOperand.java"


# instance fields
.field private Base:I

.field private Data:I

.field private Type:Lcom/junrar/unpack/vm/VMOpType;

.field private offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/vm/VMPreparedOperand;->Base:I

    return v0
.end method

.method public getData()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/vm/VMPreparedOperand;->Data:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/vm/VMPreparedOperand;->offset:I

    return v0
.end method

.method public getType()Lcom/junrar/unpack/vm/VMOpType;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedOperand;->Type:Lcom/junrar/unpack/vm/VMOpType;

    return-object v0
.end method

.method public setBase(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/vm/VMPreparedOperand;->Base:I

    return-void
.end method

.method public setData(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/vm/VMPreparedOperand;->Data:I

    return-void
.end method

.method public setOffset(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/vm/VMPreparedOperand;->offset:I

    return-void
.end method

.method public setType(Lcom/junrar/unpack/vm/VMOpType;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/unpack/vm/VMPreparedOperand;->Type:Lcom/junrar/unpack/vm/VMOpType;

    return-void
.end method
