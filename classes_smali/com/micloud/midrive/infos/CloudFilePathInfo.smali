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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/CloudFilePathInfo;->path:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/CloudFilePathInfo;->pathNodeList:Ljava/util/List;

    .line 8
    return-void
.end method


# virtual methods
.method public isPrivacyFile()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/CloudFilePathInfo;->pathNodeList:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1c

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_1c

    .line 12
    iget-object v0, p0, Lcom/micloud/midrive/infos/CloudFilePathInfo;->pathNodeList:Ljava/util/List;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;

    .line 20
    iget-object v0, v0, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;->privacyStatus:Ljava/lang/String;

    .line 22
    const-string v1, "PRIVACY"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    return v0

    .line 29
    :cond_1c
    return v1
.end method
