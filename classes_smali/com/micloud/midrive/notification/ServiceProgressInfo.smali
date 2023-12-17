.class public Lcom/micloud/midrive/notification/ServiceProgressInfo;
.super Ljava/lang/Object;
.source "ServiceProgressInfo.java"


# instance fields
.field public final fail:I

.field public final ongoing:I

.field public final success:I

.field public final waitNetwork:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->success:I

    iput p2, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->fail:I

    iput p3, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    iput-boolean p4, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->waitNetwork:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ServiceProgressInfo{success="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->success:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->fail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ongoing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", waitNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/micloud/midrive/notification/ServiceProgressInfo;->waitNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
