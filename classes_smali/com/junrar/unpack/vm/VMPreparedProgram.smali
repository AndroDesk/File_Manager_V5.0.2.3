.class public Lcom/junrar/unpack/vm/VMPreparedProgram;
.super Ljava/lang/Object;
.source "VMPreparedProgram.java"


# instance fields
.field private AltCmd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/junrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation
.end field

.field private Cmd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/junrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation
.end field

.field private CmdCount:I

.field private FilteredDataOffset:I

.field private FilteredDataSize:I

.field private GlobalData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private InitR:[I

.field private StaticData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->Cmd:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->AltCmd:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/Vector;

    .line 20
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->GlobalData:Ljava/util/Vector;

    .line 25
    new-instance v0, Ljava/util/Vector;

    .line 27
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->StaticData:Ljava/util/Vector;

    .line 32
    const/4 v0, 0x7

    .line 33
    new-array v0, v0, [I

    .line 35
    iput-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->InitR:[I

    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->AltCmd:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public getAltCmd()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/junrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->AltCmd:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getCmd()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/junrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->Cmd:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getCmdCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->CmdCount:I

    .line 3
    return v0
.end method

.method public getFilteredDataOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->FilteredDataOffset:I

    .line 3
    return v0
.end method

.method public getFilteredDataSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->FilteredDataSize:I

    .line 3
    return v0
.end method

.method public getGlobalData()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->GlobalData:Ljava/util/Vector;

    .line 3
    return-object v0
.end method

.method public getInitR()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->InitR:[I

    .line 3
    return-object v0
.end method

.method public getStaticData()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->StaticData:Ljava/util/Vector;

    .line 3
    return-object v0
.end method

.method public setAltCmd(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/junrar/unpack/vm/VMPreparedCommand;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->AltCmd:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setCmd(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/junrar/unpack/vm/VMPreparedCommand;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->Cmd:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setCmdCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->CmdCount:I

    .line 3
    return-void
.end method

.method public setFilteredDataOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->FilteredDataOffset:I

    .line 3
    return-void
.end method

.method public setFilteredDataSize(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->FilteredDataSize:I

    .line 3
    return-void
.end method

.method public setGlobalData(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->GlobalData:Ljava/util/Vector;

    .line 3
    return-void
.end method

.method public setInitR([I)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->InitR:[I

    .line 3
    return-void
.end method

.method public setStaticData(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/vm/VMPreparedProgram;->StaticData:Ljava/util/Vector;

    .line 3
    return-void
.end method
