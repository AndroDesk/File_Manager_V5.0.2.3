.class Ljcifs/smb/NetServerEnum2Response$ServerInfo1;
.super Ljava/lang/Object;
.source "NetServerEnum2Response.java"

# interfaces
.implements Ljcifs/smb/FileEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/NetServerEnum2Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerInfo1"
.end annotation


# instance fields
.field public commentOrMasterBrowser:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public final synthetic this$0:Ljcifs/smb/NetServerEnum2Response;

.field public type:I

.field public versionMajor:I

.field public versionMinor:I


# direct methods
.method public constructor <init>(Ljcifs/smb/NetServerEnum2Response;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->this$0:Ljcifs/smb/NetServerEnum2Response;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public createTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAttributes()I
    .registers 2

    const/16 v0, 0x11

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getType()I
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->type:I

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_9

    .line 8
    const/4 v0, 0x2

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x4

    .line 11
    :goto_a
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
    const-string v2, "ServerInfo1[name="

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ",versionMajor="

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v2, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMajor:I

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ",versionMinor="

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v2, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMinor:I

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ",type=0x"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v2, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->type:I

    .line 42
    const/16 v3, 0x8

    .line 44
    const-string v4, ",commentOrMasterBrowser="

    .line 46
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->commentOrMasterBrowser:Ljava/lang/String;

    .line 51
    const-string v3, "]"

    .line 53
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 60
    return-object v0
.end method
