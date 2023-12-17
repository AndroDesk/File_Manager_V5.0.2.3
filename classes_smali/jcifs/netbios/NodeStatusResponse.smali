.class Ljcifs/netbios/NodeStatusResponse;
.super Ljcifs/netbios/NameServicePacket;
.source "NodeStatusResponse.java"


# instance fields
.field public addressArray:[Ljcifs/netbios/NbtAddress;

.field private macAddress:[B

.field private numberOfNames:I

.field private queryAddress:Ljcifs/netbios/NbtAddress;

.field private stats:[B


# direct methods
.method public constructor <init>(Ljcifs/netbios/NbtAddress;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    .line 6
    new-instance p1, Ljcifs/netbios/Name;

    .line 8
    invoke-direct {p1}, Ljcifs/netbios/Name;-><init>()V

    .line 11
    iput-object p1, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    .line 13
    const/4 p1, 0x6

    .line 14
    new-array p1, p1, [B

    .line 16
    iput-object p1, p0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    .line 18
    return-void
.end method

.method private readNodeNameArray([BI)I
    .registers 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget v2, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    .line 7
    new-array v2, v2, [Ljcifs/netbios/NbtAddress;

    .line 9
    iput-object v2, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    .line 11
    iget-object v2, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    .line 13
    iget-object v2, v2, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 15
    iget-object v2, v2, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 17
    move/from16 v5, p2

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    :goto_14
    :try_start_14
    iget v7, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    .line 23
    if-lt v4, v7, :cond_1a

    .line 25
    goto/16 :goto_d6

    .line 27
    :cond_1a
    add-int/lit8 v7, v5, 0xe

    .line 29
    :goto_1c
    aget-byte v8, v1, v7

    .line 31
    const/16 v9, 0x20

    .line 33
    if-eq v8, v9, :cond_d2

    .line 35
    new-instance v8, Ljava/lang/String;

    .line 37
    sub-int/2addr v7, v5

    .line 38
    const/4 v9, 0x1

    .line 39
    add-int/2addr v7, v9

    .line 40
    sget-object v10, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    .line 42
    invoke-direct {v8, v1, v5, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 45
    add-int/lit8 v7, v5, 0xf

    .line 47
    aget-byte v7, v1, v7

    .line 49
    and-int/lit16 v7, v7, 0xff

    .line 51
    add-int/lit8 v10, v5, 0x10

    .line 53
    aget-byte v10, v1, v10

    .line 55
    and-int/lit16 v11, v10, 0x80

    .line 57
    const/16 v12, 0x80

    .line 59
    if-ne v11, v12, :cond_3e

    .line 61
    move v11, v9

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    const/4 v11, 0x0

    .line 64
    :goto_3f
    and-int/lit8 v12, v10, 0x60

    .line 66
    shr-int/lit8 v12, v12, 0x5

    .line 68
    and-int/lit8 v13, v10, 0x10

    .line 70
    const/16 v14, 0x10

    .line 72
    if-ne v13, v14, :cond_4b

    .line 74
    move v15, v9

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    const/4 v15, 0x0

    .line 77
    :goto_4c
    and-int/lit8 v13, v10, 0x8

    .line 79
    const/16 v14, 0x8

    .line 81
    if-ne v13, v14, :cond_54

    .line 83
    move v14, v9

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    const/4 v14, 0x0

    .line 86
    :goto_55
    and-int/lit8 v13, v10, 0x4

    .line 88
    const/4 v3, 0x4

    .line 89
    if-ne v13, v3, :cond_5c

    .line 91
    move v3, v9

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    const/4 v3, 0x0

    .line 94
    :goto_5d
    and-int/lit8 v10, v10, 0x2

    .line 96
    const/4 v13, 0x2

    .line 97
    if-ne v10, v13, :cond_64

    .line 99
    move v10, v9

    .line 100
    goto :goto_65

    .line 101
    :cond_64
    const/4 v10, 0x0

    .line 102
    :goto_65
    if-nez v6, :cond_a3

    .line 104
    iget-object v13, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    .line 106
    iget-object v13, v13, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 108
    iget v9, v13, Ljcifs/netbios/Name;->hexCode:I

    .line 110
    if-ne v9, v7, :cond_a3

    .line 112
    sget-object v9, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    .line 114
    if-eq v13, v9, :cond_7b

    .line 116
    iget-object v13, v13, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 118
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v13

    .line 122
    if-eqz v13, :cond_a3

    .line 124
    :cond_7b
    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    .line 126
    iget-object v13, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 128
    if-ne v13, v9, :cond_88

    .line 130
    new-instance v9, Ljcifs/netbios/Name;

    .line 132
    invoke-direct {v9, v8, v7, v2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    iput-object v9, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 137
    :cond_88
    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    .line 139
    iput-boolean v11, v6, Ljcifs/netbios/NbtAddress;->groupName:Z

    .line 141
    iput v12, v6, Ljcifs/netbios/NbtAddress;->nodeType:I

    .line 143
    iput-boolean v15, v6, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    .line 145
    iput-boolean v14, v6, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    .line 147
    iput-boolean v3, v6, Ljcifs/netbios/NbtAddress;->isActive:Z

    .line 149
    iput-boolean v10, v6, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    .line 151
    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    .line 153
    iput-object v3, v6, Ljcifs/netbios/NbtAddress;->macAddress:[B

    .line 155
    const/4 v3, 0x1

    .line 156
    iput-boolean v3, v6, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    .line 158
    iget-object v7, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    .line 160
    aput-object v6, v7, v4

    .line 162
    move v6, v3

    .line 163
    goto :goto_cc

    .line 164
    :cond_a3
    iget-object v9, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    .line 166
    new-instance v23, Ljcifs/netbios/NbtAddress;

    .line 168
    new-instance v13, Ljcifs/netbios/Name;

    .line 170
    invoke-direct {v13, v8, v7, v2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    iget-object v7, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    .line 175
    iget v7, v7, Ljcifs/netbios/NbtAddress;->address:I

    .line 177
    iget-object v8, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    .line 179
    move-object/from16 v16, v13

    .line 181
    move-object/from16 v13, v23

    .line 183
    move/from16 v19, v14

    .line 185
    move-object/from16 v14, v16

    .line 187
    move/from16 v18, v15

    .line 189
    move v15, v7

    .line 190
    move/from16 v16, v11

    .line 192
    move/from16 v17, v12

    .line 194
    move/from16 v20, v3

    .line 196
    move/from16 v21, v10

    .line 198
    move-object/from16 v22, v8

    .line 200
    invoke-direct/range {v13 .. v22}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    .line 203
    aput-object v23, v9, v4
    :try_end_cc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_cc} :catch_d6

    .line 205
    :goto_cc
    add-int/lit8 v5, v5, 0x12

    .line 207
    add-int/lit8 v4, v4, 0x1

    .line 209
    goto/16 :goto_14

    .line 211
    :cond_d2
    add-int/lit8 v7, v7, -0x1

    .line 213
    goto/16 :goto_1c

    .line 215
    :catch_d6
    :goto_d6
    sub-int v5, v5, p2

    .line 217
    return v5
.end method


# virtual methods
.method public readBodyWireFormat([BI)I
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->readResourceRecordWireFormat([BI)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public readRDataWireFormat([BI)I
    .registers 9

    .line 1
    aget-byte v0, p1, p2

    .line 3
    and-int/lit16 v1, v0, 0xff

    .line 5
    mul-int/lit8 v1, v1, 0x12

    .line 7
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    .line 9
    sub-int/2addr v2, v1

    .line 10
    add-int/lit8 v2, v2, -0x1

    .line 12
    add-int/lit8 v3, p2, 0x1

    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 16
    iput v0, p0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    .line 18
    add-int/2addr v1, v3

    .line 19
    iget-object v0, p0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x6

    .line 23
    invoke-static {p1, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-direct {p0, p1, v3}, Ljcifs/netbios/NodeStatusResponse;->readNodeNameArray([BI)I

    .line 29
    move-result v0

    .line 30
    add-int/2addr v3, v0

    .line 31
    new-array v0, v2, [B

    .line 33
    iput-object v0, p0, Ljcifs/netbios/NodeStatusResponse;->stats:[B

    .line 35
    invoke-static {p1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    add-int/2addr v3, v2

    .line 39
    sub-int/2addr v3, p2

    .line 40
    return v3
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "NodeStatusResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "]"

    .line 16
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    return-object v0
.end method

.method public writeBodyWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeRDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
