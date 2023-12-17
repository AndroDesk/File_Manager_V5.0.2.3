.class abstract Ljcifs/netbios/NameServicePacket;
.super Ljava/lang/Object;
.source "NameServicePacket.java"


# static fields
.field public static final A:I = 0x1

.field public static final ACT_ERR:I = 0x6

.field public static final ADDITIONAL_OFFSET:I = 0xa

.field public static final ANSWER_OFFSET:I = 0x6

.field public static final AUTHORITY_OFFSET:I = 0x8

.field public static final CFT_ERR:I = 0x7

.field public static final FMT_ERR:I = 0x1

.field public static final HEADER_LENGTH:I = 0xc

.field public static final IMP_ERR:I = 0x4

.field public static final IN:I = 0x1

.field public static final NB:I = 0x20

.field public static final NBSTAT:I = 0x21

.field public static final NBSTAT_IN:I = 0x210001

.field public static final NB_IN:I = 0x200001

.field public static final NS:I = 0x2

.field public static final NULL:I = 0xa

.field public static final OPCODE_OFFSET:I = 0x2

.field public static final QUERY:I = 0x0

.field public static final QUESTION_OFFSET:I = 0x4

.field public static final RFS_ERR:I = 0x5

.field public static final SRV_ERR:I = 0x2

.field public static final WACK:I = 0x7


# instance fields
.field public additionalCount:I

.field public addr:Ljava/net/InetAddress;

