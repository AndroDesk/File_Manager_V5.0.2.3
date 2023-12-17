.class public Ljcifs/dcerpc/UnicodeString;
.super Ljcifs/dcerpc/rpc$unicode_string;
.source "UnicodeString.java"


# instance fields
.field public zterm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 8

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-boolean p2, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, v0, p2

    mul-int/lit8 v2, v1, 0x2

    int-to-short v2, v2

    iput-short v2, p0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    iput-short v2, p0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    new-array v1, v1, [S

    iput-object v1, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    const/4 v1, 0x0

    move v2, v1

    :goto_18
    if-lt v2, v0, :cond_21

    if-eqz p2, :cond_20

    iget-object p1, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aput-short v1, p1, v2

    :cond_20
    return-void

    :cond_21
    iget-object v3, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method public constructor <init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V
    .registers 4

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iget-short v0, p1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    iput-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    iget-short v0, p1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    iput-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    iget-object p1, p1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    iput-object p1, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    iput-boolean p2, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-boolean p1, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    iget-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v0, v0, 0x2

    iget-boolean v1, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    sub-int/2addr v0, v1

    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-lt v3, v0, :cond_13

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    :cond_13
    iget-object v4, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v4, v4, v3

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method
