.class public Ljcifs/smb/SecurityDescriptor;
.super Ljava/lang/Object;
.source "SecurityDescriptor.java"


# instance fields
.field public aces:[Ljcifs/smb/ACE;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SecurityDescriptor;->decode([BII)I

    return-void
.end method


# virtual methods
.method public decode([BII)I
    .registers 8

    .line 1
    add-int/lit8 p3, p2, 0x1

    .line 3
    add-int/lit8 p3, p3, 0x1

    .line 5
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Ljcifs/smb/SecurityDescriptor;->type:I

    .line 11
    add-int/lit8 p3, p3, 0x2

    .line 13
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 16
    add-int/lit8 p3, p3, 0x4

    .line 18
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 21
    add-int/lit8 p3, p3, 0x4

    .line 23
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 26
    add-int/lit8 p3, p3, 0x4

    .line 28
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 31
    move-result p3

    .line 32
    add-int v0, p2, p3

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 38
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 41
    add-int/lit8 v0, v0, 0x2

    .line 43
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 46
    move-result v1

    .line 47
    add-int/lit8 v0, v0, 0x4

    .line 49
    const/16 v2, 0x1000

    .line 51
    if-gt v1, v2, :cond_58

    .line 53
    if-eqz p3, :cond_53

    .line 55
    new-array p3, v1, [Ljcifs/smb/ACE;

    .line 57
    iput-object p3, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 59
    const/4 p3, 0x0

    .line 60
    :goto_3b
    if-lt p3, v1, :cond_3e

    .line 62
    goto :goto_56

    .line 63
    :cond_3e
    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 65
    new-instance v3, Ljcifs/smb/ACE;

    .line 67
    invoke-direct {v3}, Ljcifs/smb/ACE;-><init>()V

    .line 70
    aput-object v3, v2, p3

    .line 72
    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 74
    aget-object v2, v2, p3

    .line 76
    invoke-virtual {v2, p1, v0}, Ljcifs/smb/ACE;->decode([BI)I

    .line 79
    move-result v2

    .line 80
    add-int/2addr v0, v2

    .line 81
    add-int/lit8 p3, p3, 0x1

    .line 83
    goto :goto_3b

    .line 84
    :cond_53
    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 87
    :goto_56
    sub-int/2addr v0, p2

    .line 88
    return v0

    .line 89
    :cond_58
    new-instance p1, Ljava/io/IOException;

    .line 91
    const-string p2, "Invalid SecurityDescriptor"

    .line 93
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 3
    if-eqz v0, :cond_2d

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "SecurityDescriptor:\n"

    .line 8
    :goto_7
    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 10
    array-length v2, v2

    .line 11
    if-lt v0, v2, :cond_d

    .line 13
    goto :goto_2f

    .line 14
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 25
    aget-object v1, v1, v0

    .line 27
    invoke-virtual {v1}, Ljcifs/smb/ACE;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "\n"

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_7

    .line 46
    :cond_2d
    const-string v1, "SecurityDescriptor:\nNULL"

    .line 48
    :goto_2f
    return-object v1
.end method
