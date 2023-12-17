.class Lmiui/telephony/CloudTelephonyManager$5;
.super Landroid/content/BroadcastReceiver;
.source "CloudTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/CloudTelephonyManager;->waitAndGetSimId(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$future:Lmiui/telephony/CloudTelephonyManager$AsyncFuture;

.field public final synthetic val$simIndex:I

.field public final synthetic val$tm:Lmiui/cloud/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lmiui/telephony/CloudTelephonyManager$AsyncFuture;Lmiui/cloud/telephony/TelephonyManager;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$future:Lmiui/telephony/CloudTelephonyManager$AsyncFuture;

    .line 3
    iput-object p2, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$tm:Lmiui/cloud/telephony/TelephonyManager;

    .line 5
    iput p3, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$simIndex:I

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getIccCardConstants_INTENT_VALUE_ICC_IMSI()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getIccCardConstants_INTENT_KEY_ICC_STATE()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1f

    .line 19
    iget-object p1, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$future:Lmiui/telephony/CloudTelephonyManager$AsyncFuture;

    .line 21
    iget-object p2, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$tm:Lmiui/cloud/telephony/TelephonyManager;

    .line 23
    iget v0, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$simIndex:I

    .line 25
    invoke-static {p2, v0}, Lmiui/telephony/CloudTelephonyManager;->access$200(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 32
    :cond_1f
    return-void
.end method
