.class public Lcom/xiaomi/mirror/onehop/OneHopHelper$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/onehop/OneHopHelper;->registerOneHopShareReceiver(Landroid/content/Context;Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

.field public final synthetic val$oneHopShareCallback:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/onehop/OneHopHelper;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    iput-object p2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->val$oneHopShareCallback:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.miui.onehop.action.MIRROR"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_af

    .line 13
    const/4 v0, -0x1

    .line 14
    const-string v1, "_device_type"

    .line 16
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    const-string v1, "_bt_mac"

    .line 22
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const-string v2, "_ability_lyra"

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 32
    move-result p2

    .line 33
    const-string v2, "mSelfIsSupportLyra: "

    .line 35
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v2

    .line 39
    iget-object v4, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    .line 41
    invoke-static {v4}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$200(Lcom/xiaomi/mirror/onehop/OneHopHelper;)Z

    .line 44
    move-result v4

    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    const-string v4, ", abilityLyra: "

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    const-string v4, "OneHopHelper"

    .line 62
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    .line 67
    invoke-static {v2}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$200(Lcom/xiaomi/mirror/onehop/OneHopHelper;)Z

    .line 70
    move-result v2

    .line 71
    const/4 v5, 0x1

    .line 72
    if-eqz v2, :cond_5d

    .line 74
    if-nez p2, :cond_4c

    .line 76
    goto :goto_5d

    .line 77
    :cond_4c
    iget-object p2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    .line 79
    const-string v2, "com.miui.mishare.connectivity"

    .line 81
    const-string v3, "com.miui.mishare.connectivity.nfc"

    .line 83
    invoke-static {p2, p1, v2, v3}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$300(Lcom/xiaomi/mirror/onehop/OneHopHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_5b

    .line 89
    const-string p1, "mishare version not support one hop share"

    .line 91
    goto :goto_6b

    .line 92
    :cond_5b
    move v3, v5

    .line 93
    goto :goto_6f

    .line 94
    :cond_5d
    :goto_5d
    iget-object p2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    .line 96
    const-string v2, "com.xiaomi.mirror"

    .line 98
    const-string v6, "com.xiaomi.mirror.nfc"

    .line 100
    invoke-static {p2, p1, v2, v6}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$300(Lcom/xiaomi/mirror/onehop/OneHopHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_6f

    .line 106
    const-string p1, "miui plus version not support one hop share"

    .line 108
    :goto_6b
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 112
    :cond_6f
    :goto_6f
    if-ltz v0, :cond_93

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_93

    .line 120
    iget-object p1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->val$oneHopShareCallback:Ljava/lang/ref/WeakReference;

    .line 122
    if-eqz p1, :cond_af

    .line 124
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_af

    .line 130
    iget-object p1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->val$oneHopShareCallback:Ljava/lang/ref/WeakReference;

    .line 132
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;

    .line 138
    invoke-interface {p1, v0, v1, v3}, Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;->onOneHopShare(ILjava/lang/String;I)Z

    .line 141
    move-result p1

    .line 142
    if-ne p1, v5, :cond_af

    .line 144
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 147
    goto :goto_af

    .line 148
    :cond_93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    const-string p2, "OneHop receive, params is illegal: deviceType:"

    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string p2, " btMac:"

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object p1

    .line 173
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_af
    :goto_af
    return-void
.end method
