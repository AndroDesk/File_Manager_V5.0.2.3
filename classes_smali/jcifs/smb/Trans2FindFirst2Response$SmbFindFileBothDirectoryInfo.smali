.class Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;
.super Ljava/lang/Object;
.source "Trans2FindFirst2Response.java"

# interfaces
.implements Ljcifs/smb/FileEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/Trans2FindFirst2Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmbFindFileBothDirectoryInfo"
.end annotation


# instance fields
.field public allocationSize:J

.field public changeTime:J

.field public creationTime:J

.field public eaSize:I

.field public endOfFile:J

.field public extFileAttributes:I

.field public fileIndex:I

.field public fileNameLength:I

.field public filename:Ljava/lang/String;

.field public lastAccessTime:J

.field public lastWriteTime:J

.field public nextEntryOffset:I

.field public shortName:Ljava/lang/String;

.field public shortNameLength:I

.field public final synthetic this$0:Ljcifs/smb/Trans2FindFirst2Response;


# direct methods
.method public constructor <init>(Ljcifs/smb/Trans2FindFirst2Response;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->this$0:Ljcifs/smb/Trans2FindFirst2Response;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public createTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->creationTime:J

    .line 3
    return-wide v0
.end method

.method public getAttributes()I
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->extFileAttributes:I

    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public lastModified()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastWriteTime:J

    .line 3
    return-wide v0
.end method

.method public length()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->endOfFile:J

    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbFindFileBothDirectoryInfo[nextEntryOffset="

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ",fileIndex="

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ",creationTime="

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    new-instance v2, Ljava/util/Date;

    .line 32
    iget-wide v3, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->creationTime:J

    .line 34
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string v2, ",lastAccessTime="

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v2, Ljava/util/Date;

    .line 47
    iget-wide v3, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastAccessTime:J

    .line 49
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, ",lastWriteTime="

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v2, Ljava/util/Date;

    .line 62
    iget-wide v3, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastWriteTime:J

    .line 64
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v2, ",changeTime="

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v2, Ljava/util/Date;

    .line 77
    iget-wide v3, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->changeTime:J

    .line 79
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, ",endOfFile="

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-wide v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->endOfFile:J

    .line 92
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    const-string v2, ",allocationSize="

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-wide v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->allocationSize:J

    .line 102
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, ",extFileAttributes="

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->extFileAttributes:I

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v2, ",fileNameLength="

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileNameLength:I

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, ",eaSize="

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->eaSize:I

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v2, ",shortNameLength="

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->shortNameLength:I

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v2, ",shortName="

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->shortName:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v2, ",filename="

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    .line 162
    const-string v3, "]"

    .line 164
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object v1

    .line 168
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 171
    return-object v0
.end method
