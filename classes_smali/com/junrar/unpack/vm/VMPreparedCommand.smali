.class Lcom/junrar/unpack/vm/VMPreparedCommand;
.super Ljava/lang/Object;
.source "VMPreparedCommand.java"


# instance fields
.field private ByteMode:Z

.field private Op1:Lcom/junrar/unpack/vm/VMPreparedOperand;

.field private Op2:Lcom/junrar/unpack/vm/VMPreparedOperand;

.field private OpCode:Lcom/junrar/unpack/vm/VMCommands;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 6
    invoke-direct {v0}, Lcom/junrar/unpack/vm/VMPreparedOperand;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->Op1:Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 11
    new-instance v0, Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 13
    invoke-direct {v0}, Lcom/junrar/unpack/vm/VMPreparedOperand;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->Op2:Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 18
    return-void
.end method


# virtual methods
.method public getOp1()Lcom/junrar/unpack/vm/VMPreparedOperand;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->Op1:Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 3
    return-object v0
.end method

.method public getOp2()Lcom/junrar/unpack/vm/VMPreparedOperand;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->Op2:Lcom/junrar/unpack/vm/VMPreparedOperand;

    .line 3
    return-object v0
.end method

.method public getOpCode()Lcom/junrar/unpack/vm/VMCommands;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->OpCode:Lcom/junrar/unpack/vm/VMCommands;

    .line 3
    return-object v0
.end method

.method public isByteMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->ByteMode:Z

    .line 3
    return v0
.end method

.method public setByteMode(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->ByteMode:Z

    .line 3
    return-void
.end method

.method public setOpCode(Lcom/junrar/unpack/vm/VMCommands;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/vm/VMPreparedCommand;->OpCode:Lcom/junrar/unpack/vm/VMCommands;

    .line 3
    return-void
.end method
