.class public Ljcifs/smb/SecurityDescriptor;
.super Ljava/lang/Object;
.source "SecurityDescriptor.java"


# instance fields
.field public aces:[Ljcifs/smb/ACE;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SecurityDescriptor;->decode([BII)I

    return-void
.end method


# virtual methods
.method public decode([BII)I
    .registers 8

    add-int/lit8 p3, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SecurityDescriptor;->type:I

    add-int/lit8 p3, p3, 0x2

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 p3, p3, 0x4

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 p3, p3, 0x4

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 p3, p3, 0x4

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p3

    add-int v0, p2, p3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_58

    if-eqz p3, :cond_53

    new-array p3, v1, [Ljcifs/smb/ACE;

    iput-object p3, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    const/4 p3, 0x0

    :goto_3b
    if-lt p3, v1, :cond_3e

    goto :goto_56

    :cond_3e
    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    new-instance v3, Ljcifs/smb/ACE;

    invoke-direct {v3}, Ljcifs/smb/ACE;-><init>()V

    aput-object v3, v2, p3

    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    aget-object v2, v2, p3

    invoke-virtual {v2, p1, v0}, Ljcifs/smb/ACE;->decode([BI)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_3b

    :cond_53
    const/4 p1, 0x0

    iput-object p1, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    :goto_56
    sub-int/2addr v0, p2

    return v0

    :cond_58
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid SecurityDescriptor"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    const-string v1, "SecurityDescriptor:\n"

    :goto_7
    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    array-length v2, v2

    if-lt v0, v2, :cond_d

    goto :goto_2f

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljcifs/smb/ACE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2d
    const-string v1, "SecurityDescriptor:\nNULL"

    :goto_2f
    return-object v1
.end method
