.class public Ljcifs/netbios/Name;
.super Ljava/lang/Object;
.source "Name.java"


# static fields
.field private static final DEFAULT_SCOPE:Ljava/lang/String;

.field public static final OEM_ENCODING:Ljava/lang/String;

.field private static final SCOPE_OFFSET:I = 0x21

.field private static final TYPE_OFFSET:I = 0x1f


# instance fields
.field public hexCode:I

.field public name:Ljava/lang/String;

.field public scope:Ljava/lang/String;

.field public srcHashCode:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "jcifs.netbios.scope"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/Name;->DEFAULT_SCOPE:Ljava/lang/String;

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jcifs.encoding"

    invoke-static {v1, v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-le v0, v2, :cond_10

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    iput p2, p0, Ljcifs/netbios/Name;->hexCode:I

    if-eqz p3, :cond_21

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_21

    goto :goto_23

    :cond_21
    sget-object p3, Ljcifs/netbios/Name;->DEFAULT_SCOPE:Ljava/lang/String;

    :goto_23
    iput-object p3, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    iput v1, p0, Ljcifs/netbios/Name;->srcHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Ljcifs/netbios/Name;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljcifs/netbios/Name;

    iget-object v0, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_23

    iget-object v0, p1, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-nez v0, :cond_23

    iget-object v0, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    iget-object v3, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Ljcifs/netbios/Name;->hexCode:I

    iget p1, p1, Ljcifs/netbios/Name;->hexCode:I

    if-ne v0, p1, :cond_22

    return v2

    :cond_22
    return v1

    :cond_23
    iget-object v0, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    iget-object v3, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget v0, p0, Ljcifs/netbios/Name;->hexCode:I

    iget v3, p1, Ljcifs/netbios/Name;->hexCode:I

    if-ne v0, v3, :cond_3e

    iget-object v0, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    iget-object p1, p1, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    return v2

    :cond_3e
    return v1
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljcifs/netbios/Name;->hexCode:I

    const v2, 0x1003f

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    iget v0, p0, Ljcifs/netbios/Name;->srcHashCode:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    return v0
.end method

.method public readScopeWireFormat([BI)I
    .registers 8

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_d
    :try_start_d
    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v3, p1, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_19} :catch_3b

    add-int/2addr v0, v1

    :goto_1a
    add-int/lit8 v1, v0, 0x1

    :try_start_1c
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_29

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    goto :goto_3c

    :cond_29
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v3, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_38
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_38} :catch_3a

    add-int/2addr v0, v1

    goto :goto_1a

    :catch_3a
    move v0, v1

    :catch_3b
    move v1, v0

    :goto_3c
    sub-int/2addr v1, p2

    return v1
.end method

.method public readWireFormat([BI)I
    .registers 11

    const/16 v0, 0x21

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0xf

    move v4, v2

    move v5, v3

    :goto_9
    if-lt v4, v3, :cond_31

    :try_start_b
    new-instance v4, Ljava/lang/String;

    sget-object v6, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v4, v1, v2, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_14} :catch_14

    :catch_14
    add-int/lit8 v1, p2, 0x1f

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x41

    shl-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x41

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    iput v1, p0, Ljcifs/netbios/Name;->hexCode:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/Name;->readScopeWireFormat([BI)I

    move-result p1

    add-int/2addr p1, v0

    return p1

    :cond_31
    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v7, p2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v7, v7, -0x41

    shl-int/lit8 v7, v7, 0x4

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, -0x41

    and-int/2addr v6, v3

    int-to-byte v6, v6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    const/16 v7, 0x20

    if-eq v6, v7, :cond_56

    add-int/lit8 v5, v4, 0x1

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    if-nez v1, :cond_c

    const-string v1, "null"

    goto :goto_28

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v3, 0x2e

    aput-char v3, v1, v2

    aput-char v3, v1, v4

    const/16 v2, 0xe

    aput-char v3, v1, v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    move-object v1, v2

    :cond_28
    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Ljcifs/netbios/Name;->hexCode:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-eqz v1, :cond_4d

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeScopeWireFormat([BI)I
    .registers 8

    iget-object v0, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    aput-byte v1, p1, p2

    const/4 p1, 0x1

    return p1

    :cond_9
    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x2e

    aput-byte v3, p1, p2

    :try_start_f
    sget-object p2, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    iget-object v0, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1e} :catch_1e

    :catch_1e
    iget-object p2, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v2

    add-int/lit8 v0, p2, 0x1

    aput-byte v1, p1, p2

    add-int/lit8 v0, v0, -0x2

    iget-object p2, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int p2, v0, p2

    move v2, v1

    :goto_34
    aget-byte v4, p1, v0

    if-ne v4, v3, :cond_3d

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v2, v1

    goto :goto_3f

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    :goto_3f
    add-int/lit8 v4, v0, -0x1

    if-gt v0, p2, :cond_4c

    iget-object p1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_4c
    move v0, v4

    goto :goto_34
.end method

.method public writeWireFormat([BI)I
    .registers 10

    const/16 v0, 0x20

    aput-byte v0, p1, p2

    :try_start_4
    iget-object v0, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    sget-object v1, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_d
    array-length v2, v0

    const/16 v3, 0xf

    const/16 v4, 0x41

    if-lt v1, v2, :cond_3b

    :goto_14
    if-lt v1, v3, :cond_2a

    add-int/lit8 v0, p2, 0x1f

    iget v1, p0, Ljcifs/netbios/Name;->hexCode:I

    and-int/lit16 v2, v1, 0xf0

    shr-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_57

    :cond_2a
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v2, p2

    const/16 v5, 0x43

    aput-byte v5, p1, v2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    aput-byte v4, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_3b
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v5, p2

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    aget-byte v5, v0, v1

    and-int/2addr v3, v5

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2
    :try_end_54
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_54} :catch_57

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catch_57
    :goto_57
    add-int/lit8 p2, p2, 0x21

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/Name;->writeScopeWireFormat([BI)I

    move-result p1

    add-int/lit8 p1, p1, 0x21

    return p1
.end method