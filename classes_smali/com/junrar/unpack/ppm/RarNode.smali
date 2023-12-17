.class Lcom/junrar/unpack/ppm/RarNode;
.super Lcom/junrar/unpack/ppm/Pointer;
.source "RarNode.java"


# static fields
.field public static final size:I = 0x4


# instance fields
.field private next:I


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/unpack/ppm/Pointer;-><init>([B)V

    .line 4
    return-void
.end method


# virtual methods
.method public getNext()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 7
    invoke-static {v0, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/junrar/unpack/ppm/RarNode;->next:I

    .line 13
    :cond_c
    iget v0, p0, Lcom/junrar/unpack/ppm/RarNode;->next:I

    .line 15
    return v0
.end method

.method public setNext(I)V
    .registers 4

    .line 2
    iput p1, p0, Lcom/junrar/unpack/ppm/RarNode;->next:I

    .line 3
    iget-object v0, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_b

    .line 4
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    invoke-static {v0, v1, p1}, Lcom/junrar/io/Raw;->writeIntLittleEndian([BII)V

    :cond_b
    return-void
.end method

.method public setNext(Lcom/junrar/unpack/ppm/RarNode;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/Pointer;->getAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/ppm/RarNode;->setNext(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "State[\n  pos="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "\n  size="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "\n  next="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/RarNode;->getNext()I

    .line 29
    move-result v1

    .line 30
    const-string v2, "\n]"

    .line 32
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
