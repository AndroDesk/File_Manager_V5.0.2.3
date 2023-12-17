.class Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;
.super Ljava/lang/Object;
.source "Trans2QueryPathInformationResponse.java"

# interfaces
.implements Ljcifs/smb/Info;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/Trans2QueryPathInformationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmbQueryFileBasicInfo"
.end annotation


# instance fields
.field public attributes:I

.field public changeTime:J

.field public createTime:J

.field public lastAccessTime:J

.field public lastWriteTime:J

.field public final synthetic this$0:Ljcifs/smb/Trans2QueryPathInformationResponse;


# direct methods
.method public constructor <init>(Ljcifs/smb/Trans2QueryPathInformationResponse;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->this$0:Ljcifs/smb/Trans2QueryPathInformationResponse;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getAttributes()I
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->attributes:I

    .line 3
    return v0
.end method

.method public getCreateTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->createTime:J

    .line 3
    return-wide v0
.end method

.method public getLastWriteTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastWriteTime:J

    .line 3
    return-wide v0
.end method

.method public getSize()J
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
    const-string v2, "SmbQueryFileBasicInfo[createTime="

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/util/Date;

    .line 12
    iget-wide v3, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->createTime:J

    .line 14
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, ",lastAccessTime="

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    new-instance v2, Ljava/util/Date;

    .line 27
    iget-wide v3, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastAccessTime:J

    .line 29
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ",lastWriteTime="

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v2, Ljava/util/Date;

    .line 42
    iget-wide v3, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastWriteTime:J

    .line 44
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, ",changeTime="

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v2, Ljava/util/Date;

    .line 57
    iget-wide v3, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->changeTime:J

    .line 59
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string v2, ",attributes=0x"

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v2, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->attributes:I

    .line 72
    const/4 v3, 0x4

    .line 73
    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, "]"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 92
    return-object v0
.end method
