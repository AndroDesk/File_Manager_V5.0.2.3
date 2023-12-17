.class public Ljcifs/dcerpc/ndr/NdrHyper;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "NdrHyper.java"


# instance fields
.field public value:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 4
    iput-wide p1, p0, Ljcifs/dcerpc/ndr/NdrHyper;->value:J

    .line 6
    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_hyper()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Ljcifs/dcerpc/ndr/NdrHyper;->value:J

    .line 7
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    iget-wide v0, p0, Ljcifs/dcerpc/ndr/NdrHyper;->value:J

    .line 3
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_hyper(J)V

    .line 6
    return-void
.end method
