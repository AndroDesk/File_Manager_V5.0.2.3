.class Lcom/junrar/unpack/vm/VMStandardFilterSignature;
.super Ljava/lang/Object;
.source "VMStandardFilterSignature.java"


# instance fields
.field private CRC:I

.field private length:I

.field private type:Lcom/junrar/unpack/vm/VMStandardFilters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IILcom/junrar/unpack/vm/VMStandardFilters;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->length:I

    iput p2, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->CRC:I

    iput-object p3, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->type:Lcom/junrar/unpack/vm/VMStandardFilters;

    return-void
.end method


# virtual methods
.method public getCRC()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->CRC:I

    return v0
.end method

.method public getLength()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->length:I

    return v0
.end method

.method public getType()Lcom/junrar/unpack/vm/VMStandardFilters;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->type:Lcom/junrar/unpack/vm/VMStandardFilters;

    return-object v0
.end method

.method public setLength(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->length:I

    return-void
.end method

.method public setType(Lcom/junrar/unpack/vm/VMStandardFilters;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/unpack/vm/VMStandardFilterSignature;->type:Lcom/junrar/unpack/vm/VMStandardFilters;

    return-void
.end method
