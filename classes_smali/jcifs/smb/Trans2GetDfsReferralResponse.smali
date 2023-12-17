.class Ljcifs/smb/Trans2GetDfsReferralResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "Trans2GetDfsReferralResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;
    }
.end annotation


# instance fields
.field public flags:I

.field public numReferrals:I

.field public pathConsumed:I

.field public referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 4
    const/16 v0, 0x10

    .line 6
    iput-byte v0, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 8
    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 8

    .line 1
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    .line 7
    add-int/lit8 v1, p2, 0x2

    .line 9
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 11
    const v3, 0x8000

    .line 14
    and-int/2addr v2, v3

    .line 15
    if-eqz v2, :cond_14

    .line 17
    div-int/lit8 v0, v0, 0x2

    .line 19
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    .line 21
    :cond_14
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 24
    move-result v0

    .line 25
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    .line 27
    add-int/lit8 v1, v1, 0x2

    .line 29
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 32
    move-result v0

    .line 33
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags:I

    .line 35
    add-int/lit8 v1, v1, 0x4

    .line 37
    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    .line 39
    new-array v0, v0, [Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 41
    iput-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_2b
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    .line 46
    if-lt v0, v2, :cond_31

    .line 48
    sub-int/2addr v1, p2

    .line 49
    return v1

    .line 50
    :cond_31
    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 52
    new-instance v3, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 54
    invoke-direct {v3, p0}, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;-><init>(Ljcifs/smb/Trans2GetDfsReferralResponse;)V

    .line 57
    aput-object v3, v2, v0

    .line 59
    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 61
    aget-object v2, v2, v0

    .line 63
    invoke-virtual {v2, p1, v1, p3}, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->readWireFormat([BII)I

    .line 66
    move-result v2

    .line 67
    add-int/2addr v1, v2

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 70
    goto :goto_2b
.end method

.method public readParametersWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public readSetupWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Trans2GetDfsReferralResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",pathConsumed="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",numReferrals="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",flags="

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags:I

    .line 44
    const-string v3, "]"

    .line 46
    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 53
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeSetupWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
