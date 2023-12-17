.class public final Ls1/j;
.super Ljava/lang/Object;
.source "RC4.java"


# instance fields
.field public final synthetic a:I

.field public final b:[I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 1
    iput p1, p0, Ls1/j;->a:I

    .line 3
    const/16 v0, 0x100

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p1, v1, :cond_f

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array p1, v0, [I

    .line 13
    iput-object p1, p0, Ls1/j;->b:[I

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array p1, v0, [I

    .line 21
    iput-object p1, p0, Ls1/j;->b:[I

    .line 23
    return-void
.end method


# virtual methods
.method public final a([BII[BI)V
    .registers 12

    .line 1
    iget v0, p0, Ls1/j;->a:I

    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_6c

    .line 7
    goto :goto_39

    .line 8
    :goto_7
    :pswitch_7  #0x0
    if-ge v1, p3, :cond_38

    .line 10
    iget v0, p0, Ls1/j;->c:I

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 16
    iput v0, p0, Ls1/j;->c:I

    .line 18
    iget-object v2, p0, Ls1/j;->b:[I

    .line 20
    aget v3, v2, v0

    .line 22
    iget v4, p0, Ls1/j;->d:I

    .line 24
    add-int/2addr v4, v3

    .line 25
    and-int/lit16 v4, v4, 0xff

    .line 27
    iput v4, p0, Ls1/j;->d:I

    .line 29
    aget v5, v2, v4

    .line 31
    aput v5, v2, v0

    .line 33
    aput v3, v2, v4

    .line 35
    aget v0, v2, v0

    .line 37
    add-int/2addr v0, v3

    .line 38
    and-int/lit16 v0, v0, 0xff

    .line 40
    add-int/lit8 v3, p5, 0x1

    .line 42
    add-int/lit8 v4, p2, 0x1

    .line 44
    aget-byte p2, p1, p2

    .line 46
    aget v0, v2, v0

    .line 48
    xor-int/2addr p2, v0

    .line 49
    int-to-byte p2, p2

    .line 50
    aput-byte p2, p4, p5

    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 54
    move p5, v3

    .line 55
    move p2, v4

    .line 56
    goto :goto_7

    .line 57
    :cond_38
    return-void

    .line 58
    :goto_39
    if-ge v1, p3, :cond_6a

    .line 60
    iget v0, p0, Ls1/j;->c:I

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 64
    and-int/lit16 v0, v0, 0xff

    .line 66
    iput v0, p0, Ls1/j;->c:I

    .line 68
    iget-object v2, p0, Ls1/j;->b:[I

    .line 70
    aget v3, v2, v0

    .line 72
    iget v4, p0, Ls1/j;->d:I

    .line 74
    add-int/2addr v4, v3

    .line 75
    and-int/lit16 v4, v4, 0xff

    .line 77
    iput v4, p0, Ls1/j;->d:I

    .line 79
    aget v5, v2, v4

    .line 81
    aput v5, v2, v0

    .line 83
    aput v3, v2, v4

    .line 85
    aget v0, v2, v0

    .line 87
    add-int/2addr v0, v3

    .line 88
    and-int/lit16 v0, v0, 0xff

    .line 90
    add-int/lit8 v3, p5, 0x1

    .line 92
    add-int/lit8 v4, p2, 0x1

    .line 94
    aget-byte p2, p1, p2

    .line 96
    aget v0, v2, v0

    .line 98
    xor-int/2addr p2, v0

    .line 99
    int-to-byte p2, p2

    .line 100
    aput-byte p2, p4, p5

    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 104
    move p5, v3

    .line 105
    move p2, v4

    .line 106
    goto :goto_39

    .line 107
    :cond_6a
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public final b([B)V
    .registers 10

    .line 1
    iget v0, p0, Ls1/j;->a:I

    .line 3
    const/16 v1, 0x100

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Invalid user key length"

    .line 8
    const-string v4, "Null user key"

    .line 10
    packed-switch v0, :pswitch_data_86

    .line 13
    goto :goto_49

    .line 14
    :pswitch_d  #0x0
    if-eqz p1, :cond_43

    .line 16
    array-length v0, p1

    .line 17
    if-eqz v0, :cond_3d

    .line 19
    iput v2, p0, Ls1/j;->c:I

    .line 21
    iput v2, p0, Ls1/j;->d:I

    .line 23
    move v3, v2

    .line 24
    :goto_17
    if-ge v3, v1, :cond_20

    .line 26
    iget-object v4, p0, Ls1/j;->b:[I

    .line 28
    aput v3, v4, v3

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_17

    .line 33
    :cond_20
    move v3, v2

    .line 34
    move v4, v3

    .line 35
    :goto_22
    if-ge v2, v1, :cond_3c

    .line 37
    aget-byte v5, p1, v3

    .line 39
    and-int/lit16 v5, v5, 0xff

    .line 41
    iget-object v6, p0, Ls1/j;->b:[I

    .line 43
    aget v7, v6, v2

    .line 45
    add-int/2addr v5, v7

    .line 46
    add-int/2addr v5, v4

    .line 47
    and-int/lit16 v4, v5, 0xff

    .line 49
    aget v5, v6, v4

    .line 51
    aput v5, v6, v2

    .line 53
    aput v7, v6, v4

    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 57
    rem-int/2addr v3, v0

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_22

    .line 61
    :cond_3c
    return-void

    .line 62
    :cond_3d
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 64
    invoke-direct {p1, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1

    .line 68
    :cond_43
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 70
    invoke-direct {p1, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p1

    .line 74
    :goto_49
    if-eqz p1, :cond_7f

    .line 76
    array-length v0, p1

    .line 77
    if-eqz v0, :cond_79

    .line 79
    iput v2, p0, Ls1/j;->c:I

    .line 81
    iput v2, p0, Ls1/j;->d:I

    .line 83
    move v3, v2

    .line 84
    :goto_53
    if-ge v3, v1, :cond_5c

    .line 86
    iget-object v4, p0, Ls1/j;->b:[I

    .line 88
    aput v3, v4, v3

    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 92
    goto :goto_53

    .line 93
    :cond_5c
    move v3, v2

    .line 94
    move v4, v3

    .line 95
    :goto_5e
    if-ge v2, v1, :cond_78

    .line 97
    aget-byte v5, p1, v3

    .line 99
    and-int/lit16 v5, v5, 0xff

    .line 101
    iget-object v6, p0, Ls1/j;->b:[I

    .line 103
    aget v7, v6, v2

    .line 105
    add-int/2addr v5, v7

    .line 106
    add-int/2addr v5, v4

    .line 107
    and-int/lit16 v4, v5, 0xff

    .line 109
    aget v5, v6, v4

    .line 111
    aput v5, v6, v2

    .line 113
    aput v7, v6, v4

    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 117
    rem-int/2addr v3, v0

    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 120
    goto :goto_5e

    .line 121
    :cond_78
    return-void

    .line 122
    :cond_79
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 124
    invoke-direct {p1, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 127
    throw p1

    .line 128
    :cond_7f
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 130
    invoke-direct {p1, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p1

    .line 134
    nop

    .line 135
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_d  #00000000
    .end packed-switch
.end method
