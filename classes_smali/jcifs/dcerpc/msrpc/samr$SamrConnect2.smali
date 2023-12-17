.class public Ljcifs/dcerpc/msrpc/samr$SamrConnect2;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrConnect2"
.end annotation


# instance fields
.field public access_mask:I

.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public system_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/rpc$policy_handle;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->system_name:Ljava/lang/String;

    .line 6
    iput p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->access_mask:I

    .line 8
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 10
    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 3
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 6
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 9
    move-result p1

    .line 10
    iput p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->retval:I

    .line 12
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->system_name:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 7
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->system_name:Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 14
    :cond_d
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->access_mask:I

    .line 16
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 19
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/16 v0, 0x39

    return v0
.end method
