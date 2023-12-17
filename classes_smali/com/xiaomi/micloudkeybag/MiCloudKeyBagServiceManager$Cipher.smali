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
.method public constructor <init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;Landroid/accounts/Account;J)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->this$0:Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->account:Landroid/accounts/Account;

    .line 8
    iput-wide p3, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->keyVersion:J

    .line 10
    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .registers 9

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->this$0:Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;

    .line 6
    invoke-static {v0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->access$000(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;)Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_d

    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_d
    new-instance v0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher$2;

    .line 16
    invoke-direct {v0, p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher$2;-><init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;)V

    .line 19
    iget-object v2, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->account:Landroid/accounts/Account;

    .line 21
    iget-wide v4, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->keyVersion:J

    .line 23
    move-object v3, p1

    .line 24
    move-object v6, v0

    .line 25
    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->decrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    .line 28
    invoke-virtual {v0}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->getResult()Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, [B

    .line 34
    return-object p1
.end method

.method public encrypt([B)[B
    .registers 9

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->this$0:Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;

    .line 6
    invoke-static {v0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->access$000(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;)Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_d

    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_d
    new-instance v0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher$1;

    .line 16
    invoke-direct {v0, p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher$1;-><init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;)V

    .line 19
    iget-object v2, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->account:Landroid/accounts/Account;

    .line 21
    iget-wide v4, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;->keyVersion:J

    .line 23
    move-object v3, p1

    .line 24
    move-object v6, v0

    .line 25
    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->encrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    .line 28
    invoke-virtual {v0}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->getResult()Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, [B

    .line 34
    return-object p1
.end method
