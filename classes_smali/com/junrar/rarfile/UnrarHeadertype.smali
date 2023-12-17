.class public final enum Lcom/junrar/rarfile/UnrarHeadertype;
.super Ljava/lang/Enum;
.source "UnrarHeadertype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/junrar/rarfile/UnrarHeadertype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum AvHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum CommHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum EndArcHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum MainHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum MarkHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum NewSubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum ProtectHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum SignHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum SubHeader:Lcom/junrar/rarfile/UnrarHeadertype;


# instance fields
.field private headerByte:B


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 3
    const-string v1, "MainHeader"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x73

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    .line 11
    sput-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->MainHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 13
    new-instance v1, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 15
    const-string v3, "MarkHeader"

    .line 17
    const/4 v4, 0x1

    .line 18
    const/16 v5, 0x72

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    .line 23
    sput-object v1, Lcom/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 25
    new-instance v3, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 27
    const-string v5, "FileHeader"

    .line 29
    const/4 v6, 0x2

    .line 30
    const/16 v7, 0x74

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    .line 35
    sput-object v3, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 37
    new-instance v5, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 39
    const-string v7, "CommHeader"

    .line 41
    const/4 v8, 0x3

    .line 42
    const/16 v9, 0x75

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    .line 47
    sput-object v5, Lcom/junrar/rarfile/UnrarHeadertype;->CommHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 49
    new-instance v7, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 51
    const-string v9, "AvHeader"

    .line 53
    const/4 v10, 0x4

    .line 54
    const/16 v11, 0x76

    .line 56
    invoke-direct {v7, v9, v10, v11}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    .line 59
    sput-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->AvHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 61
    new-instance v9, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 63
    const-string v11, "SubHeader"

    .line 65
    const/4 v12, 0x5

    .line 66
    const/16 v13, 0x77

    .line 68
    invoke-direct {v9, v11, v12, v13}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    .line 71
    sput-object v9, Lcom/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 73
    new-instance v11, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 75
    const-string v13, "ProtectHeader"

    .line 77
    const/4 v14, 0x6

    .line 78
    const/16 v15, 0x78

    .line 80
    invoke-direct {v11, v13, v14, v15}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    .line 83
    sput-object v11, Lcom/junrar/rarfile/UnrarHeadertype;->ProtectHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 85
    new-instance v13, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 87
    const-string v15, "SignHeader"

    .line 89
    const/4 v14, 0x7

    .line 90
    const/16 v12, 0x79

    .line 92
    invoke-direct {v13, v15, v14, v12}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    .line 95
    sput-object v13, Lcom/junrar/rarfile/UnrarHeadertype;->SignHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 97
    new-instance v12, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 99
    const-string v15, "NewSubHeader"

    .line 101
    const/16 v14, 0x8

    .line 103
    const/16 v10, 0x7a

    .line 105
    invoke-direct {v12, v15, v14, v10}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    .line 108
    sput-object v12, Lcom/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 110
    new-instance v10, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 112
    const-string v15, "EndArcHeader"

    .line 114
    const/16 v14, 0x9

    .line 116
    const/16 v8, 0x7b

    .line 118
    invoke-direct {v10, v15, v14, v8}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    .line 121
    sput-object v10, Lcom/junrar/rarfile/UnrarHeadertype;->EndArcHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 123
    const/16 v8, 0xa

    .line 125
    new-array v8, v8, [Lcom/junrar/rarfile/UnrarHeadertype;

    .line 127
    aput-object v0, v8, v2

    .line 129
    aput-object v1, v8, v4

    .line 131
    aput-object v3, v8, v6

    .line 133
    const/4 v0, 0x3

    .line 134
    aput-object v5, v8, v0

    .line 136
    const/4 v0, 0x4

    .line 137
    aput-object v7, v8, v0

    .line 139
    const/4 v0, 0x5

    .line 140
    aput-object v9, v8, v0

    .line 142
    const/4 v0, 0x6

    .line 143
    aput-object v11, v8, v0

    .line 145
    const/4 v0, 0x7

    .line 146
    aput-object v13, v8, v0

    .line 148
    const/16 v0, 0x8

    .line 150
    aput-object v12, v8, v0

    .line 152
    aput-object v10, v8, v14

    .line 154
    sput-object v8, Lcom/junrar/rarfile/UnrarHeadertype;->$VALUES:[Lcom/junrar/rarfile/UnrarHeadertype;

    .line 156
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-byte p3, p0, Lcom/junrar/rarfile/UnrarHeadertype;->headerByte:B

    .line 6
    return-void
.end method

.method public static findType(B)Lcom/junrar/rarfile/UnrarHeadertype;
    .registers 7

    .line 1
    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 3
    invoke-virtual {v0, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-object v0

    .line 10
    :cond_9
    sget-object v1, Lcom/junrar/rarfile/UnrarHeadertype;->MainHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 12
    invoke-virtual {v1, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_12

    .line 18
    return-object v1

    .line 19
    :cond_12
    sget-object v2, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 21
    invoke-virtual {v2, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1b

    .line 27
    return-object v2

    .line 28
    :cond_1b
    sget-object v3, Lcom/junrar/rarfile/UnrarHeadertype;->EndArcHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 30
    invoke-virtual {v3, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_24

    .line 36
    return-object v3

    .line 37
    :cond_24
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 39
    invoke-virtual {v4, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2d

    .line 45
    return-object v4

    .line 46
    :cond_2d
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 48
    invoke-virtual {v4, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_36

    .line 54
    return-object v4

    .line 55
    :cond_36
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->SignHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 57
    invoke-virtual {v4, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_3f

    .line 63
    return-object v4

    .line 64
    :cond_3f
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->ProtectHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 66
    invoke-virtual {v4, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_48

    .line 72
    return-object v4

    .line 73
    :cond_48
    invoke-virtual {v0, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_4f

    .line 79
    return-object v0

    .line 80
    :cond_4f
    invoke-virtual {v1, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_56

    .line 86
    return-object v1

    .line 87
    :cond_56
    invoke-virtual {v2, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5d

    .line 93
    return-object v2

    .line 94
    :cond_5d
    invoke-virtual {v3, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_64

    .line 100
    return-object v3

    .line 101
    :cond_64
    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->CommHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 103
    invoke-virtual {v0, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_6d

    .line 109
    return-object v0

    .line 110
    :cond_6d
    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->AvHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 112
    invoke-virtual {v0, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_76

    .line 118
    return-object v0

    .line 119
    :cond_76
    const/4 p0, 0x0

    .line 120
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/rarfile/UnrarHeadertype;
    .registers 2

    .line 1
    const-class v0, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/junrar/rarfile/UnrarHeadertype;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/junrar/rarfile/UnrarHeadertype;
    .registers 1

    .line 1
    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->$VALUES:[Lcom/junrar/rarfile/UnrarHeadertype;

    .line 3
    invoke-virtual {v0}, [Lcom/junrar/rarfile/UnrarHeadertype;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/junrar/rarfile/UnrarHeadertype;

    .line 9
    return-object v0
.end method


# virtual methods
.method public equals(B)Z
    .registers 3

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/UnrarHeadertype;->headerByte:B

    .line 3
    if-ne v0, p1, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method public getHeaderByte()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/UnrarHeadertype;->headerByte:B

    .line 3
    return v0
.end method
