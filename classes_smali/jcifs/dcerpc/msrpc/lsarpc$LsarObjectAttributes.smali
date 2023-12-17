.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarObjectAttributes"
.end annotation


# instance fields
.field public attributes:I

.field public length:I

.field public object_name:Ljcifs/dcerpc/rpc$unicode_string;

.field public root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

.field public security_descriptor:I

.field public security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    .line 11
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 22
    move-result v2

    .line 23
    iput v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->attributes:I

    .line 25
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 28
    move-result v2

    .line 29
    iput v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_descriptor:I

    .line 31
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 34
    move-result v2

    .line 35
    if-eqz v0, :cond_2b

    .line 37
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 39
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

    .line 41
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrSmall;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 44
    :cond_2b
    if-eqz v1, :cond_3f

    .line 46
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 48
    if-nez v0, :cond_38

    .line 50
    new-instance v0, Ljcifs/dcerpc/rpc$unicode_string;

    .line 52
    invoke-direct {v0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 55
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 57
    :cond_38
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 59
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 61
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$unicode_string;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 64
    :cond_3f
    if-eqz v2, :cond_53

    .line 66
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 68
    if-nez v0, :cond_4c

    .line 70
    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 72
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;-><init>()V

    .line 75
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 77
    :cond_4c
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 79
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 81
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 84
    :cond_53
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 10
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 16
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 18
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 21
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->attributes:I

    .line 23
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 26
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_descriptor:I

    .line 28
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 31
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 33
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 36
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

    .line 38
    if-eqz v0, :cond_2c

    .line 40
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 42
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrSmall;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 45
    :cond_2c
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 47
    if-eqz v0, :cond_35

    .line 49
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 51
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$unicode_string;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 54
    :cond_35
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 56
    if-eqz v0, :cond_3e

    .line 58
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 60
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 63
    :cond_3e
    return-void
.end method
