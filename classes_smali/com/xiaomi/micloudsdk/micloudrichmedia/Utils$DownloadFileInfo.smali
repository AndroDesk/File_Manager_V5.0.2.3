.class Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadFileInfo"
.end annotation


# instance fields
.field public ckey:Ljava/lang/String;

.field public fileId:Ljava/lang/String;

.field public fileSha1:Ljava/lang/String;

.field public final synthetic this$0:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

.field public tmpUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->this$0:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;)V

    return-void
.end method
