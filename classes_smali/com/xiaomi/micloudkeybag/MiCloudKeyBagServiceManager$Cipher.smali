.class public Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;
.super Ljava/lang/Object;
.source "MiCloudKeyBagServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cipher"
.end annotation


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final keyVersion:J

.field public final synthetic this$0:Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;Landroid/accounts/Account;J)V
    .registers 5

    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->this$0:Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->account:Landroid/accounts/Account;

    iput-wide p3, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->keyVersion:J

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .registers 9

    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->this$0:Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;

    invoke-static {v0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->access$000(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;)Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    new-instance v0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher$2;-><init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;)V

    iget-object v2, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->account:Landroid/accounts/Account;

    iget-wide v4, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->keyVersion:J

    move-object v3, p1

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->decrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    invoke-virtual {v0}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public encrypt([B)[B
    .registers 9

    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->this$0:Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;

    invoke-static {v0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->access$000(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;)Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    new-instance v0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher$1;-><init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;)V

    iget-object v2, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->account:Landroid/accounts/Account;

    iget-wide v4, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->keyVersion:J

    move-object v3, p1

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->encrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    invoke-virtual {v0}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
