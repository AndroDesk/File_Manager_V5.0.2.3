.class public Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerGetInfo"
.end annotation


# instance fields
.field public info:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:I

.field public retval:I

.field public servername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->servername:Ljava/lang/String;

    .line 6
    iput p2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->level:I

    .line 8
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 10
    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 4
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1b

    .line 10
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 12
    if-nez v0, :cond_14

    .line 14
    new-instance v0, Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;

    .line 16
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;-><init>()V

    .line 19
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 21
    :cond_14
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 23
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 25
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 28
    :cond_1b
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 31
    move-result p1

    .line 32
    iput p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->retval:I

    .line 34
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->servername:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 7
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->servername:Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 14
    :cond_d
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->level:I

    .line 16
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 19
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/16 v0, 0x15

    return v0
.end method
