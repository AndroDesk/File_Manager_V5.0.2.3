.class public Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;
.super Ljava/lang/Object;
.source "CloudFilePathInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/CloudFilePathInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode$Factory;
    }
.end annotation


# static fields
.field public static final JSON_STR_ID:Ljava/lang/String; = "id"

.field public static final JSON_STR_NAME:Ljava/lang/String; = "name"

.field public static final JSON_STR_PRIVACY_STATUS:Ljava/lang/String; = "privacyStatus"


# instance fields
.field public final fileId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final privacyStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;->fileId:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;->privacyStatus:Ljava/lang/String;

    return-void
.end method
