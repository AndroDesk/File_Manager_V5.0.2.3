.class public Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;
.super Ljava/lang/Object;
.source "UrlEntity.java"


# instance fields
.field public final downloadUrl:Ljava/lang/String;

.field public final expireTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;->expireTime:J

    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;->downloadUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "UrlEntity [expireTime="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;->expireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;->downloadUrl:Ljava/lang/String;

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
