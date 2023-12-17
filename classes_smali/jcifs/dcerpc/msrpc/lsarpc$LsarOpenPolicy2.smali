.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarOpenPolicy2"
.end annotation


# instance fields
.field public desired_access:I

.field public object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

.field public policy_handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public system_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;ILjcifs/dcerpc/rpc$policy_handle;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->system_name:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    .line 8
    iput p3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->desired_access:I

    .line 10
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->policy_handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 12
    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->policy_handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 3
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 6
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 9
    move-result p1

    .line 10
    iput p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->retval:I

    .line 12
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->system_name:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 7
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->system_name:Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 14
    :cond_d
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    .line 16
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 19
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->desired_access:I

    .line 21
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 24
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/16 v0, 0x2c

    return v0
.end method
