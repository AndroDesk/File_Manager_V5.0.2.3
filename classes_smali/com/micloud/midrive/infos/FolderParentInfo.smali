.class public Lcom/micloud/midrive/infos/FolderParentInfo;
.super Ljava/lang/Object;
.source "FolderParentInfo.java"


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/FolderParentInfo;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/FolderParentInfo;->name:Ljava/lang/String;

    return-void
.end method
