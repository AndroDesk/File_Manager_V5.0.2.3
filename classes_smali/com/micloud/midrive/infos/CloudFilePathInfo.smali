.class public Lcom/micloud/midrive/infos/CloudFilePathInfo;
.super Ljava/lang/Object;
.source "CloudFilePathInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;,
        Lcom/micloud/midrive/infos/CloudFilePathInfo$Factory;
    }
.end annotation


# static fields
.field private static final JSON_ARRAY_RECORDS:Ljava/lang/String; = "records"

.field private static final JSON_STR_PATH:Ljava/lang/String; = "path"


# instance fields
.field public final path:Ljava/lang/String;

.field public final pathNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/CloudFilePathInfo;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/CloudFilePathInfo;->pathNodeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isPrivacyFile()Z
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/infos/CloudFilePathInfo;->pathNodeList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/micloud/midrive/infos/CloudFilePathInfo;->pathNodeList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;

    iget-object v0, v0, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;->privacyStatus:Ljava/lang/String;

    const-string v1, "PRIVACY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1c
    return v1
.end method
