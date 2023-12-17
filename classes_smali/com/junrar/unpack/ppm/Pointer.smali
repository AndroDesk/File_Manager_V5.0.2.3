.class abstract Lcom/junrar/unpack/ppm/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public mem:[B

.field public pos:I


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    .line 6
    return-void
.end method


# virtual methods
.method public getAddress()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 3
    return v0
.end method

.method public setAddress(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    .line 3
    return-void
.end method
