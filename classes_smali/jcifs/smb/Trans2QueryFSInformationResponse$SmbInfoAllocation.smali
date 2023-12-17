.class Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;
.super Ljava/lang/Object;
.source "Trans2QueryFSInformationResponse.java"

# interfaces
.implements Ljcifs/smb/AllocInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/Trans2QueryFSInformationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmbInfoAllocation"
.end annotation


# instance fields
.field public alloc:J

.field public bytesPerSect:I

.field public free:J

.field public sectPerAlloc:I

.field public final synthetic this$0:Ljcifs/smb/Trans2QueryFSInformationResponse;


# direct methods
.method public constructor <init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->this$0:Ljcifs/smb/Trans2QueryFSInformationResponse;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getCapacity()J
    .registers 5

    .line 1
    iget-wide v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    .line 3
    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    .line 5
    int-to-long v2, v2

    .line 6
    mul-long/2addr v0, v2

    .line 7
    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    .line 9
    int-to-long v2, v2

    .line 10
    mul-long/2addr v0, v2

    .line 11
    return-wide v0
.end method

.method public getFree()J
    .registers 5

    .line 1
    iget-wide v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    .line 3
    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    .line 5
    int-to-long v2, v2

    .line 6
    mul-long/2addr v0, v2

    .line 7
    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    .line 9
    int-to-long v2, v2

    .line 10
    mul-long/2addr v0, v2

    .line 11
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbInfoAllocation[alloc="

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-wide v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ",free="

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-wide v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ",sectPerAlloc="

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ",bytesPerSect="

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    .line 42
    const-string v3, "]"

    .line 44
    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 51
    return-object v0
.end method
