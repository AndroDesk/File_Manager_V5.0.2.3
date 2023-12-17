.class public Lcom/junrar/rarfile/NewSubHeaderType;
.super Ljava/lang/Object;
.source "NewSubHeaderType.java"


# static fields
.field public static final SUBHEAD_TYPE_ACL:Lcom/junrar/rarfile/NewSubHeaderType;

.field public static final SUBHEAD_TYPE_AV:Lcom/junrar/rarfile/NewSubHeaderType;

.field public static final SUBHEAD_TYPE_BEOSEA:Lcom/junrar/rarfile/NewSubHeaderType;

.field public static final SUBHEAD_TYPE_CMT:Lcom/junrar/rarfile/NewSubHeaderType;

.field public static final SUBHEAD_TYPE_OS2EA:Lcom/junrar/rarfile/NewSubHeaderType;

.field public static final SUBHEAD_TYPE_RR:Lcom/junrar/rarfile/NewSubHeaderType;

.field public static final SUBHEAD_TYPE_STREAM:Lcom/junrar/rarfile/NewSubHeaderType;

.field public static final SUBHEAD_TYPE_UOWNER:Lcom/junrar/rarfile/NewSubHeaderType;


# instance fields
.field private headerTypes:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [B

    .line 6
    fill-array-data v2, :array_64

    .line 9
    invoke-direct {v0, v2}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    .line 12
    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_CMT:Lcom/junrar/rarfile/NewSubHeaderType;

    .line 14
    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    .line 16
    new-array v2, v1, [B

    .line 18
    fill-array-data v2, :array_6a

    .line 21
    invoke-direct {v0, v2}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    .line 24
    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_ACL:Lcom/junrar/rarfile/NewSubHeaderType;

    .line 26
    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    .line 28
    new-array v2, v1, [B

    .line 30
    fill-array-data v2, :array_70

    .line 33
    invoke-direct {v0, v2}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    .line 36
    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_STREAM:Lcom/junrar/rarfile/NewSubHeaderType;

    .line 38
    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    .line 40
    new-array v2, v1, [B

    .line 42
    fill-array-data v2, :array_76

    .line 45
    invoke-direct {v0, v2}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    .line 48
    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_UOWNER:Lcom/junrar/rarfile/NewSubHeaderType;

    .line 50
    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    .line 52
    const/4 v2, 0x2

    .line 53
    new-array v3, v2, [B

    .line 55
    fill-array-data v3, :array_7c

    .line 58
    invoke-direct {v0, v3}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    .line 61
    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_AV:Lcom/junrar/rarfile/NewSubHeaderType;

    .line 63
    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    .line 65
    new-array v2, v2, [B

    .line 67
    fill-array-data v2, :array_82

    .line 70
    invoke-direct {v0, v2}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    .line 73
    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_RR:Lcom/junrar/rarfile/NewSubHeaderType;

    .line 75
    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    .line 77
    new-array v1, v1, [B

    .line 79
    fill-array-data v1, :array_88

    .line 82
    invoke-direct {v0, v1}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    .line 85
    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_OS2EA:Lcom/junrar/rarfile/NewSubHeaderType;

    .line 87
    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    .line 89
    const/4 v1, 0x4

    .line 90
    new-array v1, v1, [B

    .line 92
    fill-array-data v1, :array_8e

    .line 95
    invoke-direct {v0, v1}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    .line 98
    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_BEOSEA:Lcom/junrar/rarfile/NewSubHeaderType;

    .line 100
    return-void

    .line 101
    :array_64
    .array-data 1
        0x43t
        0x4dt
        0x54t
    .end array-data

    .line 107
    :array_6a
    .array-data 1
        0x41t
        0x43t
        0x4ct
    .end array-data

    .line 113
    :array_70
    .array-data 1
        0x53t
        0x54t
        0x4dt
    .end array-data

    .line 119
    :array_76
    .array-data 1
        0x55t
        0x4ft
        0x57t
    .end array-data

    .line 125
    :array_7c
    .array-data 1
        0x41t
        0x56t
    .end array-data

    .line 130
    nop

    .line 131
    :array_82
    .array-data 1
        0x52t
        0x52t
    .end array-data

    .line 136
    nop

    .line 137
    :array_88
    .array-data 1
        0x45t
        0x41t
        0x32t
    .end array-data

    .line 143
    :array_8e
    .array-data 1
        0x45t
        0x41t
        0x42t
        0x45t
    .end array-data
.end method

.method private constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/junrar/rarfile/NewSubHeaderType;->headerTypes:[B

    .line 6
    return-void
.end method


# virtual methods
.method public byteEquals([B)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/NewSubHeaderType;->headerTypes:[B

    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/junrar/rarfile/NewSubHeaderType;->headerTypes:[B

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 8
    return-object v0
.end method
