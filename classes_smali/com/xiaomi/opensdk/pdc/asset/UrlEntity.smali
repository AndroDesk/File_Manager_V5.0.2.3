.class public Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;
.super Ljava/lang/Object;
.source "UrlEntity.java"


# instance fields
.field public final downloadUrl:Ljava/lang/String;

.field public final expireTime:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;->expireTime:J

    .line 6
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;->downloadUrl:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "UrlEntity [expireTime="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;->expireTime:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", downloadUrl="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;->downloadUrl:Ljava/lang/String;

    .line 19
    const-string v2, "]"

    .line 21
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
