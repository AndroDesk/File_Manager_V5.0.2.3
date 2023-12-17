.class Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher$2;
.super Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;
.source "MiCloudKeyBagServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->decrypt([B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher$2;->this$1:Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDecryptFinished(I[B)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->setResult(ILjava/lang/Object;)V

    .line 4
    return-void
.end method
