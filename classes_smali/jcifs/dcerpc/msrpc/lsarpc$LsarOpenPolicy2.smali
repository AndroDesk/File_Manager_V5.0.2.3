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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;ILjcifs/dcerpc/rpc$policy_handle;)V
    .registers 5

    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->system_name:Ljava/lang/String;

    iput-object p2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    iput p3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->desired_access:I

    iput-object p4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->policy_handle:Ljcifs/dcerpc/rpc$policy_handle;

    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->policy_handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->system_name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->system_name:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->desired_access:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/16 v0, 0x2c

    return v0
.end method
