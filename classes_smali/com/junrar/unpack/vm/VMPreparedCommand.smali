.class Lcom/junrar/unpack/vm/VMPreparedCommand;
.super Ljava/lang/Object;
.source "VMPreparedCommand.java"


# instance fields
.field private ByteMode:Z

.field private Op1:Lcom/junrar/unpack/vm/VMPreparedOperand;

.field private Op2:Lcom/junrar/unpack/vm/VMPreparedOperand;

.field private OpCode:Lcom/junrar/unpack/vm/VMCommands;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/junrar/unpack/vm/VMPreparedOperand;

    invoke-direct {v0}, Lcom/junrar/unpack/vm/VMPreparedOperand;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->Op1:Lcom/junrar/unpack/vm/VMPreparedOperand;

    new-instance v0, Lcom/junrar/unpack/vm/VMPreparedOperand;

    invoke-direct {v0}, Lcom/junrar/unpack/vm/VMPreparedOperand;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->Op2:Lcom/junrar/unpack/vm/VMPreparedOperand;

    return-void
.end method


# virtual methods
.method public getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->Op1:Lcom/junrar/unpack/vm/VMPreparedOperand;

    return-object v0
.end method

.method public getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->Op2:Lcom/junrar/unpack/vm/VMPreparedOperand;

    return-object v0
.end method

.method public getOpCode()Lcom/junrar/unpack/vm/VMCommands;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->OpCode:Lcom/junrar/unpack/vm/VMCommands;

    return-object v0
.end method

.method public isByteMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->ByteMode:Z

    return v0
.end method

.method public setByteMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->ByteMode:Z

    return-void
.end method

.method public setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->OpCode:Lcom/junrar/unpack/vm/VMCommands;

    return-void
.end method
