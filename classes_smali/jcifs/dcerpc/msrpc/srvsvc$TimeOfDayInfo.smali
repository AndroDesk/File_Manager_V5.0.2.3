.class public Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeOfDayInfo"
.end annotation


# instance fields
.field public day:I

.field public elapsedt:I

.field public hours:I

.field public hunds:I

.field public mins:I

.field public month:I

.field public msecs:I

.field public secs:I

.field public timezone:I

.field public tinterval:I

.field public weekday:I

.field public year:I


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
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->elapsedt:I

    .line 11
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->msecs:I

    .line 17
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 20
    move-result v0

    .line 21
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->hours:I

    .line 23
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 26
    move-result v0

    .line 27
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->mins:I

    .line 29
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 32
    move-result v0

    .line 33
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->secs:I

    .line 35
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 38
    move-result v0

    .line 39
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->hunds:I

    .line 41
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 44
    move-result v0

    .line 45
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->timezone:I

    .line 47
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 50
    move-result v0

    .line 51
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->tinterval:I

    .line 53
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 56
    move-result v0

    .line 57
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->day:I

    .line 59
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 62
    move-result v0

    .line 63
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->month:I

    .line 65
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 68
    move-result v0

    .line 69
    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->year:I

    .line 71
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 74
    move-result p1

    .line 75
    iput p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->weekday:I

    .line 77
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->elapsedt:I

    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 10
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->msecs:I

    .line 12
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 15
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->hours:I

    .line 17
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 20
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->mins:I

    .line 22
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 25
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->secs:I

    .line 27
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 30
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->hunds:I

    .line 32
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 35
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->timezone:I

    .line 37
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 40
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->tinterval:I

    .line 42
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 45
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->day:I

    .line 47
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 50
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->month:I

    .line 52
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 55
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->year:I

    .line 57
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 60
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->weekday:I

    .line 62
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 65
    return-void
.end method
