.class public Ljcifs/dcerpc/msrpc/samr$SamrCloseHandle;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrCloseHandle"
.end annotation


# instance fields
.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public retval:I


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrCloseHandle;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 6
    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 4
    move-result p1

    .line 5
    iput p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrCloseHandle;->retval:I

    .line 7
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrCloseHandle;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 3
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 6
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
