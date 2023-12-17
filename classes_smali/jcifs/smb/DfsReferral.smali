.class public Ljcifs/smb/DfsReferral;
.super Ljcifs/smb/SmbException;
.source "DfsReferral.java"


# instance fields
.field public expiration:J

.field public key:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public map:Ljava/util/Map;

.field public next:Ljcifs/smb/DfsReferral;

.field public path:Ljava/lang/String;

.field public pathConsumed:I

.field public resolveHashes:Z

.field public server:Ljava/lang/String;

.field public share:Ljava/lang/String;

.field public ttl:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbException;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    .line 7
    iput-object p0, p0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 9
    return-void
.end method


# virtual methods
.method public append(Ljcifs/smb/DfsReferral;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 3
    iput-object v0, p1, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 5
    iput-object p1, p0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "DfsReferral[pathConsumed="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ",server="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ",share="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ",link="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Ljcifs/smb/DfsReferral;->link:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ",path="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ",ttl="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-wide v1, p0, Ljcifs/smb/DfsReferral;->ttl:J

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ",expiration="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-wide v1, p0, Ljcifs/smb/DfsReferral;->expiration:J

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ",resolveHashes="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-boolean v1, p0, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "]"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method
