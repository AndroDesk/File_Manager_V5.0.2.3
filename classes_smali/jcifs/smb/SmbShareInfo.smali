.class public Ljcifs/smb/SmbShareInfo;
.super Ljava/lang/Object;
.source "SmbShareInfo.java"

# interfaces
.implements Ljcifs/smb/FileEntry;


# instance fields
.field public netName:Ljava/lang/String;

.field public remark:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 4
    iput p2, p0, Ljcifs/smb/SmbShareInfo;->type:I

    .line 5
    iput-object p3, p0, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Ljcifs/smb/SmbShareInfo;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    check-cast p1, Ljcifs/smb/SmbShareInfo;

    .line 7
    iget-object v0, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public getAttributes()I
    .registers 2

    const/16 v0, 0x11

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getType()I
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/smb/SmbShareInfo;->type:I

    .line 3
    const v1, 0xffff

    .line 6
    and-int/2addr v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_12

    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_f

    .line 13
    const/16 v0, 0x8

    .line 15
    return v0

    .line 16
    :cond_f
    const/16 v0, 0x10

    .line 18
    return v0

    .line 19
    :cond_12
    const/16 v0, 0x20

    .line 21
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public lastModified()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public length()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbShareInfo[netName="

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ",type=0x"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v2, p0, Ljcifs/smb/SmbShareInfo;->type:I

    .line 22
    const/16 v3, 0x8

    .line 24
    const-string v4, ",remark="

    .line 26
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    .line 31
    const-string v3, "]"

    .line 33
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 40
    return-object v0
.end method
