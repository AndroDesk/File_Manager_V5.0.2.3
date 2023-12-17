.class public Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteTOD"
.end annotation


# instance fields
.field public info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

.field public retval:I

.field public servername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->servername:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    .line 8
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
    if-eqz v0, :cond_16

    .line 7
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    .line 9
    if-nez v0, :cond_11

    .line 11
    new-instance v0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    .line 13
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;-><init>()V

    .line 16
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    .line 18
    :cond_11
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    .line 20
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 23
    :cond_16
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 26
    move-result p1

    .line 27
    iput p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->retval:I

    .line 29
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->servername:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 7
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->servername:Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 14
    :cond_d
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/16 v0, 0x1c

    return v0
.end method
