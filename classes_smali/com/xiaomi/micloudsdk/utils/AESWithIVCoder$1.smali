.class Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;
.super Lcom/xiaomi/micloudsdk/utils/AESCoder;
.source "AESWithIVCoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;->this$0:Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;

    .line 3
    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/utils/AESCoder;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getInitalVector()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;->this$0:Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->access$000(Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;)[B

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
