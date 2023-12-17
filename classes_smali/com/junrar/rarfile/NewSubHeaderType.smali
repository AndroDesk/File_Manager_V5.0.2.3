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

    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_64

    invoke-direct {v0, v2}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_CMT:Lcom/junrar/rarfile/NewSubHeaderType;

    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    new-array v2, v1, [B

    fill-array-data v2, :array_6a

    invoke-direct {v0, v2}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_ACL:Lcom/junrar/rarfile/NewSubHeaderType;

    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    new-array v2, v1, [B

    fill-array-data v2, :array_70

    invoke-direct {v0, v2}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_STREAM:Lcom/junrar/rarfile/NewSubHeaderType;

    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    new-array v2, v1, [B

    fill-array-data v2, :array_76

    invoke-direct {v0, v2}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_UOWNER:Lcom/junrar/rarfile/NewSubHeaderType;

    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    const/4 v2, 0x2

    new-array v3, v2, [B

    fill-array-data v3, :array_7c

    invoke-direct {v0, v3}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_AV:Lcom/junrar/rarfile/NewSubHeaderType;

    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    new-array v2, v2, [B

    fill-array-data v2, :array_82

    invoke-direct {v0, v2}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_RR:Lcom/junrar/rarfile/NewSubHeaderType;

    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    new-array v1, v1, [B

    fill-array-data v1, :array_88

    invoke-direct {v0, v1}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_OS2EA:Lcom/junrar/rarfile/NewSubHeaderType;

    new-instance v0, Lcom/junrar/rarfile/NewSubHeaderType;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_8e

    invoke-direct {v0, v1}, Lcom/junrar/rarfile/NewSubHeaderType;-><init>([B)V

    sput-object v0, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_BEOSEA:Lcom/junrar/rarfile/NewSubHeaderType;

    return-void

    :array_64
    .array-data 1
        0x43t
        0x4dt
        0x54t
    .end array-data

    :array_6a
    .array-data 1
        0x41t
        0x43t
        0x4ct
    .end array-data

    :array_70
    .array-data 1
        0x53t
        0x54t
        0x4dt
    .end array-data

    :array_76
    .array-data 1
        0x55t
        0x4ft
        0x57t
    .end array-data

    :array_7c
    .array-data 1
        0x41t
        0x56t
    .end array-data

    nop

    :array_82
    .array-data 1
        0x52t
        0x52t
    .end array-data

    nop

    :array_88
    .array-data 1
        0x45t
        0x41t
        0x32t
    .end array-data

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/junrar/rarfile/NewSubHeaderType;->headerTypes:[B

    return-void
.end method


# virtual methods
.method public byteEquals([B)Z
    .registers 3

    iget-object v0, p0, Lcom/junrar/rarfile/NewSubHeaderType;->headerTypes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/junrar/rarfile/NewSubHeaderType;->headerTypes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
