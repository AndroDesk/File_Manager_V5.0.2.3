.class public final Ls1/b$c;
.super Ls1/b$a;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final i:[B

.field public static final j:[B


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Ls1/b$c;->i:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_36

    sput-object v0, Ls1/b$c;->j:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_36
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Ls1/b$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls1/b$a;->a:[B

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    iput-boolean v0, p0, Ls1/b$c;->e:Z

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    iput-boolean v0, p0, Ls1/b$c;->f:Z

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    iput-boolean v1, p0, Ls1/b$c;->g:Z

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_29

    sget-object p1, Ls1/b$c;->i:[B

    goto :goto_2b

    :cond_29
    sget-object p1, Ls1/b$c;->j:[B

    :goto_2b
    iput-object p1, p0, Ls1/b$c;->h:[B

    const/4 p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Ls1/b$c;->b:[B

    iput v2, p0, Ls1/b$c;->c:I

    if-eqz v0, :cond_39

    const/16 p1, 0x13

    goto :goto_3a

    :cond_39
    const/4 p1, -0x1

    :goto_3a
    iput p1, p0, Ls1/b$c;->d:I

    return-void
.end method
