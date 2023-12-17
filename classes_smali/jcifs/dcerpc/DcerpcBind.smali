.class public Ljcifs/dcerpc/DcerpcBind;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "DcerpcBind.java"


# static fields
.field public static final result_message:[Ljava/lang/String;


# instance fields
.field public binding:Ljcifs/dcerpc/DcerpcBinding;

.field public max_recv:I

.field public max_xmit:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "0"

    .line 3
    const-string v1, "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED"

    .line 5
    const-string v2, "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED"

    .line 7
    const-string v3, "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"

    .line 9
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Ljcifs/dcerpc/DcerpcBind;->result_message:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/DcerpcBinding;Ljcifs/dcerpc/DcerpcHandle;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 3
    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 4
    iget p1, p2, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    iput p1, p0, Ljcifs/dcerpc/DcerpcBind;->max_xmit:I

    .line 5
    iget p1, p2, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    iput p1, p0, Ljcifs/dcerpc/DcerpcBind;->max_recv:I

    const/16 p1, 0xb

    .line 6
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 p1, 0x3

    .line 7
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method

.method public static getResultMessage(I)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ge p0, v0, :cond_8

    .line 4
    sget-object v0, Ljcifs/dcerpc/DcerpcBind;->result_message:[Ljava/lang/String;

    .line 6
    aget-object p0, v0, p0

    .line 8
    goto :goto_1a

    .line 9
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string v2, "0x"

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p0, v0}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    :goto_1a
    return-object p0
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 4
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 7
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 10
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 21
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 24
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 27
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 30
    move-result v0

    .line 31
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    .line 33
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 36
    const/16 v0, 0x14

    .line 38
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 41
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4

    .line 1
    iget v0, p0, Ljcifs/dcerpc/DcerpcBind;->max_xmit:I

    .line 3
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 6
    iget v0, p0, Ljcifs/dcerpc/DcerpcBind;->max_recv:I

    .line 8
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 19
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 22
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 25
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 28
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 31
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 34
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 36
    iget-object v0, v0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    .line 38
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$uuid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 41
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 43
    iget v0, v0, Ljcifs/dcerpc/DcerpcBinding;->major:I

    .line 45
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 48
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 50
    iget v0, v0, Ljcifs/dcerpc/DcerpcBinding;->minor:I

    .line 52
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 55
    sget-object v0, Ljcifs/dcerpc/DcerpcConstants;->DCERPC_UUID_SYNTAX_NDR:Ljcifs/dcerpc/UUID;

    .line 57
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$uuid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 60
    const/4 v0, 0x2

    .line 61
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 64
    return-void
.end method

.method public getOpnum()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getResult()Ljcifs/dcerpc/DcerpcException;
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    .line 3
    if-eqz v0, :cond_10

    .line 5
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    .line 7
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    .line 9
    invoke-static {v1}, Ljcifs/dcerpc/DcerpcBind;->getResultMessage(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    .line 16
    return-object v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method
