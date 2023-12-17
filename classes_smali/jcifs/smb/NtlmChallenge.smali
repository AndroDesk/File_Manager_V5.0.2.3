.class public final Ljcifs/smb/NtlmChallenge;
.super Ljava/lang/Object;
.source "NtlmChallenge.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public challenge:[B

.field public dc:Ljcifs/UniAddress;


# direct methods
.method public constructor <init>([BLjcifs/UniAddress;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/smb/NtlmChallenge;->challenge:[B

    .line 6
    iput-object p2, p0, Ljcifs/smb/NtlmChallenge;->dc:Ljcifs/UniAddress;

    .line 8
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "NtlmChallenge[challenge=0x"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Ljcifs/smb/NtlmChallenge;->challenge:[B

    .line 10
    array-length v2, v1

    .line 11
    mul-int/lit8 v2, v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v3, v2}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ",dc="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Ljcifs/smb/NtlmChallenge;->dc:Ljcifs/UniAddress;

    .line 28
    invoke-virtual {v1}, Ljcifs/UniAddress;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "]"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
