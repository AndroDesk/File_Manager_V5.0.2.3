.class public Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;
.super Lorg/jaudiotagger/audio/asf/data/Chunk;
.source "EncryptionChunk.java"


# instance fields
.field private keyID:Ljava/lang/String;

.field private licenseURL:Ljava/lang/String;

.field private protectionType:Ljava/lang/String;

.field private secretData:Ljava/lang/String;

.field private final strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    .line 13
    const-string p1, ""

    .line 15
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public addString(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public getKeyID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLicenseURL()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getProtectionType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSecretData()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getStrings()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v3, " Encryption:"

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "\t|->keyID "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    .line 49
    const-string v3, "\t|->secretData "

    .line 51
    invoke-static {v0, v1, v2, p1, v3}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    .line 56
    const-string v3, "\t|->protectionType "

    .line 58
    invoke-static {v0, v1, v2, p1, v3}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    .line 63
    const-string v3, "\t|->licenseURL "

    .line 65
    invoke-static {v0, v1, v2, p1, v3}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v1

    .line 87
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_6d

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/String;

    .line 99
    const-string v3, "   |->"

    .line 101
    invoke-static {v0, p1, v3, v2}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    goto :goto_56

    .line 110
    :cond_6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    return-object p1
.end method

.method public setKeyID(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setLicenseURL(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setProtectionType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSecretData(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    .line 3
    return-void
.end method
