.class public Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareEnumAll"
.end annotation


# instance fields
.field public info:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:I

.field public prefmaxlen:I

.field public resume_handle:I

.field public retval:I

.field public servername:Ljava/lang/String;

.field public totalentries:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;III)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    .line 6
    iput p2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 8
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 10
    iput p4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->prefmaxlen:I

    .line 12
    iput p5, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->totalentries:I

    .line 14
    iput p6, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

    .line 16
    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 7
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 10
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_21

    .line 16
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 18
    if-nez v0, :cond_1a

    .line 20
    new-instance v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;

    .line 22
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;-><init>()V

    .line 25
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 27
    :cond_1a
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 29
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 31
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 34
    :cond_21
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 37
    move-result v0

    .line 38
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->totalentries:I

    .line 40
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 43
    move-result v0

    .line 44
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

    .line 46
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 49
    move-result p1

    .line 50
    iput p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    .line 52
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 7
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 14
    :cond_d
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 16
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 19
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 21
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 24
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 26
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 29
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 31
    if-eqz v0, :cond_25

    .line 33
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 35
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 38
    :cond_25
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->prefmaxlen:I

    .line 40
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 43
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

    .line 45
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 48
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method
