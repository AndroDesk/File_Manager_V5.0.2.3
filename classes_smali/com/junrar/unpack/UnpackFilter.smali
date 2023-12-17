.class Lcom/junrar/unpack/UnpackFilter;
.super Ljava/lang/Object;
.source "UnpackFilter.java"


# instance fields
.field private BlockLength:I

.field private BlockStart:I

.field private ExecCount:I

.field private NextWindow:Z

.field private ParentFilter:I

.field private Prg:Lcom/junrar/unpack/vm/VMPreparedProgram;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 6
    invoke-direct {v0}, Lcom/junrar/unpack/vm/VMPreparedProgram;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/junrar/unpack/UnpackFilter;->Prg:Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 11
    return-void
.end method


# virtual methods
.method public getBlockLength()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/UnpackFilter;->BlockLength:I

    .line 3
    return v0
.end method

.method public getBlockStart()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/UnpackFilter;->BlockStart:I

    .line 3
    return v0
.end method

.method public getExecCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/UnpackFilter;->ExecCount:I

    .line 3
    return v0
.end method

.method public getParentFilter()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/UnpackFilter;->ParentFilter:I

    .line 3
    return v0
.end method

.method public getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/UnpackFilter;->Prg:Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 3
    return-object v0
.end method

.method public isNextWindow()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/junrar/unpack/UnpackFilter;->NextWindow:Z

    .line 3
    return v0
.end method

.method public setBlockLength(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/UnpackFilter;->BlockLength:I

    .line 3
    return-void
.end method

.method public setBlockStart(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/UnpackFilter;->BlockStart:I

    .line 3
    return-void
.end method

.method public setExecCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/UnpackFilter;->ExecCount:I

    .line 3
    return-void
.end method

.method public setNextWindow(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/junrar/unpack/UnpackFilter;->NextWindow:Z

    .line 3
    return-void
.end method

.method public setParentFilter(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/UnpackFilter;->ParentFilter:I

    .line 3
    return-void
.end method

.method public setPrg(Lcom/junrar/unpack/vm/VMPreparedProgram;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/UnpackFilter;->Prg:Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 3
    return-void
.end method
