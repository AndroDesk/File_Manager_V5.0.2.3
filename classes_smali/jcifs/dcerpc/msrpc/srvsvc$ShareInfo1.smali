.class public Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareInfo1"
.end annotation


# instance fields
.field public netname:Ljava/lang/String;

.field public remark:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->type:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    if-eqz v0, :cond_1c

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->netname:Ljava/lang/String;

    :cond_1c
    if-eqz v1, :cond_26

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->remark:Ljava/lang/String;

    :cond_26
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->netname:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->type:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->netname:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->remark:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_26
    return-void
.end method
