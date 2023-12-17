.class public Ljcifs/smb/NtlmContext;
.super Ljava/lang/Object;
.source "NtlmContext.java"


# instance fields
.field public auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field public isEstablished:Z

.field public log:Ljcifs/util/LogStream;

.field public netbiosName:Ljava/lang/String;

.field public ntlmsspFlags:I

.field public serverChallenge:[B

.field public signingKey:[B

.field public state:I

.field public workstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/NtlmContext;->state:I

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    or-int/lit8 p1, p1, 0x4

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    const/high16 v0, 0x20000000

    or-int/2addr p1, v0

    iput p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    if-eqz p2, :cond_26

    const p2, 0x40008010

    or-int/2addr p1, p2

    iput p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    :cond_26
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method private getNtlmsspListItem([BI)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x3a

    :goto_2
    invoke-static {p1, v0}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v1

    add-int/lit8 v2, v0, 0x2

    invoke-static {p1, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v2

    add-int/lit8 v0, v0, 0x4

    if-eqz v1, :cond_22

    add-int v3, v0, v2

    array-length v4, p1

    if-le v3, v4, :cond_16

    goto :goto_22

    :cond_16
    if-ne v1, p2, :cond_20

    :try_start_18
    new-instance p2, Ljava/lang/String;

    const-string v1, "UTF-16LE"

    invoke-direct {p2, p1, v0, v2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_1f} :catch_22

    return-object p2

    :cond_20
    move v0, v3

    goto :goto_2

    :catch_22
    :cond_22
    :goto_22
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getNetbiosName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerChallenge()[B
    .registers 2

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    return-object v0
.end method

.method public getSigningKey()[B
    .registers 2

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    return-object v0
.end method

.method public initSecContext([BII)[B
    .registers 15

    iget p2, p0, Ljcifs/smb/NtlmContext;->state:I

    const/4 p3, 0x0

    const/4 v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_8c

    const/4 v3, 0x2

    if-ne p2, v3, :cond_84

    :try_start_b
    new-instance v5, Ljcifs/ntlmssp/Type2Message;

    invoke-direct {v5, p1}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V

    sget p2, Ljcifs/util/LogStream;->level:I

    if-lt p2, v1, :cond_23

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {p2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget p2, Ljcifs/util/LogStream;->level:I

    if-lt p2, v0, :cond_23

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    array-length v3, p1

    invoke-static {p2, p1, p3, v3}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_23
    invoke-virtual {v5}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    iget p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    invoke-virtual {v5}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result p2

    and-int/2addr p1, p2

    iput p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    new-instance p1, Ljcifs/ntlmssp/Type3Message;

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v7

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    iget v10, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    move-result-object p2

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_65

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v0, :cond_65

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    array-length v1, p2

    invoke-static {v0, p2, p3, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_65
    iget p3, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_71

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getMasterKey()[B

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    :cond_71
    iput-boolean v2, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    iget p1, p0, Ljcifs/smb/NtlmContext;->state:I

    add-int/2addr p1, v2

    iput p1, p0, Ljcifs/smb/NtlmContext;->state:I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_78} :catch_79

    goto :goto_b7

    :catch_79
    move-exception p1

    new-instance p2, Ljcifs/smb/SmbException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_84
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Invalid state"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8c
    new-instance p1, Ljcifs/ntlmssp/Type1Message;

    iget p2, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    iget-object v3, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-direct {p1, p2, v3, v4}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    move-result-object p2

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_b2

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v0, :cond_b2

    iget-object p1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    array-length v0, p2

    invoke-static {p1, p2, p3, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_b2
    iget p1, p0, Ljcifs/smb/NtlmContext;->state:I

    add-int/2addr p1, v2

    iput p1, p0, Ljcifs/smb/NtlmContext;->state:I

    :goto_b7
    return-object p2
.end method

.method public isEstablished()Z
    .registers 2

    iget-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NtlmContext[auth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",ntlmsspFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    const/16 v2, 0x8

    const-string v3, ",workstation="

    invoke-static {v1, v2, v0, v3}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isEstablished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/smb/NtlmContext;->state:I

    const-string v2, ",serverChallenge="

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    const-string v2, "null"

    const/4 v3, 0x0

    if-nez v1, :cond_4e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v0, v3, v4}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ",signingKey="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    if-nez v1, :cond_8e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a7

    :cond_8e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v3, v2}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
