.class public Ljcifs/dcerpc/ndr/NdrLong;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "NdrLong.java"


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

    iput p1, p0, Ljcifs/dcerpc/ndr/NdrLong;->value:I

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 2

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/ndr/NdrLong;->value:I

    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrLong;->value:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method
