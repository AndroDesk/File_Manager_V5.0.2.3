.class public Ljcifs/dcerpc/ndr/NdrSmall;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "NdrSmall.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 4
    and-int/lit16 p1, p1, 0xff

    .line 6
    iput p1, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    .line 8
    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 4
    move-result p1

    .line 5
    iput p1, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    .line 7
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    .line 3
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 6
    return-void
.end method
