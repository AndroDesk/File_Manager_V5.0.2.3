.class abstract Lcom/junrar/unpack/ppm/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public mem:[B

.field public pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/junrar/unpack/ppm/Pointer;->mem:[B

    return-void
.end method


# virtual methods
.method public getAddress()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    return v0
.end method

.method public setAddress(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/unpack/ppm/Pointer;->pos:I

    return-void
.end method
