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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiui/telephony/CloudTelephonyManager$AsyncFuture;Lmiui/cloud/telephony/TelephonyManager;I)V
    .registers 4

    iput-object p1, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$future:Lmiui/telephony/CloudTelephonyManager$AsyncFuture;

    iput-object p2, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$tm:Lmiui/cloud/telephony/TelephonyManager;

    iput p3, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$simIndex:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getIccCardConstants_INTENT_VALUE_ICC_IMSI()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getIccCardConstants_INTENT_KEY_ICC_STATE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$future:Lmiui/telephony/CloudTelephonyManager$AsyncFuture;

    iget-object p2, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$tm:Lmiui/cloud/telephony/TelephonyManager;

    iget v0, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$simIndex:I

    invoke-static {p2, v0}, Lmiui/telephony/CloudTelephonyManager;->access$200(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method
