.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarClose;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarClose"
.end annotation


# instance fields
.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public retval:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;)V
    .registers 2

    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarClose;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarClose;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarClose;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarClose;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
