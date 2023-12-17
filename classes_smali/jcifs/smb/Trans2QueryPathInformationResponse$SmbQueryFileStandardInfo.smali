.class Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;
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
    name = "SmbQueryFileStandardInfo"
.end annotation


# instance fields
.field public allocationSize:J

.field public deletePending:Z

.field public directory:Z

.field public endOfFile:J

.field public numberOfLinks:I

.field public final synthetic this$0:Ljcifs/smb/Trans2QueryPathInformationResponse;


# direct methods
.method public constructor <init>(Ljcifs/smb/Trans2QueryPathInformationResponse;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->this$0:Ljcifs/smb/Trans2QueryPathInformationResponse;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getAttributes()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCreateTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastWriteTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->endOfFile:J

    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbQueryInfoStandard[allocationSize="

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-wide v2, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->allocationSize:J

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ",endOfFile="

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-wide v2, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->endOfFile:J

    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ",numberOfLinks="

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v2, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->numberOfLinks:I

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ",deletePending="

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean v2, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->deletePending:Z

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, ",directory="

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-boolean v2, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->directory:Z

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, "]"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 67
    return-object v0
.end method
