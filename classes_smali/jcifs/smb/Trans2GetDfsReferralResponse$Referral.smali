.class Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;
.super Ljava/lang/Object;
.source "Trans2GetDfsReferralResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/Trans2GetDfsReferralResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Referral"
.end annotation


# instance fields
.field private altPath:Ljava/lang/String;

.field private altPathOffset:I

.field private flags:I

.field public node:Ljava/lang/String;

.field private nodeOffset:I

.field public path:Ljava/lang/String;

.field private pathOffset:I

.field private proximity:I

.field private serverType:I

.field private size:I

.field public final synthetic this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

.field public ttl:I

.field private version:I


# direct methods
.method public constructor <init>(Ljcifs/smb/Trans2GetDfsReferralResponse;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public readWireFormat([BII)I
    .registers 10

    .line 1
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v1, :cond_22

    .line 11
    if-ne v0, v2, :cond_d

    .line 13
    goto :goto_22

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    const-string p3, "Version "

    .line 20
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget p3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    .line 25
    const-string v0, " referral not supported. Please report this to jcifs at samba dot org."

    .line 27
    invoke-static {p2, p3, v0}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1

    .line 35
    :cond_22
    :goto_22
    add-int/lit8 v0, p2, 0x2

    .line 37
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 40
    move-result v3

    .line 41
    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    .line 43
    add-int/lit8 v0, v0, 0x2

    .line 45
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 48
    move-result v3

    .line 49
    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->serverType:I

    .line 51
    add-int/lit8 v0, v0, 0x2

    .line 53
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 56
    move-result v3

    .line 57
    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->flags:I

    .line 59
    add-int/lit8 v0, v0, 0x2

    .line 61
    iget v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    .line 63
    const/4 v4, 0x0

    .line 64
    const v5, 0x8000

    .line 67
    if-ne v3, v1, :cond_92

    .line 69
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 72
    move-result v1

    .line 73
    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->proximity:I

    .line 75
    add-int/lit8 v0, v0, 0x2

    .line 77
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 80
    move-result v1

    .line 81
    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    .line 83
    add-int/lit8 v0, v0, 0x2

    .line 85
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 88
    move-result v1

    .line 89
    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    .line 91
    add-int/lit8 v0, v0, 0x2

    .line 93
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 96
    move-result v1

    .line 97
    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPathOffset:I

    .line 99
    add-int/lit8 v0, v0, 0x2

    .line 101
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 104
    move-result v0

    .line 105
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    .line 107
    iget-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    .line 109
    iget v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    .line 111
    add-int/2addr v1, p2

    .line 112
    iget v3, v0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 114
    and-int/2addr v3, v5

    .line 115
    if-eqz v3, :cond_76

    .line 117
    move v3, v2

    .line 118
    goto :goto_77

    .line 119
    :cond_76
    move v3, v4

    .line 120
    :goto_77
    invoke-virtual {v0, p1, v1, p3, v3}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    .line 126
    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    .line 128
    if-lez v0, :cond_a3

    .line 130
    iget-object v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    .line 132
    add-int/2addr p2, v0

    .line 133
    iget v0, v1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 135
    and-int/2addr v0, v5

    .line 136
    if-eqz v0, :cond_8a

    .line 138
    goto :goto_8b

    .line 139
    :cond_8a
    move v2, v4

    .line 140
    :goto_8b
    invoke-virtual {v1, p1, p2, p3, v2}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    .line 146
    goto :goto_a3

    .line 147
    :cond_92
    if-ne v3, v2, :cond_a3

    .line 149
    iget-object p2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    .line 151
    iget v1, p2, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 153
    and-int/2addr v1, v5

    .line 154
    if-eqz v1, :cond_9c

    .line 156
    goto :goto_9d

    .line 157
    :cond_9c
    move v2, v4

    .line 158
    :goto_9d
    invoke-virtual {p2, p1, v0, p3, v2}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    .line 164
    :cond_a3
    :goto_a3
    iget p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    .line 166
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Referral[version="

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ",size="

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ",serverType="

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->serverType:I

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ",flags="

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->flags:I

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, ",proximity="

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->proximity:I

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, ",ttl="

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v2, ",pathOffset="

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, ",altPathOffset="

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPathOffset:I

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, ",nodeOffset="

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string v2, ",path="

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, ",altPath="

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPath:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v2, ",node="

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    .line 122
    const-string v3, "]"

    .line 124
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 131
    return-object v0
.end method
