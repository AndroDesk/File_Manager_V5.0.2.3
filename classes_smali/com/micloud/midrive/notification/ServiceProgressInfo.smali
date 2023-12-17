.class public Lcom/micloud/midrive/notification/ServiceProgressInfo;
.super Ljava/lang/Object;
.source "ServiceProgressInfo.java"


# instance fields
.field public final fail:I

.field public final ongoing:I

.field public final success:I

.field public final waitNetwork:Z


# direct methods
.method public constructor <init>(IIIZ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->success:I

    .line 6
    iput p2, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->fail:I

    .line 8
    iput p3, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    .line 10
    iput-boolean p4, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->waitNetwork:Z

    .line 12
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ServiceProgressInfo{success="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->success:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", fail="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->fail:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", ongoing="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", waitNetwork="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-boolean v1, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->waitNetwork:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const/16 v1, 0x7d

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
