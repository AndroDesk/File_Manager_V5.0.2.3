.class public Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareGetInfo"
.end annotation


# instance fields
.field public info:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:I

.field public retval:I

.field public servername:Ljava/lang/String;

.field public sharename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;)V
    .registers 5

    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->servername:Ljava/lang/String;

    iput-object p2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->sharename:Ljava/lang/String;

    iput p3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->level:I

    iput-object p4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    if-nez v0, :cond_14

    new-instance v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    :cond_14
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_1b
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->servername:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->servername:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->sharename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->level:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method
