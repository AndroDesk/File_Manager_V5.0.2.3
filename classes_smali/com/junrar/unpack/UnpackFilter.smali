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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/junrar/unpack/vm/VMPreparedProgram;

    invoke-direct {v0}, Lcom/junrar/unpack/vm/VMPreparedProgram;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/UnpackFilter;->Prg:Lcom/junrar/unpack/vm/VMPreparedProgram;

    return-void
.end method


# virtual methods
.method public getBlockLength()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/UnpackFilter;->BlockLength:I

    return v0
.end method

.method public getBlockStart()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/UnpackFilter;->BlockStart:I

    return v0
.end method

.method public getExecCount()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/UnpackFilter;->ExecCount:I

    return v0
.end method

.method public getParentFilter()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/UnpackFilter;->ParentFilter:I

    return v0
.end method

.method public getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/UnpackFilter;->Prg:Lcom/junrar/unpack/vm/VMPreparedProgram;

    return-object v0
.end method

.method public isNextWindow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/junrar/unpack/UnpackFilter;->NextWindow:Z

    return v0
.end method

.method public setBlockLength(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/UnpackFilter;->BlockLength:I

    return-void
.end method

.method public setBlockStart(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/UnpackFilter;->BlockStart:I

    return-void
.end method

.method public setExecCount(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/UnpackFilter;->ExecCount:I

    return-void
.end method

.method public setNextWindow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/junrar/unpack/UnpackFilter;->NextWindow:Z

    return-void
.end method

.method public setParentFilter(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/UnpackFilter;->ParentFilter:I

    return-void
.end method

.method public setPrg(Lcom/junrar/unpack/vm/VMPreparedProgram;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/unpack/UnpackFilter;->Prg:Lcom/junrar/unpack/vm/VMPreparedProgram;

    return-void
.end method
