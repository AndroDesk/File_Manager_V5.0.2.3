.class public Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;
.super Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;
.source "RequestPlayUrlTaskWithLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudVideoResult"
.end annotation


# instance fields
.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;->type:Ljava/lang/String;

    .line 3
    return-void
.end method
