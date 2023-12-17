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

    .line 1
    const-string v0, "jcifs.netbios.scope"

    .line 3
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ljcifs/netbios/Name;->DEFAULT_SCOPE:Ljava/lang/String;

    .line 9
    const-string v0, "file.encoding"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "jcifs.encoding"

    .line 17
    invoke-static {v1, v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-le v0, v2, :cond_10

    .line 4
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 6
    iput p2, p0, Ljcifs/netbios/Name;->hexCode:I

    if-eqz p3, :cond_21

    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_21

    goto :goto_23

    :cond_21
    sget-object p3, Ljcifs/netbios/Name;->DEFAULT_SCOPE:Ljava/lang/String;

    :goto_23
    iput-object p3, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 8
    iput v1, p0, Ljcifs/netbios/Name;->srcHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Ljcifs/netbios/Name;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    check-cast p1, Ljcifs/netbios/Name;

    .line 9
    iget-object v0, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_23

    .line 14
    iget-object v0, p1, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 16
    if-nez v0, :cond_23

    .line 18
    iget-object v0, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 20
    iget-object v3, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_22

    .line 28
    iget v0, p0, Ljcifs/netbios/Name;->hexCode:I

    .line 30
    iget p1, p1, Ljcifs/netbios/Name;->hexCode:I

    .line 32
    if-ne v0, p1, :cond_22

    .line 34
    return v2

    .line 35
    :cond_22
    return v1

    .line 36
    :cond_23
    iget-object v0, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 38
    iget-object v3, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3e

    .line 46
    iget v0, p0, Ljcifs/netbios/Name;->hexCode:I

    .line 48
    iget v3, p1, Ljcifs/netbios/Name;->hexCode:I

    .line 50
    if-ne v0, v3, :cond_3e

    .line 52
    iget-object v0, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 54
    iget-object p1, p1, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3e

    .line 62
    return v2

    .line 63
    :cond_3e
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Ljcifs/netbios/Name;->hexCode:I

    .line 9
    const v2, 0x1003f

    .line 12
    mul-int/2addr v1, v2

    .line 13
    add-int/2addr v1, v0

    .line 14
    iget v0, p0, Ljcifs/netbios/Name;->srcHashCode:I

    .line 16
    mul-int/2addr v0, v2

    .line 17
    add-int/2addr v0, v1

    .line 18
    iget-object v1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 20
    if-eqz v1, :cond_22

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_22

    .line 28
    iget-object v1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    :cond_22
    return v0
.end method

.method public readScopeWireFormat([BI)I
    .registers 8

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    aget-byte v1, p1, p2

    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 7
    if-nez v1, :cond_d

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_d
    :try_start_d
    new-instance v2, Ljava/lang/StringBuffer;

    .line 16
    new-instance v3, Ljava/lang/String;

    .line 18
    sget-object v4, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    .line 20
    invoke-direct {v3, p1, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_19} :catch_3b

    .line 26
    add-int/2addr v0, v1

    .line 27
    :goto_1a
    add-int/lit8 v1, v0, 0x1

    .line 29
    :try_start_1c
    aget-byte v0, p1, v0

    .line 31
    and-int/lit16 v0, v0, 0xff

    .line 33
    if-nez v0, :cond_29

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 41
    goto :goto_3c

    .line 42
    :cond_29
    const/16 v3, 0x2e

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    new-instance v3, Ljava/lang/String;

    .line 49
    sget-object v4, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    .line 51
    invoke-direct {v3, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_38
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_38} :catch_3a

    .line 57
    add-int/2addr v0, v1

    .line 58
    goto :goto_1a

    .line 59
    :catch_3a
    move v0, v1

    .line 60
    :catch_3b
    move v1, v0

    .line 61
    :goto_3c
    sub-int/2addr v1, p2

    .line 62
    return v1
.end method

.method public readWireFormat([BI)I
    .registers 11

    .line 1
    const/16 v0, 0x21

    .line 3
    new-array v1, v0, [B

    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0xf

    .line 8
    move v4, v2

    .line 9
    move v5, v3

    .line 10
    :goto_9
    if-lt v4, v3, :cond_31

    .line 12
    :try_start_b
    new-instance v4, Ljava/lang/String;

    .line 14
    sget-object v6, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    .line 16
    invoke-direct {v4, v1, v2, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 19
    iput-object v4, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_14} :catch_14

    .line 21
    :catch_14
    add-int/lit8 v1, p2, 0x1f

    .line 23
    aget-byte v2, p1, v1

    .line 25
    and-int/lit16 v2, v2, 0xff

    .line 27
    add-int/lit8 v2, v2, -0x41

    .line 29
    shl-int/lit8 v2, v2, 0x4

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 33
    aget-byte v1, p1, v1

    .line 35
    and-int/lit16 v1, v1, 0xff

    .line 37
    add-int/lit8 v1, v1, -0x41

    .line 39
    and-int/2addr v1, v3

    .line 40
    or-int/2addr v1, v2

    .line 41
    iput v1, p0, Ljcifs/netbios/Name;->hexCode:I

    .line 43
    add-int/2addr p2, v0

    .line 44
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/Name;->readScopeWireFormat([BI)I

    .line 47
    move-result p1

    .line 48
    add-int/2addr p1, v0

    .line 49
    return p1

    .line 50
    :cond_31
    mul-int/lit8 v6, v4, 0x2

    .line 52
    add-int/lit8 v7, v6, 0x1

    .line 54
    add-int/2addr v7, p2

    .line 55
    aget-byte v7, p1, v7

    .line 57
    and-int/lit16 v7, v7, 0xff

    .line 59
    add-int/lit8 v7, v7, -0x41

    .line 61
    shl-int/lit8 v7, v7, 0x4

    .line 63
    int-to-byte v7, v7

    .line 64
    aput-byte v7, v1, v4

    .line 66
    add-int/lit8 v6, v6, 0x2

    .line 68
    add-int/2addr v6, p2

    .line 69
    aget-byte v6, p1, v6

    .line 71
    and-int/lit16 v6, v6, 0xff

    .line 73
    add-int/lit8 v6, v6, -0x41

    .line 75
    and-int/2addr v6, v3

    .line 76
    int-to-byte v6, v6

    .line 77
    or-int/2addr v6, v7

    .line 78
    int-to-byte v6, v6

    .line 79
    aput-byte v6, v1, v4

    .line 81
    const/16 v7, 0x20

    .line 83
    if-eq v6, v7, :cond_56

    .line 85
    add-int/lit8 v5, v4, 0x1

    .line 87
    :cond_56
    add-int/lit8 v4, v4, 0x1

    .line 89
    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    iget-object v1, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 8
    if-nez v1, :cond_c

    .line 10
    const-string v1, "null"

    .line 12
    goto :goto_28

    .line 13
    :cond_c
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v3, v4, :cond_28

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 24
    move-result-object v1

    .line 25
    const/16 v3, 0x2e

    .line 27
    aput-char v3, v1, v2

    .line 29
    aput-char v3, v1, v4

    .line 31
    const/16 v2, 0xe

    .line 33
    aput-char v3, v1, v2

    .line 35
    new-instance v2, Ljava/lang/String;

    .line 37
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 40
    move-object v1, v2

    .line 41
    :cond_28
    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v1, "<"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    iget v1, p0, Ljcifs/netbios/Name;->hexCode:I

    .line 51
    const/4 v2, 0x2

    .line 52
    invoke-static {v1, v2}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, ">"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget-object v1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 66
    if-eqz v1, :cond_4d

    .line 68
    const-string v1, "."

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    iget-object v1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method

.method public writeScopeWireFormat([BI)I
    .registers 8

    .line 1
    iget-object v0, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_9

    .line 6
    aput-byte v1, p1, p2

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_9
    add-int/lit8 v2, p2, 0x1

    .line 12
    const/16 v3, 0x2e

    .line 14
    aput-byte v3, p1, p2

    .line 16
    :try_start_f
    sget-object p2, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 21
    move-result-object p2

    .line 22
    iget-object v0, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    move-result v0

    .line 28
    invoke-static {p2, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1e} :catch_1e

    .line 31
    :catch_1e
    iget-object p2, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 36
    move-result p2

    .line 37
    add-int/2addr p2, v2

    .line 38
    add-int/lit8 v0, p2, 0x1

    .line 40
    aput-byte v1, p1, p2

    .line 42
    add-int/lit8 v0, v0, -0x2

    .line 44
    iget-object p2, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 49
    move-result p2

    .line 50
    sub-int p2, v0, p2

    .line 52
    move v2, v1

    .line 53
    :goto_34
    aget-byte v4, p1, v0

    .line 55
    if-ne v4, v3, :cond_3d

    .line 57
    int-to-byte v2, v2

    .line 58
    aput-byte v2, p1, v0

    .line 60
    move v2, v1

    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    .line 64
    :goto_3f
    add-int/lit8 v4, v0, -0x1

    .line 66
    if-gt v0, p2, :cond_4c

    .line 68
    iget-object p1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 73
    move-result p1

    .line 74
    add-int/lit8 p1, p1, 0x2

    .line 76
    return p1

    .line 77
    :cond_4c
    move v0, v4

    .line 78
    goto :goto_34
.end method

.method public writeWireFormat([BI)I
    .registers 10

    .line 1
    const/16 v0, 0x20

    .line 3
    aput-byte v0, p1, p2

    .line 5
    :try_start_4
    iget-object v0, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 7
    sget-object v1, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_d
    array-length v2, v0

    .line 15
    const/16 v3, 0xf

    .line 17
    const/16 v4, 0x41

    .line 19
    if-lt v1, v2, :cond_3b

    .line 21
    :goto_14
    if-lt v1, v3, :cond_2a

    .line 23
    add-int/lit8 v0, p2, 0x1f

    .line 25
    iget v1, p0, Ljcifs/netbios/Name;->hexCode:I

    .line 27
    and-int/lit16 v2, v1, 0xf0

    .line 29
    shr-int/lit8 v2, v2, 0x4

    .line 31
    add-int/2addr v2, v4

    .line 32
    int-to-byte v2, v2

    .line 33
    aput-byte v2, p1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 37
    and-int/2addr v1, v3

    .line 38
    add-int/2addr v1, v4

    .line 39
    int-to-byte v1, v1

    .line 40
    aput-byte v1, p1, v0

    .line 42
    goto :goto_57

    .line 43
    :cond_2a
    mul-int/lit8 v0, v1, 0x2

    .line 45
    add-int/lit8 v2, v0, 0x1

    .line 47
    add-int/2addr v2, p2

    .line 48
    const/16 v5, 0x43

    .line 50
    aput-byte v5, p1, v2

    .line 52
    add-int/lit8 v0, v0, 0x2

    .line 54
    add-int/2addr v0, p2

    .line 55
    aput-byte v4, p1, v0

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_14

    .line 60
    :cond_3b
    mul-int/lit8 v2, v1, 0x2

    .line 62
    add-int/lit8 v5, v2, 0x1

    .line 64
    add-int/2addr v5, p2

    .line 65
    aget-byte v6, v0, v1

    .line 67
    and-int/lit16 v6, v6, 0xf0

    .line 69
    shr-int/lit8 v6, v6, 0x4

    .line 71
    add-int/2addr v6, v4

    .line 72
    int-to-byte v6, v6

    .line 73
    aput-byte v6, p1, v5

    .line 75
    add-int/lit8 v2, v2, 0x2

    .line 77
    add-int/2addr v2, p2

    .line 78
    aget-byte v5, v0, v1

    .line 80
    and-int/2addr v3, v5

    .line 81
    add-int/2addr v3, v4

    .line 82
    int-to-byte v3, v3

    .line 83
    aput-byte v3, p1, v2
    :try_end_54
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_54} :catch_57

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_d

    .line 88
    :catch_57
    :goto_57
    add-int/lit8 p2, p2, 0x21

    .line 90
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/Name;->writeScopeWireFormat([BI)I

    .line 93
    move-result p1

    .line 94
    add-int/lit8 p1, p1, 0x21

    .line 96
    return p1
.end method
