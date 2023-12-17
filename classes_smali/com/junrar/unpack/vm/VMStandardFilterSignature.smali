.class Lcom/junrar/unpack/vm/VMStandardFilterSignature;
.super Ljava/lang/Object;
.source "VMStandardFilterSignature.java"


# instance fields
.field private CRC:I

.field private length:I

.field private type:Lcom/junrar/unpack/vm/VMStandardFilters;


# direct methods
.method public constructor <init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->length:I

    .line 6
    iput p2, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->CRC:I

    .line 8
    iput-object p3, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->type:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 10
    return-void
.end method


# virtual methods
.method public getCRC()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->CRC:I

    .line 3
    return v0
.end method

.method public getLength()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->length:I

    .line 3
    return v0
.end method

.method public getType()Lcom/junrar/unpack/vm/VMStandardFilters;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->type:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 3
    return-object v0
.end method

.method public setLength(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->length:I

    .line 3
    return-void
.end method

.method public setType(Lcom/junrar/unpack/vm/VMStandardFilters;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->type:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 3
    return-void
.end method
