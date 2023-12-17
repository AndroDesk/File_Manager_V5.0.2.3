.class public Ljcifs/dcerpc/ndr/NdrSmall;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "NdrSmall.java"


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 2

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    return-void
.end method
