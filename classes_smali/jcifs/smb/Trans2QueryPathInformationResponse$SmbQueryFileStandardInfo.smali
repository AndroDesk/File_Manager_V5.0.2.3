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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/Trans2QueryPathInformationResponse;)V
    .registers 2

    iput-object p1, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->this$0:Ljcifs/smb/Trans2QueryPathInformationResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-wide v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->endOfFile:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbQueryInfoStandard[allocationSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->allocationSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",endOfFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->endOfFile:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",numberOfLinks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->numberOfLinks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",deletePending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->deletePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",directory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->directory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
