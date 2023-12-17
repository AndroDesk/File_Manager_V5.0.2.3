.class Lcom/junrar/unpack/ppm/RarNode;
.super Lcom/junrar/unpack/ppm/Pointer;
.source "RarNode.java"


# static fields
.field public static final size:I


# instance fields
.field private next:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/ppm/RarNode;->size:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getNext()I
    .registers 3

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_c

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lcom/junrar/unpack/ppm/RarNode;->next:I

    :cond_c
    iget v0, p0, Lcom/junrar/unpack/ppm/RarNode;->next:I

    return v0
.end method

.method public setNext(I)V
    .registers 4

    iput p1, p0, Lcom/junrar/unpack/ppm/RarNode;->next:I

    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    :cond_b
    return-void
.end method

.method public setNext(Lcom/junrar/unpack/ppm/RarNode;)V
    .registers 2

    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/RarNode;->setNext(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "State[\n  pos="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    move-result v1

    const-string v2, "\n]"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
