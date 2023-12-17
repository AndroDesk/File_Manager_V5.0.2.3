.class public Lcom/junrar/unpack/decode/Compress;
.super Ljava/lang/Object;
.source "Compress.java"


# static fields
.field public static final BC:I

.field public static final BC20:I

.field public static final CODEBUFSIZE:I

.field public static final DC:I

.field public static final DC20:I

.field public static final HUFF_TABLE_SIZE:I

.field public static final LDC:I

.field public static final LOW_DIST_REP_COUNT:I

.field public static final MAXWINMASK:I

.field public static final MAXWINSIZE:I

.field public static final MC20:I

.field public static final NC:I

.field public static final NC20:I

.field public static final RC:I

.field public static final RC20:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->BC:I

    const v0, 0x92d85

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->BC20:I

    const v0, 0x96d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->CODEBUFSIZE:I

    const v0, 0x92daa

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->DC:I

    const v0, 0x92da6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->DC20:I

    const v0, 0x92c02

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->HUFF_TABLE_SIZE:I

    const v0, 0x92d87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->LDC:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->LOW_DIST_REP_COUNT:I

    const v0, 0x36d269

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->MAXWINMASK:I

    const v0, 0x492d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->MAXWINSIZE:I

    const v0, 0x92c97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->MC20:I

    const v0, 0x92cbd

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->NC:I

    const v0, 0x92cbc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->NC20:I

    const v0, 0x92d8a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->RC:I

    const v0, 0x92d8a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/decode/Compress;->RC20:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