.field public addrEntry:[Ljcifs/netbios/NbtAddress;

.field public addrIndex:I

.field public answerCount:I

.field public authorityCount:I

.field public isAuthAnswer:Z

.field public isBroadcast:Z

.field public isRecurAvailable:Z

.field public isRecurDesired:Z

.field public isResponse:Z

.field public isTruncated:Z

.field public nameTrnId:I

.field public opCode:I

.field public questionClass:I

.field public questionCount:I

.field public questionName:Ljcifs/netbios/Name;

.field public questionType:I

.field public rDataLength:I

.field public received:Z

.field public recordClass:I

.field public recordName:Ljcifs/netbios/Name;

.field public recordType:I

.field public resultCode:I

.field public ttl:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    .line 7
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 9
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    .line 11
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    .line 13
    return-void
.end method

.method public static readInt2([BI)I
    .registers 3

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 9
    aget-byte p0, p0, p1

    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 13
    add-int/2addr v0, p0

    .line 14
    return v0
.end method

.method public static readInt4([BI)I
    .registers 4

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 7
    add-int/lit8 v1, p1, 0x1

    .line 9
    aget-byte v1, p0, v1

    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 15
    add-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p1, 0x2

    .line 18
    aget-byte v1, p0, v1

    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 24
    add-int/2addr v0, v1

    .line 25
    add-int/lit8 p1, p1, 0x3

    .line 27
    aget-byte p0, p0, p1

    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 31
    add-int/2addr v0, p0

    .line 32
    return v0
.end method

.method public static readNameTrnId([BI)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static writeInt2(I[BI)V
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    shr-int/lit8 v1, p0, 0x8

    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 7
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p1, p2

    .line 10
    and-int/lit16 p0, p0, 0xff

    .line 12
    int-to-byte p0, p0

    .line 13
    aput-byte p0, p1, v0

    .line 15
    return-void
.end method

.method public static writeInt4(I[BI)V
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    shr-int/lit8 v1, p0, 0x18

    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 7
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p1, p2

    .line 10
    add-int/lit8 p2, v0, 0x1

    .line 12
    shr-int/lit8 v1, p0, 0x10

    .line 14
    and-int/lit16 v1, v1, 0xff

    .line 16
    int-to-byte v1, v1

    .line 17
    aput-byte v1, p1, v0

    .line 19
    add-int/lit8 v0, p2, 0x1

    .line 21
    shr-int/lit8 v1, p0, 0x8

    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 25
    int-to-byte v1, v1

    .line 26
    aput-byte v1, p1, p2

    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 30
    int-to-byte p0, p0

    .line 31
    aput-byte p0, p1, v0

    .line 33
    return-void
.end method


# virtual methods
.method public abstract readBodyWireFormat([BI)I
.end method

.method public readHeaderWireFormat([BI)I
    .registers 8

    .line 1
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    .line 7
    add-int/lit8 v0, p2, 0x2

    .line 9
    aget-byte v1, p1, v0

    .line 11
    and-int/lit16 v2, v1, 0x80

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v2, :cond_12

    .line 17
    move v2, v3

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v2, v4

    .line 20
    :goto_13
    iput-boolean v2, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    .line 22
    and-int/lit8 v2, v1, 0x78

    .line 24
    shr-int/lit8 v2, v2, 0x3

    .line 26
    iput v2, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    .line 28
    and-int/lit8 v2, v1, 0x4

    .line 30
    if-nez v2, :cond_21

    .line 32
    move v2, v3

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v2, v4

    .line 35
    :goto_22
    iput-boolean v2, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    .line 37
    and-int/lit8 v2, v1, 0x2

    .line 39
    if-nez v2, :cond_2a

    .line 41
    move v2, v3

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v2, v4

    .line 44
    :goto_2b
    iput-boolean v2, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    .line 46
    and-int/2addr v1, v4

    .line 47
    if-nez v1, :cond_32

    .line 49
    move v1, v3

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v1, v4

    .line 52
    :goto_33
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    .line 54
    add-int/2addr v0, v4

    .line 55
    aget-byte v0, p1, v0

    .line 57
    and-int/lit16 v1, v0, 0x80

    .line 59
    if-nez v1, :cond_3e

    .line 61
    move v1, v3

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v1, v4

    .line 64
    :goto_3f
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    .line 66
    and-int/lit8 v1, v0, 0x10

    .line 68
    if-nez v1, :cond_46

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v3, v4

    .line 72
    :goto_47
    iput-boolean v3, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 74
    and-int/lit8 v0, v0, 0xf

    .line 76
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    .line 78
    add-int/lit8 v0, p2, 0x4

    .line 80
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    .line 83
    move-result v0

    .line 84
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    .line 86
    add-int/lit8 v0, p2, 0x6

    .line 88
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    .line 91
    move-result v0

    .line 92
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    .line 94
    add-int/lit8 v0, p2, 0x8

    .line 96
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    .line 99
    move-result v0

    .line 100
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    .line 102
    add-int/lit8 p2, p2, 0xa

    .line 104
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    .line 107
    move-result p1

    .line 108
    iput p1, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    .line 110
    const/16 p1, 0xc

    .line 112
    return p1
.end method

.method public readQuestionSectionWireFormat([BI)I
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p2

    .line 8
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    .line 11
    move-result v1

    .line 12
    iput v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    .line 14
    add-int/lit8 v0, v0, 0x2

    .line 16
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    .line 19
    move-result p1

    .line 20
    iput p1, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    .line 22
    add-int/lit8 v0, v0, 0x2

    .line 24
    sub-int/2addr v0, p2

    .line 25
    return v0
.end method

.method public abstract readRDataWireFormat([BI)I
.end method

.method public readResourceRecordWireFormat([BI)I
    .registers 6

    .line 1
    aget-byte v0, p1, p2

    .line 3
    const/16 v1, 0xc0

    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_e

    .line 8
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    .line 10
    iput-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    .line 12
    add-int/lit8 v0, p2, 0x2

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    .line 17
    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    .line 20
    move-result v0

    .line 21
    add-int/2addr v0, p2

    .line 22
    :goto_15
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    .line 25
    move-result v1

    .line 26
    iput v1, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    .line 28
    add-int/lit8 v0, v0, 0x2

    .line 30
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    .line 33
    move-result v1

    .line 34
    iput v1, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    .line 36
    add-int/lit8 v0, v0, 0x2

    .line 38
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt4([BI)I

    .line 41
    move-result v1

    .line 42
    iput v1, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    .line 44
    add-int/lit8 v0, v0, 0x4

    .line 46
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    .line 49
    move-result v1

    .line 50
    iput v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    .line 52
    add-int/lit8 v0, v0, 0x2

    .line 54
    div-int/lit8 v2, v1, 0x6

    .line 56
    new-array v2, v2, [Ljcifs/netbios/NbtAddress;

    .line 58
    iput-object v2, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    .line 60
    add-int/2addr v1, v0

    .line 61
    const/4 v2, 0x0

    .line 62
    :goto_3d
    iput v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    .line 64
    if-lt v0, v1, :cond_43

    .line 66
    sub-int/2addr v0, p2

    .line 67
    return v0

    .line 68
    :cond_43
    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->readRDataWireFormat([BI)I

    .line 71
    move-result v2

    .line 72
    add-int/2addr v0, v2

    .line 73
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 77
    goto :goto_3d
.end method

.method public readWireFormat([BI)I
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->readHeaderWireFormat([BI)I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p2

    .line 6
    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->readBodyWireFormat([BI)I

    .line 9
    move-result p1

    .line 10
    add-int/2addr v0, p1

    .line 11
    sub-int/2addr v0, p2

    .line 12
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 1
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    .line 3
    const/4 v1, 0x7

    .line 4
    if-eqz v0, :cond_f

    .line 6
    if-eq v0, v1, :cond_c

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_11

    .line 13
    :cond_c
    const-string v0, "WACK"

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const-string v0, "QUERY"

    .line 18
    :goto_11
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x4

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eq v2, v5, :cond_29

    .line 25
    if-eq v2, v3, :cond_29

    .line 27
    if-eq v2, v4, :cond_29

    .line 29
    const/4 v6, 0x5

    .line 30
    if-eq v2, v6, :cond_29

    .line 32
    const/4 v6, 0x6

    .line 33
    if-eq v2, v6, :cond_29

    .line 35
    if-eq v2, v1, :cond_29

    .line 37
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    .line 39
    invoke-static {v1, v5}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 42
    :cond_29
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    .line 44
    const-string v2, "NBSTAT"

    .line 46
    const-string v6, "NB"

    .line 48
    const/16 v7, 0x21

    .line 50
    const/16 v8, 0x20

    .line 52
    const-string v9, "0x"

    .line 54
    if-eq v1, v8, :cond_4e

    .line 56
    if-eq v1, v7, :cond_4c

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget v10, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    .line 65
    invoke-static {v10, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 68
    move-result-object v10

    .line 69
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    goto :goto_4f

    .line 77
    :cond_4c
    move-object v1, v2

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    move-object v1, v6

    .line 80
    :goto_4f
    iget v10, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    .line 82
    if-eq v10, v5, :cond_78

    .line 84
    if-eq v10, v3, :cond_75

    .line 86
    const/16 v3, 0xa

    .line 88
    if-eq v10, v3, :cond_72

    .line 90
    if-eq v10, v8, :cond_70

    .line 92
    if-eq v10, v7, :cond_7a

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    iget v3, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    .line 101
    invoke-static {v3, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    goto :goto_7a

    .line 113
    :cond_70
    move-object v2, v6

    .line 114
    goto :goto_7a

    .line 115
    :cond_72
    const-string v2, "NULL"

    .line 117
    goto :goto_7a

    .line 118
    :cond_75
    const-string v2, "NS"

    .line 120
    goto :goto_7a

    .line 121
    :cond_78
    const-string v2, "A"

    .line 123
    :cond_7a
    :goto_7a
    new-instance v3, Ljava/lang/String;

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    .line 127
    const-string v7, "nameTrnId="

    .line 129
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    iget v7, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v7, ",isResponse="

    .line 139
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-boolean v7, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    .line 144
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    const-string v7, ",opCode="

    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v0, ",isAuthAnswer="

    .line 157
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    .line 162
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    const-string v0, ",isTruncated="

    .line 167
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    .line 172
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    const-string v0, ",isRecurAvailable="

    .line 177
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    .line 182
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    const-string v0, ",isRecurDesired="

    .line 187
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    .line 192
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    const-string v0, ",isBroadcast="

    .line 197
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 202
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    const-string v0, ",resultCode="

    .line 207
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    .line 212
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const-string v0, ",questionCount="

    .line 217
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    .line 222
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string v0, ",answerCount="

    .line 227
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    .line 232
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v0, ",authorityCount="

    .line 237
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    .line 242
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v0, ",additionalCount="

    .line 247
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    .line 252
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    const-string v0, ",questionName="

    .line 257
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    .line 262
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    const-string v0, ",questionType="

    .line 267
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v0, ",questionClass="

    .line 275
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    .line 280
    const-string v1, "IN"

    .line 282
    if-ne v0, v5, :cond_11d

    .line 284
    move-object v0, v1

    .line 285
    goto :goto_12f

    .line 286
    :cond_11d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    iget v7, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    .line 293
    invoke-static {v7, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 296
    move-result-object v7

    .line 297
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object v0

    .line 304
    :goto_12f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v0, ",recordName="

    .line 309
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    .line 314
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    const-string v0, ",recordType="

    .line 319
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v0, ",recordClass="

    .line 327
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    .line 332
    if-ne v0, v5, :cond_14e

    .line 334
    goto :goto_160

    .line 335
    :cond_14e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 337
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    .line 342
    invoke-static {v1, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    move-result-object v1

    .line 353
    :goto_160
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v0, ",ttl="

    .line 358
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    .line 363
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    const-string v0, ",rDataLength="

    .line 368
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    .line 373
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    move-result-object v0

    .line 380
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 383
    return-object v3
.end method

.method public abstract writeBodyWireFormat([BI)I
.end method

.method public writeHeaderWireFormat([BI)I
    .registers 8

    .line 1
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    .line 3
    invoke-static {v0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 6
    add-int/lit8 v0, p2, 0x2

    .line 8
    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    .line 10
    const/16 v2, 0x80

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_10

    .line 15
    move v1, v2

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v1, v3

    .line 18
    :goto_11
    iget v4, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    .line 20
    shl-int/lit8 v4, v4, 0x3

    .line 22
    and-int/lit8 v4, v4, 0x78

    .line 24
    add-int/2addr v1, v4

    .line 25
    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    .line 27
    if-eqz v4, :cond_1e

    .line 29
    const/4 v4, 0x4

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v4, v3

    .line 32
    :goto_1f
    add-int/2addr v1, v4

    .line 33
    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    .line 35
    if-eqz v4, :cond_26

    .line 37
    const/4 v4, 0x2

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v4, v3

    .line 40
    :goto_27
    add-int/2addr v1, v4

    .line 41
    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    .line 43
    add-int/2addr v1, v4

    .line 44
    int-to-byte v1, v1

    .line 45
    aput-byte v1, p1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 49
    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    .line 51
    if-eqz v1, :cond_35

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v2, v3

    .line 55
    :goto_36
    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 57
    if-eqz v1, :cond_3c

    .line 59
    const/16 v3, 0x10

    .line 61
    :cond_3c
    add-int/2addr v2, v3

    .line 62
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    .line 64
    and-int/lit8 v1, v1, 0xf

    .line 66
    add-int/2addr v2, v1

    .line 67
    int-to-byte v1, v2

    .line 68
    aput-byte v1, p1, v0

    .line 70
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    .line 72
    add-int/lit8 v1, p2, 0x4

    .line 74
    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 77
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    .line 79
    add-int/lit8 v1, p2, 0x6

    .line 81
    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 84
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    .line 86
    add-int/lit8 v1, p2, 0x8

    .line 88
    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 91
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    .line 93
    add-int/lit8 p2, p2, 0xa

    .line 95
    invoke-static {v0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 98
    const/16 p1, 0xc

    .line 100
    return p1
.end method

.method public writeQuestionSectionWireFormat([BI)I
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p2

    .line 8
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    .line 10
    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 13
    add-int/lit8 v0, v0, 0x2

    .line 15
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    .line 17
    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 20
    add-int/lit8 v0, v0, 0x2

    .line 22
    sub-int/2addr v0, p2

    .line 23
    return v0
.end method

.method public abstract writeRDataWireFormat([BI)I
.end method

.method public writeResourceRecordWireFormat([BI)I
    .registers 6

    .line 1
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    .line 3
    iget-object v1, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    .line 5
    if-ne v0, v1, :cond_13

    .line 7
    add-int/lit8 v0, p2, 0x1

    .line 9
    const/16 v1, -0x40

    .line 11
    aput-byte v1, p1, p2

    .line 13
    add-int/lit8 v1, v0, 0x1

    .line 15
    const/16 v2, 0xc

    .line 17
    aput-byte v2, p1, v0

    .line 19
    goto :goto_19

    .line 20
    :cond_13
    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    .line 23
    move-result v0

    .line 24
    add-int v1, v0, p2

    .line 26
    :goto_19
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    .line 28
    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 31
    add-int/lit8 v1, v1, 0x2

    .line 33
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    .line 35
    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 38
    add-int/lit8 v1, v1, 0x2

    .line 40
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    .line 42
    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt4(I[BI)V

    .line 45
    add-int/lit8 v1, v1, 0x4

    .line 47
    add-int/lit8 v0, v1, 0x2

    .line 49
    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeRDataWireFormat([BI)I

    .line 52
    move-result v0

    .line 53
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    .line 55
    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 58
    iget p1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    .line 60
    add-int/lit8 p1, p1, 0x2

    .line 62
    add-int/2addr p1, v1

    .line 63
    sub-int/2addr p1, p2

    .line 64
    return p1
.end method

.method public writeWireFormat([BI)I
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeHeaderWireFormat([BI)I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p2

    .line 6
    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeBodyWireFormat([BI)I

    .line 9
    move-result p1

    .line 10
    add-int/2addr v0, p1

    .line 11
    sub-int/2addr v0, p2

    .line 12
    return v0
.end method
