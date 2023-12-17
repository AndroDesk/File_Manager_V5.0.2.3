.class Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$1;
.super Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;
.source "MiCloudKeyBagServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->getKeyBagSupported(Landroid/accounts/Account;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$1;->this$0:Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onIsSupportedFinished(IZ)V
    .registers 3

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->setResult(ILjava/lang/Object;)V

    .line 8
    return-void
.end method
